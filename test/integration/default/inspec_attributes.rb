# frozen_string_literal: true

external_ip = attribute(
  "external_ip_from_awwww",
  description: "This is the output of our 3rd party TF module"
)

control "external_ip" do
  desc "Run checks on the external_ip value"

  describe external_ip do
    it { should_not eq "127.0.0.1" }
    it { should_not eq "" }
  end
end