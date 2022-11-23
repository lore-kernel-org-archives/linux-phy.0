Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78F09C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/FxNtSSYH8g1btPRNSSMzigUajCw/9EZf35MQA2qAM=; b=bgp/fdqGr+lV3h
	V5PXwf4FvqcKHYZKQiOvdw52bRp4/Rf7GQNi+f6Zhc0DRmF0WhrpFwIM8PyhzUr8Z2EwkB2caKKxV
	ggV+4d6h0yp03tBWIDgK3hTmye4lKQD+E6T9P+k5djLSZIuYduUhJR2I/bQ0YFeu0D3GFYIY3uYYS
	hyI7VAq1ivraUleewsMc82PgdDzVDB/p0kPVZCUTw8r4qGdLSAGNuQv/Hwf5WSpixTPKacy7hPM8B
	UwKl5oOyRHHVXAjgHLn57gONdPPyDx8wKIASqH8Awni6cYCxURmvluuayeRSyx1EjTyLvtZDoTK5I
	tDiHS49huIVvCqkWpfxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVJ-00FJGN-Tc; Wed, 23 Nov 2022 07:49:09 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVH-00FJEN-2i
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:49:08 +0000
Received: by mail-pj1-x102c.google.com with SMTP id o5-20020a17090a678500b00218cd5a21c9so1118302pjj.4
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZ+MoCrzv+gfQQlMeW5WbAnmXRNL0HTRmdnVMxPl0cY=;
        b=rTVDZnzCbprEOjWhm+OWYfVd3SVRZhCSkGhAb8ZFiWFAeIq8pMUGmVrS1DV0RCTXz4
         RtvpSBrlsnnWjpUMod2BPbot9BTJ+fSHYSU5Gj2CTBsIss4fTozJfFcMU32rYErsCJeI
         JxANAljaFOM8fe4KPlHmCPaJ2G+XP7IDfOyp/TXWEgO9OtobP8RmOBRHznIaDFYQ2zCO
         bZ1XXLB2c0XDOh3o1H8w0qGReU5YYqlQvLVUXgEPPH01qpcWxITAhYt6iwijrg7ALIHl
         s9vnUys5X2DW6GwJwbkveHNxwbPwKUQhV6OSKF5V098puOuEVHiAcO6tqUA5PcowdSNO
         BQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lZ+MoCrzv+gfQQlMeW5WbAnmXRNL0HTRmdnVMxPl0cY=;
        b=o1dRgoC2YYr0lL8buNQKE0c1wjwe+H47XmOHRvV+o5Fc+LvtwTam1wHnuHpqJwp0Pw
         Z2YjchLTOhsL5kkEro8+h1A0N/oXw01PNKu44RNPHzrfX997//zUBSXRWCTmsE5Qurt+
         9l+oZT0qQ+freLxmktZdC6xthVc7oCA0MG35JCQNV0b92EIt1NzJE9ByhS6U7HPJ+dXP
         Dm+ikGlrsBz6WS5pYZyKfH+LaFocUQhZCq3CeZVYL54+q7mUPakEPtFgHsReLtT594Z0
         aZZlsJ+4OJirK1XixYPj3qqaI0sXY5svw6CA4O14KI5UWhEJu/V769iIM3MeMmx1P9TM
         wRSg==
X-Gm-Message-State: ANoB5pmyRpFF8DebqCefsBjrkRevKgtqKj1yIxP2emAmc9U52Cu+m9l5
	Rj97CbNJQOhTi3/5MopkwHUo
X-Google-Smtp-Source: AA0mqf7t739TpdcQ3ko/yzBAkk8CJjjbrbWW5NFxLKP3l+rmMq+NCR2N2qvUCyO4zu8PHoRl++US/g==
X-Received: by 2002:a17:90a:5918:b0:213:df25:7e8a with SMTP id k24-20020a17090a591800b00213df257e8amr36106769pji.154.1669189745683;
        Tue, 22 Nov 2022 23:49:05 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:49:04 -0800 (PST)
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
Subject: [PATCH v3 05/20] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Wed, 23 Nov 2022 13:18:11 +0530
Message-Id: <20221123074826.95369-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234907_139806_0D5DB7E1 
X-CRM114-Status: GOOD (  13.13  )
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

Add separate tables_hs_g4 instance to allow the PHY driver to configure the
PHY in HS G4 mode. The individual SoC configs need to supply the Rx, Tx and
PCS register setting in tables_hs_g4 and the UFS driver can request the
Hs G4 mode by calling phy_set_mode_ext() with submode set to UFS_HS_G4.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 694b1d6c1f9c..1b6e76bf82e5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -553,6 +553,8 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_cfg_tbls tbls;
 	/* Additional sequence for HS Series B */
 	const struct qmp_phy_cfg_tbls tbls_hs_b;
+	/* Additional sequence for HS G4 */
+	const struct qmp_phy_cfg_tbls tbls_hs_g4;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -587,6 +589,7 @@ struct qmp_phy_cfg {
  * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @qmp: QMP phy to which this lane belongs
  * @mode: PHY mode configured by the UFS driver
+ * @submode: PHY submode configured by the UFS driver
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -600,6 +603,7 @@ struct qmp_phy {
 	void __iomem *pcs_misc;
 	struct qcom_qmp *qmp;
 	u32 mode;
+	u32 submode;
 };
 
 /**
@@ -894,7 +898,11 @@ static void qmp_ufs_init_registers(struct qmp_phy *qphy, const struct qmp_phy_cf
 	if (qphy->mode == PHY_MODE_UFS_HS_B)
 		qmp_ufs_serdes_init(qphy, &cfg->tbls_hs_b);
 	qmp_ufs_lanes_init(qphy, &cfg->tbls);
+	if (qphy->submode == UFS_HS_G4)
+		qmp_ufs_lanes_init(qphy, &cfg->tbls_hs_g4);
 	qmp_ufs_pcs_init(qphy, &cfg->tbls);
+	if (qphy->submode == UFS_HS_G4)
+		qmp_ufs_pcs_init(qphy, &cfg->tbls_hs_g4);
 }
 
 static int qmp_ufs_com_init(struct qmp_phy *qphy)
@@ -1086,6 +1094,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
 	qphy->mode = mode;
+	qphy->submode = submode;
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
