describe DeprecatedHubspot do
  describe "#configure" do
    it "delegates a call to DeprecatedHubspot::Config.configure" do
      mock(DeprecatedHubspot::Config).configure({hapikey: "demo"})
      DeprecatedHubspot.configure hapikey: "demo"
    end
  end
end
