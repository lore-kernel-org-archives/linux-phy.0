Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC870C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IU88ox28YTdk6JZJPikFsXI/KpazKb4sJPJilp1kpXU=; b=wdJYVpg2rTOvwv
	S+xl2wgz2EiCdzJ2PuytA6yDG3buaEGY6gaqBDCJJcrWhcFizcfFRkcpjzsaKoL/GjXAB03qCMJf7
	fF6RMDT2MEbKotCIfa1rD0X0E7il4Wv5w8OVKpqDl9IgsN1/AdQbCNk6Ysg/HkdP6p4CJAXue6p2g
	Pn44VcRfiJBE9rsGAOPp/C73a7eu0uW3hHrjDVT4fH+31VYGxg2010G9bvAyu3wjpV2kVP0BjDP/F
	+QMyeCnE1jCg8wJXXjDz7u6Y210v0zy6ATIuZu3IIvHCaak6KEHyAyX6Bbxg1MhblfOa4udxtHU5D
	ACS7NZpDgSRh+PHs6qYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyJb-0000000E7pP-2ATq;
	Tue, 07 Jul 2026 05:25:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyJa-0000000E7pE-2fAs
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:25:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1405140182;
	Tue,  7 Jul 2026 05:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4534B1F000E9;
	Tue,  7 Jul 2026 05:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783401950;
	bh=O95+EHVsSrm2b2PDAVwRTrIesXs0v3qc0/UAGmjBuaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nCM/CimA1tdGj+3M6ZoWwc/THkObfuq2JjyZCdXZ+qQgZSGB2/1XppufL7dfE6IDY
	 hB5nS50/v0bSifJLAn9y78lbASg0bNYg5GuB8vrEO+MuhT0aiT18dJfeoaSDhHwyiL
	 Ea1rcLbtsx7CfvMYS6dBdfgkgO9udRgdDT2mnFkKgs9OE4q82bhgFuaK7TA6U2bJck
	 JUIWbRMfy94cF+XiywNsiGP69JDJH+W9CK1A9N+idviGZfi/hEjwR5+f6h6qTC3XTM
	 ng/TXd0hevBAN8LQOkIYH/0GP75fuyi44plKdeqHXm3eO4+Sk36usvThYiusoggdCN
	 eopr4y5Fcc0Ww==
Date: Tue, 7 Jul 2026 07:25:41 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatible
Message-ID: <kkymhc4k5jvtw7kmevvpsiuhwxvtzow4o6ha4b5orzf3x7ptmg@lx5uzkknrykn>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
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

T24gRnJpLCBKdWwgMDMsIDIwMjYgYXQgMDU6Mzg6NDBQTSArMDUzMCwgVml2ZWsgUGVybmFtaXR0
YSB3cm90ZToKPiBBZGQgcWNvbSxtYWlsaS1wY2llIGFzIGEgY29tcGF0aWJsZSBzdHJpbmcgdGhh
dCBmYWxscyBiYWNrIHRvCj4gcWNvbSxoYXdpLXBjaWUsIGFzIHRoZSBNYWlsaSBTb0MgcmV1c2Vz
IHRoZSBIYXdpIFBDSWUgY29udHJvbGxlciBJUC4KPiAKPiBUaGUgTWFpbGkgU29DIGlzIGEgZGVy
aXZhdGl2ZSBvZiBIYXdpIGFuZCBzaGFyZXMgdGhlIHNhbWUgUENJZQo+IGNvbnRyb2xsZXIgYXJj
aGl0ZWN0dXJlLCBhbGxvd2luZyByZXVzZSBvZiB0aGUgZXhpc3RpbmcgSGF3aSBQQ0llCj4gRFQg
YmluZGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogVml2ZWsgUGVybmFtaXR0YSA8dml2ZWsucGVy
bmFtaXR0YUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+IERlcGVuZGVuY2llczoKPiAtIFBDSTog
cWNvbTogQWRkIFBDSWUgc3VwcG9ydCBmb3IgdXBjb21pbmcgSGF3aSBTb0MKPiAgIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDYyNS1oYXdpLXBjaWUtdjQtMC0xYTU3ODYwM2NkODZA
b3NzLnF1YWxjb21tLmNvbS8KClNxdWFzaGVkIHdpdGggdGhlIEhhd2kgcGF0Y2gsIHRoYW5rcyEK
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
