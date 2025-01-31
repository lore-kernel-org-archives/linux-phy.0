Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A38C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 22:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFsFcFv7C5SwyDyRg9IHNXcBef7nlcJO/qB5IMiy5CQ=; b=fGeOoxXo990JkU
	8tcStwQdq9wyvnhib/jUFyg49chOplwoIhM+kLuVqItOZOoYvCX6+C0sSqbKqeAwPjKsb7xrjWaEH
	jT4ck5Z6tOGoaHxyIyTUPDof6eaecGCpnXojvY6qCrKAilnXr+Em+gXch1zcs2tdd+HRj20F2d8cN
	3vkRXhER9FKdBNZX5czUWPk/DPagE1XEHaZGnUtfoR+ILID93f+x/zVCbpcDABMO7ePzs2n/2mf4G
	WPQGLsDhaFNG7CiWnCVlPs9zcFEo9icJrsjgduGfGA2nsbV7/aocDiphfKjv72UGh0LW9wbVLeS6t
	7dez8++6dj60Psb88tCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdzm8-0000000Bamx-1izS;
	Fri, 31 Jan 2025 22:46:12 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdzm3-0000000Bakk-24MZ
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 22:46:11 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-30227ccf803so20938641fa.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 14:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738363565; x=1738968365; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fV9hhrVRP+qzrleYSIWXpKoYEuxlmibMFIbjPlpYr2A=;
        b=BUhXQW0g2XvzJdyeYkoFAprOPABsH2KYf4hiOwE4aTfjAaDi1RGMPcPZYsn86pYPeO
         lIkygQtLuCPDWuWd3YYlT+0ei7aqyo3eMdeftFNY2kn9FTDNGaucN/1g1il0hMBNviHU
         2qjuul4wcfuOTk2rd3WwWubks6eA2pGQI0bVezViK4Wy4n+hbHFRDiTm9xckcVDKz0FS
         M75j7VvPIZzJn3feY6GGCDoukSRThTGlJRYT0M7EpbxwZPsgbMmzz7prx4txma7VHlDC
         5CRwUHjBE3gAMxvRBpgTo3tlYzLYd/H/OV0nahvotLgauUbDcAfMioEK2NpV8x1MqnBd
         GC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738363565; x=1738968365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fV9hhrVRP+qzrleYSIWXpKoYEuxlmibMFIbjPlpYr2A=;
        b=Gl8XyQe9xOMKsAIuGqLKw0iSYpTEB5QPMYxZEWXhMcDrJehln3glxnFc1UGUzGGmCx
         WjiTP7US9m3tl8cu2NrAulWY1525aUwnUK2HBjiyh2eT04C7cfAE4jzxyWaHXq9o+yxW
         SkF7BcbqaJtn+y+5z5JZG33IN7pp6wYzOBNlG8w2USzDoDYDSSVTyp+7ym6XWBs0t3Rs
         L18vxvpBZ8ezrNj7TnerDHkl5Y4DFj0YTT4UsR+kIQyd1KOA76pDKUQdoaAJFvPDfE83
         iOwYuUxlzZDDekIRXSEx1JTxuXKojboOloceRQg8msFTJCrCJwHt3K2mpGN75xCj5376
         USDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI2prdOUs8iFbp8n9cChs0Mvu8lQDLVEgiylINCTcowrXsMaWdspyBIUsM4cd5sAfJQwdNyebbklc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr+Fmg4FprHjftNQDPnr2X5I3+mgc5UsY7zant3UCxQrWpbNwr
	0SW92C1d5oPQyLptweVa8z+Mg+e02BtBmH7GF6+jpJvzGBJUUM/7MC5Tbsefv1YjYNdqfZv0KMb
	yUrxBFJq5LwD3/GvprxSE+XkVhGzWqZCoTq7KQg==
X-Gm-Gg: ASbGnctuec4Qp6swDSMZcGlcK1ChnCR48wFWDMXVkQVcNkLkKdQvYVLq6QG5Vf7ef7Q
	f9nFxTkocin/T4EbLkpT+Zody88wBcbAAPnyIf2D+hiHLDeYfySBWE1+u1N+NjPxvFhzAr44=
X-Google-Smtp-Source: AGHT+IHHYjxVhba4NRZORQamjtU7NeuHHIHelxxj9O/XIYBIqNCjtNKWK69c7J1JA7YkTDGQPCWMRncUBp/ITQdEaIo=
X-Received: by 2002:a05:651c:897:b0:300:1c9a:80ce with SMTP id
 38308e7fff4ca-307968e0098mr51916141fa.33.1738363564658; Fri, 31 Jan 2025
 14:46:04 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 31 Jan 2025 23:45:53 +0100
