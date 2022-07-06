Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34656C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 05:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=r4adFYp3ZveogHolezJm/8kbG1o9IQBZdu/I49wr1CA=; b=hzdDEnXYD6F1fF
	XeAXdFSYYXuczmHL5Qtw6JGXMeRd1d6w+0XpWtAB/uBQaPgPriUmGCnr45W8gc3B1lljDL6HK7xnp
	KKe0QGGZG82s7R7SYm9wjbljAm1s0g6ZVa9v4+T8Zd5RRE5vyXBASaLvj3/LpbJ90MfZhwjjJLtuq
	I6wVL5McmcXs1XwNKq9hWhYDF9pybKtaMND7wkiUDk5sSkEMr5/SfmTWk8bFAYP7OomQyJEADUlgz
	nsnHJigTIS9FZaayFQwS6CVojEZyRORRMphUFLTAh+jwstRc9mWLBaL2gt4Ef7ipJTqvZaBPEoSZm
	bOmfkfNwsFKy3LysdZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xUo-0067BU-Jh; Wed, 06 Jul 2022 05:22:42 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xUl-006798-ED
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 05:22:41 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220706052219epoutp0221e1e423d48eb868b290b459b8a44ed1~-Jfj3yhlu1138811388epoutp02s
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 05:22:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220706052219epoutp0221e1e423d48eb868b290b459b8a44ed1~-Jfj3yhlu1138811388epoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657084939;
	bh=Ispl4LOX16CobeM8SQ1UfhF/UhNI9nkTRJAg/7f9IJ4=;
	h=Subject:Reply-To:From:To:CC:Date:References:From;
	b=nWv7EhoUb4Fjg4+cDL27uRE8kYM2k0+dqgnNXG++QxetC/2BPOGvf904r0RixSEUy
	 AcF3ZA8pSaUVGBSsbYF3UWQj4Tcyc9Xf3gWtRRktW3OvzObHFB/+q/RvoiD0yQXALX
	 CSV+rzmz28xv/SI3s2OqFLlq/jh9+SAoJb5661pk=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220706052218epcas2p2a2f562156ae6b09914c56e6748bd98e0~-JfjJMIWF3204232042epcas2p2-;
	Wed,  6 Jul 2022 05:22:18 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.88]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4Ld7G14xwcz4x9QG; Wed,  6 Jul
	2022 05:22:17 +0000 (GMT)
X-AuditID: b6c32a47-5f7ff700000025aa-60-62c51c095a2d
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	B1.E4.09642.90C15C26; Wed,  6 Jul 2022 14:22:17 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
	<lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220706052217epcms2p444cc8608b21d483a66a43ecf4f2140d4@epcms2p4>
