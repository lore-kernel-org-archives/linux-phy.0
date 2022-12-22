Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC44C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvfgFmi6CTV70neGSjS+l486/KNYVTCFk1DwmBpIqlE=; b=ldAu5TcyAIU7Gi
	ZFOyPp5P8Yn31BFXJ0b8mbiSkQeddSYUbb62obaAP9Qh2wqYPJ9oymhGfNhuRKU2KN8UQr3EOqI2r
	/I92Z5tZihREerkqwoXcMkSbCL/4UpnkBDYNOSvk4fJxuPAhFSQFpa2wa/jJ+C7WvOPJ+9Itjo9CH
	ANzHT+4Cyt/9cKqp2snhiPLDCZTs6LVw4nVKb5nCtJctBedyGYifr54gkTukrOvQhP40PelW0j7wJ
	TRcOKtf1ic87PrVx4dDeWcUW5xr4O25IvHTYL0ojjJRU82x/CChNIMeO7Y9RIQ8lpA+5oPhpB1Xcu
	cgglCbSSi4EGg8EvaMnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYJ-00CxVH-R6; Thu, 22 Dec 2022 14:28:07 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MHZ-00CnxF-RW
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:10:52 +0000
Received: by mail-pj1-x102d.google.com with SMTP id p4so2023035pjk.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJtmctAn+JbZO04zA2NymL/wNMdvFkipKZ36ajZk2HE=;
        b=LCHG59LxknVI6ftLVZAgsbjGQERawPN5kaQfdYLk5gx6j1xmSgrXT0llnfQeddfjYQ
         BxLdIqaffhBEQgVtmTJ7hiOmnCDf5Fy7cruF9UDCpg5SJlkwzSizc9qVf4A+O6c6QdbB
         T26R/zObGbvuC0SzdUMmrcsVtDcvJ/gtRtw8xOB1NkBoouAaHpNdStXHHQBViiY9PhOz
         KBc9dsmdJbq4tAGLIKOTh2V4KimVCeQliSp8V1L98FmlAAxaMLW+PM22U8aBScaNk/o7
         JZpygPeurIuplNzO37DOr37Ayg/IoPs53eb0IMHr5iowSqyLFtwVVeopbqRcNL3Rjs9G
         /f1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jJtmctAn+JbZO04zA2NymL/wNMdvFkipKZ36ajZk2HE=;
        b=j/SHHnFwZ88ywK5mVajnLNFWWY/5NbSeFnjWfckGlYA6iJNG1YMpyl9hW05W4Lnuvk
         bSO9ejNBXMC633JWafajGX5X8MlKqOv1VNyG4mQsGp8Acqtp3thH16STCp117a/D6sA7
         5UsQgTmv3GELg0LTnVbB5/QkZGaPdu//AylNbOF9viWEA69eMOv04+9CHGvu5UPSHgVG
         H87I0/yJ5ecx3OWJVCs4EV8mPr3deL41waTMv6C9EYKEAti/n0KFeJ5HQ9XkrqkLnaSY
         NQ6SQcSE0nhFPtVoPm8psujU5i/rXrn0PEGq7qdQlRcvbaU//Ys+I7i0MU9kC12oU2ve
         mO6w==
X-Gm-Message-State: AFqh2kqpp8DFyhDCCJ5BufMPQCeXGoq/HLYTT/8GoPzS97p1DHATtg37
	Tvm07fTdUQgAdKKYQicB6+AM
X-Google-Smtp-Source: AMrXdXuODHAKlzm+kUYY5r+nIkAqGSYXk5eu4+HN913mBLF3tfyN+JUHInK99T2mRCH3MoW7a1jVtQ==
X-Received: by 2002:a17:90a:c717:b0:219:1338:ab14 with SMTP id o23-20020a17090ac71700b002191338ab14mr6710953pjt.22.1671718245249;
        Thu, 22 Dec 2022 06:10:45 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:10:44 -0800 (PST)
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
Subject: [PATCH v5 05/23] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Thu, 22 Dec 2022 19:39:43 +0530
Message-Id: <20221222141001.54849-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061050_045859_13A68E01 
X-CRM114-Status: GOOD (  12.59  )
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
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
