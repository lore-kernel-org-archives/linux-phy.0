Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67315E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 15:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6ilNcLjZCGeYekO2XJbIEI4N4llAf75AkHX5SiSkmY=; b=q5wACVbvpFVwE7
	znz+/qNjTC+QvfcfB/Pr8CVtiMwJ+MPMaQ8N91ezSUL89CMmYQtEWe0zwycqaH2ssAB45x2ZgmPwd
	SCwm454cuxDibtAKEDarC2zSY/dBsLxLfdTTT5ac5yr4jjp9ACvjAOOOqr0oSdc6gf+NCljdo0f89
	pyAIqiQAGyt/jsXb+BWUj+v74flWzn7mlIb5D6WgPV+XmPSUWh8xVIk3bO9d5loZ7MMP+Q8OmhYvu
	IBoNmHtRv7AgNluBYKf6s2EePz4sI9sbdLzqzjsi7hQNoi8KD7ZGRwJ6yhhNh81449jfFvO1tpDXA
	j3xbaoH+DZcaWOWCpzGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4nG-0000000FjJw-0J1K;
	Tue, 23 Dec 2025 15:59:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4nC-0000000FjJ5-3AXB;
	Tue, 23 Dec 2025 15:59:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A760F415EA;
	Tue, 23 Dec 2025 15:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66062C113D0;
	Tue, 23 Dec 2025 15:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766505561;
	bh=FbWzgepLOv260NOsYwp6cw6dEnGFg6D/tQJ2zegwDW0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UeDI8oUbunx4UBfNA6d7KG5fyjjI9KmunMraw0Wx9LS4Hp16nLeZZBz8kyIj52oUv
	 9uRuyPnv20E20eYGmaepK4E7hP/ltzOo6PshS9Z0Dh8yZjmxIzUN8d68qs4Y5FB6ge
	 Zo+5vkJwIxesmQ56/duA4lb4JqSm7FFcHyOxdkLNsHjnhAvhYjqFFUeI3bQuTuR9sL
	 6WA8iJPckwmgiYiynonJ8g3Pb8ONVPP5B0L7ezwkZ2UYiOxDuGAfjV+Eec2asCYsSP
	 rlqz5MfZzR8AJHivVawcVr7LwfVLNerplK5SK43XjEeA16sT09SmSdaJFLylwvGwSw
	 +wThtapcDsxgQ==
Date: Tue, 23 Dec 2025 21:29:12 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v7 7/7] MAINTAINERS: Add ASPEED PCIe RC driver
Message-ID: <kbads4vnfjf2ce6sks7bvjmhpt73fmvdmrikxwp7y6wjw3flse@5yer3aegbfo6>
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
 <20251216-upstream_pcie_rc-v7-7-4aeb0f53c4ce@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251216-upstream_pcie_rc-v7-7-4aeb0f53c4ce@aspeedtech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_075922_813873_C3D2A947 
X-CRM114-Status: GOOD (  11.74  )
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

T24gVHVlLCBEZWMgMTYsIDIwMjUgYXQgMDk6NTA6MDZBTSArMDgwMCwgSmFja3kgQ2hvdSB3cm90
ZToKPiBBZGQgbWFpbnRhaW5lciBmb3IgQVNQRUVEIFBDSWUgUkMgZHJpdmVyLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEphY2t5IENob3UgPGphY2t5X2Nob3VAYXNwZWVkdGVjaC5jb20+Cj4gLS0tCj4g
IE1BSU5UQUlORVJTIHwgMTIgKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBp
bmRleCBhZmYzZTE2MjE4MGQuLmMzMjdlYTM3NTc0NiAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVS
Uwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTM5MDAsNiArMzkwMCwxOCBAQCBTOglNYWludGFp
bmVkCj4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9hc3BlZWQs
dmlkZW8tZW5naW5lLnlhbWwKPiAgRjoJZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hc3BlZWQvCj4g
IAo+ICtBU1BFRUQgUENJRSBDT05UUk9MTEVSIERSSVZFUgo+ICtNOglKYWNreSBDaG91IDxqYWNr
eV9jaG91QGFzcGVlZHRlY2guY29tPgo+ICtMOglsaW51eC1hc3BlZWRAbGlzdHMub3psYWJzLm9y
ZyAobW9kZXJhdGVkIGZvciBub24tc3Vic2NyaWJlcnMpCj4gK0w6CWxpbnV4LXBjaUB2Z2VyLmtl
cm5lbC5vcmcKPiArTDoJbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiArUzoJTWFpbnRh
aW5lZAo+ICtGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2FzcGVlZCxh
c3QyNjAwLXBjaWUueWFtbAo+ICtGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2FzcGVlZCxhc3QyNjAwLXBjaWUtcGh5LnlhbWwKPiArRjoJZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLWFzcGVlZC5jCj4gK0Y6CWRyaXZlcnMvcGh5L2FzcGVlZC9LY29uZmlnCj4gK0Y6
CWRyaXZlcnMvcGh5L2FzcGVlZC9wY2llLXBoeS1hc3BlZWQuYwoKUEhZIGRyaXZlcnMgYW5kIGJp
bmRpbmcgYmVsb25nIHRvIGEgc2VwYXJhdGUgZW50cnkuIFNvIEkndmUgcmVtb3ZlZCB0aGVzZSB3
aGlsZQphcHBseWluZy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
