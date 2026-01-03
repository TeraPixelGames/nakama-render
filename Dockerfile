FROM registry.heroiclabs.com/heroiclabs/nakama:3.22.0
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
