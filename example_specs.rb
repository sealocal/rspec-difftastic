RSpec.shared_examples 'Example Failing Specs' do
  it do
    expect(
      id: 1,
      data: {
        name: 'John Appleseed',
      }
    ).to match(
      id: "1",
      data: {
        name: 'John Berry',
      }
    )
  end

  it do
    expect(
      status: 422,
      message: 'Your request to update record with id 42 was not processed.',
    ).to match(
      status: 422,
      message: 'Your reqest to udpate record with id 43 was not processed.',
    )
  end

  it do
    expect(
      california: ['los angeeles', 'san francisco'],
      oregon: ['portland', 'eugene'],
      washington: ['seattle', 'spokane'],
      new_york: ['new york city', 'albany'],
      texas: ['houston', 'austin'],
    ).to match(
      california: ['los angeles', 'san francisco'],
      oregon: ['potland', 'eugene'],
      washington: ['seattle', 'spokane'],
      new_york: ['new york city', 'albany'],
      texas: ['houston', 'austin'],
      montana: ['billings', 'helena'],
    )
  end

end
