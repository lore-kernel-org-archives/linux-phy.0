Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CDEDC001DD
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4wlpAyHpume4jVYq6AzO34gNsyaY0reMb2N0ICuq4w=; b=fsIrOrxEsNaQQ4
	6xjydZq6LqjIBYc7c6YDMYJ1q3P1zDqYve9VlBkJtf2Cu/Wk20HLz9q6FAMjcH1e8bHaIjx700/AR
	gB55YxabGYCnxX374b/QgyLT1PQxRmi5RuXZbU5z7fKXUbe3epIt3vGxnqiVnzbRRoAsURi5ehOEX
	Yf8uZbxWhldteDO2PhETFQTCM1tie7HaYDS1Und6mdWSXOHbr8jEGbz/O6vbELLZWYyIMnxlxQvau
	eVAGApOKTuPFzJ6RLKxQ3OcgpKMfVCsE4tj8kO1436iorsHrEjL4QisMIuhLWNZbjesL8D8L/oMFA
	e6LwLwITvIORaJcWCAhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGy9b-00FFvz-0J;
	Wed, 05 Jul 2023 08:46:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGy9Y-00FFv9-0w
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:46:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9F4AD61474;
	Wed,  5 Jul 2023 08:46:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 426B2C433C7;
	Wed,  5 Jul 2023 08:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688546783;
	bh=TrDgTUVhADoSsAO2/sNZ+F/3nrvrfuljDS6R5BUFlqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j0+vVsH3AhB/AXyyE2VaWHL77fjGb9huGVzPLh4BVkJWt2lr2ii/t8H+KuQf0s6CS
	 Zw1KPnwuYyrhImeN1ZhndHzTVMH0KPrJsFYeyYRueACZ5pT1HxChw6uE31eC0DWz+w
	 KmrujmRpC7AEtoFiRnr/xJW3Jr9yVhuJoyPo+dK1bLPJKyysyp6XwGyAeMO8aGWfMy
	 iOJA2JBskgNU9gopvIRbAnp1VeSEpMt174zXetABgZyd1SGFpqw5iiVboRScCdx7cL
	 FbfcnVQrOI464HqZplDCV4Je7snRf5FCOc2hKj+CVucweQHllQypi44FecnC01DU7H
	 O72RoaRKM+oJQ==
Date: Wed, 5 Jul 2023 14:16:06 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for PCIe
Message-ID: <20230705084606.GF11854@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_014624_389766_5437A04A 
X-CRM114-Status: GOOD (  14.14  )
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

T24gV2VkLCBKdWwgMDUsIDIwMjMgYXQgMDE6NDc6MDVQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gVXBkYXRlIHRoZSByZWxhdmVudCBEVCBiaW5kaW5ncyBmb3IgUENJZSwgYWRkIG5l
dyBjb25maWcgdG8gdGhlIHBoeQo+IGRyaXZlciBhZGQgcGNpZSBhbmQgcGh5IG5vZGVzIHRvIHRo
ZSAuZHRzaSBmaWxlIGFuZCBlbmFibGUgdGhlbiBpbiAKPiBib2FyZCAuZHRzIGZpbGUgZm9yIHRo
ZSBzYTg3NzVwLXJpZGUgcGxhdGZvcm0uCj4gCj4gTXJpbm1heSBTYXJrYXIgKDYpOgo+ICAgZHQt
YmluZGluZ3M6IFBDSTogcWNvbTogQWRkIHNhODc3NXAgY29tcGF0aWJsZQo+ICAgZHQtYmluZGlu
Z3M6IHBoeTogcWNvbSxxbXA6IEFkZCBzYTg3NzVwIFFNUCBQQ0llIFBIWQo+ICAgUENJOiBxY29t
OiBBZGQgc3VwcG9ydCBmb3Igc2E4Nzc1cCBTb0MKPiAgIHBoeTogcWNvbS1xbXAtcGNpZTogYWRk
IHN1cHBvcnQgZm9yIHNhODc3NXAKPiAgIGFybTY0OiBkdHM6IHFjb206IHNhODc3NXA6IEFkZCBw
Y2llMCBhbmQgcGNpZTEgbm9kZXMKPiAgIGFybTY0OiBkdHM6IHFjb206IHNhODc3NXAtcmlkZTog
ZW5hYmxlIHBjaWUgbm9kZXMKClBsZWFzZSBub3RlIHRoYXQgdGhlIGR0cyBwYXRjaGVzIHNob3Vs
ZCBjb21lIGJlZm9yZSBkcml2ZXIgcGF0Y2hlcy4KCi0gTWFuaQoKPiAKPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAgIHwgIDI4ICsrCj4gIC4uLi9waHkvcWNv
bSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCAgICAgICB8ICAxOSArLQo+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC1yaWRlLmR0cyAgICAgfCAgNjggKysrKwo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpICAgICAgICAgfCAyMDEgKysrKysrKysrKy0K
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgICAgICAgIHwgICAxICsK
PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyAgICAgIHwgMzI4ICsr
KysrKysrKysrKysrKysrKwo+ICAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXY1
XzIwLmggICAgfCAgIDEgKwo+ICAuLi4vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12NV8yMC5o
ICAgICAgICAgfCAgIDIgKwo+ICA4IGZpbGVzIGNoYW5nZWQsIDY0NSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIuMzkuMgo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
