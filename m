Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C583C001B2
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cb7u1rqHQmGDW3Zbi4f5bPiUV6MeYOcLMcqgimJRQoM=; b=ySoOdCUM8i8eik
	2D4hRbOkOhZDU+FgcYEANNWPu90ThY8JUCRTwKVGJcjPLxgAWNetNkMUL/I9+7Q8bnIMal+FARDZv
	g6XCOdEYpurkd7xSOwoPVig9mOXpSR+xylxL8Ga8SOu2aA+95LvybwYAdwo8W8bw0HfnhMTdgPC5P
	Ixi+pqHEIcB5eNJs6sKWvkb5axDoQdmoNNiJwGsSEc/HwRDAi7vHqfR00FqzoMzrxUnO0ntZo3Iq9
	OsZfhM5C0X+e3hjMwJ3Hg/eDoD953SQ0oOgqEQdbetBaAqOTHNscN1hsAUQNKCIkigz3AFwYHnxJQ
	jYA3a1U8eT+oWzrc7Rdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYI-00CxUT-RV; Thu, 22 Dec 2022 14:28:06 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MHT-00Cnt8-7O
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:10:45 +0000
Received: by mail-pf1-x432.google.com with SMTP id g1so1304857pfk.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/p+KNgANSr5uBHeX1FzcIMoLA4Ae3aZ8ABPlQd95kGE=;
        b=kwcMnFApASjLH34+IJRVUZAoeKisxzikTzT6bazUX+C3HMpTaJJoeRjhc83tn1EMlq
         C9+SN6eWRfRl1vrEDeFbF4HTvJ0PJF5Vx9l5EKv5PxF01+4rQ669wCD7I0Ok1kgVuuqk
         kWZl9pC28EbwyYF6KKy7k7fzRUQJbLFEJccsF9n6VDX6Hz/RfxpdMJmJ8v3u5+XbSC0R
         NhJ+8aDU4yOLhEnjlGQgmFpn02msqiWdhqz9pQFRtxgC3YjQjd98gUPdMSIPbwnaL8Lh
         RUfZM9cyPeL8ucQ4ILThSKAvvEPwtzrK8iLwYlg/7QCM8fBtnwCVNUKTn/6B/K0e4PxZ
         TIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/p+KNgANSr5uBHeX1FzcIMoLA4Ae3aZ8ABPlQd95kGE=;
        b=3ggcp8fp7FvPtAYsnyB9emNEt5ujsSW7g8Ov82cWdl4hIv2slu+LS2ZXTS6lQJ5Xp8
         11GT3E1wxD3q1LjFX0PTW0bpiiLz+VEuA/27HJw0Y+fG59vGowyGc3RoRdbeRst71W3Z
         NjTnO1J9wfCdP4xl57IG/GRzTwbeq75Ss9kfwNLeKMg9tJxPZnNXfq098JIsV9MfSluA
         vAz+P4t64bT+erZ9oZnfW3FhCOiFC/zbGVbGrRiI+B6E+devC0Q4FWRI+Jc5Buf0H9pN
         pAQJokafvn9wWydQ8iQ4VUE4045lmx1nc1GnOSOHWKpMteYEHUrytqJA6OYwzxMVrjXH
         yxZw==
X-Gm-Message-State: AFqh2kosaIWZA8RCFt+T72VIh2n4sfpyGYdYFG+PtTwPKCmq1wW8VDPu
	SlMys3AKetjup2jdzglcAW1z
X-Google-Smtp-Source: AMrXdXvgrVn02a7jIirzsbGlIVgIxpWXsY5Kg7ocqVjDd6dguplca9rtJdReeG9FNTfJ9ppDQhCxDA==
X-Received: by 2002:aa7:9f07:0:b0:575:cce2:cd83 with SMTP id g7-20020aa79f07000000b00575cce2cd83mr6116962pfr.5.1671718238959;
        Thu, 22 Dec 2022 06:10:38 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:10:38 -0800 (PST)
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
Subject: [PATCH v5 04/23] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Thu, 22 Dec 2022 19:39:42 +0530
Message-Id: <20221222141001.54849-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061043_327324_3B08ED1F 
X-CRM114-Status: GOOD (  13.15  )
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
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