Date: Wed, 06 Jul 2022 14:22:17 +0900
X-CMS-MailID: 20220706052217epcms2p444cc8608b21d483a66a43ecf4f2140d4
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJsWRmVeSWpSXmKPExsWy7bCmmS6nzNEkg3U9qhZLmjIsXh7StJh/
	5Byrxe4Zy5ksZk49w2zx/NAsZotPLaoWF572sFm8nHWPzeL8+Q3sFg09v1ktjrz5yGyx//hK
	JovLu+awWZydd5zNYsKqbywWb36/YLc4tzjTonXvEXaLnXdOMFv82vqHyUHUY828NYwe19cF
	eCzYVOqxaVUnm8eTK9OZPDYvqffo27KK0eP4je1MHp83yQVwRmXbZKQmpqQWKaTmJeenZOal
	2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl5gB9pqRQlphTChQKSCwuVtK3synKLy1J
	VcjILy6xVUotSMkpMC/QK07MLS7NS9fLSy2xMjQwMDIFKkzIzljzLargt0TF7FWXWRoYl0t0
	MXJySAiYSGy4u4C9i5GLQ0hgB6PEidWH2LoYOTh4BQQl/u4QBqkRFnCW2PV/ExuILSSgJLFj
	zTxmiLi+xPUV3awgNpuArsS/xS/ZQOaICMxik1jydSkTiMMssIBRYv/vfYwQ23glZrQ/ZYGw
	pSW2L98KFdeQ+LGslxnCFpW4ufotO4z9/th8qBoRidZ7Z6FqBCUe/NwNFZeSWPDkECuEXS2x
	/+9vJgi7gVGi/34qyDMSQJfuuG4MEuYV8JV4eGIG2DMsAqoSv5+uh2p1kTj18C/YWmYBbYll
	C18zg7QyC2hKrN+lDzFFWeLILRaYRxo2/mZHZzML8El0HP4LF98x7wnUMWoS81buZIYYIyOx
	9aX/BEalWYhwnoVk7SyEtQsYmVcxiqUWFOempxYbFRjDYzY5P3cTIziFa7nvYJzx9oPeIUYm
	DsZDjBIczEoivKsmHUwS4k1JrKxKLcqPLyrNSS0+xGgK9PBEZinR5HxgFskriTc0sTQwMTMz
	NDcyNTBXEuf1StmQKCSQnliSmp2aWpBaBNPHxMEp1cAU/Pqqvf6S6eyzBG3KIsMdZ2cVLJz2
	cpqFc+/mlpkSuxOy2D4qfD9Z4p3x9ff50K5FW4yZ/8W7zYpZunJxaFnaqc7Upt3ZxfWqCw0F
	9vxc0Dr3Rua610pfzdVnpXzTOJHddO9s5ffCj93disJzz2VHvS+Y8ODAM7Z3L95tmMnWOG//
	F2VzGdHFKd8ij1Z4vS+OW2zP7DtN4cIhfp6yj084jv0/fkd9S83+DxZnN4m7fk/R2zfBuMuk
	7N6eryFOs9QFWipu7JV/UBF//6nMve3H3PdHN5RXthqvNpn8Qy311d2y1uWXHefNDm9ScNPt
	Sr0cfsljemnZ2eagDfe9FfwUXpyTF8q9btfpYz2n6OEKJZbijERDLeai4kQA3PVmIGoEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_222239_852870_7E163BE4 
