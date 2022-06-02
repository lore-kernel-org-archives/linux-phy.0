Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 934CAC43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 05:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr9ILeTcnGTgswULsq22yoexX0zoCMToW6y3LsMunJE=; b=krFdgaRDS2gWGr
	MAzoEdlTwE0rDTjEqTgtIrHinJBa3xZD2Ya8zeSteZy7uPPwMhVouPF6EcaEha0E7Gq+X2g2AGRxX
	qzJZ2FoUY25dGV1ArmWj1BDVNpvzK+bwe04kClIBckI3ulcIExKojASHLCX3wg3Jon3/h8FAnwHiB
	Tnt0MNAjesdILCctARxX+lF+/wd0/wME6o/Y4HOGehp10RumCsoAfjZONE1oMderFmhraWMWbHe47
	XaxCbhEEMGd7uFcRxiqAqO/yCqVup6uXkvGBh48lWGJ1dFoKc5k01l6GJ128Aa6l3skDK0TY/OoTN
	FRnLmLgNF9LCLFUPXg/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdSo-001Tlx-Pi; Thu, 02 Jun 2022 05:33:42 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdSk-001The-FZ
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 05:33:41 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220602053332epoutp011ed97a7eb54a09fc3ee1c8025fccfe7e~0ttqJ1JV70834808348epoutp018
	for <linux-phy@lists.infradead.org>; Thu,  2 Jun 2022 05:33:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220602053332epoutp011ed97a7eb54a09fc3ee1c8025fccfe7e~0ttqJ1JV70834808348epoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654148012;
	bh=NBWjWlY2TaMrSi0e6sb5p2UTiyWC5KJi9atCINvmi4Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=necU3vwgfNHcJ2F0+4BiRfz+bcCGGnI3ugSdRYyIGXGicOm4BmTQCdBlusAsfBNCd
	 IsOHaU+6mDqVarDYSl7Aku1y747C8Aq88CBumJn/xfsAmduamHde2GhxKxgs7GQ6mT
	 XIkTxKabMa5lpzYi1FLuB8AA14jGu7DA8xUfCqLc=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220602053332epcas2p2bbf486c6d8a18e60912c73062d8f0c6b~0ttpqwDIA2933229332epcas2p2A;
	Thu,  2 Jun 2022 05:33:32 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.99]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LDF6f6pDpz4x9Q7; Thu,  2 Jun
	2022 05:33:30 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	5B.1E.09694.AAB48926; Thu,  2 Jun 2022 14:33:30 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epcas2p263a77beaaa17d20655bbf55874760054~0ttnLwHC10634006340epcas2p2i;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220602053329epsmtrp138e23b09f86bfc6019ef69ca7834cf06~0ttnKwZkU1619216192epsmtrp1F;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
X-AuditID: b6c32a48-47fff700000025de-ed-62984baab1f5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	36.1E.11276.9AB48926; Thu,  2 Jun 2022 14:33:29 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epsmtip2cc946e13eac19c236f59e98c88d2b61e~0ttm62US80794307943epsmtip2l;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 6/6] arm64: dts: exynosautov9-sadk: enable secondary ufs
 devices
