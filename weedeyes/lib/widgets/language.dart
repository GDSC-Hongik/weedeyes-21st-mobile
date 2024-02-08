import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String _selectedLanguage = '한국어';

  void _handleLanguageChange(String? language) {
    setState(() {
      _selectedLanguage = language ?? _selectedLanguage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('언어 설정 (Language)'),
      ),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildLanguageItem('한국어'),
            _buildLanguageItem('English'),
            _buildLanguageItem('English (UK)'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageItem(String language) {
    return Container(
      color: CupertinoColors.white,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => _handleLanguageChange(language),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: CupertinoColors.separator,
                width: 0.0, // One physical pixel
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(language),
              if (_selectedLanguage == language)
                Icon(
                  CupertinoIcons.check_mark,
                  color: CupertinoColors.systemBlue,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
