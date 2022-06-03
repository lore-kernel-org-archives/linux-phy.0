Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF63DC43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 01:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkK+RNcmqvqMcn8xBESS/IYXl+ORlQbmVaaxoxQu1n8=; b=ZsZzCJF7nIA974
	p8FYxAGlQi+hYbCV4vbFRqNehjeQZBFsA+UY9HQfnl8Z8mHGqYJJeKvakq6/RI4r13upwH58+ttsU
	ABado9w+AnZE2yeP/W6wjqJAKQpo9Y8e+RYT3y1xZ1i39Ma2oQoQRNthz7E7xYYSNxhAECTJ6WhKr
	+WQ/Qo8qHRPNTeFhkyOqSl6FHXJEnFgQVcaAoCNYJFzFu4BGWIGbjsMUcqtzS1ApkOwGU59GRygVs
	6gjGlMYRRnkQQv9Mkm7U10Jwlu85pe/zxxOhqOsgZcRocyetxiTgC2ezWqG+ZT1BImqP5JR7HguX/
	R5sShxnsSmfSSuHGLSag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww6N-005Ipf-AM; Fri, 03 Jun 2022 01:27:47 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww6C-005Ikn-TI
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 01:27:38 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220603012729epoutp036bd95d1205ad2fd0ae092ebab5b4f9d1~0_AG_f9OG2007520075epoutp03X
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 01:27:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220603012729epoutp036bd95d1205ad2fd0ae092ebab5b4f9d1~0_AG_f9OG2007520075epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654219649;
	bh=optMvbYlzViigeBRdzTGOFTD44TtCwolF8ICK7j3pAI=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=hlM/+TUGmLj4PMOP7IvZI2nMbxLxpFMtwTv91pqRCVRZ1HDlxUF/MZjhsQBjYU8Qs
	 EVE9dNhHArJy6KIOBviEYSCPpB50eNZNXAVQMagrU7sHi6CPASZoyExVilG5qPYFvZ
	 kZ2l7u+6dcO7l7fa1I+gjWq3NX+EHtlSohVrb498=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20220603012729epcas5p1239410c3f1a5764dceef7ccee6471201~0_AGsF0Zh2641126411epcas5p1y;
	Fri,  3 Jun 2022 01:27:29 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.182]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LDlcG4fvyz4x9Q7; Fri,  3 Jun
	2022 01:27:26 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C3.D7.10063.E7369926; Fri,  3 Jun 2022 10:27:26 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20220603012726epcas5p35984798d1f5c47d483dc3a8f07249e97~0_AD1sE981157211572epcas5p37;
	Fri,  3 Jun 2022 01:27:26 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220603012726epsmtrp29547b87b29d776cd46780bcf44d99fd1~0_AD0uuWU1579315793epsmtrp2B;
	Fri,  3 Jun 2022 01:27:26 +0000 (GMT)
X-AuditID: b6c32a49-4b5ff7000000274f-b6-6299637ebe50
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	3A.AC.08924.E7369926; Fri,  3 Jun 2022 10:27:26 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220603012725epsmtip1ac97f4a49057f083112c9d2d30c15ec0~0_AC2xJgA0697106971epsmtip1A;
	Fri,  3 Jun 2022 01:27:24 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>
Cc: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20220531082657.53158-1-chanho61.park@samsung.com>
Subject: RE: [PATCH] phy: samsung: exynosautov9-ufs: correct TSRV register
 configurations
