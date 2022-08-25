Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E621C48BE4
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQpj8+CWw8KeHAxQCCEDDtap+4kVjpMxWennuXyLUjQ=; b=4V1E1o8Q1WHN3C
	fAkCGgMbOpZfjz+wm9FjzazpZHvDKmidU68BuLn4KjMhxZatVvqsaztl9bb6ZeEDirgsgQpMQ7v3U
	nLQ9OeV9b8FPxKv7Kvbq2OF1bfqzVFK5jHN2gFcFDHlGS0cJaYiQ3VW93ZiDNe4OzTwBgp2icXbAc
	AkpOOEUn8gjaMhXzAHzxctycsyA9vwVqSS0nEx+RNkeJUY5+au9e8uxLcB6aOE6YHRHio9X1pgNAT
	8H+Ep9BNeofCmSm1GsPDItoTIYlS1jlq0pBsJWeLCyzY05DNWXtSEkcA+9G7AUO6wKvBFFdlZYQww
	lRhJGUEUgNy2FCvEPfUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARo-00C450-KU; Thu, 25 Aug 2022 10:50:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARl-00C43B-Ft
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 10:50:50 +0000
Received: by mail-lf1-x12c.google.com with SMTP id q7so23994472lfu.5
        for <linux-phy@lists.infradead.org>; Thu, 25 Aug 2022 03:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=+tlaOVQg+3piNlGJMYKBMRzblnUx75It//2apLVPW8A=;
        b=uz0Cj6v/dHD3yZX7z5Vy1Vl8Kpsgx4qmfq2lzB5nSS6oNF7fvmU0uXo6wjBdtXr0Yy
         mqqtJeOGERhtdOz594iA0MfyHQ8hSwU60ZSp77WIXRRCWcQ7rEtaWWL6TCtOxwoTyov/
         hcMp7/9zAhzFU9P/X31MeKGK5HFYe50UsROM087KBnGKpfJHLHgi9by+MxIbrZObP4oO
         m8sOKeVv8qfcqj/KfB5SR3zOb4LAII6+l+RY6sgPWQ7/CH06fiLc5AgGK5/uq6lK4IvQ
         AEtaDSVg0S7vluf+92TllGs398fQD4I7jo448mrO+j9sGhUeSsUTBdn7Pk05Cl0QRXKg
         SFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=+tlaOVQg+3piNlGJMYKBMRzblnUx75It//2apLVPW8A=;
        b=ABqhyvZmax6b+KJErlDkIfvpEoOyfyc2UD45dAP4rAFZ60p03hLIXYwpyQZpaj2j7+
         2u357m6DjOUQnvW3nkLeL+YMjXXe+qQznJx95rwxCD4sNF0dZlnZp1iLTsY1sK7IOuxS
         DyTkwlZ68iqdmuEg+ICtdpePaZh8WqJ5sCCy4iydbgIn0jiz3iTGhNliiKBjpeLwNXiQ
         ++cvQrv8qITSaBBv9Yq+srmz+HjXmstWitCjl1ctIoHr1hFn3PUNaKMaJXd0UAo27n+7
         UOtc7SWPiMBVOzODfWW4ch6Sh0p5kfOHkB3uVcXVc1m+xV5+3kQa5dFuFxM7yl3szKLJ
         gOjQ==
X-Gm-Message-State: ACgBeo0EwMQd/XHmB6nWd9ENAxaJRs2CN0YIa/I5gWTwBgzoWiO2IQu0
	65GvRyvvMF11gTZ2OsXNzZmiYQ==
X-Google-Smtp-Source: AA6agR6Wabloawy6Mhw54B9pbWQ0G+jlluNvISwNPiQ/uPL4k1chNCISuXhFZ+dgLihz/AiYstDDAA==
X-Received: by 2002:a05:6512:3e05:b0:492:e04d:8c8c with SMTP id i5-20020a0565123e0500b00492e04d8c8cmr1093741lfv.638.1661424647150;
        Thu, 25 Aug 2022 03:50:47 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u14-20020ac258ce000000b00492f49037dfsm429609lfo.152.2022.08.25.03.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 03:50:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn@kryo.se>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 1/6] phy: qcom-qmp-pcie: drop if (table) conditions
Date: Thu, 25 Aug 2022 13:50:39 +0300
Message-Id: <20220825105044.636209-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_035049_554379_560E9363 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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

Drop unused if (table) conditions, since the function
qcom_qmp_phy_pcie_configure_lane() has this check anyway.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2d65e1f56bfc..c84846020272 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1930,8 +1930,7 @@ static int qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy)
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
 	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
-	if (cfg->serdes_tbl_sec)
-		qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec,
+	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec,
 				       cfg->serdes_tbl_num_sec);
 
 	return 0;
@@ -2037,44 +2036,38 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	/* Tx, Rx, and PCS configurations */
 	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
 				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	if (cfg->tx_tbl_sec)
-		qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec,
+	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec,
 					    cfg->tx_tbl_num_sec, 1);
 
 	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
 					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
-		if (cfg->tx_tbl_sec)
-			qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
+		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
 						    cfg->tx_tbl_sec,
 						    cfg->tx_tbl_num_sec, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
 				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
-	if (cfg->rx_tbl_sec)
-		qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
+	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
 					    cfg->rx_tbl_sec, cfg->rx_tbl_num_sec, 1);
 
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
 					    cfg->rx_tbl, cfg->rx_tbl_num, 2);
-		if (cfg->rx_tbl_sec)
-			qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
+		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
 						    cfg->rx_tbl_sec,
 						    cfg->rx_tbl_num_sec, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
-	if (cfg->pcs_tbl_sec)
-		qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
+	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
 				       cfg->pcs_tbl_num_sec);
 
 	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
 			       cfg->pcs_misc_tbl_num);
-	if (cfg->pcs_misc_tbl_sec)
-		qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec,
+	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec,
 				       cfg->pcs_misc_tbl_num_sec);
 
 	/*
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
