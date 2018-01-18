require 'minitest/autorun'
require './lib/blocks/WordSynth'
require './lib/blocks/ProcEffect'

class SynthTest < Minitest::Test

  def setup
    @synth = WordSynth.new
  end

  def test_synth_with_reverse_effect
    @synth.add_effect(ProcEffects.reverse)
    assert_equal 'I yojne .ybuR', @synth.play('I enjoy Ruby.')
  end

  def test_synth_with_reverse_effect
    @synth.add_effect(ProcEffects.reverse)
    assert_equal 'I yojne .ybuR', @synth.play('I enjoy Ruby.')
  end

  def test_synth_with_echo_effect
    @synth.add_effect(ProcEffects.echo(2))
    assert_equal 'II eennjjooyy RRuubbyy..', @synth.play('I enjoy Ruby.')
  end

  def test_synth_with_reverse_and_echo_effect
    @synth.add_effect(ProcEffects.echo(2))
    @synth.add_effect(ProcEffects.reverse)
    assert_equal 'II yyoojjnnee ..yybbuuRR', @synth.play('I enjoy Ruby.')
  end
end
