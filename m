Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E09DC0218F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Feb 2025 10:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsLZr9xKsK/XEnGol+eDnPjWWMZc2fsM/vts5ArH9yY=; b=AxEyoLLEBpCExC
	y1v0xG53Ez/t8tOSSvfbDRSaiCRU1ZYV3fNuU4OD+IaKKM39szpsi09ctZfj9h7AFroOEjSUNdTfr
	tXaQ/cIXp/3aI9yWlgsBOX3K4tg6p6momhIN6CMhgo9gON9jqIiNeXIg++t9kSbjbvSBHjaiBbiD2
	66p2etGLE8U6af0tBqKaq/sjgkZj/G0Asos/JxWgbTFJTGyv63NMsScEmUjowOQOehQiJftgxDdKk
	Rj2jrwjvvY2otwIDVDclO8wV68Tyrw0qUvAXjqCt/7SjzVkFDwwPPypWLtM3Mj/fAcaNA3k7cftgL
	m3SURHgK38MvSke4Yf7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teWsW-0000000Dbe4-0mxr;
	Sun, 02 Feb 2025 10:07:00 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teWsT-0000000DbdU-2ZFY
	for linux-phy@lists.infradead.org;
	Sun, 02 Feb 2025 10:06:58 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso678615166b.1
        for <linux-phy@lists.infradead.org>; Sun, 02 Feb 2025 02:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738490816; x=1739095616; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9eZ/0dk/F51+IlX4ChMtLpWjOxnMp8WZ++jOtUzjCk=;
        b=PDOR4UJRNTdlBV11ifCghKemhPID7zLPKA1LVq9kbr+wKMna0kZhTszT/hVlWBVQNd
         qo7JZg2mdc9NQVycN97VrLpubw1CXxPlCRTjmvYnyd2YbzIIgtpZ7kO8MhZ0+yXJ+NyM
         UUvpEzlUSnXDWpxBVnV5n/S3WmWigjwOPokAa7ghz14CfPzgQrLZ6ethtcwGKMH66zOd
         XB9HldDrx+8AJsnF8pNLw4BSEGK9CeL93PWMLYTnsUcT2zo3z0+yaNuGSnuzMqXID1Ku
         cTXicCxlEJoWvCz4IvEm+nct+4QwLTjsFDjCsj3VpJTolo7IdVTCmijqfLKcWx9INxF+
         kXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738490816; x=1739095616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d9eZ/0dk/F51+IlX4ChMtLpWjOxnMp8WZ++jOtUzjCk=;
        b=FqC1FmXbzKR9OQf9SJVdeKL3+pnv8YM0IdpTCObYGHcdDy98yb94H1bSeWEjtSqkRQ
         xG1etKwrVM02Cy1IJ0OEgaINZN9soTDcV0oOPSyu69g12pAuSPxMhUqhpVKAnO6C449y
         0g8tZo/kzuGgcJW4zCsaTr9ybN1E6xb3I5rKgTEV/3sHhEGyD9IpowpwV41CbgCygGf+
         sTrPrJzUhhKrDTvCXlpReIAsIMHHqx/ce89Jkw1TCCzDXLmZ/IJgDJJZc4Z1HIb61UUr
         IuZcmF/bF2c2LoVsbRXgu6fi+iGUoDn/C/GgCEtkDcOmn45VM1TcWFkqitkk+amrEi3C
         H0og==
X-Forwarded-Encrypted: i=1; AJvYcCU9RctQud2xVZ/H+FnlGDMMLsyC+gCUof4O6kDwhnXna7Avqeo36ytdlixcy5MYIDKu4UJ5dKgtHSE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjSSu71CIwzXvS6yDrajGaoNViNbrz7xIszhf/DPL44L8vImze
	te+GXN9+1WmQHnTJNQvTxJ9EV6i99U1yaqU/Up/jv1gcVsgCeYTLCrMuJjRpOT00U51c8RJ5iiZ
	Bppy6PsvmuSweuMDdH/vqmnJTY1w=