X-CRM114-Status: GOOD (  11.07  )
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
Reply-To: wangseok.lee@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T27CoDA1LzA3LzIwMjLCoDE5OjU5LMKgS3J6eXN6dG9mwqBLb3psb3dza2nCoHdyb3RlOg0KPsKg
T27CoDI5LzA2LzIwMjLCoDA5OjE4LMKgV2FuZ3Nlb2vCoExlZcKgd3JvdGU6DQo+PsKgSnVzdMKg
YcKgZ2VudGxlwqBwaW5nwqBmb3LCoHRoaXPCoHBhdGNoLMKgaWbCoGFuecKgY29uY2VybsKgb27C
oHRoaXPCoHBhdGNowqBwbGVhc2XCoGxldMKgbWXCoGtub3cuDQo+PsKgDQo+wqANCj7CoFlvdcKg
cmVjZWl2ZWTCoGNvbW1lbnRzwqB0b8KgZml4wqBpbsKgdGhpc8KgcGF0Y2guwqBFeGFjdGx5wqBm
b3VyLsKgRm91csKgaW1wb3J0YW50DQo+wqBwb2ludHPCoHRvwqBmaXguwqBUaGVyZWZvcmXCoHdo
YXTCoGlzwqB0aGlzwqBwaW5nwqBhYm91dD8NCj7CoA0KPsKgV2l0aG91dMKgZml4aW5nwqB0aGVz
ZcKgaXRlbXMswqB5b3VywqBwYXRjaMKgY2Fubm90wqBiZcKgYWNjZXB0ZWQuwqBXaGF0wqBpc8Kg
bW9yZQ0KPsKgdG/CoHBpbmfCoGhlcmU/DQo+wqANCj7CoEJlc3TCoHJlZ2FyZHMsDQo+wqBLcnp5
c3p0b2YNCg0KScKgdHJpZWTCoHRvwqByZWNlaXZlwqB5b3VywqBvcGluaW9uwqBhYm91dMKgdGhl
wqBmaXjCoHBvaW50wqAuDQpJwqB3aWxswqByZXF1ZXN0wqBhwqByZXZpZXfCoGFnYWluwqBhZnRl
csKgbW9kaWZ5aW5nwqBpdMKgaW7CoHRoZcKgbmV4dMKgcGF0Y2guDQoNClRoYW5rwqB5b3UuDQoN
Cj4+PsKgKw0KPj4+wqArwqDCoGNsb2NrczoNCj4+PsKgK8KgwqDCoMKgaXRlbXM6DQo+Pj7CoCvC
oMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlvbjrCoFBDSWXCoFBIWcKgcmVmZXJlbmNlwqBjbG9jaw0K
PsKgDQo+wqByZWZlcsKgdG/CoHNhbXBsZS1zY2hlbWEueWFtbCzCoGV2ZW7CoGlmwqB0aGXCoGNs
b2NrwqBpdGVtwqBpc8Kgc2luZ2xlLA0KPsKgaXTCoHNlZW1zwqB0b8KgYmXCoHVzZWTCoGFzwqBm
b2xsb3dzLg0KPsKgDQo+wqBjbG9ja3M6DQo+wqDCoMKgbWF4SXRlbXM6wqAxDQo+wqANCj7CoGNs
b2NrLW5hbWVzOg0KPsKgwqDCoGl0ZW1zOg0KPsKgwqDCoMKgwqAtwqBjb25zdDrCoHJlZg0KPsKg
DQo+wqBJZsKgb25secKgImNsb2NrczoiwqBhcmXCoGRlZmluZcKgYW5kwqBjbG9jay1uYW1lc8Kg
YXJlwqBub3TCoGRlZmluZSwNCj7CoHRoZcKgZm9sbG93aW5nwqB3YXJuaW5nwqBvY2N1cnMuDQo+
wqAiJ2Nsb2NrLW5hbWVzJ8KgZG9lc8Kgbm90wqBtYXRjaMKgYW55wqBvZsKgdGhlwqByZWdleGVz
Ig0KPsKgDQo+Pj7CoCsNCj4+PsKgK8KgwqBsY3BsbC1yZWYtY2xrOg0KPj4+wqArwqDCoMKgwqBj
b25zdDrCoDENCj4+wqANCj4+wqBVbmtub3duwqBmaWVsZC4uLsKgY3VzdG9twqBwcm9wZXJ0aWVz
wqBuZWVkwqB2ZW5kb3LCoChheGlzLCkswqB0eXBlwqAoYm9vbGVhbikNCj4+wqBhbmTCoGRlc2Ny
aXB0aW9uLg0KPj7CoA0KPsKgDQo+wqAibGNwbC1yZWYtY2xrIsKgaGFzwqBhbsKgZW51bcKgdHlw
ZcKgdmFsdWUswqBzb8KgacKgd2lsbMKgbW9kaWZ5wqBpdMKgYXPCoGJlbG93Lg0KPsKgDQo+wqAN
Cj7CoGF4aXMsbGNwbGwtcmVmLWNsazoNCj7CoMKgwqBkZXNjcmlwdGlvbjoNCj7CoMKgwqDCoMKg
c2VsZWN0wqB0aGXCoHJlZmVyZW5jZcKgY2xvY2vCoG9mwqBwaHnCoGFuZMKgaW5pdGlhbGl6YXRp
b27CoGlzwqBwZXJmb3JtZWQNCj7CoMKgwqDCoMKgd2l0aMKgdGhlwqByZWZlcmVuY2XCoGNsb2Nr
wqBhY2NvcmRpbmfCoHRvwqB0aGXCoHNlbGVjdGVkwqB2YWx1ZS4NCj7CoMKgwqAkcmVmOsKgL3Nj
aGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyDQo+wqDCoMKgZW51bTrCoFvCoDAs
wqAxLMKgMizCoDMswqA0wqBdDQo+wqAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
