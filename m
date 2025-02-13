Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A0CFC021A0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 18:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kn3z+xB7UP7ecWbdsTb6WV68mLF58bHdor3wd5EPV90=; b=uWJjM7COn9AU5k
	HpmupqU9xd8QlA00VcNlFs1Imf0y+j4Caxt6MziCTVQgrCJbzqmxZ9RchdAe1TcCNdaHWJfIcL1u8
	yr74Bs0u77a54hebyot9EZ0EYfcCDIyGmYjJS6+eF2H9xqnAXb5ovLLT7pzZc8k5OAY6yK0JQwHDh
	N3TI5m15I+6RvpdGec4GH6p4fJDShpDIpXmuo9eCQCg4d6QkWKNIogFgoiaZjqgTET1NqFdYGfEBL
	qsH48vrvJTb0iLyPV51uxjcDC3iy7OipdGkF77FHUPTFQfc80tsoKMhASQfHcVkCRJpLe/3AaQWRb
	2T5vVtTWB6uqKVHmg5fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tie4X-0000000CGQO-2UIf;
	Thu, 13 Feb 2025 18:36:25 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidTd-0000000C6gt-18RM
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 17:58:18 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5450f2959f7so1186817e87.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Feb 2025 09:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739469495; x=1740074295; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hJUq2FWMpiTubsUgXvXpT/cz5xlZO2FuryQMryqjCg=;
        b=g2ovL/rtwOftShXBv9JkwomLEhIFc0NgUEaGWR5W2O76+WJGon7xPbLlSbfFss5sKv
         ufzfcg9t9nsGBrvEsGhm4xRq2q0xBMDgqbtEqzo2Dk5cynuiwOQFDEM0X2jdDve0RQAH
         PGgwd9RMWdujhEkS2PEahmKpsflCFLy199w8Y4kyRurlwGKjXqvAPkm/Nj2VSAphMPHT
         qJR1njWGng7CP8g4kem+LC2MzMwacIoDIxwbNb5qzeRnRb4OWiObV7kXEUNNzrmEta9S
         k2pa/RNCHTH6eF3HFLvXD6MG9qo3zcN2mP19K9aqCkspyT/JIitrVXBghQxkGPXCOPyb
         80bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739469495; x=1740074295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1hJUq2FWMpiTubsUgXvXpT/cz5xlZO2FuryQMryqjCg=;
        b=RHb2vXACYmT4GjoDDKmijg/dY8F3OTOzhhj+oiSIqahiQ5zYQvKo3qeiC4+haZWkkw
         /nV4k/m1rZQ1Bsa4qWh4bAazqti3lQ3cVDrAn1Kqgai13xKi97XELeI2u7XJC++1t/Pk
         ndD2HinV7Mf219JEjFvcLzhuA6LKAJiMpofavHHrfjMkt5IJa0I2nUcuHxrNND2j30V/
         IZv0rV5BwYJmBo1FireXYhKaPPbPU4nWrutPUf4O5Efws1ONpds5PKQIIueWvzTlCPhA
         tAIKtzOrbMi9TZpbIodyEhjfKknGwUom2sbwGGGYZroVoCH3dChW5d3BONnCydOsuyEg
         jYaA==
X-Forwarded-Encrypted: i=1; AJvYcCVUTlO8+zN5r4uuIyqQ6kP50HOCd3kcJw4gwa7tjIw7r5F9iSxDg7zOzdQSQXiAJ18x15cUHvlFfjI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyHAd/Z9T1h/8eaCFolUVeKNbnm9C7zWht7RimE+h6/65BJsxk
	a+4VHcRo10U1ELxEtUbmtSJ5g6eoedzc5dzZuOC7Q3rU9NwdUS1gCx8cEJMjyWcrNIIwhrGB+AP
	BONwbc/c82zDrXXOfxYpD3E2mgpP6UFpzsn7JlQ==
X-Gm-Gg: ASbGnctCr/GxfhwVTxTQRQVrLf4auNwgDEY0bbi5rTPLdsFgQcrIX6z2SwIyRxcPw04
	qtS0ZG7GsDIbv3rcIlALwdqHM40PEPLaQPgdaLdpYYRVgtG28YcCVZtx7fL+N2z1cB4BIVKToZV
	ZjFaGWFIhPPukza/AHoxBkdYXvRwuD
