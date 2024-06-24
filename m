Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAB94C2BD09
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4pyEbV0r5Hn0v1bzB2f3F++lAJxITmvkK/XORBRfmQ=; b=snUiLDvJtb2VQS
	6J0oOJ61gJWVx3+Nns0rJYxo9IOuwyk5Llyc4v0xcD+emDMig8I8wAxETKSb3BqTm9zvySnbAMZBn
	7UH3yA4XXGilnCW/hjyZmwG9pF6Po86zfPk7/6jhNU87sayIpd4ab8y2iAjnUFlloxUATZSu0/4Ex
	9ZhMSNI5Ro/svIWi5zLrwEgq7Ur2O3qBa7UslGukIHTjejWk8IwLq4rmHONahkvtjiXk2hyjYB34Y
	11LbFfNzf84PEfTXZIsHqu+BZa3k77JkNbyKcTCW1fUGEES150Dvsx/fooByxiYBkgOaJonuEZHuQ
	5TXJ/HB0qwZLQOhfuh5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhmx-0000000GZdr-45OE;
	Mon, 24 Jun 2024 11:23:12 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhmr-0000000GZcj-1xxX
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:23:10 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5bae81effd1so2191507eaf.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228184; x=1719832984; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u30lLX5MsP/IKxn1NfwcAHsSmZJS+FIZz7/OFIlaO7I=;
        b=DeFJcNxFhEmOlXmpLfcwWYS1pX6eerFCB3qx8dr92AgiOXX0IlgM7Et82C5Xj9TKQc
         ysotkIkE6xY9VVTwkyrhhoLiFK39pD2ZIOu/Dtyb/1Hq2iIJ7tZcFKUBdvtAkgZhMFB6
         7BE13nszttUl+9IabJ+jwW5YS6vRt5e9OpeMLfiwZ6ezF2ApYABLsrtidsMfmWP9NJRh
         zPOYbUzvj5L+A1vyF8YyEGHmx/NUnBTUa7yN9x5fdPnRgUEMs5ODAWuH3YT6s91R9+o+
         0G0q1RmipvAYl+NIV1X7UOe9sWzvUudjIyztI4+bWrxjvw+BKrGgbTPK3lM6qewwpSN6
         X3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228184; x=1719832984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u30lLX5MsP/IKxn1NfwcAHsSmZJS+FIZz7/OFIlaO7I=;
        b=fBe18mHFFLsFM6TyMR/Gy05wRuGfOgR1m2mn8lfGtSJN2Kih7xS4IMTHb2GrZ0+muw
         59at82jeyzZGIBJyHLpd4fxsfCE15MAtFwRAEoa/Ibq5MT9uqxA1l0/YhZMAEPlQrYhm
         XVOPQ17zej8QvQ9fyibcHtnXI+BiVBG2OKcjf6XVPoTErp9hoguU7Kvxrs8QuOGC7M3b
         CMAgDVcIhuqxSHpIsvKlmvMyAWmmqVDb2bMrAjGaJfNN6bzkK4/aoLqDIUMu+1/G+Cli
         oi4gOwhEKi2Gx5HV5UhsSOG7Ox9gA4JIf9RD8jUqhNZcVHLUwsPDKnLIiFzSlG1p+dni
         UsWw==
X-Forwarded-Encrypted: i=1; AJvYcCXvveIcH95zlEJE2mzx6sKrmFoPeDCRdg08tf4pLaJLZk9LStnM/XpSjViwDWc7BwDUo7Ai1JNQatK4SEd4G7KnfhRPElBN7iZVX9GFQQ==
X-Gm-Message-State: AOJu0YwjD5LEqt9/1/SQyWu1fVTsJwH/LTVe8qiBDxu1z8rFJPNuJChq
	SYiWQURShzP1dSPA7KEntQBYp+sh7RBmhzWrp+FAFecynkNnbZmB9FVMck1ns2l3SZY9/rBjXfC
	a9TcBm8V0EPmN52B0OAUJM/lBdZncgyN3GU/YG9RrO0oDeSCw1nQ=
X-Google-Smtp-Source: AGHT+IEMLOPKjw5oHjHxY0zCeeuDJx6nBikXHAv0mrWk60i33NBz4cPxYEwhe+RUgp41xs0jTLpfBU3mUf65mTiLoME=
X-Received: by 2002:a4a:345d:0:b0:5bb:3ab6:94d8 with SMTP id
 006d021491bc7-5c1eed472c1mr4618521eaf.6.1719228184148; Mon, 24 Jun 2024
 04:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:22:53 +0100
Message-ID: <CADrjBPod9w5L_SNFCa8+=kzasnf8g6MmGC6m9E+kF8spu37Z8w@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] phy: exynos5-usbdrd: convert core clocks to clk_bulk
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_042307_451495_494E7E95 
X-CRM114-Status: GOOD (  21.36  )
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

