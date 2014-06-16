class ListController < UITableViewController
  def loadView
    super

    setTitle 'Entries'
  end

  def tableView(table_view, numberOfRowsInSection: section)
    data.count
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    cell = table_view.dequeueReusableCellWithIdentifier(EntryCell::ID) || begin
      EntryCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: EntryCell::ID)
    end
  end

  private

  def data
    Entries.all
  end
end
