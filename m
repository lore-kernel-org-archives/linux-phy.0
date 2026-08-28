Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37884C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E3cjjbKAvnVWiszoyV1CzEI09I9nUOkzkxAa82W6r8=; b=VthJx0m8w+oYU1
	2+bW7y4YHIbjaPYGpClzN+0siVkhQVJc/qARaQ015sukjPCTBjm3N5rA2j06c71yhDf0J64k4Mxn2
	oMCEmyph+97y10wcdkZZ17OmD6GyHlUdXML0b2mhikRtkCaMLYVXAffn50sCl3gyOzQHunVtDg94R
	k2bn2GfKj0l9M6/7nx9lu/mhww6nF32qVqH2OQZ2/Ktdx5966JQl+W2Z/mEjg2xx2R+DVAjpp25Xi
	Cb100Ml0B61F0BPoZD0UBm9Icy9oPfjphGUEJy65FXNjWYAG3fGmBqpNeELF4+GeKnNoepFm8DIcA
	MVXO7A2vGYBeMz8FCIPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsM5-00000005NC3-3FyZ;
	Fri, 28 Aug 2026 08:54:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsM4-00000005NBq-2n4E
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:54:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 421C8412A8;
	Fri, 28 Aug 2026 08:54:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A96491F000E9;
	Fri, 28 Aug 2026 08:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787907272;
	bh=zGIlfCrWZypKtawg7l8tdA35q/ldWHqoojDNEx7dEqc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MWANWYiIeEBCqWXk7wQYnkBg/CzdRsFhveACb5bu45BVTdXX4p1dkZLEu2V+we5/w
	 RKszJZvzgq6ygb1z5D0sgYsNAAZQMQcPG2S2n5dYFmI6iNfxwLZzGNkPQKrSffuf59
	 VpjDiZdg+T6fnvhNkr3rzGzMQWGpxFZUuxGhIeYY3ECzoDou3FEP2WVKE2ceAgwNih
	 MMfUecbhPX4PCjH5gaeLnl7EccvqJJWQr4QppP3mgMBeQ9xaOlICHn7Qt06WsdCIRn
	 5Fr/b2DkNY7lH3j77kK4jo6sSYfB20DOm6WUALI4BAJg/gGrgekXyW5m/cvOssFOsY
	 QDj45nF08GJ4w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260828-nord-v2-4-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-4-18bf59d19d6f@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 08:54:31 +0000
Message-Id: <20260828085431.A96491F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBBZGQgc3VwcG9ydCBmb3IgdGhlIE5vcmQgR2VuNXgxNiBiaWZ1cmNhdGVkIFFNUCBQQ0llIFBI
WS4KPiAKPiBOb3JkIGhhcyBhIHNpbmdsZSBQQ0llIFBIWSBibG9jayBzcGxpdCBpbnRvIGZvdXIg
cG9ydHMgd2hpY2ggY2FuIGJlCj4gdXNlZCBpbiBtdWx0aXBsZSBsYW5lIGNvbmZpZ3VyYXRpb25z
OiB4MTYsIHg4K3g4LCB4OCt4NCt4NCBhbmQKPiB4OCt4NCt4Mit4Mi4gVGhlIGFjdGl2ZSB0b3Bv
bG9neSBpcyBzZWxlY3RlZCB0aHJvdWdoIHRoZSBsaW5rIG1vZGUKPiBjb25maWd1cmF0aW9uIHJl
Z2lzdGVyLCBhbmQgdGhlIGRyaXZlciBleHBvc2VzIHRoZSBjb3JyZXNwb25kaW5nIFBIWQo+IGlu
c3RhbmNlcyBiYXNlZCBvbiB0aGF0IG1vZGUuCj4gCj4gVW5saWtlIEdseW11ciwgd2hlcmUgdGhl
IFBIWSBpcyBpbml0aWFsaXplZCBieSBmaXJtd2FyZSwgTm9yZCByZXF1aXJlcwo+IExpbnV4IHRv
IHByb2dyYW0gdGhlIFBIWSByZWdpc3RlcnMuIEFkZCB0aGUgUExMLCBUWFJYWiwgUENTIGFuZCBQ
Q1MKPiBsYW5lIGluaXRpYWxpemF0aW9uIHRhYmxlcywgYWxvbmcgd2l0aCB0aGUgcmVxdWlyZWQg
cG93ZXItdXAsCj4gcG93ZXItZG93biBhbmQgc29mdC1yZXNldCBzZXF1ZW5jaW5nLgo+IAo+IEFk
ZCBwZXItcG9ydCBhbmQgZ3JvdXBlZCBQSFkgY29uZmlndXJhdGlvbnMgZm9yIGFsbCBzdXBwb3J0
ZWQgTm9yZAo+IGxhbmUgbW9kZXMuIEFsc28gYWRkIHN1cHBvcnQgZm9yIHJlZ3VsYXIgUEhZIHJl
c2V0cyBpbiBhZGRpdGlvbiB0byB0aGUKPiBOT0NTUiByZXNldHMsIGFuZCBoYW5kbGUgdGhlIHNo
YXJlZCBQSFkgcG93ZXIgZG9tYWluIGJ5IGF0dGFjaGluZyBpdAo+IG9uY2UgYXQgdGhlIG11bHRp
LVBIWSBsZXZlbCBhbmQgcmV1c2luZyBpdCBhY3Jvc3Mgc2VnbWVudCBncm91cHMuIFRoZQo+IEdE
U0MgaW5pdCBpcyBub3cgZG9uZSB1c2luZyB0aGUgZGV2aWNlIGNyZWF0ZWQgZm9yIHRoZSBQSFkg
aXRzZWxmCj4gKGRldm1fcGh5X2NyZWF0ZSgpKSwgcmF0aGVyIHRoYW4gdGhlIHBhcmVudCBtdWx0
aS1QSFkgcGxhdGZvcm0gZGV2aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRh
bnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoKU2FzaGlrbyBo
YXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVh
dCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA4Mjgtbm9yZC12Mi0wLTE4YmY1OWQxOWQ2ZkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9
NAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
