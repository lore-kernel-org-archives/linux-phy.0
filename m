Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C4FCC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 08:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=SDrpoJBN3UICPRvOghGF4dsmTx0nAbN0HfYl0TsejG0=; b=gd85fvM572CEoM
	daQO19DnO3kCPS/Qs/Ei88nHfcX8vjtkUbSJrcOkFRFtsN1iWeh+oup4UOPF9Lz/9RSIgMiSr7R/O
	xJ5wmyr54q3f59VneMXi+Cvm4DeFtEuckk3NThg4/d9i2WYtRhg+oh7f5Phit7JvsfYpBXzKFVShX
	ytQwbd2VY1RekBVrG19H0brAJUVyxsofsvvB11ibQIKa8e5TD6i3FTG4lsyIHFYRk12FcQ0c4/gSt
	sAKlWLdc4COyYZduPxGyW7vXGYpPUpcgvMLq89yHhWBL/it/t+FM0wvi6lGpZ2ESqlck2IhouoXG+
	w0rW4Cd9fP0grdA1Y6Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxDk-009pRE-P2; Tue, 31 May 2022 08:27:20 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxDY-009pOS-Nq
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 08:27:10 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220531082704epoutp027f0c7775c3c32551b363c16ef1ac8727~0IymbV1pa0302303023epoutp02g
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 08:27:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220531082704epoutp027f0c7775c3c32551b363c16ef1ac8727~0IymbV1pa0302303023epoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653985624;
	bh=RCQMJkJjiDU4Sq6XUI3LN+ZrXeC40oks2QaB2xl/QzE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=SNk1ckGV11Q7DzW5IqUSIbhaFROsViZkq/9TKeFUGSsmuebCAOrl9w8pnvD+hLIxE
	 dRCY6dE6Eov6gE60+GeFUhRVBAlOfRZOmKBn21SunqGJyzFfeX2xFF0IiBnTFABcm6
	 5FL/biynHjOhx/yPN7E8HGyZYSLn+i32pagStUG8=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220531082704epcas2p267b8bb0ffcb1391f92d62a73bf7ae034~0IymDsqki0927109271epcas2p2N;
	Tue, 31 May 2022 08:27:04 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.101]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LC53q1nQyz4x9QR; Tue, 31 May
	2022 08:27:03 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	AC.9F.09694.351D5926; Tue, 31 May 2022 17:26:59 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715~0Iyg4RNIa1914819148epcas2p1L;
	Tue, 31 May 2022 08:26:58 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220531082658epsmtrp1b968a1f9f3286fb43ef59da0659a0c5a~0Iyg3iyiN0548305483epsmtrp1c;
	Tue, 31 May 2022 08:26:58 +0000 (GMT)
X-AuditID: b6c32a48-47fff700000025de-d7-6295d1530e38
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	DD.F7.08924.251D5926; Tue, 31 May 2022 17:26:58 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220531082658epsmtip2e3dc5f561754805683d1e1956750412f~0Iygq05CY0752107521epsmtip2S;
	Tue, 31 May 2022 08:26:58 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH] phy: samsung: exynosautov9-ufs: correct TSRV register
 configurations
