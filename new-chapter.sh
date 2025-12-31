#!/bin/bash
# Helper script to start a new chapter

set -e

# Check if chapter number provided
if [ -z "$1" ]; then
    echo "Usage: ./new-chapter.sh <chapter-number>"
    echo "Example: ./new-chapter.sh 2"
    exit 1
fi

CHAPTER_NUM=$(printf "%02d" $1)
CHAPTER_FILE="book/chapters/chapter-${CHAPTER_NUM}.adoc"
TEMPLATE="book/chapters/_template.adoc"

# Check if chapter already exists
if [ -f "$CHAPTER_FILE" ]; then
    echo "❌ Error: $CHAPTER_FILE already exists!"
    echo "Do you want to edit it? Run: vim $CHAPTER_FILE"
    exit 1
fi

# Copy template
echo "📝 Creating new chapter: $CHAPTER_FILE"
cp "$TEMPLATE" "$CHAPTER_FILE"

# Replace placeholder XX with actual chapter number
sed -i "s/chapter-XX/chapter-${CHAPTER_NUM}/g" "$CHAPTER_FILE"
sed -i "s/:chapter-number: XX/:chapter-number: ${CHAPTER_NUM}/g" "$CHAPTER_FILE"

echo "✅ Chapter $CHAPTER_NUM created successfully!"
echo ""
echo "Next steps:"
echo "1. Edit the chapter: vim $CHAPTER_FILE"
echo "   (or use your preferred editor)"
echo ""
echo "2. Look up the chapter title in book_structure.md"
echo "   Chapter $CHAPTER_NUM should be titled: [check book_structure.md]"
echo ""
echo "3. Follow the template structure to fill in all sections"
echo ""
echo "4. Build frequently to check formatting:"
echo "   make quick    # Fast build without diagrams"
echo "   make html     # Full build with diagrams"
echo ""
echo "5. When complete, update PROGRESS.md"
echo ""
echo "Happy writing! 🚀"
