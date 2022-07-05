Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C12C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bYDXUX21rfsIOI6g91c2Pt1BRoYQmcmRpfzbmE2vKeo=; b=y8G6cIivhvTY+L
	Mb6a+smsiYtHgTuePdJrI4YNsstoUKmRO+BIOtRIfQcSYBIHr21XD5hPuO0sIUIHX1FPMfY4DOen1
	psSESuv/aO3jajXH4lWxvQiZ8T6bA2N+jzq5IuRkseQBKPV6TyjSMZJoBAuveRZqzmVk+gDt9dB+P
	fxwGmvBU7vyg4/YsxziBL9A2E4X5ALkQHvqbkPF+9hR9yd3hxY4kR11xCDiG6JQA8LGGnsR28bmUK
	Tx6PXRuRcqWYLyFhKMdtm6DvsmNcDo9TFYQn9geUGmja+ObzZ7coLVXSy5qWiKIlm4ljuFtuczabA
	2GH9TeYHVDZOHaGY9U7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cV7-00FGUj-74; Tue, 05 Jul 2022 06:57:37 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cV2-00FGJm-Ko
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:57:35 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220705065723epoutp01c67f5827acda856a33dfd71a18c48069~_3JSfl02h0259502595epoutp01H
	for <linux-phy@lists.infradead.org>; Tue,  5 Jul 2022 06:57:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220705065723epoutp01c67f5827acda856a33dfd71a18c48069~_3JSfl02h0259502595epoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657004243;
	bh=+fKg/3rfWFNBDpULkhIiwwgM+mtM/eW4Tg7+cCOJaEc=;
	h=From:To:Cc:Subject:Date:References:From;
	b=JWN/kvpfPr1QOnAFWGkhDBmGrQmxg/V1mYOxf1q32ws+Gc9UuibhCXgqwDTTN1nIN
	 tw4Ysh4SLrGRHNAkaodhnjPi80WgETPMqbEyRmsm8uIRRtorWTY3eeYmmqO1p48HZz
	 nINS0MEUWjZX/Tbor3Qx050QSvPbXhk3ANfNN9vY=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220705065723epcas2p150d3b8e7b892ef89e09134996ca5ff74~_3JSBmuLy0199601996epcas2p12;
	Tue,  5 Jul 2022 06:57:23 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.91]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LcYQB6Zm1z4x9QG; Tue,  5 Jul
	2022 06:57:22 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
	14.A0.09666.2D0E3C26; Tue,  5 Jul 2022 15:57:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220705065722epcas2p3fad39b3edf1a0fd1789de77997bf5728~_3JRGYhf01445414454epcas2p3b;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220705065722epsmtrp1cad036feff46b161f803f3b919c154f1~_3JRFoGw-0059400594epsmtrp1j;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
X-AuditID: b6c32a45-471ff700000025c2-14-62c3e0d2574e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	E3.99.08802.2D0E3C26; Tue,  5 Jul 2022 15:57:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220705065722epsmtip16c46ac8ff9059f9a714701d67a4c9c5b~_3JQ1jft63051230512epsmtip1K;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Alim Akhtar <alim.akhtar@samsung.com>, Bart
	Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 0/3] change exynos ufs phy control
