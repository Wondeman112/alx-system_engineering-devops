import re

def extract_info(line):
  pattern = r'from:(.*?)\s+\[to:(.*?)\].*?\[flags:(.*?)\]'
  match = re.search(pattern, line)
  if match:
      sender = match.group(1)
      receiver = match.group(2)
      flags = match.group(3)
      return f"{sender},{receiver},{flags}"
    return ''

if __name__ == '__main__':
    line = input().strip()
    result = extract_info(line)
    print(result)