Date: Fri, 3 Jun 2022 06:57:23 +0530
Message-ID: <000901d876e9$150a3e40$3f1ebac0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQF9VBOKfI+/ng0sIK01vrBmi4hmeQKbb+CErd5OFTA=
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMJsWRmVeSWpSXmKPExsWy7bCmlm5d8swkg3uNKhaX92tbXHjaw2ax
	9/VWdotNj6+xWkxY9Y3FYuedE8wObB6bVnWyedy5tofNY/OSeo++LasYPY7f2M4UwBqVbZOR
	mpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkDdICSQlliTilQ
	KCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CkQK84Mbe4NC9dLy+1xMrQwMDIFKgwITvjQ+tO
	5oJdIhWvJvo2MH4T7GLk5JAQMJHY8uwDWxcjF4eQwG5Gifb93VDOJ0aJhWvvM0I4nxklXr87
	xgTT8vb7QyaIxC5GiV0z26GqXjJKzD/ZzQ5SxSagK7FjcRvYLBGBPYwSc/ctYwVJMAt4S+x6
	/gnM5hSwl5h4dguQzcEhLBAtMX8CD0iYRUBFYsbDdSwgNq+ApcT9H5MZIWxBiZMzn7BAjJGX
	2P52DjPERQoSP59CjBcRsJJYcWMGM0SNuMTLo0fYQW6QEOjlkLj3ezFUg4vE1cnv2CBsYYlX
	x7ewQ9hSEp/f7WUDuUdCwENi0R8piHCGxNvl6xkhbHuJA1fmsICUMAtoSqzfpQ+xik+i9/cT
	JohOXomONiGIalWJ5ndXWSBsaYmJ3d2sELaHxO67nxknMCrOQvLYLCSPzULywCyEZQsYWVYx
	SqYWFOempxabFhjmpZbDozs5P3cTIzh1annuYLz74IPeIUYmDsZDjBIczEoivCW7piYJ8aYk
	VlalFuXHF5XmpBYfYjQFhvZEZinR5Hxg8s4riTc0sTQwMTMzM7E0NjNUEucV+N+YJCSQnliS
	mp2aWpBaBNPHxMEp1cC0uuG2ZcuxE5/lRFR+TT1zqPpM2rIQ66exX9bxv+A9vPWVhtlkmYDN
	R5zSV/OUf0k3qNwnpv848Cv3tte/HzL5zmA+oCX+9I1CWHbg3vCYayfn7VrLsshjktlKKyP7
	77niXjz74x/OWHvgNZduXC0P+/PpC6smvWphmVOwR7iL03hhqVirXu3K40euavG0Xj0xqWfj
	WWWeicu7+muXfE551ffG6nk6p7sdt1/lYeG552yniRztFPYx4DN6EHPLfteWsv/7di77dOOb
	69O/T9UrSg9zV2i80QwMD+r7q79tvYiMfJOp0u3es58ta7Uf7neVzarKuBLfqfw9IZ/hm0DN
	/RsCTCpuB76uCOTempalxFKckWioxVxUnAgA9xEUZyYEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDLMWRmVeSWpSXmKPExsWy7bCSnG5d8swkgyOtrBaX92tbXHjaw2ax
	9/VWdotNj6+xWkxY9Y3FYuedE8wObB6bVnWyedy5tofNY/OSeo++LasYPY7f2M4UwBrFZZOS
	mpNZllqkb5fAlfGhdSdzwS6RilcTfRsYvwl2MXJySAiYSLz9/pAJxBYS2MEo0bQ8HyIuLXF9
	4wR2CFtYYuW/5+wQNc8ZJdpn6YPYbAK6EjsWt7F1MXJxiAjsY5TYPb+LESTBLOArMfnzLRaQ
	hJDABEaJTRv/sIIkOAXsJSae3QJmCwtESjT8bQObyiKgIjHj4ToWEJtXwFLi/o/JjBC2oMTJ
	mU9YIIZqSzy9+RTKlpfY/nYOM8R1ChI/ny4DmykiYCWx4sYMZogacYmXR4+wT2AUnoVk1Cwk
	o2YhGTULScsCRpZVjJKpBcW56bnFhgVGeanlesWJucWleel6yfm5mxjBEaSltYNxz6oPeocY
	mTgYDzFKcDArifCW7JqaJMSbklhZlVqUH19UmpNafIhRmoNFSZz3QtfJeCGB9MSS1OzU1ILU
	IpgsEwenVAOTjn/Mk/b4a62n9vwUutCgYlZVfNGswSf8LldwC5tDt+fst1Nf+F7fdp8xesm+
	A5tYz2kXqLcazZ88s2p5bHLilQne1oolR3cX8NzZ1f1VT5k3OkbrZtWHLy4HOWJXfWTdPHfn
	6uA5truypd5PK7P7/yVyldua5mddf5MclUViVXMWiK6Ot+DlMPWpTVsUuq6tvPQSi8f67VsX
	Gb+5f+jRxXlZdfx9tYY808RqNnlOTLL4t1ndpsMoWGFPwLE97Sl7F+3UPdfieNl1QnC/38yY
	iuZtbKlZ7T69hSu21fm0aM1J+pDo+3za5AVHNi5u/J97fSlHHOfUrckvhN5/m9N5+QyL7c/s
	t5Wm+urtPQ+VWIozEg21mIuKEwE1WfSqDwMAAA==
