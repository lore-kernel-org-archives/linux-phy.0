Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F029C43334
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 02:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUy1C+cCQ9gT4mYicFa8P5lQet36p0nhFT1qCG3ELEA=; b=s7VETWfql8MGNe
	Y/3HeqxVKiK8VnhGL4q1eHwV2QYt6+tIOAGpLWW4si/LLgCHrc+JiQLy1MW/g3kCeC4PEmmvxI0ll
	tEsolyMgy3EFrLMzbK0bjHcrjJhJogMLrPhIWI9tR/cR/67vsmvabO/2T6wovImR00JQV2Tw5d4BH
	aENvC8qhye+KL7UXDNVYV6OyIC+2FNYFvMF1nRIchMx03E7EwIFOd1po6U82PQKne9A7j0Ws8I6Xg
	2k572+8rpSkXOOa+oqI6/wRe8mCM5NQzBptiq7a6zABDhlE2oWdnZJr1vaEHFO3w4c5Ur9sDI3r4A
	GxhOhAOM1yuPQ2wIcwrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Nua-0099z7-Pv; Wed, 29 Jun 2022 02:58:40 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6NtO-0099B1-3T
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 02:57:27 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220629025717epoutp01099fe7af1e4fa76ebc4c73d35e679bde~89-7_kNun1026010260epoutp01z
	for <linux-phy@lists.infradead.org>; Wed, 29 Jun 2022 02:57:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220629025717epoutp01099fe7af1e4fa76ebc4c73d35e679bde~89-7_kNun1026010260epoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1656471437;
	bh=lEtehOiPoK/b2APjv6CNvEHHjEFq+tG5kPmZWVAOFvw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ZEx9lGt8jubuGsUKz+RqLYJnZkrQbZ5IeSvcpXwCleHZuPgpvAX3Xlie67xGcoWkV
	 xzRjAKilcEdLSluUDLEfBx916CBzDfvBOt6mTbJX535Zp/5E8cve5+FyQDzDWlGWwk
	 6NK67THzFtB69t5Ihz9GqWvPsh3iAbAfCz6tIhWQ=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220629025716epcas2p1db5d0aba0fcff1d5e48119a84e6dfd35~89-7WcHnf0482304823epcas2p1W;
	Wed, 29 Jun 2022 02:57:16 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.92]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LXmMw3pGRz4x9Px; Wed, 29 Jun
	2022 02:57:16 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	E8.C6.09642.C8FBBB26; Wed, 29 Jun 2022 11:57:16 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
	20220629025715epcas2p4eb76e2a47c1d0074a04d99148e299aa5~89-6LzYEU2023820238epcas2p4I;
	Wed, 29 Jun 2022 02:57:15 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220629025715epsmtrp1883453015ffdbdae3c3bf41dd8be82a0~89-6KptdB2964929649epsmtrp1g;
	Wed, 29 Jun 2022 02:57:15 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-2d-62bbbf8c8735
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	90.EB.08802.B8FBBB26; Wed, 29 Jun 2022 11:57:15 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220629025715epsmtip1b4d12377a0ab3520bb491394ab4f1943~89-59dN6M1646216462epsmtip1U;
	Wed, 29 Jun 2022 02:57:15 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Marek Szyprowski'" <m.szyprowski@samsung.com>,
	<linux-pci@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
Cc: "'Jingoo Han'" <jingoohan1@gmail.com>, "'Lorenzo Pieralisi'"
	<lpieralisi@kernel.org>, "'Rob	Herring'" <robh@kernel.org>,
	=?utf-8?Q?'Krzysztof_Wilczy=C5=84ski'?= <kw@linux.com>, "'Bjorn Helgaas'"
	<bhelgaas@google.com>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	"'Kishon Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'"
	<vkoul@kernel.org>
In-Reply-To: <20220628220409.26545-1-m.szyprowski@samsung.com>
Subject: RE: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize
 init/power_on callbacks