Date: Tue,  5 Jul 2022 15:54:37 +0900
Message-Id: <20220705065440.117864-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmme6lB4eTDL4/17N4MG8bm8W0Dz+Z
	LS7v17ZYdGMbk8WFpz1sFntfb2W32PT4GqvFhFXfWCxmnN/HZNF9fQebxfLj/5gsdt45wezA
	43H5irfHplWdbB53ru1h85iw6ACjx+Yl9R4fn95i8ejbsorR4/iN7UwenzfJBXBGZdtkpCam
	pBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAB2spFCWmFMKFApI
	LC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9ArTswtLs1L18tLLbEyNDAwMgUqTMjOaFr5j62g
	lbOi/cpT1gbG2exdjJwcEgImEu0vj7F0MXJxCAnsYJTYf66fDcL5xCix9cAMVgjnM6PEzadn
	WWFaNn6ZClW1i1HiWd96KOcjo0TH/H4WkCo2AV2JLc9fMYIkRAR2MEncapkItoVZYDOjRPvV
	nWwgVcICRhKnZz0F62ARUJWY++MaI4jNK2Avca15EiPEPnmJDQe3s0DEBSVOznwCZjMDxZu3
	zmYGGSohMJFDYtPHx0A/cQA5LhJbv8lA9ApLvDq+BepVKYmX/W1QdrHE0lmfmCB6GxglLm/7
	xQaRMJaY9aydEWQOs4CmxPpd+hAjlSWO3IJayyfRcfgv1CZeiY42IYhGdYkD26ezQNiyEt1z
	PkNDy0OicUYD2HAhgViJM8+msU1glJ+F5JlZSJ6ZhbB3ASPzKkax1ILi3PTUYqMCQ3i0Jufn
	bmIEp1ot1x2Mk99+0DvEyMTBeIhRgoNZSYR31aSDSUK8KYmVValF+fFFpTmpxYcYTYHBO5FZ
	SjQ5H5js80riDU0sDUzMzAzNjUwNzJXEeb1SNiQKCaQnlqRmp6YWpBbB9DFxcEo1MHUUvF1y
	+roSq+ehSzt+TbztUsSswXKxsG71t9cs8UxRvB3cbWJaNkI73hxwivrDU+To7v5U/n7t1tYz
	wfemte9sK/o/+0GBzz0tEfkmd7HMazL2Z1LzJn88W9/XKy6cVX3L1yehbrurBT+Hxezed93z
	3c8anb7keqj2IsOVnz9zkpvWm9SYbmU8kJK6+GlQ6fR54Q3ty1/Yiq97w9j82fDC1bxrdiVi
	IsvKPuq/uJXIte1Z5lzdqA1PhOJyxOwjnV+V3KjZvPjUys2mhvY/3I+8FlwyyVg8MHzuguC5
	M7VqDysLB1fr7+1bc2l+cq7SlqDiWzO8/ltKnO7NnvxbfVfTJbPcQJM8RhXHlvNxSizFGYmG
	WsxFxYkAH39Rgz4EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNLMWRmVeSWpSXmKPExsWy7bCSnO6lB4eTDNbc57Z4MG8bm8W0Dz+Z
	LS7v17ZYdGMbk8WFpz1sFntfb2W32PT4GqvFhFXfWCxmnN/HZNF9fQebxfLj/5gsdt45wezA
	43H5irfHplWdbB53ru1h85iw6ACjx+Yl9R4fn95i8ejbsorR4/iN7UwenzfJBXBGcdmkpOZk
	lqUW6dslcGU0rfzHVtDKWdF+5SlrA+Ns9i5GTg4JAROJjV+msnUxcnEICexglNi+/icLREJW
	4tm7HVBFwhL3W46wQhS9Z5S4tuc+M0iCTUBXYsvzV4wgCRGBPUwSX+ZtYAFxmAW2M0pMeXsd
	bJSwgJHE6VlPwWwWAVWJuT+uMYLYvAL2EteaJzFCrJCX2HBwOwtEXFDi5MwnYDYzULx562zm
	CYx8s5CkZiFJLWBkWsUomVpQnJueW2xYYJSXWq5XnJhbXJqXrpecn7uJERz+Wlo7GPes+qB3
	iJGJg/EQowQHs5II76pJB5OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ817oOhkvJJCeWJKanZpa
	kFoEk2Xi4JRqYLJ//Ind+eX93397tG1DZz/3CrE1L36pq9Mnyu5uKGcwPUKjcNEz00z/+0vO
	W4ifbctznH9v/WFr22/qnhs0nxdIHhRZ63X4r/vEIluvcqm48mlzQyfprbzzXvncr/f216Kf
	3P/0467V2SZFjbnF0WEn2HfN+ix94PXX43/sKg78E2nI/vTq6jGp0pBDq4Qev//zbQvvap4J
	PgskZH5KPLqyvfKk1K7/1qIfD7I/ehXc8e30xB49sXuc7TPKm7P1U+eE8oT+d8jofjlBdubu
	DXO0H4Tcebwiy019c7Xdp5r3RyR7gottc566ZUi4zi4L9TUyX1KR+veQ60J7bUeL9c2Kj3fp
	KFXxtG7s2dRx/LQSS3FGoqEWc1FxIgAciYao7gIAAA==
X-CMS-MailID: 20220705065722epcas2p3fad39b3edf1a0fd1789de77997bf5728
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220705065722epcas2p3fad39b3edf1a0fd1789de77997bf5728
References: <CGME20220705065722epcas2p3fad39b3edf1a0fd1789de77997bf5728@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_235733_214789_C8442004 
X-CRM114-Status: GOOD (  14.45  )
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

Since commit 1599069a62c6 ("phy: core: Warn when phy_power_on is called
before phy_init"), below warning has been reported.

phy_power_on was called before phy_init

To address this, we need to remove phy_power_on from
exynos_ufs_phy_init.

The first patch is for changing phy clocks manipulation from controlling
each symbol/ref clocks to clk_bulk APIs. The second patch is for making
power on/off sequences between pmu isolation and clk control.
Finally, the third patch changes the phy on/off and init sequences from
ufs-exynos host driver.

Chanho Park (3):
  phy: samsung-ufs: convert phy clk usage to clk_bulk API
  phy: samsung-ufs: ufs: change phy on/off control
  ufs: ufs-exynos: change ufs phy control sequence

 drivers/phy/samsung/phy-exynos7-ufs.c      |   7 +-
 drivers/phy/samsung/phy-exynosautov9-ufs.c |   7 +-
 drivers/phy/samsung/phy-fsd-ufs.c          |   7 +-
 drivers/phy/samsung/phy-samsung-ufs.c      | 121 ++++++---------------
 drivers/phy/samsung/phy-samsung-ufs.h      |  10 +-
 drivers/ufs/host/ufs-exynos.c              |  13 ++-
 6 files changed, 63 insertions(+), 102 deletions(-)

-- 
2.37.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
