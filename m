Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D75606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 09:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lGLvrMEW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=FkCUFDNf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yMG4Tvr0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0j1WFjqbOmX/YrFJlxP4vWLFyW8Gpj/s7JaLcW0qv/I=; b=lGLvrMEWnHWLrwzHZTL2q9IiXU
	zHLlNh/7brG0smVLZPGZZgXiXsyUtvApDxcGKmC3ZmtXl/quV458llTBT8KSSmzbMMQgp6fBAfUjY
	22Mi2uNxj4u+vtFsw6FmccA0hUufmb4xneTcnFsUfCeeIGys0KxK7AVdTlp4xbzoW99Kj1OAe0EXt
	l8eiM2YAQAd9JAOpJCYVXRa4oulv2S+M0Yo7Aob0dnSi/5DECtfiSbG6eLVBreNetTnl/Ah17pOmy
	jX8BH0q1oc2keq861tVGBX1+GfE/f4kI3aaTFj6evulZvsz7bgjJiVxlut2D80AOVE2vso0a4ozzd
	iBNuUQ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQIW-00000002hoU-0tBL;
	Mon, 23 Nov 2026 09:25:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQHD-00000002haD-0avg
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 09:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Ec1tqy+OijvQ1oTn+CcDpDl1Xq4ijIg/8Ri8zyKyFyU=; b=FkCUFDNfIUJOR0YUBFXOV4rHjI
	JrQmNgSat3oUYyJ7H//QbcClhv/8x/zayIDyxNRQFPl6Uz9ExnrTBcu0LFXGmPWixXzZtA1uPrV/E
	l8pXH8kDCKtZ/X6k3A9seFblGP+U6f/BqM2bdtxIGNGHQEzFyCwZZaeV/+qxMECFgWsY2wFvsSunk
	5XU2B+wS0FBCH3T4LdZ0XMzHD3B9Z7N/BQbeTZFW7lUaXgDX4Peq94qKAYXlMcUi+FiLGCRdNDA+l
	JPTGODEP65znod9+YyexdN8KqJLw+ONrUbvAmCwJ0VijRRdTD2ulyfDeRjaWLi0HYEhjixOwiCky6
	ayc4g4Qg==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH9-00000002uw7-01iz
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 09:23:54 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48e46e449e8so1947832f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 01:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795425829; x=1796030629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ec1tqy+OijvQ1oTn+CcDpDl1Xq4ijIg/8Ri8zyKyFyU=;
        b=yMG4Tvr0BOE/n3E2AEvwNwDmfoehmNH0ytn9q8T7aokpODGCoOQFpXcDBObHhqeLqY
         whgj2oVECBAqaWtgpGwv/d0gDBZ04Pr40XmV7BqhWdgnxhRpvsLdyd7lJ/zak2M6rSLr
         rvPYF/XcUBIz4hgwy6gRZbBPR3N9Qs2epKkOBmIfHNbCrnIJ/2DDOQ8pYQBuYHkOxvUd
         097tOfXIrgoIIndFh8q/Jb5cHvXNiaNPX2mxRJF6qvfdILDzO05bjF/So4UB2IdEQmtG
         YMdCCWH0KsCfnRZj0jh/QHeezEIg3edIzvI6e1fqHu33aRSIe31HFl921Zbk9uHXG73n
         YzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795425829; x=1796030629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ec1tqy+OijvQ1oTn+CcDpDl1Xq4ijIg/8Ri8zyKyFyU=;
        b=PsKc851toRP0idEPqGblBVomAkVA+yrqT9Nq93noJleVUltIzvQuP6/7Rka4mqbOcN
         W988kUwnKIygIHWfckpCthUFnEXWPiCKO1uRfhkl/z8L0tR6CH+y8CSDflKMN75YEqje
         EbJLz500FmMpg8bqgm4HA1GkTFn2VBvdPPy5pqoZqzxyj96LkCRbFERjFKMds9BWzE4l
         nzRUjAd7MUidkNhzzbdUrRpNZjgzEwVh0xndwCZz7uI25jFbIxvgI5vNUHYyvaioIvG2
         Lt6UQHPfes6AM6/NHlC30O4XppliSIBqqpT0MJEamepNt61mPWmUtEz2gSozWK2czRXl
         z25g==
X-Forwarded-Encrypted: i=1; AL+hErHTCurJkCl04r79F2ON9Y2+6NSbt2OW5510qcjjfFHxV8A3h9gAXvDYI9ZCjo7tbC0+k6gzQhZOSpw=@lists.infradead.org
X-Gm-Message-State: APuU4Z/mw5kds5oJzOr8C1oqvk2tZ4ecZbS/ppxZoy5IeJipkVU6OCxk
	htuEhxUuCKcdVoEtSjVOaSaE9Ja8zaynH6k2iHjb0NKGVvsJ+SmJzvYP