X-CMS-MailID: 20220603012726epcas5p35984798d1f5c47d483dc3a8f07249e97
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715
References: <CGME20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715@epcas2p1.samsung.com>
	<20220531082657.53158-1-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_182737_375110_56E31DBF 
X-CRM114-Status: GOOD (  11.09  )
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



>-----Original Message-----
>From: Chanho Park [mailto:chanho61.park@samsung.com]
>Sent: Tuesday, May 31, 2022 1:57 PM
>To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
><vkoul@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>;
>Alim Akhtar <alim.akhtar@samsung.com>
>Cc: linux-phy@lists.infradead.org; linux-arm-kernel@lists.infradead.org;
>Chanho Park <chanho61.park@samsung.com>
>Subject: [PATCH] phy: samsung: exynosautov9-ufs: correct TSRV register
>configurations
>
>For exynos auto v9's UFS MPHY, We should use 0x50 offset of TSRV register
>configurations. So, it must be
>
>s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG/g
>


You mean

s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG_AUTOV9/g

>Fixes: d64519249e1d ("phy: samsung-ufs: support exynosauto ufs phy driver")
>Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>---
> drivers/phy/samsung/phy-exynosautov9-ufs.c | 18 +++++++++---------
> 1 file changed, 9 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c
>b/drivers/phy/samsung/phy-exynosautov9-ufs.c
>index 36398a15c2db..d043dfdb598a 100644
>--- a/drivers/phy/samsung/phy-exynosautov9-ufs.c
>+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
>@@ -31,22 +31,22 @@ static const struct samsung_ufs_phy_cfg
>exynosautov9_pre_init_cfg[] = {
> 	PHY_COMN_REG_CFG(0x023, 0xc0, PWR_MODE_ANY),
> 	PHY_COMN_REG_CFG(0x023, 0x00, PWR_MODE_ANY),
>
>-	PHY_TRSV_REG_CFG(0x042, 0x5d, PWR_MODE_ANY),
>-	PHY_TRSV_REG_CFG(0x043, 0x80, PWR_MODE_ANY),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x042, 0x5d, PWR_MODE_ANY),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x043, 0x80, PWR_MODE_ANY),
>
> 	END_UFS_PHY_CFG,
> };
>
> /* Calibration for HS mode series A/B */  static const struct
>samsung_ufs_phy_cfg exynosautov9_pre_pwr_hs_cfg[] = {
>-	PHY_TRSV_REG_CFG(0x032, 0xbc, PWR_MODE_HS_ANY),
>-	PHY_TRSV_REG_CFG(0x03c, 0x7f, PWR_MODE_HS_ANY),
>-	PHY_TRSV_REG_CFG(0x048, 0xc0, PWR_MODE_HS_ANY),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x032, 0xbc, PWR_MODE_HS_ANY),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x03c, 0x7f, PWR_MODE_HS_ANY),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x048, 0xc0, PWR_MODE_HS_ANY),
>
>-	PHY_TRSV_REG_CFG(0x04a, 0x00, PWR_MODE_HS_G3_SER_B),
>-	PHY_TRSV_REG_CFG(0x04b, 0x10, PWR_MODE_HS_G1_SER_B |
>-				      PWR_MODE_HS_G3_SER_B),
>-	PHY_TRSV_REG_CFG(0x04d, 0x63, PWR_MODE_HS_G3_SER_B),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x04a, 0x00,
>PWR_MODE_HS_G3_SER_B),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x04b, 0x10,
>PWR_MODE_HS_G1_SER_B |
>+				PWR_MODE_HS_G3_SER_B),
>+	PHY_TRSV_REG_CFG_AUTOV9(0x04d, 0x63,
>PWR_MODE_HS_G3_SER_B),
>
> 	END_UFS_PHY_CFG,
> };
>--
>2.36.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
