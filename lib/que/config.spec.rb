# frozen_string_literal: true

require 'spec_helper'

describe Que do
  describe ".pool" do
    it "should provide access to the connection pool"

    it "when no connection has been established should raise an error" do
      Que.connection_proc = nil

      error =
        assert_raises Que::Error do
          Que.pool
        end

      assert_match /Que connection not established!/, error.message
    end
  end

  describe "error_notifier=" do
    it "should raise an error unless passed nil or a callable"
  end
end