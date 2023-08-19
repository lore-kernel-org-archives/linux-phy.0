Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11261EE49A2
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouYNpq6kzcFlqNOqrH80yvkKxZW/ZBo51jJcLwPHhBw=; b=scWMkx/GtZ3tvB
	lZ56NHMP2JDMX8wEJKtqtl914i0GYsiBd8oZ+66NQGA0h/o/2OeN+dRwbvC2/vqWVlYREHdsp1yUQ
	MOv94vgHleJSR5NVST4AzHQZgJHMKXKgT5qMu9lAacFdor5rjUCZtF0BgozuS3EP3Q4g4fMcs0YI0
	EPpm7opoWUT9fJUL5IlnVy+TAoqrJCR5oEq6w2KRTxVAc/XRsZlPL1iz5Hety8xw2N3E7W/f5M6QW
	Zg3IV4s3F1+/WEww0vsmCa+XIy0oCoV3SYYr0RieqKE/v7TiKPD7CuEWDcstYPMlKS8QB5//jJ7FD
	1HQsDJpqz02/IUtdX0lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCTB-00AKhU-2B;
	Sat, 19 Aug 2023 03:17:45 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT4-00AKdh-2K
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:40 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3a741f46fadso1146928b6e.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415056; x=1693019856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMfSbR3cbUtK1t9P7HTJ1o0YtexgiyQjwWLXVl1eo+4=;
        b=R1oYs//GweGSuLHWZvieqmFIKZokIJNVu6kKiyyCR+v3XpEl+LwHyWvwQHu81u13i/
         3j/Ea0kzS/DbnyreA9JPGAXk3IN/ni2AaiC2Gbz+L156hgkS4zxg41Ehil/SIyz1WS/O
         maWlg3waegRxlGFrryWqUbDrUXyYF5862m6t0ZLn/TNzW7YN8FQ5CcYRjYh8v3DICpvp
         vyzwOvmCDPUEUD2zyiUqPWtAsGl/2LzFHdTe7JsB6jJow3E7ZYTz0VU7UldLeNsQOl8/
         HDMpPfErCco4bRtreAxqdT77dEll6KCcbwsnwRiJt5dqh06ypbFHJEDKXQdq4m3nZlBg
         ykFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415056; x=1693019856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMfSbR3cbUtK1t9P7HTJ1o0YtexgiyQjwWLXVl1eo+4=;
        b=iK/+RA35bZAR3d77kDdakb0JCtooxDDELyaB8ENzvtmwM3+seaOVZdX/PkIfcVrRmJ
         TuKoWFPqGn68J12MyuOpx7mdqcrRRXjkHdcjoWVu6rilOx4FhPh7tCQAQam4MdRlIijy
         uQGDhy3FGVzQacEWTHF7SO4usrKUkx8lb/V7NEcnTJ91Pxep4gZLjjcNSx/MDhIseMhs
         IgXOUDPIT95zfk+R+soi8b/MJY3U3UD6XWqrJWAZTTx7UShRw5VqUXiNNILJQA2pGh6D
         LaxSqDnB147u2+DpCAWyX3GoaadVFMyYsgJmtcM6lv8iCZYUYd5BboWnGdHzys8rhUSn
         vdJA==
X-Gm-Message-State: AOJu0Yzl27RGnwatBPrYgBXWXDFn08Fe+d5XJh3lA3vhQW5e2cM+lVf0
	Zz8lO8+K2rObkmi8xariI71jBMoWOxjV4y+lqlg=
X-Google-Smtp-Source: AGHT+IHMezewFkPEpP1PsJ5iCy1VGV0ZRdzuuxqt+6DEqaPEIdltoIxCBbgMsOnpKi6JElgySWsWJw==
X-Received: by 2002:a54:4490:0:b0:3a4:a87:bea1 with SMTP id v16-20020a544490000000b003a40a87bea1mr1346404oiv.21.1692415056236;
        Fri, 18 Aug 2023 20:17:36 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id g2-20020a0568080dc200b003a1dfa93903sm1501235oic.12.2023.08.18.20.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:35 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 4/8] phy: exynos5-usbdrd: Make it possible to pass custom phy ops
Date: Fri, 18 Aug 2023 22:17:27 -0500
Message-Id: <20230819031731.22618-5-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201738_792714_D30AB3C1 
X-CRM114-Status: GOOD (  16.07  )
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

Provide a way to use different PHY ops for different chips. Right now
all chips are using exynos5_usbdrd_phy_ops, but it won't always be the
case. For example, Exynos850 has very different USB PHY block, so there
will be another PHY ops implementation for that chip.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 06484abb5705..1ece4a1a1a6e 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -165,6 +165,7 @@ struct exynos5_usbdrd_phy_config {
 
 struct exynos5_usbdrd_phy_drvdata {
 	const struct exynos5_usbdrd_phy_config *phy_cfg;
+	const struct phy_ops *phy_ops;
 	u32 pmu_offset_usbdrd0_phy;
 	u32 pmu_offset_usbdrd1_phy;
 	bool has_common_clk_gate;
@@ -779,6 +780,7 @@ static const struct exynos5_usbdrd_phy_config phy_cfg_exynos5[] = {
 
 static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos5,
+	.phy_ops		= &exynos5_usbdrd_phy_ops,
 	.pmu_offset_usbdrd0_phy	= EXYNOS5_USBDRD_PHY_CONTROL,
 	.pmu_offset_usbdrd1_phy	= EXYNOS5420_USBDRD1_PHY_CONTROL,
 	.has_common_clk_gate	= true,
@@ -786,12 +788,14 @@ static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
 
 static const struct exynos5_usbdrd_phy_drvdata exynos5250_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos5,
+	.phy_ops		= &exynos5_usbdrd_phy_ops,
 	.pmu_offset_usbdrd0_phy	= EXYNOS5_USBDRD_PHY_CONTROL,
 	.has_common_clk_gate	= true,
 };
 
 static const struct exynos5_usbdrd_phy_drvdata exynos5433_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos5,
+	.phy_ops		= &exynos5_usbdrd_phy_ops,
 	.pmu_offset_usbdrd0_phy	= EXYNOS5_USBDRD_PHY_CONTROL,
 	.pmu_offset_usbdrd1_phy	= EXYNOS5433_USBHOST30_PHY_CONTROL,
 	.has_common_clk_gate	= false,
@@ -799,6 +803,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos5433_usbdrd_phy = {
 
 static const struct exynos5_usbdrd_phy_drvdata exynos7_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos5,
+	.phy_ops		= &exynos5_usbdrd_phy_ops,
 	.pmu_offset_usbdrd0_phy	= EXYNOS5_USBDRD_PHY_CONTROL,
 	.has_common_clk_gate	= false,
 };
@@ -906,8 +911,8 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 	dev_vdbg(dev, "Creating usbdrd_phy phy\n");
 
 	for (i = 0; i < EXYNOS5_DRDPHYS_NUM; i++) {
-		struct phy *phy = devm_phy_create(dev, NULL,
-						  &exynos5_usbdrd_phy_ops);
+		struct phy *phy = devm_phy_create(dev, NULL, drv_data->phy_ops);
+
 		if (IS_ERR(phy)) {
 			dev_err(dev, "Failed to create usbdrd_phy phy\n");
 			return PTR_ERR(phy);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
