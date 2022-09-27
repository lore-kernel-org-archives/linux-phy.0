Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41834C6FA86
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gsJjU4VYqQnu1DOlhKkAszRkcARciZQBdHOgjrPCk0=; b=2P5uzpC0QuvESC
	pSNJXuMbDlB7BJ35fBtOc5uydFmwk031GsRYDWTK7FmqESdyJalSefFXHrZJ6O/W3HgBOEw5xM+H5
	I1y8AvmiRVwTeGv7O/pDAWH2qWmCrxpM47YUT6ZdGPXuUYfyauPb7QiKRbGGKGCXImvonBEl5n5kB
	qteftvnCTFPNi1eKljOhmiLhyvKoqhflXDCIlnoxVQuV7BhUYHtd2yiWnefVee0bZ0UUKRHNnIYPI
	cFB6aj7wwkGcVaRUxvWui1SS4F4u2LnfE85/tywujjVOjik9Lx0EvrLS0lcy1ajX04Wlpho5n+wZj
	fg/ZpNAgE8vDyGqCGcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6so-009XTT-49; Tue, 27 Sep 2022 09:28:06 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6n9-009UiV-5d
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:22:19 +0000
Received: by mail-lj1-x232.google.com with SMTP id s10so10228602ljp.5
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+WALVDKGJ8TjpguNws9V7oDyGWCAG+ppaoeEBl6oQTs=;
        b=REvxypI6NYFJxXOy2OaCGcqlncy/01sKMRM+5lJit+BDTPiUWjrAoG3N9ooDhH5mFV
         btCXa8geykRDdyVHCDEd49LKLGNvWaCkSRWAIJuJtaC+LCvljsAMGNJV3eTjp2jZl/KA
         Ha4biub1jlbcjgT9EsJkDpTzCrEDQobVuZhqKNuQwwr17MV4OdmLRwmZin9H2yTyoHwx
         Nm8TkDAD5tczUObst+NI19GfIhCDwbtU7EfwqzDY+zftG9diXh8YVpPTTRy0crSXNmSD
         b3FvBb/e8777KcHEaRlxtmD8E51vtYik4tHfDvpAP51KG83wtqjjQVR1FbIC5+JPku/z
         vfEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+WALVDKGJ8TjpguNws9V7oDyGWCAG+ppaoeEBl6oQTs=;
        b=A6gjUjJQ3GXFeBRlDKWSPYwYWx1E42JtpzmRlfvJ/S6dQw2dG/Brs/ZZ5WcMXD5EQu
         g7H8nosvtbUBRi5xd4oUMZGQO7kbfgrtrdBd/cCp6ZfWnwIFtXpvfS8loefhDlre5xne
         YoLvQeVFxIkEXYkEadZ3SR5uqcHJeNbTAOTU+VmmU01Kj8oKML2rTnK+wDhXxcNMjizo
         WwQXFEZK7LKx/LVjiBbVt8s2mKiUnCszbsd76GQGSfDofH36xy0+AShR75w38XGFz4eP
         mnMjdF3qGNRQWGBk61w9wk2bEYPfQZyy5uN5kQxv+4VU1A4hG+k6O6EyZVZcAm1znQBR
         22YA==
X-Gm-Message-State: ACrzQf01NBlrUHvTgxCPuW5wL3dtJoXnydGV8duiuyWKNk57ZuthLyKg
	W0xRWjqFVrXk7MK4U+zlfeLVlA==
X-Google-Smtp-Source: AMsMyM4cVZECH0F/MQlDHtKGzBzN39n6V5xkPo1jJ+I2hRQCv25o+4UgB1zNju6tvYj6G2MsSeeN0A==
X-Received: by 2002:a2e:98da:0:b0:26c:7b01:70a with SMTP id s26-20020a2e98da000000b0026c7b01070amr7161189ljj.197.1664270529729;
        Tue, 27 Sep 2022 02:22:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r28-20020a2e8e3c000000b0026c15d60ad1sm104584ljk.132.2022.09.27.02.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 02:22:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v6 2/5] phy: qcom-qmp-pcie: support separate tables for EP mode
