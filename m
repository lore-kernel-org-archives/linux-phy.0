Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7DEC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBjHaG8hbIUIeUJn/46TpZ6j4P74f2cehyFQns/nZ40=; b=FR/jvcrvj0L/sy
	gavLMyUtXjVPk+CfT/qxLSJkPEpDL/8IGWI7a1xwzvA2wkX4j3w54DO05lfKhQCEzMAIFhgv7rwqF
	ym789j6RtriMLvzlkAVWTJ83jxueIGAS29Ku5YlH7njjjwOAUrr1YsHmDKCvtfi2TP1XEECnpiHES
	GNiDmb6FcpiP2yrtrv+SG1nuqqYj7ct/d51z5lBY0l8JauFhCijd+vrEKhhZmeTuXIBuG5GVaJLYn
	HrRUnQdzITzOXBTXlIM97QhGYmaKOQeUEiDrcalMHLLUw0bkqZBPy9DkBQxO04ko4E+g1+zWSNxuP
	fKPoRTUekhi2n5BMnjiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomdw-006U7o-78; Sat, 29 Oct 2022 14:17:00 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomdt-006U6R-MX
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:16:59 +0000
Received: by mail-pf1-x436.google.com with SMTP id 17so2842649pfv.4
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUgElLMFDRghXwZQM2277E5lbjtRUO+bSagQ51THrn8=;
        b=hlFw3VNhdEjhNbDugmqQbdr3ZoY7/PJIRYJ8nuzsfu57VEImN/daGMaKM8P0zRqK+k
         TH147l5elpo6UQsdFsJlfVTHfg6MvBSIxlemEQ5pCvROO2UBndr6y7uB+MGJyXBKRrVv
         QaQbNmGV6fvDA5rleWbpG4b6xHYyGkbhT+Y03ZjwHiHhclIsYYW5Ojg63cMipi5C4lbo
         akr65YxRr6VFHJ0Z7w/7dGZgjuHLqfMJTR1UMQbTKr0twgel+bwFwaJ8r7Lk4zJDdRe6
         F64HUqagS7yW2IC/2orTGobu+W9p6tBqjb6SxuIR/lcDJ+dxBRkP+YyBf8nh/d9RkmUl
         pXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XUgElLMFDRghXwZQM2277E5lbjtRUO+bSagQ51THrn8=;
        b=yET1S7DamzL9f6AZKiWzSVlgzpIzp5l9yBHcXvOB09JlDuRzLsiwe1DYbM+uQrJeGf
         pwnXrfqQcvldpS1JzBWsrDV1Q6A0SsEUC/N+DGyIzvE7ro1IRcVLkMg0Ijdv3GsApOBV
         oL74cqMoelQm3vRauXxzV2Jadwx2nM4+qMyE/9C39GvmcpLWsGGxRM+DnWFz/ucDlPh3
         GZymoqJF9QYvGFYfQW+5vnIvL3g5loDj08FH3dnkpwtQpt9fuSWvl/c5uvWQqbdF1/C0
         rN+b2CLbjGNjmEoKznMJVls3JhdIAGtr+VQpLvpkoOYIjEnbFveopM1niiJ8jUrPwwAE
         n36A==
X-Gm-Message-State: ACrzQf3fkfmWxmupsWxb1s8AXVhmts3RHQ0q6M9elEFlYD4bOt+fYfrG
	Q0GwBKpaW1qOENSbJm1P1QD7
X-Google-Smtp-Source: AMsMyM61nYHwbC8ugbPRGE7JQBjSBZbAW3B6wYn1EzUISYGwQKkwHK4PcK7DahB/9BSqNiuIHZH2pA==
X-Received: by 2002:a63:9049:0:b0:46f:59b9:1645 with SMTP id a70-20020a639049000000b0046f59b91645mr4078692pge.541.1667053013986;
        Sat, 29 Oct 2022 07:16:53 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:16:53 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 02/15] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Sat, 29 Oct 2022 19:46:20 +0530
Message-Id: <20221029141633.295650-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071657_755122_FC7CB0C6 
X-CRM114-Status: GOOD (  15.06  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index cdfda4e6d575..4c6a2b5afc9a 100644
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
 	const struct qmp_phy_cfg_tables tables;
+	/* Additional sequence for HS Series B */
+	const struct qmp_phy_cfg_tables tables_hs_b;
 
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
@@ -983,6 +989,8 @@ static int qmp_ufs_power_on(struct phy *phy)
 	int ret;
 
 	qmp_ufs_serdes_init(qphy, &cfg->tables);
+	if (qphy->mode == PHY_MODE_UFS_HS_B)
+		qmp_ufs_serdes_init(qphy, &cfg->tables_hs_b);
 
 	qmp_ufs_lanes_init(qphy, &cfg->tables);
 
@@ -1070,6 +1078,15 @@ static int qmp_ufs_disable(struct phy *phy)
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
@@ -1105,6 +1122,7 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
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
