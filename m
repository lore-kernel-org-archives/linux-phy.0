Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FE2C0219C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqM/+Be/f97kMgiNsNdN4GNjx6c0fSfAoTPY35JqsSs=; b=sxZM7ygj4Ly7tK
	ql9DaK+Ekqxhyyl83lYjEw8uGYq/cn5GSayBZZt7XluaLSVKGrDAFW/Q8Zu7ctSbFLeJ0NGIetjEp
	Mzm2vAS76DqdyZnUIZOM+4qJkbVAIco+C2/ufBi7LOAdxWOpdAGYOeQdL8C95cQHWlYiupoKxszL1
	20Hm3K1BCZ3/kMeSun1Kt7cZ5TwmzKYElOeRlcOqGqZ3Xog0AJfBkx76eUv0tGGTzL4vS+iMIfmaM
	tpcxBkZcOlKnlelT3cLMeEnyNlIaUVLtY3ORdyG7sdm4ubON0k6TcurDc2qq4tfC/ruigLP8I30uV
	X7+RFzxT0QMgvZfcIUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQd3-0000000AA2X-427E;
	Fri, 07 Feb 2025 15:50:53 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQVa-0000000A81I-02HH
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 15:43:11 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-21f53ad05a0so13584485ad.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 07:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738942989; x=1739547789; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UxhLoK7XAPc7+07p+MzQjz273lZ6TnGYiS+xzwBXJJs=;
        b=XQML1v9fW1+i4/+mfbcf/Ozufp/KitVvRezQOwIk2v54WTBX7CRAhVHUNufithKX7f
         4a7WlXgXf0T5enHF+DOT5012n4sKUK8WQiCBOBp2Fh4bUsco8dm+Ce0ZLZotJV5Hk1EZ
         iwKn47Prm6pNOg3kCkZEoGqIYIuYokIPum3GBBWO7TnxgH5lUeObZmBRcG3PUEcP0bAv
         s9eZuvuX3MMuEqfADmIICSJJ6DYHfB4k7IpJQTGJjvbE0ySeGI1LIdZ7Xz69zWYULktj
         w2qU3lL+CJ9S4MkzNs7lB1QpSkmxo1Q55DCB71R6pD42hmOneWFLKxqydTsRdJMA0AsK
         u+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738942989; x=1739547789;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UxhLoK7XAPc7+07p+MzQjz273lZ6TnGYiS+xzwBXJJs=;
        b=LT84tLnnBzf4OshiB9aQqPEGJf/XBrj0qzmQsTg3VkkPIAqm/Swsk/XzvUxqAgxyc7
         Fhi8qKQrt5y/yCdyXVvIKIJdqCGSBk+hzFycPE5zW14vt3TQM8OH6G00Pt3s18E5A0KE
         DxdayDUShEM9kg6zwOhNCEMFN5VH6PGIaAjmyBAEedBbQ72oF946QApTdKqq4prKiU6F
         qbO1XbDfGU701DDV6Xj0U14DGUdUc9fDPjs54AyYnW1jldHxiBMOaIhFJtQATSdj11NC
         j1jtE7KE/0adNLEBkqLN5s5T6FmXpqxMBNXz9dPHLtcAqKJ5fs4Ru4H24zQlasj/98ek
         d6EQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbiwibDhB/RRH92iE2MXoE/mpBl8JhuQVYm7/EGdFExfTIIIDUecQV80nXtORL4P3HGPnClomvXX0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcHpMw+jKRx/yGE/KsmAqCTQ5qnWLsS/u60mSmpA7i2wfB7NYc
	XmknZ9MNfUMtEw96+8rU28fSu9KcPlm4vfR7a2SbfCrIpnzvxr+2
X-Gm-Gg: ASbGncsFV57R0RqpbC5fis2noEst++NIyA7IWN2Gz6TFeKZebdMesy6nUcYWAiejgFi
	S86wJzvjWzOqg/6T9AADv4k1Q+/X0iJGO09Gr0Tpc+hfyJpgF/qRDsFcOFJU/Ox1iCUpNfurKdi
	wO+69KLBetBGuuOk9whhjSiHh4dz3fAskjXi1VdDUi4YCwBIk/ffmnSv67bvoEK1UGf06nHB1wl
	kJTUrQhRdHGvR3FTLG6xk1V9TCOwyQBwHuxUuNa8abd72OT8WlvTEjaq6k+mjuU6J2YfDQnwDMO
	vJU5CGUbP/UZByE=
X-Google-Smtp-Source: AGHT+IHksggvra53OzUJzI4zoRynwjPKZIRBW8flE8pNvut2OPynffqKQreS+fTXcRUSXiaAn6xL3A==
X-Received: by 2002:a17:902:ce8c:b0:215:4a4e:9262 with SMTP id d9443c01a7336-21f4e1cc2e9mr47245225ad.8.1738942987478;
        Fri, 07 Feb 2025 07:43:07 -0800 (PST)
