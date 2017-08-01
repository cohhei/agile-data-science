from kafka import KafkaConsumer
import json

consumer = KafkaConsumer('ads2', bootstrap_servers='localhost:9092')

for msg in consumer:
	data = json.loads(msg.value.decode())
	print(data)
