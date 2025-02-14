Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A42E4C021A4
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 09:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13KoDSbR/l3kpAGEU6T84ySn0XiyvMMhQtt0oU9lkwc=; b=2Y6k+CgPGJKlFQ
	to2UxdS8bi6nKdCj8gH8j4DGwHhmEKVp/6m92SwnCn7rTXiuUuaxr/CJZa55hif8aCWO9qM0YODv4
	qcHaAj6hy2Dpdo68K8gWetyEkGjncbMC00Z4K4AcIPSz8iy319jbuSsgtapdFbmBrmoEwghbBFGKW
	K3bpllP7m4Y4/JuD5mL8B1tyHBvHWVey1xlHeUWlIhTTHAZyM+yb60UvufAexsarwhskx3nIG10ij
	jeGdRFkCeG7au31i90K2MWx3qtTRNaKqOt9X535opjRG9V4J66MElUXNDOFgxRbMTDtF2CaOVZJp1
	jKwhOHR/anN1y3KVEB2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiruK-0000000EIWE-0Rbc;
	Fri, 14 Feb 2025 09:22:48 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiruH-0000000EIVl-3ggf
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 09:22:47 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-543d8badc30so2068163e87.0
        for <linux-phy@lists.infradead.org>; Fri, 14 Feb 2025 01:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739524964; x=1740129764; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxMUts7eWUQNpSiCjwqXyusGkP80n8S1cBGWOAZkDbI=;
        b=pPxbTHaccdMvXYu2yWo+M25dcZs6B2e2Ndaw1xd655YfY2zGlLRVaUnjjyQFnOo/ZK
         YH4o8exFFPVgGpizsATZ8Rc4uUamT/AuYB8s4y9IrXI4lPDzAS/oCe0GqY3Ue1Rhms2j
         ld2cRBzTgOP/CXsCyAxol0Wxe5lzpXFXvYoS3L9PMhdmRfzPcdJv6x2EZw7sgyaKkKEU
         Ms0qnfEtRnWMEggULcSp3r43C1hJ8npWN2r60P4oQGJEWmT6Cs9KXP5gNKL8VWvglF+H
         nvxqTFHtyQ4ecZe8q8lOJP120PrOqa5IAtvQjE1JPAbEazHlQmMf4HODc8ilMUoaUSRW
         Ct2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739524964; x=1740129764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oxMUts7eWUQNpSiCjwqXyusGkP80n8S1cBGWOAZkDbI=;
        b=l9GDj4tax5dL5FU+LmjjCEdv/4XnkL+//VhTi5Z9939KvNq9utA1jiNtzh/XT+tOul
         QK/vlSyvQTA8F94aJAA6VXrkHQIgoT1LdDjeaa5pzXoHs1/uFSq9Sn4t6cMimv0YTWsD
         7Blrvio35DjXEVrXftEJnLbv4W+naL1L8TH1oNWPpvxXYPmySbX2YdOOxmBNQ+2I3c9g
         e8zmUKAOhQHuXr16E+vMntnfeK0BJceWRIqThFlss+JE31PBYe32iDsHG9J68c5FwlAd
         Q3aN0fr6DCvs/NMD1+YJTH9t0L0u4ekJFunGx17ctzZnmw/GHRC2gxAWtOM/fBsrHJKN
         Eo3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKG7UXhMqVG3ysv4hbZPwwN0N3F8iEERVkTURr5hFjhmQ8jih4Kr8KPiU2rqCLWMFzXL2tRbYMV7I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTC6x8mfcd7Sln85icvW/U1htkO/q5KIFCTSKTpSMyJrA0ybpt
	ufr9shqJjAF0FKEWWUnEgnaRHUx1B0PiCzlNfCFZur/C5Rhn/Rn7Qw/Um0maeYgnGYKmqfQaVSx
	5KhJVHuxZMOsBdKbBVo4OhrrcmWIYoEYN0Gvrqw==
X-Gm-Gg: ASbGnctukRmnw7Ybp6vRNAasTNPXWYImHbXb1lTRcm5uS2Zz6W4upBYQFymBWRIKTah
	Ej5Ep6FWpt/wl1DxxgIRCd5nQlfACCCzAmNR/Epy0zGg1UunnOKsU69qgzwubTeBJRjr38L/d
X-Google-Smtp-Source: AGHT+IGhgPoczR2D2T/lX4ZwT5MXW34OlqN0/zugo7LmPWwgdRCMXTLpmWVB2HL50zhjB2U06JaZCumERKR34vwpUjQ=
X-Received: by 2002:a05:6512:a90:b0:545:d72:95e5 with SMTP id
 2adb3069b0e04-5451dd8c4aemr2339063e87.7.1739524963708; Fri, 14 Feb 2025
 01:22:43 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com> <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2025 10:22:32 +0100
X-Gm-Features: AWEUYZlSujurAxnS1uFvnjJLAGMoYJmFWbRh7MCeJl2DAGBRy4U6U-3ZBycEwbU
Message-ID: <CACRpkdY2PtRhmTKJUFmkTViQOLfMBbqR1bD94SzasoGAoHUQcQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/15] gpiolib: add gpiod_multi_set_value_cansleep()
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
X-CRM114-CacheID: sfid-20250214_012245_918603_2551C874 
X-CRM114-Status: GOOD (  10.00  )
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

T24gTW9uLCBGZWIgMTAsIDIwMjUgYXQgMTE6MzfigK9QTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5l
ckBiYXlsaWJyZS5jb20+IHdyb3RlOgoKPiBBZGQgYSBuZXcgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVl
X2NhbnNsZWVwKCkgaGVscGVyIGZ1bmN0aW9uIHdpdGggZmV3ZXIKPiBwYXJhbWV0ZXJzIHRoYW4g
Z3Bpb2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkuCj4KPiBDYWxsaW5nIGdwaW9kX3NldF9h
cnJheV92YWx1ZV9jYW5zbGVlcCgpIGNhbiBnZXQgcXVpdGUgdmVyYm9zZS4gSW4gbWFueQo+IGNh
c2VzLCB0aGUgZmlyc3QgYXJndW1lbnRzIGFsbCBjb21lIGZyb20gdGhlIHNhbWUgc3RydWN0IGdw
aW9fZGVzY3MsIHNvCj4gaGF2aW5nIGEgc2VwYXJhdGUgZnVuY3Rpb24gd2hlcmUgd2UgY2FuIGp1
c3QgcGFzcyB0aGF0IGN1dHMgZG93biBvbiB0aGUKPiBib2lsZXJwbGF0ZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4KClJldmlld2VkLWJ5
OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMg
V2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
