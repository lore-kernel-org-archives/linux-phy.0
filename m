Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB5FC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 12:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXWBXYCemQtjVnJKlg1pbz6KM+ijnWXs7Wdkz3f67uQ=; b=H3cjhmovbJpnq5
	0JaI8wo9TKb0bxzA00ym+WyQZZlSngMLf/8Gjw9pxP96rtBthidsiInB5FcIGI8Nnfg4wq68P1X4l
	SHXFLhqUCHLOAksW3a5JaxiAzz2hhoUAXDlJlfX3TZBjkm4cdYdPzjubba1dQ5yVWJcXCqFzWurVM
	Ye+tNw2p9pKXlGy+mroMX7VWd3qL+hpyNV2eU2qbdV+q7wdXMgPVWSTXcatRhxtJku3m27Z4Y1oFM
	OjyyEN+Z+/Q3F5da0i7U22WAq37B9D1dXyQlorn8L70Bfgv72b3VYxPKhc6PHG7FHaGI1JVe3r/b8
	kkZUvtjAJqbnxKNUNsLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNFD-00000009SqS-1J53;
	Fri, 07 Feb 2025 12:14:03 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNFB-00000009Spe-0JIb
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 12:14:02 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-ab6fb1851d4so403975066b.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 04:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738930439; x=1739535239; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MF6gElV2cDQ91CKc9Ejq8GVQ8GLozgvPR2NnTRy0mAE=;
        b=JolOopmjU6W3zVQNuaPt7zGqpR9O7wS0MQ/VPFylol9B53b07w+KzZwO0BL5B1Lb5j
         oZAPGlAVq62oTRWBD48DXTz/uUqUGvYph8MLhmVgiqO7sygvbGlbVPD5bQIIe1t7+UT7
         2GlEy+ipQDnxWzZDVXBXoi2HlO9YXrpm/T3pID29CG56SIn7/O9zq2hsSgSFKK99B7I/
         xYxNKqp5A0s19/RQihBaoWOeneXkACNDsTB+Ptwwwd5ZqSw0WhL7leMWhM7M0BqQnWCI
         btx8g5rLxY5aNz2pORsLjCa348l5YdbsOwdKbQYgjTU6pBPP2XsdUA8jtpa4rNfuP4lA
         TyQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738930439; x=1739535239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MF6gElV2cDQ91CKc9Ejq8GVQ8GLozgvPR2NnTRy0mAE=;
        b=gEYjZefoeVy3r/3EEZZjvIaLd3N8wrYedDyFw9fmp7c7uXJ5veX+5ccbnsu7K7SjYr
         HJccsuyQ9aQWT179o3XvFKq/DV9bALmrqyQXBSogwAVBLNg3RsparKQiX7cBGW/TE7vD
         sniButg2/rTqNp7M6B/+RXskcF6f233Av7soKnfDTWaiLegG3gyGxMaBxVy/XmZddzDl
         WFVOO0q8oLzcukAMtH1b4myvd/GAqasTVK51AZuXvj0HioZx5yZXIoNJIHy5m55nVjfM
         EulSTpSKLaS5JtZpWXuX7m8KMGTlamB2+bYfRiTWBvJf8dtQqzKQNVN3oJs+jQ9BG58/
         e4fA==
X-Forwarded-Encrypted: i=1; AJvYcCUJH0BE0zkHD3iPQsLY8lkbNP7no0ZoESHx47FtDHxk0DWIKm3sZilZS2WdbN38HdLRtMvlCN59Z/Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWWtN1vGz8LK3u8AT97Yzl7J6TZrbVealKNVp4EMHCSLs7664k
	dgAWtIESNWpZix9hS2WGrVUAkheEag6RT6kJQcHmkm/OlisVcrleFmjrXIHXK66pid/nWxlasK5
	C25y2L5EcBih0/wzZpsoVgTtYM3U=
X-Gm-Gg: ASbGncvtqixLAXbHnauc11qhgSvqeXJ3ljLzg5Z7v8NQ9D2zzZkWlLbfLjrqP8N0D5U
	bSlJG85Kk9CYzOms9wRPSR7BeMvold31SkU2VM17rqbyBvqa7/8W+W5XT6WCcDXR7Rm8d2Cau+A
	I=
X-Google-Smtp-Source: AGHT+IEcQ5RnwktITKDyFNQPm/ZlJAT6Jq4e+AddpJ4slMbkkGXOrIfWiA+9GZp7vOfbRBsKaL82KDhPv8+MGVLOCTU=
X-Received: by 2002:a17:907:2ce3:b0:ab6:f4eb:91aa with SMTP id
 a640c23a62f3a-ab76e896c0cmr758141266b.10.1738930439333; Fri, 07 Feb 2025
 04:13:59 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <20250206-gpio-set-array-helper-v2-6-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-6-1c5f048f79c3@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Feb 2025 14:13:23 +0200
X-Gm-Features: AWEUYZnW5RxxBc3bDqX_OpBL8hmNResFkWKqXoGA9bw_WE1ro5fEYdWUTUuFnFw
Message-ID: <CAHp75Vfb7EgHkHtqm4b0QnG=uWwszpWwFe8MLDPRSifKtQFAcA@mail.gmail.com>
Subject: Re: [PATCH v2 06/13] iio: adc: ad7606: use gpiod_multi_set_value_cansleep
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
X-CRM114-CacheID: sfid-20250207_041401_109746_6AE726E4 
X-CRM114-Status: GOOD (  10.26  )
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
dmFsdWUoKS4KPgo+IFRoZXNlIGFyZSBub3QgY2FsbGVkIGluIGFuIGF0b21pYyBjb250ZXh0LCBz
byBjaGFuZ2luZyB0byB0aGUgY2Fuc2xlZXAKPiB2YXJpYW50IGlzIGZpbmUuCgouLi4KCj4gICAg
ICAgICBpZiAoc3QtPmdwaW9fb3MpIHsKPiAtICAgICAgICAgICAgICAgZ3Bpb2Rfc2V0X2FycmF5
X3ZhbHVlKHN0LT5ncGlvX29zLT5uZGVzY3MsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdC0+Z3Bpb19vcy0+ZGVzYywgc3QtPmdwaW9fb3MtPmluZm8sIG9zKTsKPiAr
ICAgICAgICAgICAgICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKHN0LT5ncGlvX29z
LCBvcyk7Cj4gICAgICAgICB9CgpOb3cgSSBkbyBub3Qgc2VlIGFueSBqdXN0aWZpY2F0aW9uIHRv
IGxlYXZlIHt9LgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
