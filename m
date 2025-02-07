Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED4EC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 10:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLTQOYVLWRT7h9T0HNxLfjFjZ+/Nqi3og0qDGYBsP0A=; b=RocHfOvEV+jpt/
	xNWM9HeFrIz7UFUNS6VS8uMwLcPODgRlpU7nHSt5k6uLSBz2lD9b9DDFRVS8q2NwzpRKCYz5MWD7+
	lPbfufDO1M89+cxo53d+CpM1kjA+bStJPNXTBaNtpNifueD2/rGNM9Rq1K5goJTQNvLF2amKQvEli
	xINNAaCV6xfwZav3moa2oA5FIQROtDFX/Pv0IzO+bjeAn3lnY8fRvYel3FF0i0zpRSaBaik6KBse5
	tQaOKJhXhIuKAB9mwacsI2m1SF8YrtMnT6SiEJWlWG6ftq1NezartPbZvtB1uswIn7OGsk1CFArj8
	xmJCjqxTykWZd7kCqOaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLhz-00000009DgY-0aOS;
	Fri, 07 Feb 2025 10:35:39 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLhw-00000009Dg2-1SZI
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 10:35:37 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5dcdb56c9d3so3112962a12.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 02:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738924534; x=1739529334; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MSXOXieTVzhRaapZT+T7hFM0hi46AothZ59+EmZcB08=;
        b=g8ePDk+/xo3yMcuE5CMNleVdpI9PXND2DAGL9ZZUCZPN4xOyBnxTFGlcGLWGQCRmmg
         xHuRPNB4Qwt/MhSzUPFmlW/d4XwGjjjNSo8nX4M/IMXOuDEmlwI3ZJ8WfZLG9YZS+0mc
         UChr35sBj72DWlz4ZMhHlBukIp5DmfZwYGH0r6VTNU0gPirawNpd6KOVyDIWGYAVMFp/
         xYHHnzWfGwLdStwgT6FiogHWTK9+CiAPK3oJjvyXmhypZWZVMyVbbgKC21N4+4wnV1hB
         i4GKiVCYDfyNrbie0fx70xcT//KLIem60Vd5c6ARKCO/6pK24MxpILpeYcdL/5BZ5Adw
         hAVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738924534; x=1739529334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSXOXieTVzhRaapZT+T7hFM0hi46AothZ59+EmZcB08=;
        b=OpegdVl5v8Uzxaeo6T3olvTYttIubjNGsW/XfEJBxZXQEJgXON+AytwkSQ9shJFu7u
         tP36DAQg32FuY8ObeOyDkBP6tG77m7eQq09nBcaIOB6jbnrz44I62QjATffhBWQGu7xO
         y/mBwu6vkZmfAMHRBhtEwoNf2ejEZedujBHMLEdIz8APdSAlDXQiqhHxfteKvdTjNKLN
         i5tArXJFoMG0oQOcYZ76CQU5Prhcx2oEt1SB9Evp0+UPY0seXSXhL99hMKPF1xTGwooz
         WvNDqjAFBBKWpkZyvlxPMp9WwNqeyqDNOLj8t1+hlKzYduoGU0F40wWHYt/BAwvCaUM0
         7fcQ==
X-Forwarded-Encrypted: i=1; AJvYcCW69JzD/Xe0gZcXrpDNaiGJuISZSOkYaZ5V34fwzm+BqdA68fibzw7N8gi7RGClHuiR6Hweh/v1tWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBTcar2Or4VMuJ1+W0EIvKXogUc83P7Xk5p5tT8PjkIlJsCu8y
	WTwU+3eGFljmMBKTrsPyNaRf7bmKJKJ9wIihQafu1T6wHuDI7XOgGeH88Q1tzpT8/k4Y7025N4T
	ig1SkjkDEQbVZA5QjE/sAzONlQDo=
X-Gm-Gg: ASbGncs8odqyRugRa7hnPm0gTOvQKv/mkiYa6HGUdYRbW5lNy9oQUMXB9XU4oMJxgcI
	oFOMR/kybq5XQrJx7uLLDc9Kp/KFv+eeJMu4p4Gih9y6yJzOVhNGSHEh0vqptIgvTdsnyc74Q
X-Google-Smtp-Source: AGHT+IFsDdaucX1wfJ1VUpx8G0evRZY0LiedNNpXT4C7C5nBCiZUH/mVnC/GlcSGS3PbeRf0OT9nsN0Xw9qx25jpLbY=
X-Received: by 2002:a05:6402:4606:b0:5d9:ae5:8318 with SMTP id
 4fb4d7f45d1cf-5de450706dbmr6829476a12.20.1738924534208; Fri, 07 Feb 2025
 02:35:34 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <20250206-gpio-set-array-helper-v2-5-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-5-1c5f048f79c3@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Feb 2025 12:34:58 +0200
X-Gm-Features: AWEUYZn9dUBLgrBMB29t-azFViPsoLod9-AdOpM2gmZK6mo_lnlhIZ1x0iHhJeM
Message-ID: <CAHp75VcNJzPH8to1Y6NzPMXnH48Ve4LJ7oid7_wEHtwhO82Fmw@mail.gmail.com>
Subject: Re: [PATCH v2 05/13] gpio: max3191x: use gpiod_multi_set_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_023536_383689_E80EF148 
X-CRM114-Status: GOOD (  10.02  )
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

T24gRnJpLCBGZWIgNywgMjAyNSBhdCAxMjo0OOKAr0FNIERhdmlkIExlY2huZXIgPGRsZWNobmVy
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBSZWR1Y2UgdmVyYm9zaXR5IGJ5IHVzaW5nIGdwaW9k
X211bHRpX3NldF92YWx1ZV9jYW5zbGVlcCgpIGluc3RlYWQgb2YKPiBncGlvZF9zZXRfYXJyYXlf
dmFsdWVfY2Fuc2xlZXAoKS4KCkl0IHNlZW1zIHlvdSBtaXNzZWQgbXkgY29tbWVudC4KCj4gK3N0
YXRpYyB2b2lkIGdwaW9kX3NldF9hcnJheV9zaW5nbGVfdmFsdWVfY2Fuc2xlZXAoc3RydWN0IGdw
aW9fZGVzY3MgKmRlc2NzLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50IHZhbHVlKQoKVGhpcyBpcyBub3QgZ29vZCBuYW1lc3BhY2luZy4gQ2Fu
IHdlIGNoYW5nZSB0aGlzIHdoaWxlIGF0IGl0PwoKbWF4MzE5MXhfLi4uCgooSSB3b3VsZCBnbyB3
aXRoIG1heDMxOTF4X3NldF9tb2Rlc2VsX3BpbnMoKSB0byBtYWtlIGl0IHNob3J0ZXIuIEkKaGF2
ZSBubyBjbHVlIHdoeSB0aGUgZnVuY3Rpb24gcmVwZWF0cyBzbyBtdWNoIGZyb20gZ3Bpb2QgQVBJ
IG5hbWluZy4KSXMgdGhlcmUgYW55dGhpbmcgZWxzZSB3aGljaCBpcyBuYW1lZCBpbiBhIHNpbWls
YXIgd2F5PyBQZXJoYXBzIGZpeCBpdApieSBhIHNlcGFyYXRlIHBhdGNoPykKCi0tIApXaXRoIEJl
c3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
