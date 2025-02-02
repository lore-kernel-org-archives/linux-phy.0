Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10056C0218F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Feb 2025 10:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZkTsFryfPwH3rOpS4DgaUBXCVnCzJNjW9XAE/pHHkc=; b=P7wtCMKLjWLze/
	ImNywkG4KRwZcpkrKxo46mh1nOi0GtX/VgumxnEcCiQjc7K2WayIjeDkChylhLMm1rMHM8IzCUgk5
	ss9dOY9TAyI3uys47gNtGrAeUCZGupodyUOkrDPnx+TMdwqzKB8VLrcDsSGnVWeE11yPeUXgfIXww
	vVam+n440rRL5by2sV+cprX0MGFlkczmXXL/unaUrOR8uB4wAYwUmWAR5SUjR4GoW/LHdOQTfKcde
	IRVQENWHdqYdh0nW1aSiB4a5Vu92N9iFOpnZfyykV3Y2N2Z9c5c5TnRp9J6J2b+lt87SRGj8JmCQk
	tcPwwf3RfUpepGH2XTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teWy4-0000000DcWN-3KJi;
	Sun, 02 Feb 2025 10:12:44 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teWy3-0000000DcW4-0BiW
	for linux-phy@lists.infradead.org;
	Sun, 02 Feb 2025 10:12:44 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5d3f65844deso6190477a12.0
        for <linux-phy@lists.infradead.org>; Sun, 02 Feb 2025 02:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738491161; x=1739095961; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aB/AiG9y0x5w5gVBo3BQww2hhGOeQt+VRohTT+h2GbI=;
        b=D2qfPST9QHFAMLEeMMBScBNeK04eMmIJ3ymEqPPy6QxYp/jj2aQdwl6XEW1afcShW4
         YnTEvHdIxQ8/4TDOZe4YzIXz40tskPU8N50RCg1/ENkKwgXgelC7Ay0D9A9hEIua3Jb/
         TDHYdPHi3qdsINe2TRfX0ywnqABMSgSM25VDNUedQyV/Twb1Y00QNAXZJVQkrBkx7ViX
         rgw+MYQS9IfHTv5LiCQu8Jt7eRYajACpnwDR1/d7Em/jHE56Nw+H/cq97ECLnZgJTjMb
         LB55D1uSZQIYE/4XioA0wDcGQfdSea2d7sezJEDRSk/cnlbEvVmsMU5M7ZKQ5pYgmEKF
         pacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738491161; x=1739095961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aB/AiG9y0x5w5gVBo3BQww2hhGOeQt+VRohTT+h2GbI=;
        b=vTaJ5MmWMm4cdM/9eGhQUFOXO4VfxOMn18F44XUB9CWnIDwzU+0nc4Zmp8NYAFCcld
         IRBmojPOeljEkCpkCT5nTwwcZ1jESRqN45f38MaFc0xXkEkO4cbnVZeqB28pORhAc5bn
         rtIJdH0tTY/f5LhgFwsFMNhd07hL4Q+2yxJ4h7yVUFk3F/mbeu4QCHJyXfaNdtO87jge
         U/t8fF36mtFwi4taWGQj1oRlRZUzf3CXWBdi8xC9PEkjSFv1a+tn0yHSbHLZFwemf8oI
         vDBJMAtflxrjxLuHKr+2Zx0lAM5vAN/YNSbfZtvAFL9bT1jCQdxFQJxt6ifVJSoYbC5g
         fmhA==
X-Forwarded-Encrypted: i=1; AJvYcCWXfMYbB3vnD7VTKnUkQSn8VrO13BgyXKaCanodu6p1QJbs+HeQCSMCsnlQfWZv7sM/N0qARUFgwkA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhgFRYetwKuoL0mFxd6W8oyy1GFrn14gcGBUtzwKrm0HDBKJpb
	JcbY5nMt1eB+zG29ujCTb6+exhwR2vzqqsMVpuWtMkrOjlzW19QIcl96ehvyI2M/KmuG7C1bba7
	ev8Yw/VVmrua3hOpUfIw8vyJrFMM=
X-Gm-Gg: ASbGnctlX6OQ8/92FOvFYoAA1gbq9evxyGOb1epnCwVW4Faqd8Yfl/o8llxjxitpjj/
	C3ymbeYg8Jr5F+lFNLoyar/QqRNiT5kRrtXOECzeHAtEB4UFL263tbjcdJCw9xyZRI0c7aTDa
X-Google-Smtp-Source: AGHT+IGG+HQvgoBX4n3TX0lDB77z/NOr/BgNCu0WqFPo+F7Br1H/dIMjl1k/3zE4qQQe3coAnvUBbxyB35wiyagHcAY=
X-Received: by 2002:a17:907:60c8:b0:ab6:dbe0:d658 with SMTP id
 a640c23a62f3a-ab6dbe0d90amr1814137866b.31.1738491161033; Sun, 02 Feb 2025
 02:12:41 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-5-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-5-991c8ccb4d6e@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 2 Feb 2025 12:12:04 +0200
X-Gm-Features: AWEUYZlz623rfKFdMFDa-EMU54ZrAWLn0adYcJkUjXYf7NvnTZiflFWMhQpjMxg
Message-ID: <CAHp75VczkbpF4sufxUEJdYMGHsY33TYyrDnnGTV+XTC59+QKFQ@mail.gmail.com>
Subject: Re: [PATCH 05/13] gpio: max3191x: use gpiods_set_array_value_cansleep
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
X-CRM114-CacheID: sfid-20250202_021243_083756_03609C7D 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCBKYW4gMzEsIDIwMjUgYXQgMTA6MjXigK9QTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5l
ckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gUmVkdWNlIHZlcmJvc2l0eSBieSB1c2luZyBncGlv
ZHNfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkgaW5zdGVhZCBvZgo+IGdwaW9kc19zZXRfYXJy
YXlfdmFsdWVfY2Fuc2xlZXAoKS4KCi4uLgoKPiAtc3RhdGljIHZvaWQgZ3Bpb2Rfc2V0X2FycmF5
X3NpbmdsZV92YWx1ZV9jYW5zbGVlcCh1bnNpZ25lZCBpbnQgbmRlc2NzLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGdwaW9fZGVzYyAq
KmRlc2MsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgZ3Bpb19hcnJheSAqaW5mbywKPiArc3RhdGljIHZvaWQgZ3Bpb2Rfc2V0X2FycmF5
X3NpbmdsZV92YWx1ZV9jYW5zbGVlcChzdHJ1Y3QgZ3Bpb19kZXNjcyAqZGVzY3MsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgdmFsdWUpCgpU
aGlzIG5hbWUgcHV0cyBpdHMgZmVldCB0byB0aGUgR1BJTyB0ZXJyaXRvcnkuIFNpbmNlIHlvdSBh
cmUgY2hhbmdpbmcKaXQsIGNhbiB5b3UgbWFrZSBzdXJlIGl0IGhhcyBhIGxvY2FsIG5hbWVzcGFj
ZSBhbmQgbm90IEdQSU8gb25lPwoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVu
a28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