Received: from localhost ([216.228.125.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f368ce622sm31799335ad.241.2025.02.07.07.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:43:06 -0800 (PST)
Date: Fri, 7 Feb 2025 10:43:04 -0500
From: Yury Norov <yury.norov@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
Message-ID: <Z6YqCOP2lVseW-i4@thinkpad>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
 <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
 <CAHp75Vdt5EU83mJrB7Sb_pgRNbhvCQ=F2Lyq7mQLAvV-w6cqEA@mail.gmail.com>
 <b1459947-18ec-4835-8891-5251d8f8c95e@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1459947-18ec-4835-8891-5251d8f8c95e@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_074310_052036_B489DBE6 
X-CRM114-Status: GOOD (  18.59  )
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

T24gRnJpLCBGZWIgMDcsIDIwMjUgYXQgMDk6MjM6NTZBTSAtMDYwMCwgRGF2aWQgTGVjaG5lciB3
cm90ZToKPiBPbiAyLzcvMjUgNjoxNyBBTSwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gK1l1
cnkuCj4gPiAKPiA+IE9uIEZyaSwgRmViIDcsIDIwMjUgYXQgMjoxNeKAr1BNIEFuZHkgU2hldmNo
ZW5rbwo+ID4gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+ID4+IE9uIEZyaSwg
RmViIDcsIDIwMjUgYXQgMTI6NDjigK9BTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJy
ZS5jb20+IHdyb3RlOgo+ID4gCj4gPiAuLi4KPiA+IAo+ID4+PiAgc3RhdGljIHZvaWQgdHNfbmJ1
c193cml0ZV9ieXRlKHN0cnVjdCB0c19uYnVzICp0c19uYnVzLCB1OCBieXRlKQo+ID4+PiAgewo+
ID4+PiAtICAgICAgIHN0cnVjdCBncGlvX2Rlc2NzICpncGlvcyA9IHRzX25idXMtPmRhdGE7Cj4g
Pj4+ICAgICAgICAgREVDTEFSRV9CSVRNQVAodmFsdWVzLCA4KTsKPiA+Pj4KPiA+Pj4gICAgICAg
ICB2YWx1ZXNbMF0gPSBieXRlOwo+ID4+Pgo+ID4+PiAtICAgICAgIGdwaW9kX3NldF9hcnJheV92
YWx1ZV9jYW5zbGVlcCg4LCBncGlvcy0+ZGVzYywgZ3Bpb3MtPmluZm8sIHZhbHVlcyk7Cj4gPj4+
ICsgICAgICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKHRzX25idXMtPmRhdGEsIHZh
bHVlcyk7Cj4gPj4KPiA+PiBBcyBJIHNhaWQgYmVmb3JlLCB0aGlzIGlzIGJ1Z2d5IGNvZGUgb24g
QkU2NC4gTmVlZHMgdG8gYmUgZml4ZWQuCj4gPiAKPiA+IE9yIGlzbid0PyBEbyB3ZSBoYXZlIGEg
dGVzdCBjYXNlIGluIGJpdG1hcCBmb3Igc3VjaCBhIGNhc2U/Cj4gPiAKPiA+Pj4gIH0KPiA+IAo+
ID4gCj4gCj4gTWF5YmUgbm90IHRoZSBiZXN0IHN0eWxlLCBidXQgSSBkb24ndCB0aGluayBpdCBp
cyBidWdneS4gQml0bWFwcyBhcmUgYWx3YXlzCj4gaGFuZGxlZCBpbiBsb25nLXNpemVkIGNodW5r
cyBhbmQgbm90IGNhc3QgdG8gYnl0ZXMgc28gZW5kaWFubmVzcyBkb2Vzbid0IGFmZmVjdAo+IGl0
LiBJIGRpZG4ndCBzZWUgYW4gZXhwbGljaXQgdGVzdCwgYnV0IGJpdG1hcF9yZWFkKCkgYW5kIGJp
dG1hcF93cml0ZSgpIHVzZQo+IGFycmF5IGFjY2VzcyBsaWtlIHRoaXMgc28gaW5kaXJlY3RseSBp
dCBpcyBiZWluZyB0ZXN0ZWQuCgpOb3QgYSBidWcsIGJ1dCBkaXJlY3QgYWRkcmVzc2luZyB0byBi
aXRtYXAgZWxlbWVudHMgaXMgZGlzY291cmFnZWQuCkknZCBzdWdnZXN0IHVzaW5nIGJpdG1hcF93
cml0ZSh2YWx1ZXMsIGJ5dGUsIDAsIDgpIGluc3RlYWQuCgpUaGFua3MsCll1cnkKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
