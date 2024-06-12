Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E864C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 09:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZUfLQXuTys2hgOIYZJc+zE6K1VaiZZwZDyrLFbFi44=; b=pZlf3eHw7lN0cK
	MOh5oO6EAb7P0lBAKBpNwzZuswevid7/hiR5gtmISQKwKcgkNLQxCJwWggjBvU1PawbJnXCbAi/aH
	ujQ+2q3DBZ6HpwSzMl0S2uJhxNji0Bl4jfiTsOtWDM3bd/FEm4YWK1HD8JPe2eMT1NxEcjlKb7Y54
	rgpxYljkCFQLYqy7wL7ut4AI4ZcW0mlWQswFWqJThdQP/F48dA2lo1eu7oAGbhy5k+Hj1ms30lIPl
	ejm4cFtyclqnLpTV6G2bkixIRqvQD7k9pX0bs0RKqnB+q+ea387EITN1lurbUAGaHzeGyzh9L7toZ
	qig8ZaQ3wsTwKPhLu5jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHKQk-0000000C1sK-0khp;
	Wed, 12 Jun 2024 09:38:10 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHKQg-0000000C1qw-2s76
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 09:38:08 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-254efc9ca45so1010632fac.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 02:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718185083; x=1718789883; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BD/9IUJ0GX5iY+Im1dJVEqyByZWn0TG0w/F44NXDHLc=;
        b=Czz5lOxhNo5Sm5vd3dSrkZF8jKDmOZ4hIz6ZPx1000am6524qJgCq4MQwdRvrFg2UR
         hQLTHWw2zh2tX30ym0810t+t+l2BpcKzLIRW2aQRpt4DgBKJuabCbs+IT7K8HR2i3wC7
         SBR/4gELrrMxoABpdqSjXy2kt1/nZ1MbLQLYC5qK1k2Q+c0OzXMaidy1XNSqFNUcij96
         nQUz8W+OgLOILEqCRqmvGDL6puAtL8RVwoQ0041bgJZCLjvRSqV7teA5j2g4JhCuFO3p
         aht/s2zcUWll43ghM+xZN5HUkhHH2BtRpvVTZe+oxBy6FNYZQdsKxf6oAKNSYgPnilJl
         wENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718185083; x=1718789883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BD/9IUJ0GX5iY+Im1dJVEqyByZWn0TG0w/F44NXDHLc=;
        b=AtzGzUhdZe0k4vD7ZXbrFQyG5gOs0vp67/oUrGA2iDQrkKHsrcK5Z3+7srjoEC7qg3
         ebDkDILOI+qxy+YYv6BL/rLiyyvuI6G5XO/3IIpHCz+c6hneFvvW8SsW74eycvd9U20e
         nOWfp26CbOIfquOAh6K4LGUYbCEfzeJyG9eIjQ6hm5zfrNQfYndfx2jQrpSzqyL6qY5g
         ACxXD45pArTIaGo7w/LWOeNl9MEdgcerwVGXgNyy4RkA1lQQk+hTefp00+1qXZkKKKo3
         /RXQTGS+6d0P6YDVf6/QpsN4dCt7xUWYl+ago7y79H8WOgdczwSwB2am2bOgri0UUOHT
         +ugg==
X-Forwarded-Encrypted: i=1; AJvYcCWuANPZI1ew2eABjaOcDzcSo3Y5sz3vsOtMTWtqT6znhS5AFCrwMhXra269NC6Mwu4HuND3mzfIsXZT9ySCKvCxbuKMwv/ZSOfc5vzI3Q==
X-Gm-Message-State: AOJu0YySpegoylmTYae9sH8tFg9KR+zUbnkSsGqlzgr7TpHoyS9522ea
	lm8NkJaT3lLrKtIYmB9DthOF16iKJ7Hv7SF9IiwYSks41RtSian5wlP0Eh/UPF1LS92naSgupIi
	0AiVRt/M7TYpNnWNTdMntVyuaLsJwk45bAmlF/w==
X-Google-Smtp-Source: AGHT+IGm+RwZ0B9L/QOSni4O4Rx1n2ES+x8U9sHD7LvNXczdj6rZMABLoZ66Mwklcv5iX/J6wqTx4u/KMr664uropCc=
X-Received: by 2002:a05:6870:5e12:b0:254:a57e:1aed with SMTP id
 586e51a60fabf-25514c799f2mr1439059fac.26.1718185082718; Wed, 12 Jun 2024
 02:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <20240507-samsung-usb-phy-fixes-v1-5-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-5-4ccba5afa7cc@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Jun 2024 10:37:52 +0100
Message-ID: <CADrjBPqvdBsLVNeXVtqWp=hGS0G_=0jYQ_91pyg6jvFPN+2CvQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] phy: exynos5-usbdrd: set ref clk freq in exynos850_usbdrd_utmi_init()
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_023806_759285_05B379ED 
X-CRM114-Status: GOOD (  12.14  )
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

SGkgQW5kcsOpLAoKT24gVHVlLCA3IE1heSAyMDI0IGF0IDE1OjE0LCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFdoaWxlIGNvbW1pdCAyNTVlYzM4
NzlkZDQgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBBZGQgMjZNSHogcmVmIGNsawo+IHN1cHBvcnQi
KSBjb3JyZWN0bHkgc3RhdGVzIHRoYXQgQ0xLUlNUQ1RSTFs3OjVdIGRvZXNuJ3QgbmVlZCB0byBi
ZSBzZXQKPiBvbiBtb2Rlcm4gRXh5bm9zIHBsYXRmb3JtcywgU1NQUExMQ1RMWzI6MF0gc2hvdWxk
IGJlIHByb2dyYW1tZWQgd2l0aAo+IHRoZSBmcmVxdWVuY3kgb2YgdGhlIHJlZmVyZW5jZSBjbG9j
ayBmb3IgdGhlIFVTQjIuMCBwaHkgaW5zdGVhZC4KPgo+IEkgc3R1bWJsZWQgYWNyb3NzIHRoaXMg
d2hpbGUgYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSBHb29nbGUgVGVuc29yCj4gZ3MxMDEsIGJ1dCB0
aGlzIHNob3VsZCBhcHBseSB0byBFODUwIGp1c3QgdGhlIHNhbWUuCj4KPiBEbyBzby4KPgo+IEZp
eGVzOiA2OTE1MjUwNzRkYjkgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBBZGQgRXh5bm9zODUwIHN1
cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxp
bmFyby5vcmc+Cj4KPiAtLS0KPiBGZWVsIGZyZWUgdG8gZHJvcCB0aGUgRml4ZXM6IGlmIHlvdSB0
aGluayB0aGF0IGlzIHVud2FycmFudGVkIGhlcmUuCj4KPiB2MjogYWRkIG1pc3NpbmcgYml0Zmll
bGQuaCBpbmNsdWRlIChzZWVtcyB0aGlzIGlzIGltcGxpZWQgb24gc29tZQo+ICAgICBwbGF0Zm9y
bXMsIGJ1dCBub3Qgb24gb3RoZXJzKQo+IC0tLQoKUmV2aWV3ZWQtYnk6ICBQZXRlciBHcmlmZmlu
IDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+CgpyZWdhcmRzLAoKUGV0ZXIKClsuLl0KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
