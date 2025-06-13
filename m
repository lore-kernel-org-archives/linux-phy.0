Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4EE2C71136
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 08:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7MWzo7Lo2GIg/XtjdmeiYf+eoXbPPO+kcwwOs31EU4=; b=HphOkJoGgDmea5
	rXhWPVfJlnUsnsJAiOFcKee57oKJ+jjmwrVZ49ZXVoFjlwXVsdqR1RFXrYDm2n/RA5hct6H10b/YR
	u7RrwpinRv4zg1cjfOomOliDs7hM/JL0LFFN+yeactP+ConKMoiFSr+TdZkPBVm69vdm88Pe38Pb/
	mySw8di5WicEUWKoIRj1YX4+g0+crFI6vpPsbVkTjT+OL13TzIIDwXOJfZwkGGjMAA7F/HdmYrIss
	0ekeV5JaNwf7krUH3dPkh/tNKuLQ9icr/88uRcV+WnhRIOA0bzyZNtyQaObmSCjmlQ+i3ruNUn4jP
	deD7v+PrDK78c9QcxOJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPziE-0000000FkRh-20JW;
	Fri, 13 Jun 2025 08:24:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyYB-0000000FZGe-3y0K
	for linux-phy@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:MIME-Version:In-Reply-To:Message-Id:Date:Subject:Cc
	:To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=svO7ll9UKcZGcNfSWfhT3p5yZRChtYXewAZzfhfwV3k=; b=AXX6QK+D0Iu9+sorIJpFUBK1Xp
	kEwi1aSRsOKYH4yvS6ZGSznxZgZFiSWnqNEFnIiMZlFAXizJpFLiEbRAX3mKFC6Aj9T3xFHGhftcj
	cO9V6qVUqXoHlywWmTx2mNX0vplSY24lY5cEaG6bOcZzqdpJluxL8VBqXj41dXzGRjss0ZmNClCVV
	bXYszTANHpcUDJW4jUSIF4yefX17+gYe7MbekAAzoms7NCx5Yqci+Yh8haf2c1RxBYNkgUD0lkksH
	k77Cvmqh41KMziiUUvFSgNPqwyo9GRhrnzEXRxyXQt0QCffrHIRRCf37KshkVm3TBJR+2IgCK8xDp
	c886cyyA==;
Received: from mailout1.samsung.com ([203.254.224.24])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyY8-00000002swJ-22vI
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 07:10:07 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250613070959epoutp01829722a4ea7ad3ed06b045322f16a602~IiI5Jk6XG2937229372epoutp01B
	for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 07:09:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250613070959epoutp01829722a4ea7ad3ed06b045322f16a602~IiI5Jk6XG2937229372epoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749798599;
	bh=svO7ll9UKcZGcNfSWfhT3p5yZRChtYXewAZzfhfwV3k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TQkNvvAvBcGJ9cGdED3YdRo59NY2aXSuZUZcVnCmMZWupbxrA0vI9itteZmcCgHdM
	 /2LEabwVLt3cHlw2QCXaz0cfQf15JsCSMKuQ2Wri2qIpQlRWirRzNPYji7ihkMpR7O
	 9D1k/7vOkjJpquW4v527Ng8VziDw7yWA6dAZJxlk=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250613070959epcas5p33ebd9b65689a5bae2d39bdf50c130ade~IiI4k37Yg1235912359epcas5p3A;
	Fri, 13 Jun 2025 07:09:59 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.179]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bJVs13Fpgz6B9mK; Fri, 13 Jun
	2025 07:09:57 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250613055043epcas5p2437abc65042529a2012a6ca80559ac80~IhDrqT3d-0491704917epcas5p2Q;
	Fri, 13 Jun 2025 05:50:43 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250613055040epsmtip115c503777d2f161a8c24f72d273c3f09~IhDo8yKXL0400204002epsmtip1K;
	Fri, 13 Jun 2025 05:50:40 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v3 2/9] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
Date: Fri, 13 Jun 2025 11:26:06 +0530
Message-Id: <20250613055613.866909-3-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613055613.866909-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250613055043epcas5p2437abc65042529a2012a6ca80559ac80
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055043epcas5p2437abc65042529a2012a6ca80559ac80
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055043epcas5p2437abc65042529a2012a6ca80559ac80@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_081005_362667_8BF19114 
X-CRM114-Status: GOOD (  13.76  )
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

This SoC has a single USB 3.1 DRD combo phy that supports both
UTMI+ (HS) and PIPE3 (SS) and three USB2.0 DRD HS phy controllers
those only support the UTMI+ (HS) interface.

Support only UTMI+ port for this SoC which is very similar to what
the existing Exynos850 supports.

The combo phy support is out of scope of this commit.

Add required change in phy driver to support HS phy for this SoC.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 917a76d584f0..15965b4c6f78 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -2025,6 +2025,28 @@ static const struct exynos5_usbdrd_phy_drvdata exynos850_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
+	.init		= exynos850_usbdrd_phy_init,
+	.exit		= exynos850_usbdrd_phy_exit,
+	.owner		= THIS_MODULE,
+};
+
+static const struct exynos5_usbdrd_phy_config phy_cfg_exynosautov920[] = {
+	{
+		.id		= EXYNOS5_DRDPHY_UTMI,
+		.phy_init	= exynos850_usbdrd_utmi_init,
+	},
+};
+
+static const struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_phy = {
+	.phy_cfg		= phy_cfg_exynosautov920,
+	.phy_ops		= &exynosautov920_usbdrd_phy_ops,
+	.clk_names		= exynos5_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
+	.core_clk_names		= exynos5_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
+};
+
 static const struct exynos5_usbdrd_phy_config phy_cfg_gs101[] = {
 	{
 		.id		= EXYNOS5_DRDPHY_UTMI,
@@ -2228,6 +2250,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos850-usbdrd-phy",
 		.data = &exynos850_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynosautov920-usbdrd-phy",
+		.data = &exynosautov920_usbdrd_phy
 	},
 	{ },
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
