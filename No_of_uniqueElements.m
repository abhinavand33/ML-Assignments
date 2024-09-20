function output= No_of_uniqueElements(arr)

    % Analyze the array to find unique elements and their counts
    [unique_elements, ~, idx] = unique(arr); % Find unique elements
    counts = histc(idx, 1:numel(unique_elements)); % Count occurrences

    % Combine results into a matrix
    output = [unique_elements(:), counts(:)];
end
