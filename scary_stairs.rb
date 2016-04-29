use_synth :piano

base_interval = 0.2

maximum_shift = 9
maximum_shift_shift = 4

shift = 0

live_loop :stairs do
  (1..maximum_shift_shift).step do |shift_shift|
    (0..maximum_shift).step do |shift|
      shift = shift + shift_shift
      interval = base_interval.to_f * (1 - (shift.to_f / (maximum_shift.to_f * maximum_shift_shift.to_f)))

      %i( C G C2 Eb ).each { |note| play note + shift }
      sleep interval

      %i( A C E ).each { |note| play note + shift }
      sleep interval

      %i( Eb Gb Bb ).each { |note| play note + shift }
      sleep interval

      %i( Ff A Cf ).each { |note| play note + shift }
      sleep interval
    end
  end
end