SGkgQW5kcsOpLAoKT24gTW9uLCAxNyBKdW4gMjAyNCBhdCAxNzo0NSwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBVc2luZyB0aGUgY2xrX2J1bGsg
QVBJcywgdGhlIGNsb2NrIGhhbmRsaW5nIGZvciB0aGUgY29yZSBjbG9ja3MgYmVjb21lcwo+IG11
Y2ggc2ltcGxlci4gTm8gbmVlZCB0byBjaGVjayBhbnkgZmxhZ3Mgd2hldGhlciBvciBub3QgY2Vy
dGFpbiBjbG9ja3MKPiBleGlzdCBvciBub3QuIEZ1cnRoZXIsIHdlIGNhbiBkcm9wIHRoZSB2YXJp
b3VzIGhhbmRsZXMgdG8gdGhlCj4gaW5kaXZpZHVhbCBjbG9ja3MgaW4gdGhlIGRyaXZlciBkYXRh
IGFuZCBpbnN0ZWFkIHNpbXBseSB0cmVhdCB0aGVtIGFsbAo+IGFzIG9uZSB0aGluZy4KPgo+IFNv
IGZhciwgdGhpcyBkcml2ZXIgYXNzdW1lcyB0aGF0IGFsbCBwbGF0Zm9ybXMgaGF2ZSBhIGNsb2Nr
ICJyZWYiLiBJdAo+IGFsc28gYXNzdW1lcyB0aGF0IHRoZSBjbG9ja3MgInBoeV9waXBlIiwgInBo
eV91dG1pIiwgYW5kICJpdHAiIGV4aXN0IGlmCj4gdGhlIHBsYXRmb3JtIGRhdGEgImhhc19jb21t
b25fY2xrX2dhdGUiIGlzIHNldCB0byB0cnVlLiBJdCB0aGVuIGdvZXMKPiBhbmQgaW5kaXZpZHVh
bGx5IHRyaWVzIHRvIGFjcXVpcmUgYW5kIGVuYWJsZSBhbmQgZGlzYWJsZSBhbGwgdGhlCj4gaW5k
aXZpZHVhbCBjbG9ja3Mgb25lIGJ5IG9uZS4gUmF0aGVyIHRoYW4gcmVseWluZyBvbiB0aGVzZSBp
bXBsaWNpdAo+IGNsb2NrcyBhbmQgb3Blbi1jb2RpbmcgdGhlIGNsb2NrIGhhbmRsaW5nLCB3ZSBj
YW4ganVzdCBleHBsaWNpdGx5IHNwZWxsCj4gb3V0IHRoZSBjbG9jayBuYW1lcyBpbiB0aGUgZGlm
ZmVyZW50IGRldmljZSBkYXRhIGFuZCB1c2UgdGhhdAo+IGluZm9ybWF0aW9uIHRvIHBvcHVsYXRl
IGNsa19idWxrX2RhdGEsIGFsbG93aW5nIHVzIHRvIHVzZSB0aGUgY2xrX2J1bGsKPiBBUElzIGZv
ciBtYW5hZ2luZyB0aGUgY2xvY2tzLgo+Cj4gQXMgYSBzaWRlLWVmZmVjdCwgdGhpcyBjaGFuZ2Ug
aGlnaGxpZ2h0ZWQgdGhlIGZhY3QgdGhhdAo+IGV4eW5vczVfdXNiZHJkX3BoeV9wb3dlcl9vbigp
IGZvcmdvdCB0byBjaGVjayB0aGUgcmVzdWx0IG9mIHRoZSBjbG9jawo+IGVuYWJsZSBjYWxscy4g
VXNpbmcgdGhlIGNsa19idWxrIEFQSXMsIHRoZSBjb21waWxlciBub3cgd2FybnMgd2hlbgo+IHJl
dHVybiB2YWx1ZXMgYXJlIG5vdCBjaGVja2VkIC0gdGhlcmVmb3JlIGFkZCB0aGUgbmVjZXNzYXJ5
IGNoZWNrCj4gaW5zdGVhZCBvZiBzaWxlbnRseSBpZ25vcmluZyBmYWlsdXJlcyBhbmQgY29udGlu
dWluZyBhcyBpZiBhbGwgaXMgT0sKPiB3aGVuIGl0IGlzbid0Lgo+Cj4gRm9yIGNvbnNpc3RlbmN5
LCBhbHNvIGNoYW5nZSBhIHJlbGF0ZWQgZGV2X2VycigpIHRvIGRldl9lcnJfcHJvYmUoKSBpbgo+
IGV4eW5vczVfdXNiZHJkX3BoeV9jbGtfaGFuZGxlKCkgdG8gZ2V0IGNvbnNpc3RlbnQgZXJyb3Ig
bWVzc2FnZQo+IGZvcm1hdHRpbmcuCj4KPiBGaW5hbGx5LCBleHlub3M1X3VzYmRyZF9waHlfY2xr
X2hhbmRsZSgpIHByaW50cyBhbiBlcnJvciBtZXNzYWdlIGluIGFsbAo+IGNhc2VzIGFzIG5lY2Vz
c2FyeSAoZXhjZXB0IGZvciAtRU5PTUVNKS4gVGhlcmUgaXMgbm8gbmVlZCB0byBwcmludAo+IGFu
b3RoZXIgbWVzc2FnZSBpbiBpdHMgY2FsbGVyICh0aGUgcHJvYmUoKSBmdW5jdGlvbiksIGFuZCBw
cmludGluZwo+IGVycm9ycyBkdXJpbmcgT09NIGNvbmRpdGlvbnMgaXMgdXN1YWxseSBkaXNjb3Vy
YWdlZC4gRHJvcCB0aGUKPiBkdXBsaWNhdGVkIG1lc3NhZ2UgaW4gZXh5bm9zNV91c2JkcmRfcGh5
X3Byb2JlKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3pp
a0BsaW5hcm8ub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6ICBQZXRlciBHcmlmZmluIDxwZXRlci5n
cmlmZmluQGxpbmFyby5vcmc+CmFuZApUZXN0ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdy
aWZmaW5AbGluYXJvLm9yZz4KClRlc3RlZCB1c2luZyBteSBQaXhlbCA2IHBybyBkZXZpY2UuIFVT
QiBjb21lcyB1cCBhbmQgaXQgaXMgcG9zc2libGUgdG8KdXNlIGFkYiBmcm9tIHRoZSBob3N0IGNv
bXB1dGVyIHRvIHRoZSBwaG9uZS4KCnJlZ2FyZHMsCgpQZXRlcgoKWy4uXQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
