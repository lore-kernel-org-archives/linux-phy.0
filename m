Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E6CC4708E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jYAaK5LPc/9hA2nn9iVlhWpSoFjcmNe5p0idIYBggc=; b=BkdlZxLM2goUCn
	D2FiDA4PB2XWgVDSmyM1fDZEWEVBNK/LxxQR0isCi1n7ca/OmBBBXjwva+6/CUrh9g9a8v0rEfjVd
	pUiYA7iu+qgjhedNQoy7Ix8ZKQE36l3MZGq5HfcN+2AeaAx1+Rkb3Y5ylrlNN3OcpSU4yiTIx5ZUf
	9993rVp5SO5EM392/l8Ys+IPFmq7B3/OyiP7GDJdCDh9nnUGSkmUtb7T9es+07S4o24nB+wpAyoC5
	XJbJWDWGrpyU0agGpAy5bhpk+ZNEkIT05ESP/i1FhrT07j3iKMcMUJ6ETXSVtjJvEC380YBkC4ZAV
	nGeuow3MdJS7cwMZ1agg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc1-0099GR-Nz; Thu, 01 Dec 2022 17:44:41 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nbd-00997d-EF
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:44:19 +0000
Received: by mail-pj1-x1035.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so2811431pjm.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EwbwxScxAH0Ye5HC8kecov46MNjbALXnqq/6xD/uZI=;
        b=t+B+gdvWpTyroYE+SGEqX9/YuhL5Dufp6zJbMHpPHKhyaoEcktAaFKu/KlVFq2Akzm
         pW2nsD9QNakchPgTAfPcv6qm/0opGtV3Hscm7fhTCw9FwPmXqVvGXHZ93ulLzlegBNlI
         oQvRpUkMTWVh8sfqCYPG/SAd6CcqbDdRLU2nUAwwP2qb3rjSKrRmzZ8LBt53Z7Kk84bM
         62exduN0roGn38WL9Y/U2Sm7JXUPt0SMU5w51yQSxCnSXOmtEPZ2khFbr2CyV4dxlWWO
         YKdzwsXrLB/HBc3E2WQhbQwRgjwNbqk0vBscGy8L9eaNluH6S6hiJPzLCsBH8+rIBLiN
         mhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0EwbwxScxAH0Ye5HC8kecov46MNjbALXnqq/6xD/uZI=;
        b=qu36DTukZmmKOSFvgb1wdg9tQVYC6OGLOX20KOekupsOR+AjMl72XkEodraxtyLzT8
         zYHmkqsVtZNSCnzsatv3ENy8KV02iK5GsJFeFCgfWXvYpHGmKjUIQRq0VFZgUR++V5Wt
         7cht79u3znLuZT1BtWr+QGqg+Plzv3YT56TBA6QZP0NYzfe19PR+2+t3f3ibfvRWHc0q
         hNT2Fy8A9QZ82j7KoPPe7YE6cuBUJGZ1u/Ktnj9NPovorE3DY+xXrj+/m3hzHOKLtanw
         3D2OUWGd/YXD1BFnKkLxe0GxJR4xI/Kmy28LkBJgI/QFjrA8/FKFvlZIwXuSWZJ1VCKT
         n5+g==
X-Gm-Message-State: ANoB5plNv0k8PXuEDtsSEg4soPlyPXROMwDUZxytTvJ/swEvWwh7PgK3
	R8J3jaVKHdfREGZOD2Avnhvx
X-Google-Smtp-Source: AA0mqf5ydUecqFe7PW9IOZSeA7CC2Qp/29SmhDgnZCLdXfjL++61YnwIkT911+LZT8O2qDb9RPw2kw==
X-Received: by 2002:a17:902:e94e:b0:186:5613:becf with SMTP id b14-20020a170902e94e00b001865613becfmr37192236pll.46.1669916656633;
        Thu, 01 Dec 2022 09:44:16 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:44:15 -0800 (PST)
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
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 05/23] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Thu,  1 Dec 2022 23:13:10 +0530
Message-Id: <20221201174328.870152-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094417_592585_7DB24F18 
X-CRM114-Status: GOOD (  12.91  )
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
index 2d5dd336aeb2..82be9b754e8e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -20,6 +20,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include <ufs/unipro.h>
 #include "phy-qcom-qmp.h"
 
 /* QPHY_SW_RESET bit */
@@ -549,6 +550,8 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_cfg_tbls tbls;
 	/* Additional sequence for HS Series B */
 	const struct qmp_phy_cfg_tbls tbls_hs_b;
+	/* Additional sequence for HS G4 */
+	const struct qmp_phy_cfg_tbls tbls_hs_g4;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -583,6 +586,7 @@ struct qmp_ufs {
 
 	struct phy *phy;
 	u32 mode;
+	u32 submode;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -847,7 +851,11 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 	if (qmp->mode == PHY_MODE_UFS_HS_B)
 		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
 	qmp_ufs_lanes_init(qmp, &cfg->tbls);
+	if (qmp->submode == UFS_HS_G4)
+		qmp_ufs_lanes_init(qmp, &cfg->tbls_hs_g4);
 	qmp_ufs_pcs_init(qmp, &cfg->tbls);
+	if (qmp->submode == UFS_HS_G4)
+		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_g4);
 }
 
 static int qmp_ufs_com_init(struct qmp_ufs *qmp)
@@ -1021,6 +1029,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 
 	qmp->mode = mode;
+	qmp->submode = submode;
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
