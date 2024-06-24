Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0636C2BD05
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXtzNOvmCWFwgkpSxiMF6UzcV55/1XXZop3eRWEYSIY=; b=G9EAurAH9Tp43b
	DX/YWq8bokIY6af1aLs9iBJjEdN6mBb+EIax1m95b+0ay8xu+jTiV+88w4VoDuNbd5E72V3Kcc3Bv
	RHvVtHCFzxfT9LEfSP0ShiiEb4YNXkI4aOtkCKBdE2x6+3fJQLucWC5rFnJQJZ2jLCy3azMXx4N62
	dfz5U2kKLkRtKPpzQ+rYOX6NjC/k2ZDacVmDjUdFpRNHS6rsvi89AyjT7bMyG7R1IyzytypMUdYxt
	BPuQymRgf2blBQ71gWbyEobi5Y9fxj3w5Z0qbEl3LW6bFvvswzGgFDiQfjTQoImdNfuf299EQZ3bV
	81uwEllHL1OhLdv9iifg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhkY-0000000GZ62-1jVs;
	Mon, 24 Jun 2024 11:20:42 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhkV-0000000GZ5G-1xtC
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:20:41 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-5c2011716a3so266337eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228037; x=1719832837; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiWe4k8FtBd5fLnyYS4pxEhg5OzBr8vUWEFs5mIbuS4=;
        b=ebnXQQVB3H1ra7lgyoOi0FKEaOFMmVxbnYaln16d+bJhtKA2+2x7PESrZqKCTJIrSO
         GedSBme2qbh0Ek+utVfzAdrrTKcwEH7t2b5NK3agyB0/gfPy4BY1XJX4uxL8QU5YT7xK
         gylZDcRMrhlcOl0SlpV+P/wmzwjZ9R7OAa9ugBcwPVX7n/DfVVWe04gUf0MkGJZ90vp0
         hWKoqRORf6q3stK+DN005aMs2ClwlfJdeGv5l2A05yx2FjPq9GveF2Q0lJIZMC/C1tLf
         HU6cPReOBzlHzbN1r+Qs1eR52s0oCbGBDh+pOW/Yg9JnYZrHXIk1jgLn+DG/Jb5Lkurs
         wVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228037; x=1719832837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hiWe4k8FtBd5fLnyYS4pxEhg5OzBr8vUWEFs5mIbuS4=;
        b=Onlqc1isn88FBZVl1WBUF9tvBTPy4/6zIrDhhDurE3IDqWjPpaBHNx+0VNlyXPEauG
         CE6zJL85pcEvRlw/vojei6b9KzUlzmgmnBEzewrV7qLN8d6kLGsk2OLrUBalfDT87Cf7
         QZYintNGuj2zmaC9vdMKVFLumckmGr7rIPbIJ1Gf8oe8DnDEdTXQAw/X7UvY+gWhZfX+
         RI4znI4YfQXgYYJYTxjmUWxl2dNt/dlDxk/e7Holqvhv+4IS0wCIElTLhlN1d34Roj8/
         0xaq0+euZFRj2ScZv12azsDWCNBwIgGLamXvk6Elg/v/cGiciG8veUJ+3pKFTYGHcEwV
         1M/g==
X-Forwarded-Encrypted: i=1; AJvYcCXSP+4qjIG1/pueQbnbMeMjDLAq+coFZLzjYLuAfNByB8db7pSC0HGtPB3Ima1+FNyinVWYd+Lmg0+JzqLOKTB6zKqeR2JkpeMaFosHfw==
X-Gm-Message-State: AOJu0YzZulO/FNe2DLBpPY5lpMnr0E9/by8KoQXvKr4tAFmsCla1TWM1
	ZUqsUn96jjJTOSRgMmJYvR9pHZezgw3rB4+kbLQHG9bBmc9oPuGRlrRN++xCJzy/+t+XgJr04Yr
	3B16DhK+fvZ9cpDvjQRlgzJhGbufTERXL20Tegw==
X-Google-Smtp-Source: AGHT+IHfldjpB99ZpNwFcajstPYz4MdvmrWm26sCR24wJ27onowRiUicbCtcbFxhvjwoR18exO9DD0r6k4/LILVcIj4=
X-Received: by 2002:a05:6820:2b0d:b0:5c1:eee6:6ed5 with SMTP id
 006d021491bc7-5c1eee66f99mr3951941eaf.2.1719228037550; Mon, 24 Jun 2024
 04:20:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-2-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-2-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:20:26 +0100
Message-ID: <CADrjBPpRCuQwLOG35mjAc==6mD4rgx2HzqLHgCA8fNGg79YOnw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] phy: exynos5-usbdrd: support isolating HS and SS
 ports independently
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
X-CRM114-CacheID: sfid-20240624_042039_542185_71191620 
X-CRM114-Status: GOOD (  11.50  )
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
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBTb21lIHZlcnNpb25zIG9mIHRo
aXMgSVAgaGF2ZSBiZWVuIGludGVncmF0ZWQgdXNpbmcgc2VwYXJhdGUgUE1VIHBvd2VyCj4gY29u
dHJvbCByZWdpc3RlcnMgZm9yIHRoZSBIUyBhbmQgU1MgcGFydHMuIE9uZSBleGFtcGxlIGlzIHRo
ZSBHb29nbGUKPiBUZW5zb3IgZ3MxMDEgU29DLgo+Cj4gU3VjaCBTb0NzIGNhbiBub3cgc2V0IHBt
dV9vZmZzZXRfdXNiZHJkMF9waHlfc3MgaW4gdGhlaXIKPiBleHlub3M1X3VzYmRyZF9waHlfZHJ2
ZGF0YSBmb3IgdGhlIFNTIHBoeSB0byB0aGUgYXBwcm9wcmlhdGUgdmFsdWUuCj4KPiBUaGUgZXhp
c3RpbmcgJ3VzYmRyZHBoeScgYWxpYXMgY2FuIG5vdCBiZSB1c2VkIGluIHRoaXMgY2FzZSBiZWNh
dXNlCj4gdGhhdCBpcyBtZWFudCBmb3IgZGV0ZXJtaW5pbmcgdGhlIGNvcnJlY3QgUE1VIG9mZnNl
dCBpZiBtdWx0aXBsZQo+IGRpc3RpbmN0IFBIWXMgZXhpc3QgaW4gdGhlIHN5c3RlbSAoYXMgb3Bw
b3NlZCB0byBvbmUgUEhZIHdpdGggbXVsdGlwbGUKPiBpc29sYXRvcnMpLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPgo+IC0tLQoK
UmV2aWV3ZWQtYnk6ICBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+CmFu
ZApUZXN0ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KClRl
c3RlZCB1c2luZyBteSBQaXhlbCA2IHBybyBkZXZpY2UuIFVTQiBjb21lcyB1cCBhbmQgaXQgaXMg
cG9zc2libGUgdG8KdXNlIGFkYiBmcm9tIHRoZSBob3N0IHRvIHRoZSBwaG9uZQoKcmVnYXJkcywK
ClBldGVyCgpbLi5dCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
