Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93554C07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:24:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34EF260E0C
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:24:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34EF260E0C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQaidy8Ou7cDCMX2ppE9mrzQ77lZ3TuD4hGrTfvjpis=; b=0uWZg8w7YHBrQN
	wHjKs9MtOls11j1aib6HTfz65/4B57doa5Yqq/KqbyFcIoMv/d6/FwWnOb6ePEMll0u8ZfVJARoZr
	upGhR+N+tjb44hsQmcZZ6osOtKvo4LtNs/4RCxClaSjAdouON895gKqOt6M8MjBEIVhYAnqdmfg6Z
	v6gwpPPM86qHSfyyCETtdGtbrOpLjDelJru4WhM/ZoqL+XQHyTs03LpFBgzOPp+sR/bVyrR1ikk5M
	lW3e948bDicUfFyyHj4M+UA29AKNHS2/NSR5xtu52KUpMseOuj4SLH9p99moz4Nc9v/dZuT/nyeLY
	c3vd7kpwdG1XE4gN2fog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Lm5-008Zra-O9; Mon, 05 Jul 2021 10:24:25 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0Lm2-008Zq5-FA
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 10:24:24 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20210705102417epoutp02d2f3e0eedb6a94c4dcc1cbd8110471e8~O3gvSX_wY3100631006epoutp02Y
 for <linux-phy@lists.infradead.org>; Mon,  5 Jul 2021 10:24:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20210705102417epoutp02d2f3e0eedb6a94c4dcc1cbd8110471e8~O3gvSX_wY3100631006epoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625480657;
 bh=Lg/5s8F79l0bRPiIruIA+vwTWFZazYjKWPGpLL5wjNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AQjctw/Fz5UeZkZfGmHpVYbNRai7hJfk+X2JMqgUQCIMjvRrofOlMbzoLZtDoLlqy
 LJXxA1AORjtvAt+ttnrjtFRJiZ0Yd3VFjgcsq+xRbCmh3WFyUPi52yolSurpNTZ4UV
 wPW2QQiKlLPR8ldtYUoffivx8K+jg1TtrPJOtsgk=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210705102416epcas2p25d15e01829fb424a0e0cb6aacbbdec16~O3guP4j6o2215722157epcas2p2x;
 Mon,  5 Jul 2021 10:24:16 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.190]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4GJMHL6GD3z4x9Pp; Mon,  5 Jul
 2021 10:24:14 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 DA.E1.09541.ACDD2E06; Mon,  5 Jul 2021 19:24:10 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20210705102410epcas2p38a6f148b23f8716725bbc8b879471603~O3gojSezL2711027110epcas2p3X;
 Mon,  5 Jul 2021 10:24:10 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210705102410epsmtrp27d558d37f1014f8aee282d94d9bf757b~O3goi4lC42198121981epsmtrp2R;
 Mon,  5 Jul 2021 10:24:10 +0000 (GMT)
X-AuditID: b6c32a46-63f81a8000002545-14-60e2ddca9751
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 A1.9F.08289.ACDD2E06; Mon,  5 Jul 2021 19:24:10 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210705102410epsmtip15978a6a0f7eb7140848a5380550e2841~O3goR38HY2530825308epsmtip1i;
 Mon,  5 Jul 2021 10:24:10 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Jaehoon Chung <jh80.chung@samsung.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org, Chanho Park
 <chanho61.park@samsung.com>
