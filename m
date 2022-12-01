Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F8EC4708D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCHkF9r85egsaJzRFOcEv3tm3zurnMb/SvSsV1BUUqA=; b=MxhYd27ZQH4TXL
	8zU5Az2Ufg/53Vh9SvM74CcSMtRmvPnEVt2mgjBULZ/Gw97AzcM50G7LZv2/NMINDOWvHjd4sFhEz
	J01abDZ5hqldlFUGyu2hS4rHkVomgBckFxxTq4oUqkKOxZNRXoJE8qSjqdon+vy5ujOG/aEhhJHT+
	9X+TzpeNgtMsLfCWG1AeVgzFNdH5wZuAAqghwfViWkMGBnT+jpxgt1eEFpueOQXIquFiY6Fs/WGOl
	gaK9ilrvp8u7l6uxMT/VJNIsGWZfnYRFXqcRcIIgxd6SOeSKq7EYPrfpuBQIPt+6eQiOPjRH1xnHm
	w28TAOgnHHxPl2QTModw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc1-0099G7-74; Thu, 01 Dec 2022 17:44:41 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nbV-0098yk-NN
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:44:11 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 62so2255537pgb.13
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mbDirqLKXr/5FgIX54AJCxh8nLq142NlZCiPSIMpPM=;
        b=sni+VE39ph4Wmu0pSL4SAxtRsH0USVCJEeh0Ru52p3PFG6T8aN2b62f8x+Jr3HDW8Z
         Rm7k+dqCqcvwqG8aN3CcVm7W8EjC3sLjebFHJWv4hMdDy/rqncSvSKCf8YolNNIC3oBu
         4QPGEUjE4DyX3DKjfY5J4JaiD0wXub7mvBy1zlZ+x3Vvbow3lNGzbC+qxGJuvSWim41W
         Om84NnbGTEop+u7Is8zBg8KDji2uhDdiyPJ5yWgHtOacWRt+q/GLvTm0ddA2gs688Bm5
         20dfDRKUvHN/AF3qq8atg9JOX73GN1l6GaVZvtHn8JPxqN+MPoOngeKV9SFphBuK1gJB
         x9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9mbDirqLKXr/5FgIX54AJCxh8nLq142NlZCiPSIMpPM=;
        b=GkptTOYdzkkG+q+P3ilm1al70FpvEWxKfwrEAfyCVdba+vgEfKfJKiRXuZt27H3eP0
         mMUF7QvZQ3RH9gadjwDC+j6KTNKomT2DNdF/+hWTSeNrqauzvnGGWXsunXua9V7G5fqN
         +y/H3vfqgPuheljUUNZvKUThf8sptdzoL1op0QjqAikn8dVhVZXBxSOl17m322TFk+0B
         l0rDooUuGPvnEZFg3yxNLbsBpf9Wugp9FlnWuT9UtM1tDGBWXoeitKnLj6PLtQcgIS6n
         SyRLLXA4Uo7SzqRl1HkG0zzOX0dckshUYD/ey8K1u5BzHleL8evlYhWIJ1/gSo3YliwL
         +UlA==
X-Gm-Message-State: ANoB5pmUGhk3mIcw9KqP97C6Lv5jBvxUYqH9G1mlGCy3eqN6UK2UMNUH
	TbJAuSH+SrUPl/5xND4ZSoSH
X-Google-Smtp-Source: AA0mqf6tDTI+X3TwNGz54Kh+X1FOzooq89OmoICdtqmBjTnZWRiH7OBEycCI7N9VfWSUb485MxkmAA==
X-Received: by 2002:aa7:8542:0:b0:575:3c6a:f05c with SMTP id y2-20020aa78542000000b005753c6af05cmr20007862pfn.25.1669916648890;
        Thu, 01 Dec 2022 09:44:08 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:44:08 -0800 (PST)
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
Subject: [PATCH v4 04/23] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Thu,  1 Dec 2022 23:13:09 +0530
Message-Id: <20221201174328.870152-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094409_801805_C3505887 
X-CRM114-Status: GOOD (  13.01  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 516027e356f0..2d5dd336aeb2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -547,6 +547,8 @@ struct qmp_phy_cfg {
 
 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_cfg_tbls tbls;
+	/* Additional sequence for HS Series B */
+	const struct qmp_phy_cfg_tbls tbls_hs_b;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -580,6 +582,7 @@ struct qmp_ufs {
 	struct reset_control *ufs_reset;
 
 	struct phy *phy;
+	u32 mode;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -841,6 +844,8 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
 static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
 {
 	qmp_ufs_serdes_init(qmp, &cfg->tbls);
+	if (qmp->mode == PHY_MODE_UFS_HS_B)
+		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
 	qmp_ufs_lanes_init(qmp, &cfg->tbls);
 	qmp_ufs_pcs_init(qmp, &cfg->tbls);
 }
@@ -1011,9 +1016,19 @@ static int qmp_ufs_disable(struct phy *phy)
 	return qmp_ufs_exit(phy);
 }
 
+static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+
+	qmp->mode = mode;
+
+	return 0;
+}
+
 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
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