X-Google-Smtp-Source: AGHT+IGvl6mW9n7No7hloQAm0sjQgh6h7QTx9ok6twfTZlsAcsr3IPTDtYgCtgjq9SBpATIzjmWo0SWAoAL/h4h3bA0=
X-Received: by 2002:a05:6512:230d:b0:545:8f7:8597 with SMTP id
 2adb3069b0e04-5451dd953bdmr1828407e87.16.1739469495145; Thu, 13 Feb 2025
 09:58:15 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
 <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com> <CAMRc=MeXTvPnEPjOmPd5Vw0FYKHzndsB0SVjQErA4CY_0MGsMQ@mail.gmail.com>
 <7989a6a0-b761-416c-ad97-69bd23fdc2c4@sirena.org.uk>
In-Reply-To: <7989a6a0-b761-416c-ad97-69bd23fdc2c4@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 13 Feb 2025 18:58:04 +0100
X-Gm-Features: AWEUYZmrRaL2YjTM2r-jpirYN5EOkISNS2cmGOX2GIxOe7L0RqWQ7r8Dpd66z_c
Message-ID: <CAMRc=Mea5imComkraP=v9TKsxLDoBm4XtbLL1QxCbhJ8d4uxcA@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
To: Mark Brown <broonie@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_095817_308728_2DE3289D 
X-CRM114-Status: GOOD (  19.19  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjUgYXQgNjo1M+KAr1BNIE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEZlYiAxMywgMjAyNSBhdCAwNjo0MjoxOVBNICsw
MTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gT24gVGh1LCBGZWIgMTMsIDIwMjUg
YXQgNjoyNeKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4gd3JvdGU6
Cj4KPiA+ID4gRG8geW91IHBsYW4gdG8gcGljayB1cCB0aGUgb3RoZXIgcGF0Y2hlcyB0aGF0IGhh
dmUgYmVlbiBhY2tlZAo+ID4gPiBhcyB3ZWxsPyBJdCBzZWVtcyBsaWtlIG1vc3QgZm9sa3Mgd2Vy
ZSBPSyB3aXRoIGV2ZXJ5dGhpbmcgZ29pbmcKPiA+ID4gdGhvdWdoIHRoZSBncGlvIHRyZWUgc2lu
Y2UgdGhlIGNoYW5nZXMgYXJlIHNtYWxsLgo+Cj4gPiBKb25hdGhhbiByZXF1ZXN0ZWQgYSBicmFu
Y2ggc28gSSBtYWRlIG9uZSBhbmQgc2VudCBvdXQgYSBQUi4gSSBmaWd1cmVkCj4gPiBwZW9wbGUg
d291bGQganVzdCBwaWNrIHRoZSByZWxldmFudCBwYXRjaGVzIGludG8gdGhlaXIgcmVzcGVjdGl2
ZQo+ID4gdHJlZXM/IEZvciBwYXRjaGVzIHRoYXQgd29uJ3QgYmUgaW4gbmV4dCBieSByYzUgLSBJ
IHdpbGwgdGFrZSB0aGVtIGlmCj4gPiBBY2tlZCAtIGp1c3QgcmVtaW5kIG1lLgo+Cj4gSWYgcGVv
cGxlIGFyZSBhY2tpbmcgdGhpbmdzIHRoYXQgZ2VuZXJhbGx5IG1lYW5zIHRoZXkncmUgZXhwZWN0
aW5nIHRoZW0KPiB0byBnbyBhbG9uZyB3aXRoIHRoZSByZXN0IG9mIHRoZSBzZXJpZXMuICBXaGVu
IHlvdSBkaWRuJ3QgYXBwbHkgdGhlIEFTb0MKPiBwYXRjaCBJIGRpZCBhY3R1YWxseSBwdXQgaW50
byBDSSBidXQgaXQgd2FzIGEgYml0IHN1cnByaXNpbmcgdGhhdCB5b3UKPiBzZWVtZWQgdG8gYmUg
ZXhwZWN0aW5nIHRoYXQuCgpUaGVyZSB3YXMgbm8gY2xlYXIgY29uc2Vuc3VzLiBTb21lIHBhdGNo
ZXMgYXJlIHN0aWxsIG5vdCBhY2tlZC4KCk5vIHdvcnJpZXMsIEkgd2lsbCB0YWtlIHRoZSBhY2tl
ZCBvbmVzLiBJIGRpZG4ndCBzZWUgYW55IGI0Cm5vdGlmaWNhdGlvbnMgZnJvbSB5b3VyIHNpZGUg
eWV0LCBzbyBJIGFzc3VtZSB0aGUgcGF0Y2hlcyBhcmUgc3RpbGwKcGVuZGluZz8KCkJhcnQKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
