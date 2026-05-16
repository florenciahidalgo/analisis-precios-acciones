CREATE VIEW v_stock_analysis AS
WITH base AS (
    SELECT
        date,
        ticker,
        close,
        -- rendimiento diario
        (close - LAG(close) OVER (
            PARTITION BY ticker
            ORDER BY date
        )) / LAG(close) OVER (
            PARTITION BY ticker
            ORDER BY date
        ) AS daily_return
    FROM stocks_data
),
metrics AS (
    SELECT
        date,
        ticker,
        close,
        COALESCE(daily_return, 0) AS daily_return,

        -- rendimiento acumulado
        SUM(
            LN(1 + COALESCE(daily_return, 0))
        ) OVER (
            PARTITION BY ticker
            ORDER BY date
        ) AS cumulative_log_return,

        -- volatilidad 20 días
        STDDEV_POP(daily_return) OVER (
            PARTITION BY ticker
            ORDER BY date
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        ) AS volatility_20,

        -- medias móviles
        AVG(close) OVER (
            PARTITION BY ticker
            ORDER BY date
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        ) AS ma_20,

        AVG(close) OVER (
            PARTITION BY ticker
            ORDER BY date
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        ) AS ma_50
    FROM base
)
SELECT
    date,
    ticker,
    close,
    daily_return,
    EXP(cumulative_log_return) - 1 AS cumulative_return,
    volatility_20,
    ma_20,
    ma_50
FROM metrics;


SELECT * FROM v_stock_analysis ORDER BY ticker, date;