Date: Wed, 29 Jun 2022 11:57:15 +0900
Message-ID: <015901d88b63$f023f0a0$d06bd1e0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQIZhXYmJhgT1yDF8TBX6sXxM1d3EAGdjdchrNbQO9A=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBJsWRmVeSWpSXmKPExsWy7bCmhW7P/t1JBgfuyFg8mLeNzWJJU4bF
	ii8z2S0uPO1hs9j7eiu7RUPPb1aLs/OOs1lMWPWNxWLG+X1MFi1/Wlgs1h65y27xf88Odoud
	d04wO/B67Jx1l91jwaZSj02rOtk87lzbw+bx5Mp0Jo/NS+o9+rasYvQ4fmM7k8fnTXIBnFHZ
	NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVysplCXm
	lAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjMO
	tc9hLrjLXvGr4xNrA+MOti5GTg4JAROJB00NLF2MXBxCAjsYJVp/f2SHcD4xSsxd8IoJwvnM
	KPHlegNcy5l7l1ghErsYJS62zWGGcF4wSpy6dZsVpIpNQF/iZcc2MFtEYBajxJZ9IiBFzAJz
	mCV+rjvDDJLgFLCT+LHmLpgtLBAl0XjqCQuIzSKgKjGxo5sdxOYVsJS4M7sPyhaUODkTooZZ
	QF5i+9s5zBAnKUj8fLqMFSIuIjG7s40ZYrGVxMPDxxhBFksI3OCQaPsMcZGEgIvEnitzWSBs
	YYlXx7ewQ9hSEi/726DsYomlsz4xQTQ3MEpc3vYLGgDGErOetQNN5QDapimxfpc+iCkhoCxx
	5BbUbXwSHYf/skOEeSU62oQgGtUlDmyfDrVVVqJ7zmfWCYxKs5B8NgvJZ7OQfDMLYdcCRpZV
	jGKpBcW56anFRgXG8OhOzs/dxAhO0lruOxhnvP2gd4iRiYPxEKMEB7OSCO/CMzuThHhTEiur
	Uovy44tKc1KLDzGaAsN6IrOUaHI+ME/klcQbmlgamJiZGZobmRqYK4nzeqVsSBQSSE8sSc1O
	TS1ILYLpY+LglGpgWhjaMYO/f+a331PN0zczVj9i3zJ1Y7k641VNQbM+06Oqs/oF5soWyBoG
	/PTe7vdwZpXIB1bWnez9rjdc7xRt67bZukZos2r+takLJqcGZYRUyjTLTY3/4TQtYZpepGWS
	7A2bl96P3k6e/yTn6a7/aisn+p0KP5j15LWx2ZmkTzM/R30Rnb/+SuztKWduROTs+lDwsk82
	UCs5TduR4wjzkWnHLdS+cLn+bMr/9HaVW0K+gM/bSbxGrVzVBQdvHnxs/H+qLj93e0z1Xa0e
	OYOvQcafZF9Oel4jI6QZ9en/yurbM9/eyJ5mfoJz8cptt7xT0yfkd29z2tzhlZc/e/bvrzu9
	Nyxf+o+n1EFw9t498kosxRmJhlrMRcWJAItmYGdbBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsWy7bCSnG73/t1JBqtOyFk8mLeNzWJJU4bF
	ii8z2S0uPO1hs9j7eiu7RUPPb1aLs/OOs1lMWPWNxWLG+X1MFi1/Wlgs1h65y27xf88Odoud
	d04wO/B67Jx1l91jwaZSj02rOtk87lzbw+bx5Mp0Jo/NS+o9+rasYvQ4fmM7k8fnTXIBnFFc
	NimpOZllqUX6dglcGYfa5zAX3GWv+NXxibWBcQdbFyMnh4SAicSZe5dYuxi5OIQEdjBKTL/W
	wQ6RkJV49m4HlC0scb/lCFTRM0aJC8uWgiXYBPQlXnZsA0uICMxhlHh94iEbiMMssIBZ4tD/
	6+wQLf2MEl/29jOBtHAK2En8WHOXGcQWFoiQuPTsFdgoFgFViYkd3WA2r4ClxJ3ZfVC2oMTJ
	mU9YQGxmAW2JpzefQtnyEtvfzmGGuE9B4ufTZawQcRGJ2Z1tYHERASuJh4ePMU5gFJ6FZNQs
	JKNmIRk1C0n7AkaWVYySqQXFuem5xYYFRnmp5XrFibnFpXnpesn5uZsYwTGrpbWDcc+qD3qH
	GJk4GA8xSnAwK4nwLjyzM0mINyWxsiq1KD++qDQntfgQozQHi5I474Wuk/FCAumJJanZqakF
	qUUwWSYOTqkGpnB7sS8mIl7Sngd0OrxValf8njeZIec5byBXqdLFZZKJ6zQXzpma8Oc8+7eE
	yk8Z3s8kb60R0WB43Xr4DNfMc6pXOHt6wpfwrCs6+OziVp0r3VNCdq8yFhRQXzThyBX+Rzr3
	7qSuNyqRltDc//2woY2CulSUv6SjueeUeeEB2/fG/itnC90RZHw8oueN7CPJNO2nx16ftNri
	4OLqzpsic+tIlLlqy7cvspNP32c027jm8SbGf535e1+1r1WZrKHkfMAg8+OMllf/ffVUD/Cl
	mTRNXSL4l/dU5GKZMsfKyW49gZcu7n19JTJK4HJx0y0Fj5USaxdwhl56lM8fqRl4ucUgbtWu
	67H2H0sWzlq4VImlOCPRUIu5qDgRAJEfypFIAwAA
X-CMS-MailID: 20220629025715epcas2p4eb76e2a47c1d0074a04d99148e299aa5
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220628220437eucas1p2c478751458323f93a71050c4a949f12e
References: <CGME20220628220437eucas1p2c478751458323f93a71050c4a949f12e@eucas1p2.samsung.com>
	<20220628220409.26545-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_195726_521482_C51D25DD 
X-CRM114-Status: GOOD (  14.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> The exynos-pcie driver called phy_power_on() and then phy_init() for some
> historical reasons. However the generic PHY framework assumes that the
> proper sequence is to call phy_init() first, then phy_power_on(). The
> operations done by both functions should be considered as one action and
> as such they are called by the exynos-pcie driver (without doing anything
> between them). The initialization is just a sequence of register writes,
> which cannot be altered, without breaking the hardware operation.
> 
> To match the generic PHY framework requirement, simply move all register
> writes to the phy_init()/phy_exit() and drop power_on()/power_off()
> callbacks. This way the driver will also work with the old (incorrect) PHY
> initialization call sequence.
> 
> Reported-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Chanho Park <chanho61.park@samsung.com>

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
