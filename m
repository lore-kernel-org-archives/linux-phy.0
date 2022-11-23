Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CD37C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bITmYtL460pV5U6V1QStm791H709A9e7UlTfexBfVOM=; b=peS+31rLHY9i+V
	HALKf4jwiolcjfdgObbWZN6pkKvwMeaj5cz4UUSvoeuOjwzCjh0nz5HS/mHxcP11ErC1gmNMdP+LO
	ZapWYoRni+qsi2Bmpr1+xAuuvB4zQhIkczJUD3yHib6hQeROiU/AmmDoAu1FQ72pHvtWnTrkgRvCP
	2jPpRAECtMcLs+eGuo6NhsaQoaaBI1zWMI8DQxP9Xk6rbiFacxxI/WazDUF4sho8hMQkkioFOKN5q
	474tsvAFLKPNxwxuNFtLxdpao0CxadhR7O5NRMGoftWHKjV1zAupObrDHpHOK+VO/BGgZRV8c7vJM
	b25RU0JVloF7irNAeYyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVD-00FJDN-DV; Wed, 23 Nov 2022 07:49:03 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVA-00FJBN-AF
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:49:01 +0000
Received: by mail-pf1-x42a.google.com with SMTP id w129so243282pfb.5
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=17DUm1BHWO+9+pCruDSwXwFA2DWaV0LvIvFJmkLFp/8=;
        b=szHgLObizdRjU8Uhq446KGApvra49ApA5BIcru3Ey/6Do2T56DSsWvR5g9jLZHc476
         MSlgWT8MIf8p+f/sxml/uIYI/OfERwdOxx5UrTrYqsRwWRZFHtuRDyZJ5Rx4UxQu9KFi
         bHD+ee5c55d9SFNG5Pwp6XrqCpbVMI7Noo/UYKv4oy6hdO4XzjAQT10xIo8VNGpS1lk0
         Z20HdS4+82s4XqLdrE2uV7dVCOiPbh7w+y4ldF3k1iYZtAtLx40Dsl+kKesa4AdfKKoU
         pHw3S/F4iNp6nK3l1atD4eXQ9Qt72dI6wxGZlj7nTc6si+4kweYwgd/xG8XerHXUsBmF
         dhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17DUm1BHWO+9+pCruDSwXwFA2DWaV0LvIvFJmkLFp/8=;
        b=dGZyjT2hOCMWIOgsMQrNJcOjy2IrmPqfhP8DLW2IRk9ChygRP4Nk60MU1829DKvY5p
         cEPe+RXEG+vsPYyENIcxTMws4zWB9wgF3UPztdHVzBiUbGLMA5Psc2d48GEtsBc5eU2u
         Xdd9+xE8YoCodytpQ9BOb6YiC3dfL8aURyti3S7HxBcJJbE+dusbo5ExWRQ4b/vkXML7
         HmyCSSMLK2Lr+PYcW30lN9jqTNvg4w6iCsfgjjam4aL2hTAjCT4K0nLH7DeOboVTwHvk
         G/WSMIB5KhxNB9j1XRYcGR2UGMitQwvkTNceYELq8ZZ5cmP2X6ih7ziN7Evh4FEmOEEO
         TqLQ==
X-Gm-Message-State: ANoB5plvVOFn50SSB8EgV57w76IttlY3tCcST6FVxksKJXWsKDzGwF0q
	wRxNQbDcdKYQmceWP26LvZ83
X-Google-Smtp-Source: AA0mqf5p/xJXOPvTRxbeUxcJCUOhwd51+9yIUCWj0RA8EwvAT98+ugBHbeaX8uInPuYuqUPJ+lVyfQ==
X-Received: by 2002:a63:5007:0:b0:45f:beda:4116 with SMTP id e7-20020a635007000000b0045fbeda4116mr8165671pgb.618.1669189739616;
        Tue, 22 Nov 2022 23:48:59 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:48:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 04/20] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Wed, 23 Nov 2022 13:18:10 +0530
Message-Id: <20221123074826.95369-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234900_377746_00646602 
X-CRM114-Status: GOOD (  15.35  )
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

Add separate tables_hs_b instance to allow the PHY driver to configure the
PHY in HS Series B mode. The individual SoC configs need to supply the
serdes register setting in tables_hs_b and the UFS driver can request the
Series B mode by calling phy_set_mode() with mode set to PHY_MODE_UFS_HS_B.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 3b7b36e32f5d..694b1d6c1f9c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -20,6 +20,8 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include <ufs/unipro.h>
+
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
@@ -549,6 +551,8 @@ struct qmp_phy_cfg {
 
 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_cfg_tbls tbls;
+	/* Additional sequence for HS Series B */
+	const struct qmp_phy_cfg_tbls tbls_hs_b;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -582,6 +586,7 @@ struct qmp_phy_cfg {
  * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
  * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @qmp: QMP phy to which this lane belongs
+ * @mode: PHY mode configured by the UFS driver
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -594,6 +599,7 @@ struct qmp_phy {
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
 	struct qcom_qmp *qmp;
+	u32 mode;
 };
 
 /**
@@ -885,6 +891,8 @@ static void qmp_ufs_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tbls
 static void qmp_ufs_init_registers(struct qmp_phy *qphy, const struct qmp_phy_cfg *cfg)
 {
 	qmp_ufs_serdes_init(qphy, &cfg->tbls);
+	if (qphy->mode == PHY_MODE_UFS_HS_B)
+		qmp_ufs_serdes_init(qphy, &cfg->tbls_hs_b);
 	qmp_ufs_lanes_init(qphy, &cfg->tbls);
 	qmp_ufs_pcs_init(qphy, &cfg->tbls);
 }
@@ -1073,6 +1081,15 @@ static int qmp_ufs_disable(struct phy *phy)
 	return qmp_ufs_exit(phy);
 }
 
+static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	qphy->mode = mode;
+
+	return 0;
+}
+
 static int qmp_ufs_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -1108,6 +1125,7 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 static const struct phy_ops qcom_qmp_ufs_ops = {
 	.power_on	= qmp_ufs_enable,
 	.power_off	= qmp_ufs_disable,
+	.set_mode	= qmp_ufs_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
