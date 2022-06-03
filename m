Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDDB6C43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 05:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pJ29RsqSOyIRx8sIIvkZSUMtV8bMLmq1Fbbk187L580=; b=UN7zg+YWTTHmxh
	USm4JZUVTB2W1xNRYC5wGuH5YmznSjJtLcVuadSZiGTR4zUNrJfKsVW4atBgpbrT378rabA+1PJM8
	eqsu3UjlpSMuetIhpdle6JdvhLJ09vbVGW/05SMrcFojGB0395Uc3OIoft0gc4WaeA8J9hxh9M2MV
	Mh0y+NvuuK24SiYGOcXNx+afWU+7eI3m5YTfYgbXr228Dgq05rPO/+G0LUqAeRAayLKq/hMY2CHuu
	dJ+i1nHaA1JAB8qFYXKKB3+j3EPTpj3c4VXVV2xDlOz+fOZY5hPK3WdLPwxuXY8RkuGwgnLFRwoV6
	2IlimMdX87VnoIcZ070w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwzVs-005rcx-3A; Fri, 03 Jun 2022 05:06:20 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwzVh-005raU-3u
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 05:06:10 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220603050557epoutp03a7a49b7f74823739e0967c84fb357d77~1A_3L1WcE1660916609epoutp03E
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 05:05:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220603050557epoutp03a7a49b7f74823739e0967c84fb357d77~1A_3L1WcE1660916609epoutp03E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654232758;
	bh=LqKGQTGRC3svB5lprkwfwiA/nB7tijWgUHtFWqIuDAE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ePFjtsS9X/p9lmYh30s5WE03T1/53PmPg4KCkAny7UjwoXda1HwItSmx5NO+kLcBG
	 c7P1t+0OBxkCfKkgdoKdz8K0eP4OqcfpwNwUKq5OYGgTj4v/NCmwefMjElzQMj64WR
	 PGxvDRn12/kvteR/aCcBjUwmfyR+mvdiJ/KPmU7M=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220603050557epcas2p1f146ca4269e30051685b495476e8cc6c~1A_22Z4eK0854808548epcas2p1C;
	Fri,  3 Jun 2022 05:05:57 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.98]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LDrSN5hCbz4x9QC; Fri,  3 Jun
	2022 05:05:56 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	4B.75.10028.2B699926; Fri,  3 Jun 2022 14:05:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20220603050554epcas2p27d36b694e2f48cc796ddc34432c5808f~1A_zkS0331324913249epcas2p2X;
	Fri,  3 Jun 2022 05:05:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220603050554epsmtrp2d23f865d416824efee30a258710522c0~1A_zjgRg41609916099epsmtrp2o;
	Fri,  3 Jun 2022 05:05:54 +0000 (GMT)
X-AuditID: b6c32a47-589ff7000000272c-48-629996b2f3c0
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	1C.95.11276.1B699926; Fri,  3 Jun 2022 14:05:53 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220603050553epsmtip183eb1fd94aba29105c42c5edd794f48c~1A_zVqJqK0741707417epsmtip1I;
	Fri,  3 Jun 2022 05:05:53 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH RESEND] phy: samsung: exynosautov9-ufs: correct TSRV
 register configurations
