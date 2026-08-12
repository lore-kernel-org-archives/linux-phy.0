Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267CCC5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 14:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W9OqEjJEdx5gIaOwpsiDloGeFru3RcIo7dl9jlgRBY=; b=VsXf8ORlxnmx4q
	/YBBwaI1QVKZFoWfC+tAAkAM+tleP/zZn9rC1dBsxjl6DnGw+tM4+WgfM2RyB6ctwxn+03ewKiM5I
	XXy1U69gSL1UOO4SIBn2azwtO1d+GnnKEinQX+gEZ8hhR3Mn4pTkk3YeBY8o7PRc/2f+3Sbz8gtVh
	RDPpzUXR6KmWQQ8KyQieRKGnYTyOpYN9LgqF+1w8C8Z3uhjD1g4f9Ey5cGiIcZPkterWcY5MU3EJE
	W97FG5iFjOKvxt+cGzs4jFmQQr201L+cv/tudyjV2/ei1WX8LOizfISINCY9Zy5mIGDa5Ldt+5G5v
	2FrJSNVDg8fBGw9aMsJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAMn-0000000GQ7d-1Zsk;
	Wed, 12 Aug 2026 14:55:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAMj-0000000GQ73-1azi
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 14:55:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 658DB60A7D;
	Wed, 12 Aug 2026 14:55:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8811F000E9;
	Wed, 12 Aug 2026 14:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786546536;
	bh=uUujthjix+bSKif8wzF6gzmFVaCmYoprfmT7tPKE5sg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NUXVOJViHgWTEPUGLytbX/XfURMj6hoSSD1Ehzjs3FnkgOLMEUEspu3gIQJY+d6ZR
	 +MYix+BRrdflP7JJsRr0YA5nZbB0znN4B/05MFlZ4J+61eWli/fpZ+mRXPvu+NVmLO
	 JXpKK4eShK7hodL3rNQY9gus5HAvgEBLV6sX79s6BJ9gxm6ePRuJMSifABDTiiQ0QS
	 Mgk/t4U0k3wJDTyY998orZWrPmJk7RY249ibNrfsImrsLrXcYzhdzUi4oyo3OGmaEN
	 jO0w1xcUHa0jYOjFImg0Ny6Yu9t+435cltWZzHP2XBf6CTshjHk3llr2WjKdSIxEsu
	 yZbE3sOovZgdA==
Date: Wed, 12 Aug 2026 16:55:28 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend
 for resets and RTL9607C support
Message-ID: <mg64koywc4r5fwszio36jgxmpjh5fie2jdzxvi7s4vuymrcixx@76s3nekoynbw>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-4-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520175728.720877-4-adilov@disroot.org>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTA6NTc6MjVQTSArMDUwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiBBZGQgdGhlICJyZWFsdGVrLHJ0bDk2MDctdXNiMnBoeSIgY29tcGF0aWJsZSBmb3Ig
VVNCMiBQSFkgb24gdGhlIFJUTDk2MDdDCj4gU29DIHNlcmllcy4KPiAKPiBBZGQgYSByZXNldHMg
cHJvcGVydHkgdG8gcHJvcGVydGllcyB0byBkZXNjcmliZSB0aGUgdXNiMnBoeSByZXNldCBsaW5l
Lgo+IAo+IEluIFJUTDk2MDdDLCBVU0IyIFBIWSByZXNldCBsaW5lIGlzIGZyb20gIklQIEVuYWJs
ZSBjb250cm9sbGVyIiB3aGljaCBpcwo+IG11bHRpcHVycG9zZSBhbmQgaGFuZGxlIGFjdGl2YXRp
bmcgdmFyaW91cyBTb0MgcGVyaXBoZXJhbHMuCj4gCj4gSXQgaXMgdW5jbGVhciB3aGV0aGVyIFJU
RCBTb0NzIGhhdmUgc29tZXRoaW5nIHNpbWlsYXIgdG8gdGhhdCBzbyBzZXQKPiB0aGUgcmVzZXRz
IHRvIGZhbHNlIGZvciB0aGVzZSBkZXZpY2VzLgo+IAo+IFJUTDk2MDdDIHJlcXVpcmVzIHRoZSAi
cmVzZXRzIiB0byBiZSBzcGVjaWZpZWQgc28gYWRkIHRoZSBjb3JyZXNwb25kaW5nCj4gaWYgY2hl
Y2sgZm9yIHRoZSAicmVhbHRlayxydGw5NjA3LXVzYjJwaHkiIGNvbXBhdGlibGUuCj4gCj4gUmV2
aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1
YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSdXN0YW0gQWRpbG92IDxhZGlsb3ZAZGlzcm9v
dC5vcmc+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
