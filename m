Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89FF1C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn5FJgyse41Xxc/8FmJQpl8hRWBhS+aZ0n4gXQ27R54=; b=YV+zLJXR0boWpZ
	UeQ8E6n/43tlYgbwx4vvNW9UlhZZHLTecr3N69IkYZc+8czR8MTHo9aydC59ZvXUJQtXdSx4Iregi
	8zf/+XEb7/WHdgbal1ZnhVtzbRz8bkjqI85e1CVf1bpXYtYi2RI3I2IMjjY5FjB1hDi5KAL4E4V97
	0nC3VxDm1ElN7WIT7uGozLIzuCfWstB1AjUB3rWfwMWxBgxtvsHUoEZ73PGnSvVNbThXbHUQkfi/A
	5gC1L5QC5Czz++LNXgUZels21x5vmxenqexXx5wyHfyTdfZtLfXnIxkkxPH8dgxFIQppCax/9IWkg
	HI+cBdz1tb5MX7dpiWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsH3-00000005LWa-0bEx;
	Fri, 28 Aug 2026 08:49:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsH1-00000005LUJ-0uNI
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:49:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BC7A641377;
	Fri, 28 Aug 2026 08:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 514B11F000E9;
	Fri, 28 Aug 2026 08:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787906958;
	bh=KwMZYj1SwsD1XWfTpffpCTellIENaAFavBhrfgEAmR0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AvXRYgg+2v/Hp0T+5FEizQVk+kxVWIJwa4JwADSoHj7fWUSPW54zonPMi50FeVXUE
	 lb6LDeuBbS3vVIM2BUeWWzqIeuZI+owcMq0jTB6er78T2T8lLz1CaxIuG0NAfiMYLA
	 ntB84CA8xXR+wZGp4XBimyP9EAaollDdjdvPYPjZEDxXWLEsK3f8rTyg5VkhfSJo4+
	 iqcsWiLRsvB+uhdJICLERXrxTzG1TQgI0Rnuq6f6IsWgZOaiSE50OU53Wjqnp4OOLL
	 pv/ftSnsH3qUq44ZKRPdd+vEYucXE/LHKKdtP8qUD+Al5L3XHAgeg2Nu9w4IXThM08
	 rfc6MqvARtCUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 08:49:18 +0000
Message-Id: <20260828084918.514B11F000E9@smtp.kernel.org>
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

PiBEb2N1bWVudCB0aGUgUENJZSBQSFkgZm91bmQgb24gdGhlIFF1YWxjb21tIE5vcmQgcGxhdGZv
cm0uCj4gCj4gTm9yZCBoYXMgYSBHZW41LWNhcGFibGUgUU1QIFBDSWUgUEhZIHRoYXQgY2FuIG9w
ZXJhdGUgaW4gbXVsdGlwbGUKPiBsYW5lIGNvbmZpZ3VyYXRpb25zIHVzaW5nIGZvdXIgUEhZIHNl
Z21lbnRzIChBL0IvQy9EKS4gVGhlIGFjdGl2ZQo+IHRvcG9sb2d5IGlzIHNlbGVjdGVkIGJ5IGZp
cm13YXJlIHRocm91Z2ggYSBUQ1NSIGNvbmZpZ3VyYXRpb24KPiByZWdpc3RlciBhbmQgbWF5IGJl
IGNvbmZpZ3VyZWQgYXMgeDE2LCB4OCt4OCwgeDgreDQreDQsIG9yCj4geDgreDQreDIreDIuCj4g
Cj4gVGhlIGJpbmRpbmcgZGVzY3JpYmVzIHRoZSByZWdpc3RlciByZWdpb25zLCBjbG9ja3MsIHJl
c2V0cywgcG93ZXIKPiBkb21haW5zLCByZWd1bGF0b3JzLCBQSFkgcHJvdmlkZXIgaW50ZXJmYWNl
LCBjbG9jayBwcm92aWRlciBpbnRlcmZhY2UsCj4gYW5kIHRoZSBxY29tLGxpbmstbW9kZSBwcm9w
ZXJ0eSB1c2VkIGJ5IHRoZSBkcml2ZXIgdG8gZGlzY292ZXIgdGhlCj4gYWN0aXZlIGxhbmUgY29u
ZmlndXJhdGlvbiBwcm9ncmFtbWVkIGJ5IGZpcm13YXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEty
aXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29t
PgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJ
dCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA4Mjgtbm9yZC12Mi0wLTE4YmY1OWQxOWQ2ZkBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9MQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