Date: Fri,  3 Jun 2022 14:05:36 +0900
Message-Id: <20220603050536.61957-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDKsWRmVeSWpSXmKPExsWy7bCmme6maTOTDI6sk7R4MG8bm8Xl/doW
	F572sFnsfb2V3WLT42usFhNWfWOx2HnnBLMDu8emVZ1sHneu7WHz2Lyk3qNvyypGj+M3tjMF
	sEZl22SkJqakFimk5iXnp2TmpdsqeQfHO8ebmhkY6hpaWpgrKeQl5qbaKrn4BOi6ZeYAXaGk
	UJaYUwoUCkgsLlbSt7Mpyi8tSVXIyC8usVVKLUjJKTAv0CtOzC0uzUvXy0stsTI0MDAyBSpM
	yM441a9bcFSg4lz7BaYGxu18XYycHBICJhKvp71g6WLk4hAS2MEocXlVCytIQkjgE6PEyzNc
	EIlvjBIPzh1ghuno/NjGBlG0l1Fi8c8ICPsjo0TXq0AQm01AV2LL81eMIM0iAqsYJZ7+nAXW
	zCxQJHH7ah+YLSwQJzHpQj87iM0ioCrR0POWEcTmFbCTeD5zCtQyeYkN83uZIeKCEidnPmGB
	mCMv0bx1NjPIAgmBc+wSfx7PYIRocJG48P8LK4QtLPHq+BZ2CFtK4vO7vWwQdrHE0lmfmCCa
	G4B+3vYLKmEsMetZO9AgDqANmhLrd+mDmBICyhJHbkHt5ZPoOPyXHSLMK9HRJgTRqC5xYPt0
	FghbVqJ7zmeoCzwk/l2/yAIJn1iJTT8bGScwys9C8s0sJN/MQti7gJF5FaNYakFxbnpqsVGB
	MTxKk/NzNzGCk6GW+w7GGW8/6B1iZOJgPMQowcGsJMJbsmtqkhBvSmJlVWpRfnxRaU5q8SFG
	U2D4TmSWEk3OB6bjvJJ4QxNLAxMzM0NzI1MDcyVxXq+UDYlCAumJJanZqakFqUUwfUwcnFIN
	TA6bl6a/1nD7Y8F0982j3Z3aZ0v2HVi25tnyvoAAkXj1DTM+yPy6wPlwfsjpif511uFh6hsZ
	Th7+kXbY5eMNdc74jKcNz/uvCbHxHNnJPXMqd8LjKqatScx/5V+vulaRHZPKevvwYc8b8yIZ
	j59ynLKB9cPtiHbjNCVG+xtHj3KuaVlQp/ViX9z2uTKqM5isBGqMw+eXuEReMWfr3v1dZ8Ex
	lqkTXoXmbLI498GqheO41SSpTolv3/4otC59unne/NQYkeKuS/+u9E3dsnhf/ZYJMUGcthuf
	+Gklpa44ciHDdGn/9IdBa351/t6/4cQ1+a1HdZK7TiY5te/U3q4mJPlv7tb977hFG+7ov+5p
	snRWYinOSDTUYi4qTgQALx+Ejg8EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsWy7bCSnO7GaTOTDLoeW1k8mLeNzeLyfm2L
	C0972Cz2vt7KbrHp8TVWiwmrvrFY7LxzgtmB3WPTqk42jzvX9rB5bF5S79G3ZRWjx/Eb25kC
	WKO4bFJSczLLUov07RK4Mk716xYcFag4136BqYFxO18XIyeHhICJROfHNrYuRi4OIYHdjBIH
	1r5jh0jISjx7twPKFpa433KEFaLoPaPE4U+XGEESbAK6Eluev2IESYgIrGGUeH22lwkkwSxQ
	InFl6kuWLkYODmGBGImZ3WkgYRYBVYmGnrdgvbwCdhLPZ05hhlggL7Fhfi8zRFxQ4uTMJywQ
	Y+QlmrfOZp7AyDcLSWoWktQCRqZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjBIaql
	uYNx+6oPeocYmTgYDzFKcDArifCW7JqaJMSbklhZlVqUH19UmpNafIhRmoNFSZz3QtfJeCGB
	9MSS1OzU1ILUIpgsEwenVANTn0uHgPOsMy75HmUX72jdLktLWCOUp3240/+ykV02y3EurYjc
	AEPb+aFi65xaPufKvwn9lXdYJ9bZ5cS1F/4395vPqmgw/WztduRF/im3mLySqMTf0q9NUgSc
	41s2/Tj4oOdG76ruyfZXYr1/P+Lm675hyvZ1f65Z1u/iy/zsp0pEwt/nN3ewKJy0N5/yo8j+
	p+pGz1tcjX6cEzW/+rNVNPCdkf/425n75tE3lzcw5dU1xr+UlbddrPbiwMzCuE8pe4P+ePvc
	jzCUVH8olsGQ+dnzvMhcmz1e97eI20cwHK248a/mKLvdpz+X6vOWO3vdbWnc937uo2l86Z9e
	lD7Vkdu+fOOyI5lXr+/1S1ViKc5INNRiLipOBAAglQ91wAIAAA==
X-CMS-MailID: 20220603050554epcas2p27d36b694e2f48cc796ddc34432c5808f
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603050554epcas2p27d36b694e2f48cc796ddc34432c5808f
References: <CGME20220603050554epcas2p27d36b694e2f48cc796ddc34432c5808f@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_220609_539962_6B65E566 
X-CRM114-Status: GOOD (  12.14  )
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

For exynos auto v9's UFS MPHY, We should use 0x50 offset of TSRV register
configurations. So, it must be

s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG_AUTOV9/g

Fixes: d64519249e1d ("phy: samsung-ufs: support exynosauto ufs phy driver")
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
- Correct commit message of substitution command

 drivers/phy/samsung/phy-exynosautov9-ufs.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c b/drivers/phy/samsung/phy-exynosautov9-ufs.c
index 36398a15c2db..d043dfdb598a 100644
--- a/drivers/phy/samsung/phy-exynosautov9-ufs.c
+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
@@ -31,22 +31,22 @@ static const struct samsung_ufs_phy_cfg exynosautov9_pre_init_cfg[] = {
 	PHY_COMN_REG_CFG(0x023, 0xc0, PWR_MODE_ANY),
 	PHY_COMN_REG_CFG(0x023, 0x00, PWR_MODE_ANY),
 
-	PHY_TRSV_REG_CFG(0x042, 0x5d, PWR_MODE_ANY),
-	PHY_TRSV_REG_CFG(0x043, 0x80, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x042, 0x5d, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x043, 0x80, PWR_MODE_ANY),
 
 	END_UFS_PHY_CFG,
 };
 
 /* Calibration for HS mode series A/B */
 static const struct samsung_ufs_phy_cfg exynosautov9_pre_pwr_hs_cfg[] = {
-	PHY_TRSV_REG_CFG(0x032, 0xbc, PWR_MODE_HS_ANY),
-	PHY_TRSV_REG_CFG(0x03c, 0x7f, PWR_MODE_HS_ANY),
-	PHY_TRSV_REG_CFG(0x048, 0xc0, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x032, 0xbc, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x03c, 0x7f, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x048, 0xc0, PWR_MODE_HS_ANY),
 
-	PHY_TRSV_REG_CFG(0x04a, 0x00, PWR_MODE_HS_G3_SER_B),
-	PHY_TRSV_REG_CFG(0x04b, 0x10, PWR_MODE_HS_G1_SER_B |
-				      PWR_MODE_HS_G3_SER_B),
-	PHY_TRSV_REG_CFG(0x04d, 0x63, PWR_MODE_HS_G3_SER_B),
+	PHY_TRSV_REG_CFG_AUTOV9(0x04a, 0x00, PWR_MODE_HS_G3_SER_B),
+	PHY_TRSV_REG_CFG_AUTOV9(0x04b, 0x10, PWR_MODE_HS_G1_SER_B |
+				PWR_MODE_HS_G3_SER_B),
+	PHY_TRSV_REG_CFG_AUTOV9(0x04d, 0x63, PWR_MODE_HS_G3_SER_B),
 
 	END_UFS_PHY_CFG,
 };
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