Date: Tue, 27 Sep 2022 12:22:03 +0300
Message-Id: <20220927092207.161501-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_022215_323904_B0014CAD 
X-CRM114-Status: GOOD (  20.09  )
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

The PCIe QMP PHY requires different programming sequences when being
used for the RC (Root Complex) or for the EP (End Point) modes. Allow
selecting the submode and thus selecting a set of PHY programming
tables.

Since the RC and EP modes share common some common init sequence, the
common sequence is kept in the main table and the sequence differences
are pushed to the extra tables.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 46 ++++++++++++++++++++----
 1 file changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index ae0d7b49dfa3..ba01338d93ac 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -14,6 +14,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_address.h>
+#include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
@@ -1320,10 +1321,14 @@ struct qmp_phy_cfg {
 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_cfg_tables tables;
 	/*
-	 * Additional init sequence for PHY blocks, providing additional
-	 * register programming. Unless required it can be left omitted.
+	 * Additional init sequences for PHY blocks, providing additional
+	 * register programming. They are used for providing separate sequences
+	 * for the Root Complex and End Point use cases.
+	 *
+	 * If EP mode is not supported, both tables can be left unset.
 	 */
 	const struct qmp_phy_cfg_tables *tables_rc;
+	const struct qmp_phy_cfg_tables *tables_ep;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1367,6 +1372,7 @@ struct qmp_phy_cfg {
  * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @pipe_clk: pipe clock
  * @qmp: QMP phy to which this lane belongs
+ * @mode: currently selected PHY mode
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -1380,6 +1386,7 @@ struct qmp_phy {
 	void __iomem *pcs_misc;
 	struct clk *pipe_clk;
 	struct qcom_qmp *qmp;
+	int mode;
 };
 
 /**
@@ -1991,13 +1998,19 @@ static int qmp_pcie_power_on(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	const struct qmp_phy_cfg_tables *mode_tables;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
 	unsigned int mask, val, ready;
 	int ret;
 
+	if (qphy->mode == PHY_MODE_PCIE_RC)
+		mode_tables = cfg->tables_rc;
+	else
+		mode_tables = cfg->tables_ep;
+
 	qmp_pcie_serdes_init(qphy, &cfg->tables);
-	qmp_pcie_serdes_init(qphy, cfg->tables_rc);
+	qmp_pcie_serdes_init(qphy, mode_tables);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2007,10 +2020,10 @@ static int qmp_pcie_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_pcie_lanes_init(qphy, &cfg->tables);
-	qmp_pcie_lanes_init(qphy, cfg->tables_rc);
+	qmp_pcie_lanes_init(qphy, mode_tables);
 
 	qmp_pcie_pcs_init(qphy, &cfg->tables);
-	qmp_pcie_pcs_init(qphy, cfg->tables_rc);
+	qmp_pcie_pcs_init(qphy, mode_tables);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2097,6 +2110,23 @@ static int qmp_pcie_disable(struct phy *phy)
 	return qmp_pcie_exit(phy);
 }
 
+static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	switch (submode) {
+	case PHY_MODE_PCIE_RC:
+	case PHY_MODE_PCIE_EP:
+		qphy->mode = submode;
+		break;
+	default:
+		dev_err(&phy->dev, "Unsupported submode %d\n", submode);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2220,6 +2250,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 static const struct phy_ops qmp_pcie_ops = {
 	.power_on	= qmp_pcie_enable,
 	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -2235,6 +2266,8 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy)
 		return -ENOMEM;
 
+	qphy->mode = PHY_MODE_PCIE_RC;
+
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
@@ -2278,7 +2311,8 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 
 	if (IS_ERR(qphy->pcs_misc)) {
 		if (cfg->tables.pcs_misc ||
-		    (cfg->tables_rc && cfg->tables_rc->pcs_misc))
+		    (cfg->tables_rc && cfg->tables_rc->pcs_misc) ||
+		    (cfg->tables_ep && cfg->tables_ep->pcs_misc))
 			return PTR_ERR(qphy->pcs_misc);
 	}
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
