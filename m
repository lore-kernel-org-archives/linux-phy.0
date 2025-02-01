Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C722BC0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 16:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=im8arBGuivuFVMr6lBLJr781/lI3JHtdPB1tSOY4KMs=; b=xK07YP0SPsEd1O
	sm5jr8+/bsFvvulRbZS6x24ZxHGjorYgZDkqxaWwWZ688oR3kWD+lsYVKC/wzbv7ifNPUTpuWcqvv
	rTA9eZx/t/FNaOXIup3Sfx+YtzxQogAA6PS5cOLx29L/IoXO5FWkRQlTplvY0IFOAYsClBgeiAuoz
	wsXbrUZtKHUINfZbECBz3EAP6SCHOa9Ohy5alaKXtAOX8siRmnIhcK3icFLQCw8tdPGuZFlyV21O+
	gDU9y+i6auEPowfF77bkcefAFbpCrq7r52y1ipMzdM5L7LScG3SwOcYkryiXD/xbzhqRycmhqsM4R
	MTkjH1FIqrRQOjYKZEVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teGC2-0000000Cqgy-2HTN;
	Sat, 01 Feb 2025 16:18:02 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teGC0-0000000CqgT-0XB8
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 16:18:01 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-71e1e051e50so827742a34.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 08:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738426679; x=1739031479; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xa6g2oNfuacwFq4nVjdCRSL/cRrTFR4jPo2z/+uIvHw=;
        b=T50AVwG1aS5NBya1rF2zHPEGfN8cYGJNRoe5+xD1NpvReMTTqmAatg/qOm6LOqnloS
         WU0dBlf4ifh22baky+Bwf35U7PaehuuEzYt+5p+Uc/3jIVErpw7OoohExNkeNfX1sn4l
         UAGg1egd9jNprU1DXrBkVcvhHjXSWyexg7LO6SMZU9/clSC1ahzxHE2ZgMCHPOIKpoci
         jKDP8++eawOjXZXmts1XedUxzFEYkRNKi1zBxUOWddaNwcShO5QLxhEBHvyEYCTlyw7u
         dc2Jjm8l8kRACXRcxSGJr+QM2tLJrEKX/KvHPLV7cBUe1YXU/7pgPGSI82S+40w02JdN
         JZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738426679; x=1739031479;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xa6g2oNfuacwFq4nVjdCRSL/cRrTFR4jPo2z/+uIvHw=;
        b=s6nwE2vaWO0guMNgcP4hHii68pXPzKUDNv6G/hrsyrAcVi5QBsqBVkRDIwmEBERc2k
         P3V3uY/qG+etaEMErPouprIt2qyiRYpidnZRm75QkKSEXv66Z60ZZqaESwGyH5UzqYFf
         fAe2y0DXdtJssOXA1MGBl8VpMwYxUqadJBp1LrOJgecgwRT69IJbCYag9lmEmPCrUjPl
         7X9q1BO8Ovb9sAEeBs5D19v9FsL/Zhes4mA1+lcRHaQ8629PlLAMVrWN1SeA/VY3QPO+
         khLRBYCWAScr3/kR8ihMV3ZcH+SDJDMBtyvlaKnkgHX/0mBD2Km2Yu49EYOf/nKwiiYu
         mX8w==
X-Forwarded-Encrypted: i=1; AJvYcCUuXO8k1LF0dcCx8k5mVh/lQEqkT5WGD3JqcogkV9ns26blIfKN0GuId+SAMJ7SJvLvi8OeEFH/zTQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5yW4lxNJ7J/ZrdFMXbKaW+UtxoAIzDgTNUL4wK3Oadwas32qq
	fEEizUeQB7jPozSIhvSi4uwVW83/ehskXli5d4NFzKggZ/KaOQyGuUhW0QvYzuU=
X-Gm-Gg: ASbGncutvXXYEvtx4kRcR9JzoGoA0PcO3N9kgZkuiYO3CRJCgPg6LSkB68iR2UD6G1Q
	RYBvg/6IsUWGDf7N1mnxLsWGkKImjpWQksuMvnCxaypgieuJWlT64W5mBM4jWOt47MFZJ9J6/rB
	bwEcUE5iqCYWRsUIx/AJykqgD86e/JjJ0TTwOPaBoAfrK/SFLwAf5baT14uBnFCpQtglLMGU3j/
	83qTpJpNIQNjPHVVFamGBzDF9nIELy2T+phLOGBqv1TFIECDYztXBHk9CWPrULoZ1SLh9LlQJAc
	XGkjyNLwXNOBHwRzo0yX1KPAVEqpRBowK9ccaHczVEftIWqxSvVI