X-Gm-Gg: ASbGncsPlUBGsA3adz0Jzux7GbP2xVrDE/9le/bAx9rb564eHBiMJOj0ArPb5HYCiwt
	TUbqFO/POt5lkkka2QwjKQ022HoZElGq29NtOoDRgbursgt0ZDiothUXmSDbdaRyt7zldAAaL
X-Google-Smtp-Source: AGHT+IG0wgCm6rScVgdh7ldT74nISv2x1RULgwNTbS7+ud7IN3fLokwjmQgWGRLHgTUHU4CmxVCsVeR0NUhgmA5cLkQ=
X-Received: by 2002:a17:907:c20a:b0:aa6:7b34:c1a8 with SMTP id
 a640c23a62f3a-ab6cfe29c5fmr2041673966b.55.1738490815666; Sun, 02 Feb 2025
 02:06:55 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-1-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-1-991c8ccb4d6e@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 2 Feb 2025 12:06:19 +0200
X-Gm-Features: AWEUYZlrR1Eyf2sDO98qHNboDjvCKSIueyg3JRzZHEx-ArKJqfo7ClDNOGf2xy4
Message-ID: <CAHp75Vcx+7v3pq4T0q9+8zOHqAZ=FRrCRfhD8j9LAp4pkXzxNw@mail.gmail.com>
Subject: Re: [PATCH 01/13] gpiolib: add gpiods_set_array_value_cansleep()
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
X-CRM114-CacheID: sfid-20250202_020657_688915_9FE5C7D6 
X-CRM114-Status: GOOD (  12.65  )
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
ckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gQWRkIGEgbmV3IGdwaW9kc19zZXRfYXJyYXlfdmFs
dWVfY2Fuc2xlZXAoKSBoZWxwZXIgZnVuY3Rpb24gd2l0aCBmZXdlcgo+IHBhcmFtZXRlcnMgdGhh
biBncGlvZF9zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKS4KPgo+IENhbGxpbmcgZ3Bpb2Rfc2V0
X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkgY2FuIGdldCBxdWl0ZSB2ZXJib3NlLiBJbiBtYW55Cj4g
Y2FzZXMsIHRoZSBmaXJzdCBhcmd1bWVudHMgYWxsIGNvbWUgZnJvbSB0aGUgc2FtZSBzdHJ1Y3Qg
Z3Bpb19kZXNjcywgc28KPiBoYXZpbmcgYSBzZXBhcmF0ZSBmdW5jdGlvbiB3aGVyZSB3ZSBjYW4g
anVzdCBwYXNzIHRoYXQgY3V0cyBkb3duIG9uIHRoZQo+IGJvaWxlcnBsYXRlLgoKLi4uCgo+ICtz
dGF0aWMgaW5saW5lIGludCBncGlvZHNfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKHN0cnVjdCBn
cGlvX2Rlc2NzICpkZXNjcywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgKnZhbHVlX2JpdG1hcCkKCk15IHByb3Bvc2FsIHdh
cyB0byBtYWtlIHRoaXMgZ3Bpb2Rfc2V0X21hbnlfdmFsdWVfY2Fuc2xlZXAoKSwgYnV0IEknbQpu
b3QgcHJldGVuZGluZyBpdCdzIHRoZSBiZXN0IGNob2ljZS4KCj4gK3sKPiArICAgICAgIHJldHVy
biBncGlvZF9zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoZGVzY3MtPm5kZXNjcywgZGVzY3MtPmRl
c2MsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlc2Nz
LT5pbmZvLCB2YWx1ZV9iaXRtYXApOwo+ICt9CgpJIGRvbid0IHJlbWVtYmVyIHNlZWluZyB0aGUg
X2JpdG1hcCBzdWZmaXggaW4gb3RoZXIgR1BJTyBBUElzLCBwZXJoYXBzCmp1c3QgZHJvcCBpdD8K
Ci0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
