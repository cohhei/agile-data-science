defmodule DummyProducer do
  @moduledoc """
  Documentation for DummyProducer.
  """

  @doc """
  produce dummy data to Kafka broker.

  ## Examples

      iex> DummyProducer.main

  """
  def coordinate do
    %{ x: :rand.uniform(100), y: :rand.uniform(100) }
  end

  def produce do
    {_, json} = JSON.encode(coordinate)
    KafkaEx.produce("ads2", 1, json)
    :timer.sleep(1000)
    produce()
  end

  def main do
    produce
  end
end
