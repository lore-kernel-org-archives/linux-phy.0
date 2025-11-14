Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD489CDE006
	for <linux-phy@archiver.kernel.org>; Fri, 14 Nov 2025 06:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88KFV0xX/ALfQE0zYx8wOXLy5OSJnfI9QJUpe8l3cDo=; b=Dqcg7Ea7WeVf5m
	mJ++P7uY/2L9s/lr+mKUNHhbxvJvvro88dGkUzJWb2C+wjn52eFsjS8ytdCeel9zIICafPsQN4y0J
	gHEjH5s3gsHkBBsf5+x2EOT3JD8AbRyYJIAmy8Hl2XrO44zMbzOBzijjFYnpqzPtrI7la5QxtoaVP
	S85c2pX6rLbXgz6DtMRPlgnL6xfk61CpS4AvLEV4547rScqg0iQb+ZK4sQ87rIRYJFWWahU9t/j0p
	iAFzwQIj2Of5M8LloscbS0MZ+c1ILQIA6TV/j3OAybsBjqe6lvACH98TaJyY4X74oD/QAj0uVG2so
	jr41z1YCYLA31otCBoIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJmw5-0000000BdLl-2mw4;
	Fri, 14 Nov 2025 06:05:29 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJmw1-0000000BdKN-0rxp
	for linux-phy@lists.infradead.org;
	Fri, 14 Nov 2025 06:05:27 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251114060519epoutp018d13d66d7ce0579613e6dd0ab1b1fbf9~3ymYuiHkt0269402694epoutp01P
	for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 06:05:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251114060519epoutp018d13d66d7ce0579613e6dd0ab1b1fbf9~3ymYuiHkt0269402694epoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763100319;
	bh=foyN9VFEd5R0A8quCBtbbHsWARJaVaEQr2kOKG08j/I=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=CjV1nJ3FIGUg8MzxNHtK0U+0NJc7tqDwC6fcOtCraMcS8TqxLP9x/B9gECCEMHfIT
	 kDLQDleS0q0N6+tBA8DP0zCPzIjJAySG5j/CO/NGX20WNtC7IbI2i5we4NMc6LlgRU
	 UVqVQxil0YkcZ6HAfH7El0s5urIwPJf9QsBimLNU=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPS id
	20251114060518epcas2p4c8439432d520565644955a31d6c77fc0~3ymYALs0M1660016600epcas2p4J;
	Fri, 14 Nov 2025 06:05:18 +0000 (GMT)
Received: from epcas2p2.samsung.com (unknown [182.195.38.200]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4d767L0cpTz3hhT7; Fri, 14 Nov
	2025 06:05:18 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20251114060517epcas2p354291681ebb7d2922c09960e33aa7de5~3ymWmajVk1718617186epcas2p3Y;
	Fri, 14 Nov 2025 06:05:17 +0000 (GMT)
Received: from KORCO118486 (unknown [12.80.208.104]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20251114060516epsmtip2b0a9c0c558ff57d67c33a178db682ec7~3ymWfEl6q0508905089epsmtip2c;
	Fri, 14 Nov 2025 06:05:16 +0000 (GMT)
From: "Sanghoon Bae" <sh86.bae@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <vkoul@kernel.org>, <alim.akhtar@samsung.com>,
	<kishon@kernel.org>, <m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<shradha.t@samsung.com>
Cc: <krzk+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <649f8e90-d99b-401a-bb0f-ef0cf9c4fe7f@kernel.org>
Subject: RE: [PATCH 2/4] dt-bindings: phy: Add PCIe PHY support for
 ExynosAutov920 SoC
Date: Fri, 14 Nov 2025 15:05:16 +0900
Message-ID: <000601dc552c$a63e6060$f2bb2120$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQISOccZb2Ez4IvEWuwZme1oXG7+3gIkR40QAdlJHE0CkODhjLRRbuBw
Content-Language: ko
X-CMS-MailID: 20251114060517epcas2p354291681ebb7d2922c09960e33aa7de5
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29
References: <20250926073921.1000866-1-sh86.bae@samsung.com>
	<CGME20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29@epcas2p1.samsung.com>
	<20250926073921.1000866-3-sh86.bae@samsung.com>
	<649f8e90-d99b-401a-bb0f-ef0cf9c4fe7f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_220525_875073_E5D0EF48 
X-CRM114-Status: GOOD (  18.65  )
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

> > Since the Exynosautov920 SoC uses the Samsung PCIe PHY, add support
> > for it in the Exynosautov920 PCIe PHY bindings.
> >
> > The Exynosautov920 SoC includes two PHY instances: one for a 4-lane
> > PHY and another for a 2-lane PHY. Each PHY can be used by separate
> > controllers through the bifurcation option. Therefore, from 2 up to 4
> > PCIe controllers can be supported and connected with this PHY driver.
> 
> 
> Describe hardware, not driver.
I will describe about the Exynosautov920 SoC PCIe hardware.

> > PCIe lane number is used to distinguish each PHY instance.
> > This is required since two PHY instances on ExynosAutov920 is not
> > identical.
> > On PHY driver code, need to check each instance and different settings.
> 
> 
> Describe hardware, not driver.
I will describe about the Exynosautov920 SoC PCIe hardware.

> > @@ -19,6 +19,7 @@ properties:
> >        - samsung,exynos5433-pcie-phy
> >        - tesla,fsd-pcie-phy0
> >        - tesla,fsd-pcie-phy1
> > +      - samsung,exynosautov920-pcie-phy
> 
> Messed order.
Will fix the order

> > @@ -42,6 +47,7 @@ allOf:
> >              enum:
> >                - tesla,fsd-pcie-phy0
> >                - tesla,fsd-pcie-phy1
> > +              - samsung,exynosautov920-pcie-phy
> 
> Messed order.
Will fix the order


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
