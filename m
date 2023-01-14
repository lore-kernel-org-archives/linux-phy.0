Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88227C3DA78
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWwwN3oaTD6RlxFoChwXyJwVQA5+mAE3VQlMIQF25p0=; b=ZSvb5Qn4yqbFvT
	8LkrxXiV4W5jS2/rbEqL+iznYbcz66B7wHdNBHX+XzzANy3gwVxps6cv3QInTpyfIVaU7pL1E73FG
	BH7RiRUhegfIcVE9yCHpC4MxDUiN8mztqnEqT5KqQ2lqTH5Ol9QJkIm7cM/ISF9VXmD11go21DZkL
	D8eP7Dg/QYwCFumWi6NH8bSo9BXgfs+8+pJ4ndJREGxfSbuGD2MrJoPyGqjme6cWtI2qCyKfgzyHf
	iymSM0B3kzjz2jpNfjmQucXpAgGYYVwng/qf10G193qxwP9ZFrAH/Rs+LfmvrjJ4siHAvt8Abw8Mo
	el2MRAXSvgsG9583u41A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagV-005O8f-VA; Sat, 14 Jan 2023 07:10:35 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagT-005O7t-PN
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:35 +0000
Received: by mail-pl1-x633.google.com with SMTP id jl4so25555275plb.8
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oDYubuABKCYBwbQruwwUwFz0u7uXQ46CcuCTpTGxi38=;
        b=pf6fAs3hb1DmPckJunY12j7JyQ1tkBXB9r/624sMaGryu1J9p/Nyx3CGXo0ivMZrV4
         UWmb9AqkVKx3T5ygadLTeWUZapzbDHyMOfkzUz/OlWQxpKDpS0UaQe4JWBIZw6D95nb2
         GLlcega7Q359rj8EBe245NVjZrbgPCeNzdhDzqiHeHsu5mDK/NkdXinVcAFUv72Ihigg
         9JLpzCQ0eXCNovdxZCHkvLMZ+1PGr/iQ6tW5mAGh6tHZEfR0tu8cM2WySPks5yaoiQ7r
         SDc4lSWfsA95DJszAQpmBzTXxRsRAqqlnKPMAAJR2c/SCIp0Tn2FYME+Ec4pXrQZFKq5
         U2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDYubuABKCYBwbQruwwUwFz0u7uXQ46CcuCTpTGxi38=;
        b=LO5CLGvRs0y7o+DFtz4TINuvSvqRpFhnqabPM+YV6X5QaqnPdvcwi6tRWBguB9biI0
         +dCUvBzFL5jyqyNWBPp6Noo50SqAcFufM8jCCnXsMJnenCJyzNWfOL1qBdE14PoAN9Sm
         UbveqWOZVhlRogjxlMdfY2r2svJcmLT1UHcNBILQ6C/0jDRqE3VjKov5tQSJdFAcZsZs
         dsx9bLTJSaDdRtkh0MboU5RT1ylLH1+zA05MI1weNE/EwRmOvmysSmafo/Xj/6ruiozl
         oab5pAwDAu+tPLDay2t86Mu5x7OqJtUygI//8TwHjG74tt6Z1eAAQto8kKJoNxB8qOcP
         w33Q==
X-Gm-Message-State: AFqh2kr+OtSV6K8lcGZ3+wHMrRxXiPvI3Abrll8mXEnry4ETNn9sf4r8
	0a7x9IYYum6wUhO/Uv2NrCTc
X-Google-Smtp-Source: AMrXdXtPHSVEtucBA9uruPWUmhEAljkUs2peq8cKbos/vokW4WzkwZsgC3cWiLGEZBwca0twpfXN/w==
X-Received: by 2002:a17:902:9695:b0:193:3314:540d with SMTP id n21-20020a170902969500b001933314540dmr19681376plp.51.1673680232559;
        Fri, 13 Jan 2023 23:10:32 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:31 -0800 (PST)
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
Subject: [PATCH v6 04/12] phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
Date: Sat, 14 Jan 2023 12:40:01 +0530
Message-Id: <20230114071009.88102-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231033_841489_8B89972E 
X-CRM114-Status: GOOD (  12.97  )
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
index 90d644fb321b..91285ddd663e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -552,6 +552,8 @@ struct qmp_phy_cfg {
 
 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_cfg_tbls tbls;
+	/* Additional sequence for HS Series B */
+	const struct qmp_phy_cfg_tbls tbls_hs_b;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -585,6 +587,7 @@ struct qmp_ufs {
 	struct reset_control *ufs_reset;
 
 	struct phy *phy;
+	u32 mode;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -848,6 +851,8 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
 static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
 {
 	qmp_ufs_serdes_init(qmp, &cfg->tbls);
+	if (qmp->mode == PHY_MODE_UFS_HS_B)
+		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
 	qmp_ufs_lanes_init(qmp, &cfg->tbls);
 	qmp_ufs_pcs_init(qmp, &cfg->tbls);
 }
@@ -1018,9 +1023,19 @@ static int qmp_ufs_disable(struct phy *phy)
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
