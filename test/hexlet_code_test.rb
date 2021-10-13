require 'test_helper'

class HexletCodeTest < Minitest::Test
  # rubocop:disable Style/ClassVars
  User = Struct.new(:name, :job, keyword_init: true)
  @@user = User.new job: 'hexlet'
  # rubocop:enable Style/ClassVars

  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_form_for
    actual = HexletCode.form_for @@user do |f|
      f.input :name
      f.input :job
      f.submit
    end

    expected =
      '<form action="#" method="post">'\
        '<label for="name">Name</label>'\
        '<input name="name" type="text">'\
        '<label for="job">Job</label>'\
        '<input name="job" type="text" value="hexlet">'\
        '<input name="commit" type="submit" value="Save">'\
      '</form>'

    assert_equal(expected, actual)
  end
end
