Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 777FFC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woy9CJTgW/eakyUvrGcjmKdBvEZQhl1ibJwvzlnp61s=; b=itdutOTdqEctdY
	R7IovJd1n0ZQK1xYHCKQwwHZ0yEh5An5L6hDKuqPB6bcXBf5/SeJetWrj+OhcLRYs6X07CqcxMEFp
	YSUhV6bp1SFkwNZVvDSO31Q+p2Zvi9HjN2bjlyMCwX3Uy5BvYwGNqsQrh8oFY/Gpnk5z4cBvz+BNg
	bbaOl30H4+yY7veQ7Ii3D9uuyCT6iZnG+svqJofUn51gEDxMp/wtuA3VylcH8DgHX60OjWGc+stz3
	WKVv0C6zdRiSWQJ1bdurQphlvKxGueyv/NtLZYAy9cg0TuiD9vbK1VRb4NOMZUpwx+Y5v9JG13Sly
	2clwDuw6AMCflc/OP//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED2-008sU0-Qz; Fri, 30 Sep 2022 11:29:36 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECz-008sPO-3I
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:34 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bu25so6428317lfb.3
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=er+Zi88jgLoyNNSO1jcMV3tpr4YOGZUNMhh5NotGMDc=;
        b=awktRX9xRITgnABx60mzx07mn+4s87U7AivmL4L7y+qDaRdpxyaR+NnFPgm0g7H6BM
         iBN4UuXPxlCEVN0k6ZU1cbtsRoLa3LFODWDCa4iC/tJoeY5RF/pJOMaog59ZLIeCk8SS
         k67Z6PkA3VgwRLay9pSIc+DuTbiDqSiPIAhYFPEr6b9kQ0fb2paW2XOaApqn8qVFDhve
         xxporFYOuSe2rWXasqxa5uQroXpni9zFWFHmg8ozATcVIBcZn7Qy8FbNNjxoUjNo4JXA
         kosZUHPP/efOv5ao+gXYyCOjPvj6h0yD5tKFaFXleu2kn4+v8Tzb+t7jYT/hM2LRNVt0
         wfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=er+Zi88jgLoyNNSO1jcMV3tpr4YOGZUNMhh5NotGMDc=;
        b=8FOFpySm1kLWmZlmWa7UTGgEcvQl9GuU0is5uuBV48BFObAw+Okubvyclc6YPfNlrV
         fEo1lHfPzw2iu/5vxuCvBizXFpl8ELT8QIF8qpDnd7z9oegfc68i2CWGFL3vzuBu4zsD
         MxRBbrHnCVwwOucFBrvjluLz9Rt4/OFsqDzchhtJoAdj1ULyUIMIO1WBc/MCnutqjBUy
         nY6b8LAeMtdItHG5TMCAcZVfPUurQav8PHggIzOB3fxnLWew1SZDUT0nNMeiEDTZyJwp
         9mlcv1QioxsezxI0o2gFicDdzs3jtG1g6TKYKNYsh2WAk9GC2SB5/0rOAGKRIXQ2fW7X
         Lcnw==
X-Gm-Message-State: ACrzQf1jCdlAACsYvNqTYbiiYzdK7C3h0q42sJhdAwk2iU9A1InQQOqh
	93yDvA+W10IJCr+u0S/qPMJsvA==
X-Google-Smtp-Source: AMsMyM5QQUwLyxpCdsyV5GfeHyrAuidDgro2QZiFcsr6dFI+abw86x3T4O18fvq3it+krRTTzOzFaA==
X-Received: by 2002:a05:6512:3d28:b0:49f:4b31:909b with SMTP id d40-20020a0565123d2800b0049f4b31909bmr3035176lfv.669.1664537370225;
        Fri, 30 Sep 2022 04:29:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 03/12] phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
Date: Fri, 30 Sep 2022 14:29:17 +0300
Message-Id: <20220930112926.638543-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042933_171374_4C29ED3D 
X-CRM114-Status: GOOD (  10.71  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 5fdd85a1dc3e..665014955a18 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -100,9 +100,9 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
