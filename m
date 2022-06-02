Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F1CEC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 05:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMlhBIg2fQN2aQB5Qx/w9DuORiw3aCHRcyOOhUJSrgc=; b=TOysfXNlbqq5ll
	02S4pkQa2pEekG9f7LX4NjGQbrkKnNH/WNMCutYdG0BxUvuUdoy1ZPFb21YE8lPLADC+ePZ+cj/kt
	f2W7hfbxwroCy2xdSLY17axn1Z0GWFPZDcY7QzqLmYemZkGurU2b3WJP7xZDkZ6DZ5cEH2M/SmN9w
	l4EtWpglX2x35slT4zAqY3Gz3B6UgidPA8EYgSO3sVzxGFnZfQHdWJFHuT4cOJQfO3FpLkqAaJ9cY
	hZz5G01vLkUmZ4DGhj2zatDbIi6tEjnOKnb0qz4aLgIk4jTGuugpXe5s+Vo1ir2Px68D8qxZ9aegh
	ndBJq/2FDLZ34WWk2W+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdTA-001Tt1-DY; Thu, 02 Jun 2022 05:34:04 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdSl-001Tgd-7H
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 05:33:43 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220602053332epoutp02f282448db4c746cf39cc9c29fa07fa22~0ttp21MIv2786927869epoutp026
	for <linux-phy@lists.infradead.org>; Thu,  2 Jun 2022 05:33:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220602053332epoutp02f282448db4c746cf39cc9c29fa07fa22~0ttp21MIv2786927869epoutp026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654148012;
	bh=y7U1+XljJ0V/0OcxWuR03Dp51+4XXglk/YjHGZ7jVhI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RHJcEwpu2l+xAQH3eoV+7pShbEZkaYyrCMmkhruN7ed1tE9fdgDLoNbEJvpeW0XvR
	 qQyPMewCHveqUOO8eO7Gp25CcZAHV6BVxr3UFE8ipZpu3WovmdvoJZQW54G0OW49cN
	 VjJP8uP6WwG/Qy57SyvFs/26W1bBeP4iJ2zujHxs=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220602053331epcas2p10096a9f20c0decc8e906dca8816ba0e4~0ttpEVqTY2185921859epcas2p1X;
	Thu,  2 Jun 2022 05:33:31 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.98]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LDF6f0g65z4x9QF; Thu,  2 Jun
	2022 05:33:30 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	6F.23.09764.9AB48926; Thu,  2 Jun 2022 14:33:29 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a~0ttm_owG42584825848epcas2p4P;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220602053329epsmtrp263d507c490fd7004c2658e12b4622db9~0ttm9o4512524025240epsmtrp2D;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-ef-62984ba93068
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	04.1E.11276.9AB48926; Thu,  2 Jun 2022 14:33:29 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epsmtip2292bd47951e222b7167126a46aac02a0~0ttmyA1pt0794307943epsmtip2k;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Date: Thu,  2 Jun 2022 14:32:48 +0900
Message-Id: <20220602053250.62593-5-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220602053250.62593-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCJsWRmVeSWpSXmKPExsWy7bCmqe4q7xlJBkd7mSwezNvGZnF5v7bF
	/CPnWC0uPO1hs+h78ZDZYu/rrewWmx5fY7WYsOobi8WM8/uYLFr3HmG32HnnBLMDt8emVZ1s
	Hneu7WHz2Lyk3qNvyypGj+M3tjN5fN4kF8AWlW2TkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pm
	YKhraGlhrqSQl5ibaqvk4hOg65aZA3SdkkJZYk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUg
	JafAvECvODG3uDQvXS8vtcTK0MDAyBSoMCE7o3P9W+aCBzwVy7pnszYwLuDqYuTkkBAwkbix
	ciFLFyMXh5DADkaJHfPuM0E4nxglJk7byQrhfGOUOLprGiNMy5kDMIm9jBI/n2yEcj4ySsxa
	fYoNpIpNQFdiy/NXjCAJEYF2JokT9+aygzjMApsZJU5O2MAMUiUsECBxdVY7K4jNIqAqMWXx
	Z7A4r4CdxJOJP1gh9slLbJjfCxTn4OAUsJfYcsYDokRQ4uTMJywgNjNQSfPW2cwg8yUEejkk
	lt19BNXrIrHl0U0mCFtY4tXxLewQtpTE53d72SDsYomlsz4xQTQ3MEpc3vYLKmEsMetZOyPI
	YmYBTYn1u/RBTAkBZYkjt6D28kl0HP7LDhHmlehoE4JoVJc4sH06C4QtK9E95zPUNR4S01a1
	gw0XEpjEKHHje+wERoVZSL6ZheSbWQh7FzAyr2IUSy0ozk1PLTYqMIJHcXJ+7iZGcHLVctvB
	OOXtB71DjEwcjIcYJTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EaAoM6onMUqLJ+cD0nlcS
	b2hiaWBiZmZobmRqYK4kzuuVsiFRSCA9sSQ1OzW1ILUIpo+Jg1OqgYlvwZf3NzRX7lvSUJhj
	efcdT0ePwco/zyP7d83LPDTBNdI84+SX2bU/jTk47znNzHziL/2jwd14RcUH7TLxh9pcPetO
	XPI5s1yn5tmaeL11XMevVTuaCNscbJxvvXNhYd+hiDuicYVXpfxPVxVs/3V71Zxg15fXGc6V
	OF7enNMzpb7GWewF31NXHue6vobo37UF5mGJB/9JOB8RuvpC075pWfITweNqPp8i1QoDHLYu
	NPeKPF7+/JzdBu/URgXNKf+3sxfFvZkqtFJiy+KIO5Nbfde8n7AhOHfNsff33m08x9ic8n+K
	Zsl2vUUh57fwm4s3/LKeV72k7unzUJMrd1mZLzZWZgb+7l/MWB7/tkiJpTgj0VCLuag4EQCK
	FKVANwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPLMWRmVeSWpSXmKPExsWy7bCSvO5K7xlJBjtmils8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtissmJTUnsyy1SN8ugSujc/1b5oIHPBXLumez
	NjAu4Opi5OSQEDCROHNgJ2sXIxeHkMBuRok/e7rZIBKyEs/e7WCHsIUl7rccgSp6zyjxe+lu
	ZpAEm4CuxJbnrxhBEiIC3UwSczb1M4E4zALbGSU+LF3HAlIlLOAnse3LIVYQm0VAVWLK4s9g
	3bwCdhJPJv5ghVghL7Fhfi9QnIODU8BeYssZD5CwEFDJ5ssbWCHKBSVOznwCNpIZqLx562zm
	CYwCs5CkZiFJLWBkWsUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJERwHWpo7GLev+qB3
	iJGJg/EQowQHs5IIb8muqUlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeS90nYwXEkhPLEnNTk0t
	SC2CyTJxcEo1MGU5TV+j2fqkocJotUhiriSz4rk13ZstL/yLlirZNkOoIbmIVz9ScRd3I8+y
	nbMkIxSr/AUfie8Q8J97w53BMpTda29vr6rdjx/l3x+rfT6kuHuNrJpU1Vdvu1aezHThVWEL
	Hbd6zOAKl59Vpad3jfFN37ylO/5P36J35CDTUVm3k2aJxlZ1Cc32FzjnNhgkLGxdmBJ45uaW
	8PmS3zasXvpkoeb9zfZhx8uPv1UsSrq9dsVp+c+zgnbeOduRHN+Y+fxF2EWuywfck568dFpT
	ULyN06w7xG9npVGq1qQzklNeTGF+F/Slr7xPK061982ZOV2uR5qSl20KYGF5Y68s9UBOJOdq
	/5TiTbzPzmquU2Ipzkg01GIuKk4EABuMKXnyAgAA
