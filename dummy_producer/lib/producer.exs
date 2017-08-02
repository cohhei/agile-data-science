def produce do
  KafkaEx.produce("topic", 1, :rand.uniform)
  :timer.sleep(1000)
  produce()
end

Producer.produce