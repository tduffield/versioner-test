FROM scratch
COPY --from=tianon/true /true /true
CMD ["/true"]