Subject: [PATCH 1/2] phy: samsung-ufs: custom PHY_TRSV_CH_OFFSET support
Date: Mon,  5 Jul 2021 19:23:17 +0900
Message-Id: <20210705102318.102999-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210705102318.102999-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkk+LIzCtJLcpLzFFi42LZdljTVPfU3UcJBksuGVs8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFE5NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVygp
 lCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCgwNC/SKE3OLS/PS9ZLzc60MDQyMTIEq
 E3IyLp4PLfjEUTH1VEoD41r2LkZODgkBE4mfFyczgdhCAjsYJb72sXUxcgHZnxglHv88zQjh
 fGaU+LBqJlzHxyMHoKp2MUq8Wn+LGcL5yCixf0sPWBWbgK7EluevgNo5OEQEPCVWrgCbxAwy
 6fqmxcwgNcICHhKf/3aB1bMIqEpsuf0DzOYVsJe4uvILG8Q2eYlTyw6C3ccp4CBxc+tRqBpB
 iZMzn7CA2MxANc1bZzND1D9il7j+kwPCdpE4//At1NXCEq+Ob4GypSQ+v9sL9oGEQDejROuj
 /1CJ1YwSnY0+ELa9xK/pW1hBHmAW0JRYv0sfxJQQUJY4cgtqLZ9Ex+G/7BBhXomONiGIRnWJ
 A9uns0DYshLdcz6zQtgeEvMnrWeHBNVkRolzEyczTWBUmIXkm1lIvpmFsHgBI/MqRrHUguLc
 9NRiowIj5OjdxAhOk1puOxinvP2gd4iRiYPxEKMEB7OSCK/IlEcJQrwpiZVVqUX58UWlOanF
 hxhNgWE9kVlKNDkfmKjzSuINTY3MzAwsTS1MzYwslMR5OdgPJQgJpCeWpGanphakFsH0MXFw
 SjUwNVzjnd/v6iV46/p/ZrtVFw3ubxNSXr2mPE1E7AnHThPrV8lHDke8D+mblHBmYobUTf4F
 Pw+ef+FV8DHpctKZ26YycksX5Jw1vqV+dLnf0RPOy0SuWq6062rjL/O4tsVm1ZelBYUntFZl
 rNGfdPFKhKpmbnaWaurX/2JzP2Znexhv9DG1bxe+HmWSd/laTaiXaGr6xxXr2hauibGQuS6S
 Kaxp423Z1XD7wYRgvb3Zu8ys2qesFn498fZbiyTBmYWhsuL2EgWLz1RvYLGNYr8u5zGhWq9B
 2Whj7oIXLYZqe/77Xi9ek3c5W7ttU6n/0ge1UzTfiVa4fIt3ur1o6UKpj+lHKg+3TPA9eWD6
 Bf65SizFGYmGWsxFxYkAowBBbBwEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCLMWRmVeSWpSXmKPExsWy7bCSnO6pu48SDJ7MlbJ4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKK4bFJSczLLUov07RK4Mi6eDy34xFEx9VRKA+Na9i5GTg4JAROJj0cOsHUxcnEICexglDhz
 bjcLREJW4tm7HVBFwhL3W46wQhS9Z5TYfP4+K0iCTUBXYsvzV4xdjBwcIgLeEmeuyoLUMAt8
 Z5TYcreLCaRGWMBD4vPfLrBBLAKqEltu/wCzeQXsJa6u/MIGsUBe4tSyg2D1nAIOEje3HgWr
 EQKq2dhzigWiXlDi5MwnYDYzUH3z1tnMExgFZiFJzUKSWsDItIpRMrWgODc9t9iwwCgvtVyv
 ODG3uDQvXS85P3cTIzigtbR2MO5Z9UHvECMTB+MhRgkOZiURXpEpjxKEeFMSK6tSi/Lji0pz
 UosPMUpzsCiJ817oOhkvJJCeWJKanZpakFoEk2Xi4JRqYPJxZ7V0lnOxiXZmuPtK6ttv7rVf
 uiS1um9KnExd6yzL2mL0cpqhLv/WWl+XJSx5ar5rdsz8Nu3qwZWMVlmTH+0ME16RU8mo7Dhz
 0qI/B92Nm9cdzD+k8tKmosPDqy5mbfafs7mv5h3WKfo6/eSiFeVqOwt1pMUOc210um/paCFY
 vHS6QM3JP2xh9b8UamwLZk+uy537Ny767ZR9X5f4XVllY8wmetNxRp1n+0ff1C0vuZIkuQ+5
 L2/qkv4YWKSpZKJwaGZBoEJN9clO7b2it09KMa9Zdvhx9o1VTe73+9/M/hL7U+iH5mSphcvS
 o52c2wq1N27bVLpY7B7DHa/glZ1Je+8aOelP3brLXW/COSWW4oxEQy3mouJEAKKCaMDXAgAA
X-CMS-MailID: 20210705102410epcas2p38a6f148b23f8716725bbc8b879471603
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210705102410epcas2p38a6f148b23f8716725bbc8b879471603
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102410epcas2p38a6f148b23f8716725bbc8b879471603@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_032422_884297_58614501 
X-CRM114-Status: GOOD (  13.61  )
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

To support custom PHY_TSRV_CH_OFFSET for ExynosAuto v9 series SoC,
we can add PHY_TRSV_REG_CFG_OFFSET macro which has an offset field and
let it be used from PHY_TRSV_REG_CFG with the default value.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/phy/samsung/phy-samsung-ufs.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 5de78710524c..ea1ac38889c1 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -24,14 +24,17 @@
 	.id = PHY_COMN_BLK,	\
 }
 
-#define PHY_TRSV_REG_CFG(o, v, d) {	\
+#define PHY_TRSV_REG_CFG_OFFSET(o, v, d, c) {	\
 	.off_0 = PHY_APB_ADDR((o)),	\
-	.off_1 = PHY_APB_ADDR((o) + PHY_TRSV_CH_OFFSET),	\
+	.off_1 = PHY_APB_ADDR((o) + (c)),	\
 	.val = (v),		\
 	.desc = (d),		\
 	.id = PHY_TRSV_BLK,	\
 }
 
+#define PHY_TRSV_REG_CFG(o, v, d)	\
+	PHY_TRSV_REG_CFG_OFFSET(o, v, d, PHY_TRSV_CH_OFFSET)
+
 /* UFS PHY registers */
 #define PHY_PLL_LOCK_STATUS	0x1e
 #define PHY_CDR_LOCK_STATUS	0x5e
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
