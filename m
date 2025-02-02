Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 782C0C0218F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Feb 2025 10:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtmGbwjDDAv1z32hOgFkxgOHD/kdtVwC4krym2v7uyo=; b=BrhltLVnBW83zU
	yf49K7nCtRBDEPYSeBPLhUqjlEYyp/g/sNl+MzBAj/ZxdMOQAydfa6RGZ7CdSFYe4sBSMDVSKjoB1
	TUZrblR/pWEV7Az5Vc4YWx2dI6XNI6otSlxPe9M7+p1vIEpXqyubzcRGS5Qr28km2qSZNC7S1GTi5
	qqp9ydrTL922QB+BMyN2fMVWbNfDUxT+EqIKoyghpUSKwsUhhN/dWQM9MSWiQxnGEyn2iYmu1HSJw
	raftcmjXfqo5chJ+wPDW2gRxh5VuKS/3pAWkl2jeymSii0nPMmu1KOn2zePVxMeoPWbEG9dqplER2
	FcFNWSbgFPCAvnXwKx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teWuu-0000000DcJj-0whh;
	Sun, 02 Feb 2025 10:09:28 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teWuT-0000000DcAt-3nTc
	for linux-phy@lists.infradead.org;
	Sun, 02 Feb 2025 10:09:03 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso738562066b.3
        for <linux-phy@lists.infradead.org>; Sun, 02 Feb 2025 02:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738490940; x=1739095740; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWUZPomdszTM47BU/+BbEkaucwLYsLRFbnWZlNYrstw=;
        b=iNi5BIxGc0Lq9Zm4s2imlF5sW7fjum1XKQ72rAW0PhSxKKnx3OK1ejbgtaFI7kbxjm
         X5t8T7rhzNoaNNy3QacCtt3+fBcrYkVzTABbmKo4MrWeWT2T2WpqGl8LXnMU6CYdz61t
         I8WjG+jPHF2OVzd0trYSmOYfDIJJpC/yqR0hXAJ77rNaGDV6onqzA/o6fTtEJZmmD0jt
         w4KkBRVpRp9PKcZBgHoUsSTXRYJYc0MxiqrOy6ldza9K5dmx1TyTqxFoxAk2JhPOJSzg
         rCpY4j8p3kMYh4Ljk9Ygugb1RagGiV9FiiMgRzY/6drMxpTmMwMGFuP+lskFgr+beatK
         Hfmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738490940; x=1739095740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWUZPomdszTM47BU/+BbEkaucwLYsLRFbnWZlNYrstw=;
        b=WYh6J32ix3LzrEc7RqjfY3FA59zEDEXjrGgzKzZuo8/BLeCkJE5EDL3ktN3b/48Ba1
         4nVz547iRptdS7W1bQtA1s/WrW9dxEhwTQWJsw2B0OobLQJ+6SfC0INbHJRNw07SpL7X
         BdY/sAsWIUAwyN7Llnr11CSIspi2wAs9JrMPSNlKCAlxzcgIgibIqbCOD9pYpsohi7lX
         HSA8a782qg9FrCofG/YZ4X2L4ztL1ya9MGt2WNpV1+JtBwcHhvT0x8Zqv3e7om9NA6w3
         kv+hWAmwkRAIaudZ3CwjkvvyFK+Y1FvBq2Djf5MeSZd6ak1a8E0ThsnJ6b1OU/eHzMAv
         RPRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRX+Kc2F4ibw3uYVX5ozENoFxSRo6Of/PqPVDxzCZrtgfEiL31/3AMDwkxFoWo5P6AUzluStwUUNo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNyRwNQdP25bjgxs37SYEgRItwcXjszA1YZn2712kj54g2ySqF
	BQq5eM7jG66uk3KpgmK+l6w/goSIXjtjNM9jZpSdI4TsKlCKQKxPYuQoXnkPNvAWv+kn5r6i11/
	7NiZM7LUwWTsPV1VRuod9ftK0QqA=
X-Gm-Gg: ASbGncudEEErmm4wblEb01tPKxV2ZtfCoYKEf8Ijl+RYkCf/i1WT7Ca+xxAi42xMbC8
	muNQmAPwysrqCbmxKIU88FtfC7ARyP8YttG9m0QlxHpWfv1AkDpCP1oRT4h1Ky72xfZWSTPb4
X-Google-Smtp-Source: AGHT+IGoMhEdpYXBWWR7zI4SfcoJvtkFU2TWS1zQ7GZgm8kyeKcPqMITa2e0cneA92EhnMutQOz1UJGZQayvtg32aYY=
X-Received: by 2002:a17:906:40c7:b0:ab6:d660:c845 with SMTP id
 a640c23a62f3a-ab6d660cb02mr1815035366b.50.1738490939878; Sun, 02 Feb 2025
 02:08:59 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 2 Feb 2025 12:08:23 +0200
X-Gm-Features: AWEUYZn8sXhkqdCp_uJFCgUuy56ygLY55_-aYNnx8QdbJRXYArIopW_KyJxDO2E
Message-ID: <CAHp75VcPgCeC9RJQA411RYCiPpTjEqiwtchPyajz9su5dgvPiw@mail.gmail.com>
Subject: Re: [PATCH 02/13] auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
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
X-CRM114-CacheID: sfid-20250202_020901_965434_A1C18DE1 
X-CRM114-Status: UNSURE (   7.66  )
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

T24gRnJpLCBKYW4gMzEsIDIwMjUgYXQgMTA6MjTigK9QTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5l
ckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gUmVkdWNlIHZlcmJvc2l0eSBieSB1c2luZyBncGlv
ZHNfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkgaW5zdGVhZCBvZgo+IGdwaW9kc19zZXRfYXJy
YXlfdmFsdWVfY2Fuc2xlZXAoKS4KCkFja2VkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHlAa2Vy
bmVsLm9yZz4KCk9yIGlmIHlvdSB3YW50IG1lIHRvIHRha2UgaXQgdGhyb3VnaCB0aGUgYXV4ZGlz
cGxheSB0cmVlLCBwbGVhc2UKcHJvdmlkZSB0aGUgaW1tdXRhYmxlIHRhZy9icmFuY2ggZm9yIHRo
ZSBmaXJzdCBwYXRjaC4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
