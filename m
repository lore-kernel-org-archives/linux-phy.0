Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11AB7C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 17:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzhaxb6mcNEhZX+A9arsDumcqG5gn1NJjxPk7hiAIZo=; b=JaRxA5lqZ/22SJ
	d07tjFIZeW944cQPhdepDbb+K9DIsd5VlirrrmL3qTgXA1NclI6N6ixuaAZPslkIgJaErfRhR888p
	G3MdJTHLpxl6Sv/DmBVlTot+Xu2Ivq7SaQriNIXudmFDY+HLMjw6BRt4Dlvchg4BK85u7l99iJACH
	ifjU53xBPWJaxa6Jl3mCMiFOpRcSR2DLu4+s3RvahFUFk3Xf7M/IPVHslTLJ24IURnEuO8RxN1xIS
	TeWihLTVNf6x4ZFvvedHXM6itCtZquzuX8DXl/sqOfT+Q/jTZV9k49Va+soXP4mM90b/hmHPd9mRA
	dCk4O+N+ULfjw4K6/bpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXPB6-00000004a9y-3Hh9;
	Fri, 26 Jul 2024 17:56:28 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXPB3-00000004a8w-1Yb4
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 17:56:27 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6634f0afe05so24846787b3.0
        for <linux-phy@lists.infradead.org>; Fri, 26 Jul 2024 10:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722016584; x=1722621384; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DhUrBslr8NYAo9/MyQYN73x0EDRASpHspmRycm+GNrI=;
        b=RNn5qSqMW99jfmA1uOCyMiJXuc1Q1+ySrZqjaqwuSzoOxX7mfSUy8kl2BD1qTkxdvP
         5VofqA12HOgJKgv3W8LNJ2m7ao+f4vyH9TrBEn3JyytfDDEzbYNRbrTIQXnxzrHfqxmN
         8v7bMiNA+OtHKRVns9XealoF9atHXhuXtXL8cajybtJZv+xAWNW9pKaphZG1ydsP9la1
         5G+Mmb+cNDX15tudjW8aj6kro5cRKXRLPp+Fk5OKelFwsKDzvkhlQrbMweOxUHlFxB0J
         jaorIB+RttbazKe8uPlyJQl4hkJETU65+ezoIlSyAORgotIBYD6L5RWa6agMQGxe+pql
         IJfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722016584; x=1722621384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhUrBslr8NYAo9/MyQYN73x0EDRASpHspmRycm+GNrI=;
        b=e+IWNFz1eOMLe22SG/TAouEW6H8tkJoqBLOSK01QAvyrud19h4j47clEpwXUPDJu2m
         VNAhvOXBlLgjCAxAsDauBN9b2vbjAekeg5XrKsN4LQth2+AgFlu3cxSEX0fy6GzAPTtW
         zyqfUq/klcNGtfUvZb+vPv6m3ucTI7PGvNvdOYo5s1YVWB/psFiCG77FA0C//w5L/W9G
         hsJEq8+Mtc0fsDiJGjQ6gVkKbRk3zq34y/VMktyJDKwdVXZ0QVqUIOzj/60I6QgsYitZ
         9tVT2D89TqwadIzezAfKVm9GyjEBz48pGQfHquB4r1okkA5LyS53e6Bx6wrglJCswajs
         qLxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwBSfU5LP2OvSKpK9zqi5eiqDsG5RNlFJM6LrG4htbUREIHxvWpS6of4wTlESKetcT92Whrdf5t2SvQOIsbiJJaHt3WHOulcy3AHiXFA==
X-Gm-Message-State: AOJu0YwU4SMVt0SSxiDfmp03/XP3ud491e+OPtDehriccRHZp5ZcmO6T
	KcfY/eXXXRnnl5aIOrtPcMOBB4apFsmkmpROkinwX0Iu58wWuziK7XZmlA1Cwe0JE7BvMkYqvfT
	tHZ4knxw4/35rNzPP+4t14nvR/tsReo0Ww6UwsQ==
X-Google-Smtp-Source: AGHT+IFRD79UEjDaEHKHCsvV9s7KnHcAuekNi2ZVuvc9B/6COZfuwaKlCuHkfaA1N/a3WtELB0IlOea81E3BIThlJOo=
X-Received: by 2002:a25:ab11:0:b0:e0b:1407:e322 with SMTP id
 3f1490d57ef6-e0b544485afmr656498276.1.1722016583941; Fri, 26 Jul 2024
 10:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org> <ace0b95ad77fe044881068a4cf1944e10b306730.camel@linaro.org>
In-Reply-To: <ace0b95ad77fe044881068a4cf1944e10b306730.camel@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jul 2024 12:56:12 -0500
Message-ID: <CAPLW+4nrxXOz_gaKR6dLZxiNW5AEMUZRMcmAyzpnd_GKzdVdnw@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: convert some FIELD_PREP_CONST() to FIELD_PREP()
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_105625_457918_46E9DCB4 
X-CRM114-Status: GOOD (  14.84  )
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

T24gRnJpLCBKdWwgMjYsIDIwMjQgYXQgMTowMuKAr0FNIEFuZHLDqSBEcmFzemlrIDxhbmRyZS5k
cmFzemlrQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBXZWQsIDIwMjQtMDctMTAg
YXQgMDc6NDUgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3RlOgo+ID4gVXNlIG9mIEZJRUxEX1BS
RVBfQ09OU1QoKSB3YXMgYSB0aGlua28gLSBpdCdzIG1lYW50IHRvIGJlIHVzZWQgZm9yCj4gPiAo
Y29uc3RhbnQpIGluaXRpYWxpc2Vycywgbm90IGNvbnN0YW50IHZhbHVlcy4KPiA+Cj4gPiBVc2Ug
RklFTERfUFJFUCgpIHdoZXJlIHBvc3NpYmxlLiBJdCBoYXMgYmV0dGVyIGVycm9yIGNoZWNraW5n
IGFuZCBpcwo+ID4gdGhlcmVmb3JlIHRoZSBwcmVmZXJyZWQgbWFjcm8gdG8gdXNlIGluIHRob3Nl
IGNhc2VzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFz
emlrQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jIHwgMTIgKysrKysrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IEFueSBjb21tZW50cyBvbiB0aGlzIHBhdGNo
Pwo+CgpMb29rcyBnb29kIHRvIG1lOgoKUmV2aWV3ZWQtYnk6IFNhbSBQcm90c2Vua28gPHNlbWVu
LnByb3RzZW5rb0BsaW5hcm8ub3JnPgoKPiBDaGVlcnMsCj4gQW5kcmUnCj4KPgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