Date: Tue, 31 May 2022 17:26:57 +0900
Message-Id: <20220531082657.53158-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLKsWRmVeSWpSXmKPExsWy7bCmhW7wxalJBr8msFo8mLeNzeLyfm2L
	C0972Cz2vt7KbrHp8TVWiwmrvrFY7LxzgtmB3WPTqk42jzvX9rB5bF5S79G3ZRWjx/Eb25kC
	WKOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOArlBS
	KEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFJgX6BUn5haX5qXr5aWWWBkaGBiZAhUm
	ZGcsW7KVteAUf8WDY98YGxhP83YxcnJICJhITLrVwdrFyMUhJLCDUeL+hVZ2COcTo8T/3o1Q
	zmdGic3Le1i6GDnAWn4sc4aI72KU2LFzNVTRR0aJ1g+tLCBz2QR0JbY8f8UIkhARWMUo8fTn
	LGaQBLNAkcTtq33MIJOEBcIl3jxOAzFZBFQlFk92A6ngFbCTmLTsISPEefISG+b3MkPEBSVO
	znzCAjFFXqJ562xmkPESAtfYJVo/LmeHaHCReDDxFjOELSzx6vgWqLiUxMv+Nii7WGLprE9M
	EM0NjBKXt/1ig0gYS8x61s4IchCzgKbE+l36EA8rSxy5BbWXT6Lj8F92iDCvREebEESjusSB
	7dNZIGxZie45n1khbA+J3Xc/g70iJBArMf/7TaYJjPKzkHwzC8k3sxD2LmBkXsUollpQnJue
	WmxUYAKP0+T83E2M4HSo5bGDcfbbD3qHGJk4GA8xSnAwK4nwluyamiTEm5JYWZValB9fVJqT
	WnyI0RQYvBOZpUST84EJOa8k3tDE0sDEzMzQ3MjUwFxJnNcrZUOikEB6YklqdmpqQWoRTB8T
	B6dUA9OENcxem+et4pLU3/D9pWD7grsz565RniTf/HlDS87XT5aLN65mNQtWWxZQqchYIRqk
	+oi/f2deary79ruFafvCU7KmyzcdPVAlrbbppH/NEp2w80+1avxmTLOPfxwnHOlT8GtRZY3+
	PfMb61Le7T8ZHDiZYVfPkR8uP/yclQXMVI5G3FycuP4Z4+WQpGX9B9L62f36hPK42GKrUkRX
	9OeaxfvMX+Oo4x+pKBYZ+yxdVo2hzmnCvJTvi2YecNAp5Um/UWZUExIWILppQ0LhLem4O6yJ
	iyfNefXhsOTJjgvvd/7ZffXureCJaiebi89bFpcustZW5VZl+5e64bPExSUGd0xjY2akht17
	9bY2SImlOCPRUIu5qDgRAKcT7a0QBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsWy7bCSvG7QxalJBltXalo8mLeNzeLyfm2L
	C0972Cz2vt7KbrHp8TVWiwmrvrFY7LxzgtmB3WPTqk42jzvX9rB5bF5S79G3ZRWjx/Eb25kC
	WKO4bFJSczLLUov07RK4MpYt2cpacIq/4sGxb4wNjKd5uxg5OCQETCR+LHPuYuTiEBLYwShx
	sfcecxcjJ1BcVuLZux3sELawxP2WI6wQRe8ZJfZ+38wGkmAT0JXY8vwVI0hCRGANo8Trs71M
	IAlmgRKJK1NfsoDYwgKhEs+frmAF2cYioCqxeLIbSJhXwE5i0rKHjBAL5CU2zO9lhogLSpyc
	+YQFYoy8RPPW2cwTGPlmIUnNQpJawMi0ilEytaA4Nz232LDAKC+1XK84Mbe4NC9dLzk/dxMj
	OES1tHYw7ln1Qe8QIxMH4yFGCQ5mJRHekl1Tk4R4UxIrq1KL8uOLSnNSiw8xSnOwKInzXug6
	GS8kkJ5YkpqdmlqQWgSTZeLglGpgmpEq5mFWP3H603eNUyW1JrMYl966t0isf+rk/EeLWh26
	/UvnXTArsmBZeawq3SRk6v+wfdcPnXU+fOPqz4trgx+/u3hM6uRqp1uXAnh/K4osX6y1cNt+
	C/cPe3Zf+reJT19F5Jrf6hvy4fu+x3mvncjcIvif01TE0fLoNdss9vaURzEVItlLdG2rhOZH
	O3jPEPE6Wi3vllZ2prkt44DNvJgND0UOMU1jNdl/kCfyxKXr3T9WFu5huHjygNK6iVJ/ZR6/
	ztXKf6bodDLmaO7Cl6uX3V7tdHfyR6uge7NYhSxmSKwNr+K8sFNnrt5ss+Wz379IcsvfpXOn
	aP5sxbnsyzTWBqk4aDW+zi5+4OGnZanEUpyRaKjFXFScCAAtyDZNwAIAAA==
X-CMS-MailID: 20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715
References: <CGME20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_012709_202050_B3B72FFF 
X-CRM114-Status: GOOD (  12.43  )
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

s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG/g

Fixes: d64519249e1d ("phy: samsung-ufs: support exynosauto ufs phy driver")
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
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