X-Gm-Gg: AZFdTZdHhwyJMrlqI86ECEpIbSTQdIc0mkIOXzAca0+n0WDETnzQXkMaMQYLLeTdh2V
	wm04SmLNntwTwlsi9iHQ4u/dO2mtRFxaAJNMFUvLXN9jt4+V6g7cVEPp7q8I4DnvaIQfc6GyEQo
	BNwZzz9szBByiTzYvq7POK7TqL4OjdhnyCESQupLHTGpmJIbLlXoqxL51YHxmbiGZ2QYCvXzwYf
	tl7Gr7urEMGQzV963HD4JHHkK1/03j8mLNUNgoaPn9RalUec28PstO3ntGY6ed154Dk40W9estV
	vwsAtGw87wfPupFrfVF2/h62yT2l2OMFdyayF+ooLcDs1JuKWtnAb9SF340bAfu4rs6Py08sZoK
	dxCdRBE8V2rLIFXL/xExwpSwqzCm4HgnxHPRImk3rO867UTz06C9lBxJb9Iak/GoxSluBOnheTN
	fJDWR+Mm+5rBTlGHZklkgyrUX0i5DLPHetYz5hWqCDgY6Ea9isEbSjYfgdcX6zCKdznimsF6s3i
	Dykq0Ku+iBUGK0peDqbqczVSKxJrjbnNcE84P4iYx5aZQnSCgz7YH1btQ8Yp0B4RhNm6gMY02EM
	rXey+BQOUkO9Jl3O04iiud7I1/NMUZEfXJOuTTnnIh0ou3EVk7yCuTlc09P4HH1012947V3oCpT
	gjJsyndvuD+N6+5WcKNUEEq35duM+oe/feQ==
X-Received: by 2002:a05:6000:184b:b0:4a7:1fca:e548 with SMTP id ffacd0b85a97d-4abb7d46559mr21264569f8f.39.1795425829165;
        Mon, 23 Nov 2026 01:23:49 -0800 (PST)
Received: from DavidArch.internal (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6bb989eesm21060655f8f.50.2026.11.23.01.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 01:23:48 -0800 (PST)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	David Virag <virag.david003@gmail.com>,
	Umer Uddin <umer.uddin@mentallysanemainliners.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 3/5] phy: exynos5-usbdrd: support Exynos7885 USB PHY
Date: Mon, 23 Nov 2026 10:22:40 +0100
Message-ID: <20261123092244.1792040-4-virag.david003@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261123092244.1792040-1-virag.david003@gmail.com>
References: <20261123092244.1792040-1-virag.david003@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_092351_033811_26634285 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.1 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Exynos7885 SoC has an Exynos USB PHY that theoretically supports
USB3 SuperSpeed, but all known devices using it only have USB2 and the
vendor driver has USB3 function stubbed out, so we'll only support USB2.

Apart from this mysterius USB3 capability, it's the closest to Exynos850
out of those supported. Unlike other SoCs though, this one doesn't set
the reference clock by default, so we have to set it manually.
For this, create a set_ref_clk_rate property in drvdata that can be set
to a predefined value to set the clockrate to.

Co-developed-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
Signed-off-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
Signed-off-by: David Virag <virag.david003@gmail.com>
---
Changes in v2:
 - Use unsigned long for set_ref_clk_rate
 - (from Umer Uddin:) Error-check clk_set_rate, and fail if returns an
   error.
 - Add Umer Uddin's Co-developed-by: tag for his improvement.

 drivers/phy/samsung/phy-exynos5-usbdrd.c    | 26 +++++++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h |  3 +++
 2 files changed, 29 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 087d552eb511..77bba791212d 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -483,6 +483,7 @@ struct exynos5_usbdrd_phy_drvdata {
 	int n_clks;
 	const char * const *core_clk_names;
 	int n_core_clks;
+	unsigned long set_ref_clk_rate;
 	const char * const *regulator_names;
 	int n_regulators;
 	u32 pmu_offset_usbdrd0_phy;
@@ -1847,6 +1848,15 @@ static int exynos5_usbdrd_phy_clk_handle(struct exynos5_usbdrd_phy *phy_drd)
 			return dev_err_probe(phy_drd->dev, -ENODEV,
 					     "failed to find phy reference clock\n");
 
+		/* Some SoCs (e.g. Exynos7885) leave the reference clock unset */
+		if (phy_drd->drv_data->set_ref_clk_rate) {
+			ret = clk_set_rate(ref_clk,
+					   phy_drd->drv_data->set_ref_clk_rate);
+			if (ret)
+				return dev_err_probe(phy_drd->dev, ret,
+						     "failed to set ref clock rate\n");
+		}
+
 		ref_rate = clk_get_rate(ref_clk);
 		ret = exynos5_rate_to_clk(ref_rate, &phy_drd->extrefclk);
 		if (ret)
@@ -2095,6 +2105,19 @@ static const struct exynos5_usbdrd_phy_drvdata exynos7870_usbdrd_phy = {
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
@@ -2929,6 +2952,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos7870-usbdrd-phy",
 		.data = &exynos7870_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynos7885-usbdrd-phy",
+		.data = &exynos7885_usbdrd_phy
 	}, {
 		.compatible = "samsung,exynos850-usbdrd-phy",
 		.data = &exynos850_usbdrd_phy
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index db8a7ca81080..73d9c509dae6 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -665,6 +665,9 @@
 /* For Exynos990 */
 #define EXYNOS990_PHY_CTRL_USB20				(0x72C)
 
+/* For Exynos7885 */
+#define EXYNOS7885_PHY_CTRL_USB20				(0x674)
+
 /* For Exynos7870 */
 #define EXYNOS7870_MIPI_PHY_CONTROL0				(0x070c)
 #define EXYNOS7870_MIPI_PHY_CONTROL1				(0x0714)
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
