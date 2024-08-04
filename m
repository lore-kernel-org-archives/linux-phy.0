Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F97C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 22:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5G+LsmPUw6FM85AqZOZnrIUDwLBGOsbWtTRBdicHbK8=; b=PWI1/b44mvkADk
	99NVhhguz/8K0M9YyAvgJn5Sn5Z+ZQUBT4lqLnMkYn68ia40yn9qqBGQ32LYv3dkZm4gWbWC7qN5e
	C1ZMxYzINKkD8dX6HIEulc73pRy1PSr0T2eUKGG1/wacV7jwgYedwmiwYtgRlteLFm2/RY6kBjOEi
	faYoTxVl061iDpQONMr98nEZ8sOu8mqkWLnl3L4Bq/t/T9uL3t/tGKs7csz+qKScW+SO7ldSLomUv
	WG5x77T/lk2Lp9H+a35KvgRcJLhq3NZwQ9uucYUcoNcG7RYrA26mn1+rsRmkZgwtHH1d88r64dV/a
	5GBxs2NyhWhM7iH/cPAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajHH-0000000E0xE-2LUo;
	Sun, 04 Aug 2024 22:00:35 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCr-0000000DzWO-30D7;
	Sun, 04 Aug 2024 21:56:03 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-36bcc168cdaso1360911f8f.0;
        Sun, 04 Aug 2024 14:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808560; x=1723413360; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4k5kEk4WdJ7BTyBcpyDwtCLf6kDcGSB5mtdTxdCNTM=;
        b=KgKGYuEolKPqsm+kenI8CC0Mtg2ptHcHDv04cQ8GRkWfReBkA/UVwEcyJZXRXthtoZ
         LFfhXg2vh+QSKIL2dGwGKzvQmxHgDMnt9NY1Qa16CP4G/OvIJOEdXi5kRKm9nipjwill
         GAXkOo62PdFgRLQb9byulosl3+VnBPgjJLU6zPpwhR9O28OKi/nEwnIZNvbJIeujb5aF
         T2IpKVjqlYObUxa8RVNvtvNSABUr682t0qu3BDrIXjClqKq2MgSUuQkFGQ6SHM8zazGS
         NeawFqwNQcxXDSfi9jJG4iA9V4Sk4NUaCsBpYcbSvsIqgr1VEmYlc8tXUh6fiAHduurs
         dFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808560; x=1723413360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d4k5kEk4WdJ7BTyBcpyDwtCLf6kDcGSB5mtdTxdCNTM=;
        b=rWiZ/8EeGA6p3zg7kdeXr/WWT0GtYKdw4Nsk1NPDCh67dyExSd5V2jRdiTZGirvdkL
         oI7uEL7pHbCZS7jpdyEca5fVWGop6VA5s3Z01nQksZEEmxQagb9tJB1xp6vl3vOqyPP5
         jNajUjrpe1vTKRRcOVKMT9iEZ9OjgtyL9dJdiO+t3aCa4R+wRdzUd4DVQJU8mhQKOQVn
         s5Jv4BvIwLbb0NIGnCRUf3vhCw/ZdbkeuCT9EQB252zBFy/AhPlwH5OYrqY2QC5rveNL
         pQjkOI/N+JQVEY0fV0HEHPbbzLbkY5mVelzQqrMOarwY+t4LEbCpM8q3BOHE4fLXC7rk
         p3FA==
X-Forwarded-Encrypted: i=1; AJvYcCWV5i0GmYETMV8bc17AV66XH9hUApIU0bjeGMOK+dx2QQ6ktAAu+66TMp49Dap0Wxasq61HtpHIAoCJwTuGrud7erQDLm4gn1zTjGCvQT2Fre/Vh+k=
X-Gm-Message-State: AOJu0YwkBqu81INB5pnc33JOpwrBeGGcyUjdA4knqhWOD0LGcriBKUdv
	T6tCl6ptA+mi/kKtZqBa8WxjRCBTFvtcKruKLXslq4RCMSAkBnIA