X-Gm-Features: AWEUYZk_dyG4cveXgq-R2QdDjI5W5xxfEw1ByFh9vnHwzlCQYvkaIUdRlN711z4
Message-ID: <CACRpkdads3+XQqvZDJXmYHDLGfRK0H_S==72uqkuht2nEX1+rQ@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_144607_547882_CBDFE0DF 
X-CRM114-Status: GOOD (  18.24  )
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

SGkgRGF2aWQsCgpPbiBGcmksIEphbiAzMSwgMjAyNSBhdCA5OjI04oCvUE0gRGF2aWQgTGVjaG5l
ciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPiB3cm90ZToKCj4gVGhpcyBzZXJpZXMgd2FzIGluc3Bp
cmVkIGJ5IHNvbWUgbWlub3IgYW5ub3lhbmNlIEkgaGF2ZSBleHBlcmllbmNlZCBhCj4gZmV3IHRp
bWVzIGluIHJlY2VudCByZXZpZXdzLgo+Cj4gQ2FsbGluZyBncGlvZF9zZXRfYXJyYXlfdmFsdWVf
Y2Fuc2xlZXAoKSBjYW4gYmUgcXVpdGUgdmVyYm9zZSBkdWUgdG8KPiBoYXZpbmcgc28gbWFueSBw
YXJhbWV0ZXJzLiBJbiBtb3N0IGNhc2VzLCB3ZSBhbHJlYWR5IGhhdmUgYSBzdHJ1Y3QKPiBncGlv
X2Rlc2NzIHRoYXQgY29udGFpbnMgdGhlIGZpcnN0IDMgcGFyYW1ldGVycyBzbyB3ZSBlbmQgdXAg
d2l0aCAzIChvcgo+IG9mdGVuIGV2ZW4gNikgcG9pbnRlciBpbmRpcmVjdGlvbnMgYXQgZWFjaCBj
YWxsIHNpdGUuIEFsc28sIHBlb3BsZSBoYXZlCj4gYSB0ZW5kZW5jeSB0byB3YW50IHRvIGhhcmQt
Y29kZSB0aGUgZmlyc3QgYXJndW1lbnQgaW5zdGVhZCBvZiB1c2luZwo+IHN0cnVjdCBncGlvX2Rl
c2NzLm5kZXNjcywgb2Z0ZW4gd2l0aG91dCBjaGVja2luZyB0aGF0IG5kZXNjcyA+PSB0aGUKPiBo
YXJkLWNvZGVkIHZhbHVlLgo+Cj4gU28gSSdtIHByb3Bvc2luZyB0aGF0IHdlIGFkZCBhIGdwaW9k
c19zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKQo+IGZ1bmN0aW9uIHRoYXQgaXMgYSB3cmFwcGVy
IGFyb3VuZCBncGlvZF9zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKQo+IHRoYXQgaGFzIHN0cnVj
dCBncGlvX2Rlc2NzIGFzIHRoZSBmaXJzdCBwYXJhbWV0ZXIgdG8gbWFrZSBpdCBhIGJpdAo+IGVh
c2llciB0byByZWFkIHRoZSBjb2RlIGFuZCBhdm9pZCB0aGUgaGFyZC1jb2RpbmcgdGVtcHRhdGlv
bi4KPgo+IEkndmUganVzdCBkb25lIGdwaW9kc19zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKSBm
b3Igbm93IHNpbmNlIHRoZXJlCj4gd2VyZSBvdmVyIDEwIGNhbGxlcnMgb2YgdGhpcyBvbmUuIFRo
ZXJlIGFyZW4ndCBhcyBtYW55IGNhbGxlcnMgb2YKPiB0aGUgZ2V0IGFuZCBhdG9taWMgdmFyaWFu
dHMsIGJ1dCB3ZSBjYW4gYWRkIHRob3NlIHRvbyBpZiB0aGlzIHNlZW1zCj4gbGlrZSBhIHVzZWZ1
bCB0aGluZyB0byBkby4KCkkgbGlrZSBpdC4KUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxp
bnVzLndhbGxlaWpAbGluYXJvLm9yZz4KCmZvciB0aGUgc2VyaWVzLgoKWW91cnMsCkxpbnVzIFdh
bGxlaWoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