X-CMS-MailID: 20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a
References: <20220602053250.62593-1-chanho61.park@samsung.com>
	<CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_223339_681665_8AE7EBEA 
X-CRM114-Status: GOOD (  13.96  )
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

Drop "ufs0-" label name usage of ufs phy and hci nodes.
Regarding the comments of reg properties, we don't need to illustrate here
because we can find the description from the dt-binding doc.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index 26e427295946..beb46b5a83b6 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -369,7 +369,7 @@ serial_0: serial@10300000 {
 			};
 		};
 
-		ufs_0_phy: ufs0-phy@17e04000 {
+		ufs_0_phy: phy@17e04000 {
 			compatible = "samsung,exynosautov9-ufs-phy";
 			reg = <0x17e04000 0xc00>;
 			reg-names = "phy-pma";
@@ -380,13 +380,13 @@ ufs_0_phy: ufs0-phy@17e04000 {
 			status = "disabled";
 		};
 
-		ufs_0: ufs0@17e00000 {
+		ufs_0: ufs@17e00000 {
 			compatible = "samsung,exynosautov9-ufs";
 
-			reg = <0x17e00000 0x100>,  /* 0: HCI standard */
-				<0x17e01100 0x410>,  /* 1: Vendor-specific */
-				<0x17e80000 0x8000>,  /* 2: UNIPRO */
-				<0x17dc0000 0x2200>;  /* 3: UFS protector */
+			reg = <0x17e00000 0x100>,
+			      <0x17e01100 0x410>,
+			      <0x17e80000 0x8000>,
+			      <0x17dc0000 0x2200>;
 			reg-names = "hci", "vs_hci", "unipro", "ufsp";
 			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD0_ACLK>,
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