X-Google-Smtp-Source: AGHT+IGf9W8CS+wMJJjKQCCJ+OVnp7SviYwepgVgg4+3B6dPNlrnF9LQx7EcXysSlGhIi1PQyxQyOw==
X-Received: by 2002:adf:f2ce:0:b0:368:3ef7:3929 with SMTP id ffacd0b85a97d-36bbc0ff3b8mr8121645f8f.22.1722808559625;
        Sun, 04 Aug 2024 14:55:59 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:59 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 11/13] phy: exynos5-usbdrd: support Exynos7885 USB PHY
Date: Sun,  4 Aug 2024 23:53:56 +0200
Message-ID: <20240804215458.404085-12-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145601_862634_216E6626 
X-CRM114-Status: GOOD (  15.51  )
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

The Exynos7885 SoC has an Exynos USB PHY that theoretically supports
USB3 SuperSpeed, but all known devices using it only have USB2 and the
vendor driver has USB3 function stubbed out, so we'll only support USB2.

Apart from this mysterius USB3 capability, it's the closest to Exynos850
out of those supported. Unlike other SoCs though, this one doesn't set
the reference clock by default, so we have to set it manually.
For this, create a set_ref_clk_rate property in drvdata that can be set
to a predefined value to set the clockrate to.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c    | 21 +++++++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index df52b78a120b..466c72d8a93c 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -367,6 +367,7 @@ struct exynos5_usbdrd_phy_drvdata {
 	int n_clks;
 	const char * const *core_clk_names;
 	int n_core_clks;
+	u32 set_ref_clk_rate;
 	const char * const *regulator_names;
 	int n_regulators;
 	u32 pmu_offset_usbdrd0_phy;
@@ -1361,6 +1362,10 @@ static int exynos5_usbdrd_phy_clk_handle(struct exynos5_usbdrd_phy *phy_drd)
 		return dev_err_probe(phy_drd->dev, -ENODEV,
 				     "failed to find phy reference clock\n");
 
+	/* Exynos7885 SoC has reference clock unset by default */
+	if (phy_drd->drv_data->set_ref_clk_rate)
+		clk_set_rate(ref_clk, phy_drd->drv_data->set_ref_clk_rate);
+
 	ref_rate = clk_get_rate(ref_clk);
 	ret = exynos5_rate_to_clk(ref_rate, &phy_drd->extrefclk);
 	if (ret)
@@ -1460,6 +1465,19 @@ static const struct exynos5_usbdrd_phy_drvdata exynos7_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static const struct exynos5_usbdrd_phy_drvdata exynos7885_usbdrd_phy = {
+	.phy_cfg                = phy_cfg_exynos850,
+	.phy_ops                = &exynos850_usbdrd_phy_ops,
+	.pmu_offset_usbdrd0_phy = EXYNOS7885_PHY_CTRL_USB20,
+	.clk_names		= exynos5_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
+	.core_clk_names		= exynos5_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
+	.regulator_names	= exynos5_regulator_names,
+	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
+	.set_ref_clk_rate       = 50 * MHZ,
+};
+
 static const struct exynos5_usbdrd_phy_drvdata exynos850_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos850,
 	.phy_ops		= &exynos850_usbdrd_phy_ops,
@@ -1663,6 +1681,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos7-usbdrd-phy",
 		.data = &exynos7_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynos7885-usbdrd-phy",
+		.data = &exynos7885_usbdrd_phy
 	}, {
 		.compatible = "samsung,exynos850-usbdrd-phy",
 		.data = &exynos850_usbdrd_phy
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index ce1a3790d6fb..04ef93625eab 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -657,6 +657,9 @@
 #define EXYNOS5433_PAD_RETENTION_UFS_OPTION			(0x3268)
 #define EXYNOS5433_PAD_RETENTION_FSYSGENIO_OPTION		(0x32A8)
 
+/* For Exynos7885 */
+#define EXYNOS7885_PHY_CTRL_USB20				(0x674)
+
 /* For Tensor GS101 */
 #define GS101_SYSIP_DAT0					(0x810)
 #define GS101_SYSTEM_CONFIGURATION				(0x3A00)
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
