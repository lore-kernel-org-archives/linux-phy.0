Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C695BFA3748
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hwt2MYJAX2bIk7c8KJSwZAVLGnRrK0AMZFwfpRydZZs=; b=p2WASHEtcBo2IS
	iC3H2OT8UP8Egk0wYYZ7FgshYMC84QIc91Xli7HGZlR9vp3hP8kytFbp5noqDNDkhdZsMql2qYl0d
	6qqydxP8eqe0QoXew7uV6eorPrVHnV3d/0LXEEkTYHherfHkXcQSUM5s6jACBJ2iT0iovw3W3sfTX
	9VLuVE8ZR4w8FELsZ1KerxoNyINTHHM+hEFYNjHeSj6YOnm12jlYmhqCH1Jmchbqzs978SjqKeMa2
	fjppEX+jc9fs7QGVP4ZEW5yDjrl3a6cBofMs5YUDivyGBBCSMsPeHQo5uX6TZsWZMWLJjpkvqWBPf
	9CJa0F5j4eOzjOS+OzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7d-00DaMz-3o; Mon, 31 Oct 2022 18:02:53 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7b-00DaKm-2j
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:02:52 +0000
Received: by mail-pj1-x102e.google.com with SMTP id c15-20020a17090a1d0f00b0021365864446so10927402pjd.4
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhOaUl9F/HsZmg2/HeXQifMc3FhrE3vEJ6lXoXELXXM=;
        b=MNbG+bAinnYs9+4/IBl6ndbLalqDQMyy4xFZtzZXTueMsg0rPrmsnbpUtj4lUJA7Go
         4z+7Q85NuJ2KkN2JUfWtAwNKRG8IChg4HMIq/HeuJPezH5TwakwmkbLGlBkNK2QsIU8e
         dFoTOJ9HgsRuL0j9vo9AcVmaQAGOj4MbfU+TJIhh8WS1H983ZCVIHvk3rzv4L6x79PHA
         DQm97JnN+g+YNr+1yFA17B/u9u84Ne0blasrnWRL/l57KrECSbI3S62ozBhL2v+2djqZ
         ohnUxAB0REzf+ZRXCs8vJXmyrx6qTCmGMSclX3wgidmJ+/SlMwkCeGhHHIWV27o/H7w7
         J6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JhOaUl9F/HsZmg2/HeXQifMc3FhrE3vEJ6lXoXELXXM=;
        b=JDXsf+vF+b4flnQC8y+IRoISuaKllbE/27Dq7q7CZ5jHv9jOJpgmB/vf9YyldfB3Wl
         SozBljcvVf1UH9PnTMfvjWSABpLHSnXaj/3onETK8Xf5TurObxPET884/aJKlLy62HCo
         NtFOYkZuknTtajkuSCS/XiEMvyYK//MyOm8Pk0KDyK7s1pwFZSJ/+lRUqWex1fG+1H26
         lcLIV33lxM0B9fyipypoWtnmrQ+PRGiVWFI1y3Yn8RFvsTkA2VeoBo5fPgi8HB7Sjymw
         8+3ptMM5LvMFgDO1Q8zsqzIM6m5S7hJbPIQNE+ToR9maZUR1Izhj+Ym0ZmmjNYeK88Zk
         kb4A==
X-Gm-Message-State: ACrzQf1ivn2vqZbBtXtBu6d1sh8CNbH6rt/2wwjYOJHbUHMPziCc7Ai5
	vO4TEzYFLnVSAtO3wsMedQ4z
X-Google-Smtp-Source: AMsMyM7puVGfFdPsAIycm2nf5Bn6We9BuL6hxuAuM6QV5Pk6jrkLpY6K2cwvfABjtn50Ck1a6v0Leg==
X-Received: by 2002:a17:902:6bc8:b0:179:fef9:b2fa with SMTP id m8-20020a1709026bc800b00179fef9b2famr15640210plt.96.1667239370349;
        Mon, 31 Oct 2022 11:02:50 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:02:49 -0700 (PDT)
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
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 02/15] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Mon, 31 Oct 2022 23:32:04 +0530
Message-Id: <20221031180217.32512-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110251_142216_2A00CBD5 
X-CRM114-Status: GOOD (  15.13  )
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
