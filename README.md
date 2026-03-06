# API-The-P-is-for-Practice

NOTE: MyPlayground is a scratch work file, didn't mean to add it. Feel free to ignore.

This was a tough one! I started this project with 2 goals: 
1) Create a flask app to serve some dummy JSON
2) Consume it with Swift

And while I did create a simple Flask app to publish some dummy JSON content representing a simple file system, and
configured a network call in Swift frontend to consume it, parse it, and render it recursively, the complexity of the JSON kinda got away from me with the recursive types. I had to repeatedly re-scope the project to get it back into manageable territory.

I went on many wild goose chases that taught me valuable, but not overly applicable, approaches to vaguely similar problems (shoutout recursive enums!)

# Key Takeaways
- KISS. I am so prone to forgetting this. I was getting too fancy, it's just a tree, man.
- Networks calls: fun stuff. Coming from the React world, this was a fun parallel learning moment.
- Flask: Not super in-depth, but it was nice to be able to pick up a new skill, even surface level.
- Project Organizaton: Key is to maintain SoC, not necessarily to conform 100% to a certain design pattern/architecture. I read many conflicting opinions about where network calls should live in MVVM-land.
- NavigationStack (programmatic): Can I do this freehand yet? No, probably not. Is it fun? Absolutely. Satisfying to the max.


<img width="200" height="400" alt="Screenshot 2026-03-06 at 12 40 45 AM" src="https://github.com/user-attachments/assets/dc50912c-b304-48db-a3fd-1c579afbad8f" />
<img width="200" height="400" alt="Screenshot 2026-03-06 at 12 41 44 AM" src="https://github.com/user-attachments/assets/ec2179e0-dc32-46e8-a8c2-faadb75869a5" />
<img width="200" height="400" alt="Screenshot 2026-03-06 at 12 42 03 AM" src="https://github.com/user-attachments/assets/de14a633-0d75-4853-aa28-d18412ffd434" />