Date: Thu,  2 Jun 2022 14:32:50 +0900
Message-Id: <20220602053250.62593-7-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220602053250.62593-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCJsWRmVeSWpSXmKPExsWy7bCmme4q7xlJBj+v81s8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
	wFDX0NLCXEkhLzE31VbJxSdA1y0zB+g6JYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
	Sk6BeYFecWJucWleul5eaomVoYGBkSlQYUJ2xv7ZzxkLtnJWXG76w97AeJO9i5GTQ0LAROLN
	i5dANheHkMAORon7v84wQzifGCX+/tzABuF8Y5Q4+vk8K0xL2/tnYLaQwF5GiYv7ayGKPjJK
	zHnzBizBJqArseX5K0aQhIhAO5PEiXtzwZYwC2xmlDg5YQMzSJWwQKhE46cLYDaLgKrE5AW7
	2EBsXgE7ibuvj0Ktk5fYML8XqIaDg1PAXmLLGQ+IEkGJkzOfsIDYzEAlzVtng90tIdDLIbHo
	9g2oXheJKdfOMELYwhKvjm+B+lpK4mV/G5RdLLF01icmiOYGRonL236xQSSMJWY9a2cEWcws
	oCmxfpc+iCkhoCxx5BbUXj6JjsN/2SHCvBIdbUIQjeoSB7ZPZ4GwZSW653yGusZDonP5M2jw
	TmKU2DLrPtsERoVZSN6ZheSdWQiLFzAyr2IUSy0ozk1PLTYqMIFHcXJ+7iZGcHLV8tjBOPvt
	B71DjEwcjIcYJTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EaAoM64nMUqLJ+cD0nlcSb2hi
	aWBiZmZobmRqYK4kzuuVsiFRSCA9sSQ1OzW1ILUIpo+Jg1OqgUmxhP9eSaftKw7vk3cXVHWo
	NnLeU7sjcf/IApaXRo9mMt2tW6qxhLlSJGbRK51lPvsOFj7+NyHrvQVn+d3LK369DHt6ZuFN
	810eO0oCpLdZ/+v02aVfLlW8f+MdTe7CuRwfTOXFXd5d59dvWM68M8Z++pPDacdf5T69Fh/O
	PDl8wvRrZ7jnMlUk57ZEiHM3nT/6eI/LvValiv7pGrfrSnyMNG+c5ovoe/NhSnrDZqXInAnb
	tvnmzTJ/NGPnvGypuo1VrHG3Vnib6ZV+es1VMeGwyrLsVaaBMxKa+6uD7j2zN5rQOvHOGh9T
	mRhvU/EN8ueN/2Rt85l/cPMlR857L1wuJhy8IfPrmZxFmGa0oLoSS3FGoqEWc1FxIgCOuorY
	NwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLLMWRmVeSWpSXmKPExsWy7bCSvO5K7xlJBjPfKVk8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtissmJTUnsyy1SN8ugStj/+znjAVbOSsuN/1h
	b2C8yd7FyMkhIWAi0fb+GSuILSSwm1Fi11o2iLisxLN3O6BqhCXutxwBquECqnnPKHFv339G
	kASbgK7EluevGEESIgLdTBJzNvUzgTjMAtsZJT4sXcfSxcjBISwQLPHhugNIA4uAqsTkBbvA
	NvAK2EncfX2UFWKDvMSG+b3MIOWcAvYSW854QBxkJ7H58gZWiHJBiZMzn7CA2MxA5c1bZzNP
	YBSYhSQ1C0lqASPTKkbJ1ILi3PTcYsMCw7zUcr3ixNzi0rx0veT83E2M4BjQ0tzBuH3VB71D
	jEwcjIcYJTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6HrZLyQQHpiSWp2ampB
	ahFMlomDU6qBKc1TJDp208RMmQccr253X3u2YG9oQHWpErfWovT+Jyd/9ifVlTHI3MmLdldm
	PRPO5Vias6zme8KefxME2UWmrlizJWNti1r9zbsXN3fx3+IVvm3sp2H8waBE//F3r47b/E1s
	37cL11Ur6D8/X3Ciq/ds/BK99w9u39l5aMaeMg11rqLa+Ef6S36W+JZstpBk+xtmfHXvxMn2
	Ld6fm7eVBO6fXHjgjcO7VhPHHXI7zG0qGzlVeUUSDHSn/dxb/Fd8/+zXcj80m5QyrE2L3mop
	zjc/xWj+bPHidkMegcUvdvDbbT7kn3C29Mbm99af5Bl4d95erjX749mr3AftCtJeuL/qLXW9
	/z5D/tXaWxZWSizFGYmGWsxFxYkAAd4Ag/ACAAA=
X-CMS-MailID: 20220602053329epcas2p263a77beaaa17d20655bbf55874760054
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220602053329epcas2p263a77beaaa17d20655bbf55874760054
References: <20220602053250.62593-1-chanho61.park@samsung.com>
	<CGME20220602053329epcas2p263a77beaaa17d20655bbf55874760054@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_223338_918677_B0D6BBE7 
X-CRM114-Status: GOOD (  14.49  )
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

Enable ufs_1_phy and ufs_1 devices with ufs_1_fixed_vcc_reg regulator.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../boot/dts/exynos/exynosautov9-sadk.dts      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
index 17e568853eb6..2b30a7458297 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
@@ -39,6 +39,14 @@ ufs_0_fixed_vcc_reg: regulator-0 {
 		regulator-boot-on;
 		enable-active-high;
 	};
+
+	ufs_1_fixed_vcc_reg: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpg2 2 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &serial_0 {
@@ -49,12 +57,22 @@ &ufs_0_phy {
 	status = "okay";
 };
 
+&ufs_1_phy {
+	status = "okay";
+};
+
 &ufs_0 {
 	status = "okay";
 	vcc-supply = <&ufs_0_fixed_vcc_reg>;
 	vcc-fixed-regulator;
 };
 
+&ufs_1 {
+	status = "okay";
+	vcc-supply = <&ufs_1_fixed_vcc_reg>;
+	vcc-fixed-regulator;
+};
+
 &usi_0 {
 	status = "okay";
 };
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
