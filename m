Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40951C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XRLC/uu2uKAgMYtG+M1bQlWD9q9Uhv+qjqhmEjz2N4=; b=sc9zigcIx7usUF
	M4QObKauN0ZxXUfQGKFDqng6W0YeRTxj7CMYOYMXpFAOyDgAQmMnmlW8YTpF2CD6uUPZgrs+5ymhP
	HPs9CRBHlNZM9bgYoK55HgcePhq1KhZ9BRS73YHWLdIK6v4OHJRW5FJc3OdKy7w/KTk+8GRrNBrSW
	PfNH3qu1Lwvkw8bZcmaa64aZLpKzSwGVFdbmgT98CnDzlv1c1x3jqQUcYJ1JQY2dBLTB29GrY3O1l
	gCPr07sMZ0wcM1vQVM1TGZ9VAPo1FdSikjIkimUPJHStHx+0uR5Cp6x3yZYxnVHUBA5ZjWf7qaPyO
	AM9XmZVqNPns1SBKJeGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0C-00635S-Lz; Mon, 26 Sep 2022 17:34:44 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0A-00632y-C2
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:34:44 +0000
Received: by mail-lf1-x136.google.com with SMTP id 10so12026706lfy.5
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=FPVqNc9Mv8xJ+5ZsKbEVZ3tfYXKWhhZ+NFt2UJGht54=;
        b=Rr4pF2+GB6XO2D44/apYIoyxw7WQ0lRnlQ6eJ4HIiIXsvBfOloEYl1I52EaP1ntezi
         AmphvnA+BVvpW0/wx1DfqXJBRq0b1O0V9zvM/M2qZ4O3jhbVoEEesDTGY8oq8wyd9pWX
         /TSnPtPV5FsrsiE4k6jerhSgQWRTVvvsGoIgCXpmFG7gzr7nDTLuQgdSnQAENURdbXdC
         CmhvBcNMwZe5uC8ePxmYE8V2lEDXfb3fEtnyxFMNrRfMYGizmSUltpeOV3bXQz/Y0R7+
         9YpJ/2ErTpk9hbIzTsrAF08ybSILuzx16xp2MgoMXlvdBye99cLnVdbneFnUIuwxTQ2O
         LJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=FPVqNc9Mv8xJ+5ZsKbEVZ3tfYXKWhhZ+NFt2UJGht54=;
        b=aOnOFxQKIX7NRcNtadu9gMIKVdZUeVYjRTmHxEq2uIDzUJ48vBI4OLxlXN7tww8ONO
         LGy2YlqNI2zBpmYLMddeAdfvkd4ZnA+VE9zMG3fh/yfB5niyfvWEFeW4Hy94lZ2VxlSX
         woMUDuBSezNyAlPC9Vnzoyzbl8aTq70emGPmjcTwqNFd3gxQAiyauX/NoyPATFZhAC4/
         QmtHzhq8XeuV1noLA3+LGiuewZZsxWxQfygpCIes0wXKc205yTLK9/thup95LZ2kvOm9
         BW5ixI/U87KHBOrscdeFb1keUXuQ+kBWqgluEO8ssKJ1KAXe2adYYcRzNEGYl9m1Ve0n
         itlg==
X-Gm-Message-State: ACrzQf1fyPjB7EbnnvnKXD0BRJe/EKWIZybVJIyUuFfgVS6WsbHPw2lZ
	Cuy9SgPcDAaySnjNiGKJGEq2cA==
X-Google-Smtp-Source: AMsMyM6oiwum4/fyxR0Odj6RryE9YDt3OTBHieteNVxy2EGg0kHRrmbvtAQ7kOgx0k9btRKAZ+s79w==
X-Received: by 2002:a05:6512:2294:b0:49e:f3d0:4cef with SMTP id f20-20020a056512229400b0049ef3d04cefmr8960231lfu.183.1664213678646;
        Mon, 26 Sep 2022 10:34:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a2ea448000000b0026ad1da0dc3sm2402640ljn.122.2022.09.26.10.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:34:38 -0700 (PDT)
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
	linux-phy@lists.infradead.org
Subject: [PATCH v5 2/5] phy: qcom-qmp-pcie: support separate tables for EP mode
Date: Mon, 26 Sep 2022 20:34:32 +0300
Message-Id: <20220926173435.881688-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_103442_434599_442C575D 
X-CRM114-Status: GOOD (  19.87  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 47 +++++++++++++++++++++---
 1 file changed, 41 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index dc8f0f236212..dd7911879b10 100644
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
+	 * for the Root Complex and for the End Point usecases.
+	 *
+	 * If EP mode is not supported, both tables can be left empty.
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
@@ -1995,13 +2002,19 @@ static int qmp_pcie_power_on(struct phy *phy)
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
@@ -2011,10 +2024,10 @@ static int qmp_pcie_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_pcie_lanes_init(qphy, &cfg->tables);
-	qmp_pcie_lanes_init(qphy, cfg->tables_rc);
+	qmp_pcie_lanes_init(qphy, mode_tables);
 
 	qmp_pcie_pcs_init(qphy, &cfg->tables);
-	qmp_pcie_pcs_init(qphy, cfg->tables_rc);
+	qmp_pcie_pcs_init(qphy, mode_tables);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2101,6 +2114,24 @@ static int qmp_pcie_disable(struct phy *phy)
 	return qmp_pcie_exit(phy);
 }
 
+static int qmp_pcie_set_mode(struct phy *phy,
+				 enum phy_mode mode, int submode)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	switch (submode) {
+	case PHY_MODE_PCIE_RC:
+	case PHY_MODE_PCIE_EP:
+		qphy->mode = submode;
+		break;
+	default:
+		dev_err(&phy->dev, "Unuspported submode %d\n", submode);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2224,6 +2255,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 static const struct phy_ops qmp_pcie_ops = {
 	.power_on	= qmp_pcie_enable,
 	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -2239,6 +2271,8 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy)
 		return -ENOMEM;
 
+	qphy->mode = PHY_MODE_PCIE_RC;
+
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
@@ -2282,7 +2316,8 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 
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
