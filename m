Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069BCC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 12:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5ECYggR00ItSm5aSqMSoQJ8A8yR4yJCl4zQX6PX0zs=; b=lgKGudmo+ex4SO
	JlUQkCzdaNV0aVgZo/1j/bDhVQ2dgNd/a9t7ElKH7nJObzsUiKuesGWN13ecTEN/ZwUmXdk06vic2
	fN0nnNqCZWsZDC/zvm3vAn59QvyOm2d0/naPkTCfqZ5pEch650jxyIf3LJ7PcJrMhdx2hHrECTTf+
	Ndmc/KKt8qZknSGUO7Dmg9XdW1zrSckLr7FehnqPwnSvaeItVPaT6B0S85CQ/+N1DeSlTVn0pd25l
	wckToO18FPRln83Qe0T0yWut3kLeDICFurFPnK8XFnST4DX+1tysJCub5Bc19JRu6K9SuXgfeK3W/
	Dx0fNo4xSt8i/eoewCmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNHI-00000009T9S-3I1S;
	Fri, 07 Feb 2025 12:16:12 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNHG-00000009T8U-0Jf5
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 12:16:11 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so376336866b.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 04:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738930568; x=1739535368; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+t7YbbTGCWBeY8Yz9MUpE9tRyJq8TnnQgwbUuUnBgUU=;
        b=Ruxbr6acKJ8EylHz4AthW9mVwmoAdcseMrV31A+ntdZdm59Ex9DZ05fZ5bD3wb7P+K
         /C9x5Smex3jcip4DBQDaG2swfXrK3JGOnUq8VLNohker2weUl/BbeLKPxP/lO41ytoRM
         IuU0Byh65anfvQ3guBtM8nDQ7VsmaoRbe/Y9N4dXXGTN1QI0PrhwCbsSu0dQRYHbf/fT
         KexwC0hDFGn+UXrfrDd3Xqanc72ge/zMSyurBGUKCn14CqeYl+NvOCBwJFD+it7yTt0a
         M7A2iO0BCImAhvzyWwWtf4umG+Wxf7wSDmd9iWO1dWNFcv/AD9wKWN5UK5OeYdXGepyF
         jU+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738930568; x=1739535368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+t7YbbTGCWBeY8Yz9MUpE9tRyJq8TnnQgwbUuUnBgUU=;
        b=A61+ysV/FAkJtDrjMZXmsZ1p0E16aIDT7hvOT4RYiUFUvZkPhQiOAG16Lx7aDg/3jX
         r1NkqfCQVAM6zmXpjKRoyTSzKMF3RjIblOBCP+8ucrSm+P6at5jJ7kBa9aeyyjqB5a75
         VH7BzDLCGkgbwRXDdeWUw8iaj5kuXlLFwRIOuPmfVSUNB2qmyQ5KZoIhcPvTCOkf+gJe
         bpU7xDTOrbQN2TpNr8X8NC2lrR5rUBwXVn2uv57HRoXqlKbjlAEXj+8tHwWb7aWlJXNP
         cGrQ5d5w2IaLRfYLeQKorqOh7gUeLIGCxoPvWrT12wzeylnZFqhSAX3FLoElJTT2CcLV
         TQ5A==
X-Forwarded-Encrypted: i=1; AJvYcCVDqI89InHEVxCZyavBHmuhtVG3RZswjL9OdC60vzHDl2LjfEw7fdh4d0WrrancOxDpF6xhychnFLA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY/pIuK2Z3J1o9uO9GPR0RyxPuBdWJdEMNexLWjB1/mp3TBAXW
	2zqtPFYdpz7rI0UG2zn8+WSk/zClUwgrctv2lkjCypDuCZ5G2ZIWIdEjV68D1+omrWk8OoJr060
	SpUitKsELx04eLF5ANfhIAy025Fw=
X-Gm-Gg: ASbGncv5P+q6zkNR2RWeDc5QZjPYvKf3JyAwMSkaqSQcSb9q/0LV/Axn2NmQ7wB/038
	hsr9I8JxFa5l3dot5RI0QingMAxrCqtCjZ5vXFHM1HCE3DF+9tgdrWyaukSpaOstKoFyc81NOEC
	g=
X-Google-Smtp-Source: AGHT+IGY8znJApXKyzNb+yL9ibPgJG8qFDYxsiWeqr7W6flQ5pAjwP3vanOtbgv+SGqsPEwWi8YSAChgGT8YNAOWEow=
X-Received: by 2002:a17:907:c285:b0:aaf:ab71:67b6 with SMTP id
 a640c23a62f3a-ab789ba4ff8mr319772166b.31.1738930568122; Fri, 07 Feb 2025
 04:16:08 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Feb 2025 14:15:32 +0200
X-Gm-Features: AWEUYZkm6IxNZqqUJoiO-KsN95M7hZUbEuaDl83yrJ0VJFqM30bkmEisJ4jKvJE
Message-ID: <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
Subject: Re: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
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
X-CRM114-CacheID: sfid-20250207_041610_111344_B7AD3DB1 
X-CRM114-Status: GOOD (  10.80  )
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
dmFsdWVfY2Fuc2xlZXAoKS4KPgo+IHRzX25idXMtPmRhdGEtPm5kZXNjcyBpcyB2YWxpZGF0ZWQg
dG8gYmUgOCBkdXJpbmcgcHJvYmUsIHNvIHdpbGwgaGF2ZQo+IHRoZSBzYW1lIHZhbHVlIGFzIHRo
ZSBoYXJkLWNvZGVkIDggdGhhdCBpcyByZW1vdmVkIGJ5IHRoaXMgY2hhbmdlLgoKLi4uCgo+ICBz
dGF0aWMgdm9pZCB0c19uYnVzX3Jlc2V0X2J1cyhzdHJ1Y3QgdHNfbmJ1cyAqdHNfbmJ1cykKCj4g
ICAgICAgICB2YWx1ZXNbMF0gPSAwOwo+ICsgICAgICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2Nh
bnNsZWVwKHRzX25idXMtPmRhdGEsIHZhbHVlcyk7CgouLi4KCj4gIHN0YXRpYyB2b2lkIHRzX25i
dXNfd3JpdGVfYnl0ZShzdHJ1Y3QgdHNfbmJ1cyAqdHNfbmJ1cywgdTggYnl0ZSkKPiAgewo+IC0g
ICAgICAgc3RydWN0IGdwaW9fZGVzY3MgKmdwaW9zID0gdHNfbmJ1cy0+ZGF0YTsKPiAgICAgICAg
IERFQ0xBUkVfQklUTUFQKHZhbHVlcywgOCk7Cj4KPiAgICAgICAgIHZhbHVlc1swXSA9IGJ5dGU7
Cj4KPiAtICAgICAgIGdwaW9kX3NldF9hcnJheV92YWx1ZV9jYW5zbGVlcCg4LCBncGlvcy0+ZGVz
YywgZ3Bpb3MtPmluZm8sIHZhbHVlcyk7Cj4gKyAgICAgICBncGlvZF9tdWx0aV9zZXRfdmFsdWVf
Y2Fuc2xlZXAodHNfbmJ1cy0+ZGF0YSwgdmFsdWVzKTsKCkFzIEkgc2FpZCBiZWZvcmUsIHRoaXMg
aXMgYnVnZ3kgY29kZSBvbiBCRTY0LiBOZWVkcyB0byBiZSBmaXhlZC4KCj4gIH0KCgotLSAKV2l0
aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