X-Google-Smtp-Source: AGHT+IFzTntDqApDTAnL1g6GyTMtXHnjjv0+Ekcn43kwaqkrr7pFq/ZL82JAD9ToxQaZIxfyiLBkBw==
X-Received: by 2002:a05:6830:651b:b0:71d:f343:5f5b with SMTP id 46e09a7af769-7265676f070mr10847417a34.12.1738426679061;
        Sat, 01 Feb 2025 08:17:59 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc104e27cdsm1476222eaf.16.2025.02.01.08.17.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 08:17:57 -0800 (PST)
Message-ID: <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com>
Date: Sat, 1 Feb 2025 10:17:56 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
 <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com>
 <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_081800_173528_E73DDA92 
X-CRM114-Status: GOOD (  14.48  )
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

T24gMi8xLzI1IDEwOjE0IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+IE9uIFNhdCwg
RmViIDEsIDIwMjUgYXQgNTowOeKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJl
LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDIvMS8yNSA0OjM2IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tp
IHdyb3RlOgo+Pj4KPj4+IFRoaXMgbG9va3MgZ29vZCB0byBtZSBleGNlcHQgZm9yIG9uZSB0aGlu
ZzogdGhlIGZ1bmN0aW9uIHByZWZpeC4gSSB3b3VsZAo+Pj4gcmVhbGx5IGFwcHJlY2lhdGUgaXQg
aWYgd2UgY291bGQgc3RheSB3aXRoaW4gdGhlIGV4aXN0aW5nIGdwaW9kXyBuYW1lc3BhY2UgYW5k
Cj4+PiBub3QgYWRkIGEgbmV3IG9uZSBpbiB0aGUgZm9ybSBvZiBncGlvZHNfLgo+Pj4KPj4+IE1h
eWJlOiBncGlvZF9tdWx0aXBsZV9zZXRfIG9yIGdwaW9kX2NvbGxlY3RlZF9zZXQuLi4/Cj4+Pgo+
Pj4gQmFydG9zego+Pgo+PiBJIHdhcyB3YWl0aW5nIGZvciBzb21lb25lIHRvIGNvbXBsYWluIGFi
b3V0IHRoZSBuYW1pbmcuIDstKQo+Pgo+PiBJIHdhcyBnb2luZyBmb3IgYXMgc2hvcnQgYXMgcG9z
c2libGUsIGJ1dCBPSywgdGhlIG1vc3Qgb2J2aW91cyBwcmVmaXggdG8gbWUKPj4gd291bGQgYmUg
YGdwaW9fZGVzY3NfLi4uYCAodG8gbWF0Y2ggdGhlIGZpcnN0IHBhcmFtZXRlcikuIEFueSBvYmpl
Y3Rpb25zIHRvCj4+IHRoYXQ/Cj4+Cj4gCj4gWWVzLCBvYmplY3Rpb24hIEFzIGZhciBhcyBhbnkg
ZXhwb3J0ZWQgaW50ZXJmYWNlcyBnbzogaW4gbXkgYm9vawo+ICJncGlvXyIgaXMgdGhlIHByZWZp
eCBmb3IgbGVnYWN5IHN5bWJvbHMgd2Ugd2FudCB0byBnbyBhd2F5IGFuZAo+ICJncGlvZF8iIGlz
IHRoZSBwcmVmaXggZm9yIGN1cnJlbnQsIGRlc2NyaXB0b3ItYmFzZWQgQVBJLiBBbnl0aGluZwo+
IGVsc2UgaXMgYSBuby1nby4gSSBwcmVmZXIgYSBsb25nZXIgbmFtZSB0aGF0IHN0YXJ0cyB3aXRo
IGdwaW9kXyBvdmVyCj4gYW55dGhpbmcgdGhhdCdzIHNob3J0ZXIgYnV0IGRvZXNuJ3QuCj4gCj4g
QmFydG9zegoKT29wcywgdGhhdCB3YXMgYSB0eXBvLiBJIG1lYW50IHRvIHdyaXRlIGdwaW9kX2Rl
c2NzXy4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
