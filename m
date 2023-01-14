Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6258C677F1
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mzhnqwbd1a3TCcyAjV+nNNbOSrtyzPCaK4fwniIUw7I=; b=2uH2m7y0Njqujq
	t1V+XtRK9t2i7aLQ5A5CsOgxov3S/Ceadaccs1ZnX52emTBcgE2eHeNDUVnufTWY/7hVGPzSwoYeW
	QzbZ+76N0X50L0zNiQb4wK5e2R4iEempWHY+WMvXosaATtnD68nDM63BzTdZyC1AfrAlZMTKoFO9j
	UckBQPtEA07t6KCjSCAFPuCfRR+gczofanpoLuZPBqjkcR0rS98mpD9Xcr+2Dc8ZRY8zjHi7c8DIB
	MLg2FRhza/9UZQ4USChft7QZp4xMWIAD1AGqp+d1F6OfSuhaaOSB4mUORIz2mmRcWiyvARvvxz0uI
	ocnUMpEJLEFhiG9qFFaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagb-005OAS-71; Sat, 14 Jan 2023 07:10:41 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagY-005O8x-CJ
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:39 +0000
Received: by mail-pj1-x102e.google.com with SMTP id v23so24491668pju.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6UnC1hlB+v3q7qNl2UemN8iZ10TjdJQ4rcW+wGUH18=;
        b=p1sC9W/bZo/ItmyrTIHt2xlM6iwiYlknA+/cMq7ZU7odrL229sHachfoLeG7s7Fzgp
         RNi5j2zJgxM26lTWW8h5pNHH3cHGrJsT7TGo0mbr/5euin0VEvUnAM4kZUMKWYugbLSW
         Q9Un7615SFMEm5jMG8DexEY/wLIbFbXT61F6rJEbEPCF4O666JIIMIyDCt8mQE6MpVtU
         7+XFGv733tlgswRD5DcVSpVF024Pxvj77NsZiVxmUemSysPfj/paLpxKJKGglPbFbwGq
         HCpdT0pnPRXfnV7aWI4OL8QWDXU0YN+W+5hv6VMhR1yMZuuGc23gT7aUOf+bIjNiq0vB
         ql/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P6UnC1hlB+v3q7qNl2UemN8iZ10TjdJQ4rcW+wGUH18=;
        b=4YD6HwDTJReP4zKfuGMzhAiaJcmttpKgH8c4EZyal0G8kN5kOX+KUzb/EtWTtTy44r
         eDdfDIiBcosKz8AyWW0WD1Qbxd7pW9Jb1PIcvaMn0ME/75GgIVEpJrm/zBFXHYjEuNFJ
         V7V47Um/ZrWWFnDm/EXkTH5J0ILcAYxzUl1S5gljCHamFdql3qU8xgz2MIUzOvovseNW
         Ygbq8PCMIeGm7GsIqPUxztyluSVLT5f1RT+cL/7Ioad/r/iyW4NxOuHM2Vw7h7YY6cJ4
         TlT0mO69lUWpoEkajFFhNkmox3jGM9HFnonsO5syjnfPWZoUGw0Zl0taEK+Mu4j6JDAi
         E58w==
X-Gm-Message-State: AFqh2kqsbvThgOrkP6BwAhbQa7pWoIr+Jlxq/Cz+tMhGm7Sm7fqQ0ed8
	4RQzBkB2OSkHnLpQQuzqP/nJ
X-Google-Smtp-Source: AMrXdXsAonETMWZspOAImOrnqq8pa2oFU10LwA0EwUsLfh0qVXklogWGUjPTaTStC1hrg+3pUS3JvA==
X-Received: by 2002:a17:902:b10d:b0:194:4339:112e with SMTP id q13-20020a170902b10d00b001944339112emr15728704plr.60.1673680236797;
        Fri, 13 Jan 2023 23:10:36 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:35 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 05/12] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Sat, 14 Jan 2023 12:40:02 +0530
Message-Id: <20230114071009.88102-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231038_433991_FBBF441F 
X-CRM114-Status: GOOD (  12.70  )
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
index 91285ddd663e..bb329cfbb96d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -20,6 +20,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include <ufs/unipro.h>
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-ufs-v2.h"
 #include "phy-qcom-qmp-pcs-ufs-v3.h"
@@ -554,6 +555,8 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_cfg_tbls tbls;
 	/* Additional sequence for HS Series B */
 	const struct qmp_phy_cfg_tbls tbls_hs_b;
+	/* Additional sequence for HS G4 */
+	const struct qmp_phy_cfg_tbls tbls_hs_g4;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -588,6 +591,7 @@ struct qmp_ufs {
 
 	struct phy *phy;
 	u32 mode;
+	u32 submode;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -854,7 +858,11 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
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
@@ -1028,6 +1036,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
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
