Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A18F6C4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4i3VefvHVfPpCPJcSX0uINurh3xJVKkn7DxiVLZTs4=; b=jUPfQ0362H/G72
	g7F+eNHKuOJRGI6jgFkaIPGh4RzHpSCVMctBsNeghjuBtRZA9YOwqjrS43eDeZncMIEmxnfqaTMAE
	oH+ojFy6i3II+EY5wm24L30cVAnvWkn91yqa0PfxEjYElw2At+A+3A9yQihlt9ZbLFypZqQaV4bg+
	K1x2Zo+l5al9SlOalsircAY8kG+el9DVTymjywA1fIxeM0FeNeUsI3E1A/8ePYqQRgrFTI2Ws2d7N
	WT1+9ZyMEub3fzUDzAr1hQe8t7e0WVAg+fsPaXNITNsdOYa31o+4YjuIwHI1Asuxf2H4wb4oOXiBK
	LFB+jpGDUighbQ4r9OHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3Dsf-00000001ux3-463h;
	Sat, 04 May 2024 11:48:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3Dsc-00000001uwA-2zC4;
	Sat, 04 May 2024 11:48:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E1C760AFB;
	Sat,  4 May 2024 11:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C3BCC072AA;
	Sat,  4 May 2024 11:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714823317;
	bh=voII0mkTi7kIEO2eH4xj6nNppqEkcLoZiSxAxpXu/vI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oGftKBHmR06VgOyEmJvGDxbSOSE8BJFfHLHlssNG6WSgEYd8KJQb7Cyt+v5azepUn
	 Of5SVZKRUSf+c38gv7EfoohXUmo5z92P9max8v9/fYXz8Bj2vpBUDbYw78ZXK/yIF4
	 fhrb8mipfJ9HIFmlkGiDcXGBEqU/skZq53fHSebIXGXSdygZQfvr7oifiWXEWmIwNP
	 AbPNGomnr/OmINjq2VDoIaxpQznJaE1oRlhm8etsweOIneZ2wf6Mwbnqoib/aDa+a/
	 6agoJh3cERHm5SqKuczpk5t0hDUCtz0cl2qt+jWpUeAetdG/Q8f8LKOBLUVJ+UMAjl
	 JpaNm//u+oZnQ==
Message-ID: <560df72c-ed3e-4eab-b9cd-6af1414c2663@kernel.org>
Date: Sat, 4 May 2024 13:48:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
 <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_044838_872678_2BD084BF 
X-CRM114-Status: GOOD (  12.13  )
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

T24gMDEvMDUvMjAyNCAxMToxOSwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gQWRkIGEgZGVkaWNh
dGVkIGdvb2dsZSxnczEwMS11c2IzMWRyZC1waHkgY29tcGF0aWJsZSBmb3IgR29vZ2xlIFRlbnNv
cgo+IGdzMTAxIFNvQy4KPiAKPiBJdCBuZWVkcyBhZGRpdGlvbmFsIGNsb2NrcyBlbmFibGVkIGZv
ciByZWdpc3RlciBhY2Nlc3MsIGFuZCBhZGRpdGlvbmFsCj4gbWVtb3J5IHJlZ2lvbnMgKFBDUyAm
IFBNQSkgYXJlIHJlcXVpcmVkIGZvciBzdWNjZXNzZnVsIGNvbmZpZ3VyYXRpb24uCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiAK
PiAtLS0KPiB2MjogYXZvaWQgaGF2aW5nIG5lc3RlZCBlbHNlL2lmLCBhbmQgaW5zdGVhZCBjaGFu
Z2UgdGhlIGV4aXN0aW5nICdlbHNlJwo+ICAgICB0byBleHBsaWNpdGx5IHN0YXRlIHRoZSBwbGF0
Zm9ybXMgdXNpbmcgJ2lmJwo+IC0tLQo+ICAuLi4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1k
cmQtcGh5LnlhbWwgICAgICAgICB8IDYxICsrKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRy
ZC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3Vu
Zyx1c2IzLWRyZC1waHkueWFtbAo+IGluZGV4IDQ1MmU1ODRkOTgxMi4uZjk5ZjA1NWVjNzA0IDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3Vu
Zyx1c2IzLWRyZC1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAo+IEBAIC0yNSw2ICsyNSw3IEBAIGRl
c2NyaXB0aW9uOiB8Cj4gIHByb3BlcnRpZXM6Cj4gICAgY29tcGF0aWJsZToKPiAgICAgIGVudW06
Cj4gKyAgICAgIC0gZ29vZ2xlLGdzMTAxLXVzYjMxZHJkLXBoeQo+ICAgICAgICAtIHNhbXN1bmcs
ZXh5bm9zNTI1MC11c2JkcmQtcGh5Cj4gICAgICAgIC0gc2Ftc3VuZyxleHlub3M1NDIwLXVzYmRy
ZC1waHkKPiAgICAgICAgLSBzYW1zdW5nLGV4eW5vczU0MzMtdXNiZHJkLXBoeQo+IEBAIC01Nyw3
ICs1OCwxOCBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICB0aGUgT0YgZ3JhcGggYmluZGluZ3Mgc3Bl
Y2lmaWVkLgo+ICAKPiAgICByZWc6Cj4gLSAgICBtYXhJdGVtczogMQo+ICsgICAgbWluSXRlbXM6
IDEKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQSFkgcmVnaXN0ZXIgYmFz
ZSBhZGRyZXNzLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQQ1MgcmVnaXN0ZXIgYmFzZSBhZGRy
ZXNzLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQTUEgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzLgoK
RHJvcCByZWR1bmRhbnQgcGFydHMgKCJyZWdpc3RlciBiYXNlIGFkZHJlc3MuIikuLi4gd2hpY2gg
bGVhdmVzCmFic29sdXRlbHkgbm8gaW5mb3JtYXRpb24gY29tcGFyaW5nIHRvIHJlZy1uYW1lcy4g
UGxlYXNlIHByb3ZpZGUKZGVzY3JpcHRpb24uCgo+ICsKPiArICByZWctbmFtZXM6Cj4gKyAgICBt
aW5JdGVtczogMQo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHBoeQo+ICsgICAgICAt
IGNvbnN0OiBwY3MKPiArICAgICAgLSBjb25zdDogcG1hCj4gIAo+ICAgIHNhbXN1bmcscG11LXN5
c2NvbjoKPiAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5k
bGUKPiBAQCAtODEsNiArOTMsMzQgQEAgcmVxdWlyZWQ6Cj4gICAgLSBzYW1zdW5nLHBtdS1zeXNj
b24KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
