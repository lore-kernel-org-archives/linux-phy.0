Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A5CC6FA86
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr92WtspK4DvxF0kAZ7f89+WoOF01Gb7D8J4la2/QTo=; b=sczO1788oKQkfi
	RCrTpvSp7npicHfCDcFrPn/RWx9I7WPDXeWj2TxLbT1qgpEgZjtCmpQj0ITBL1LhYZrYvgrLoOPby
	bBZB+VZ2XwT/sJcExx+MWoZsQaBREcYuDogaQUcvyywJlzWKRsPdC6dXakts+yqW4j22V5ovyu3MQ
	4O8FNulQbhgahbFNuJwWkp3Povf0iOt2C7BeXtwwNydGs4B9d4S9XlyERb8O+jk/lGXGGOYtxQpl/
	2BptiCMtqohky+dnZ8mGCZ7ah5G2cKhtrPLNlQIEeK3LRFqybxvhqowYDYYqVLDGDkNpKAbLBg9ah
	Jvf7yatCcwR5Q7RJQmfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5z-00Exbj-L0; Fri, 09 Sep 2022 09:14:43 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5w-00ExXA-Fp
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:42 +0000
Received: by mail-lf1-x136.google.com with SMTP id f9so911854lfr.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yo3fzEL2MH9/Z5sCPMvSryXTswiCiE4zCueiwPbmMJw=;
        b=I09q540wNgASCcfzkVQFssE8sMbveIIhcA6Z09GplrHWUYsk8KFZbvf43Zird/1nn2
         zNSKcIXJwooz5QySJVxaAH9LJuCgA+il9evcpFbs4IydwQAgjKAbjt4sRdWA6hZ+Rm3U
         dTkNUUBAypaE1sovauis+U2JEbyKS9BRsp3qc+nLNqpPqMWtwlKZwX9OYhIzK9qAatCM
         ESrGoRMHVsJ6o78GhTHdh1+EAo0sYG3FyrQ6uMtU1g+mozXzySNZSlIUGeKVgC8sohTt
         tIcu9lqyAoXZLKdcVe6cujzu5u7Xuym/XtKohvMSknSDAtjfKSmvsPDYEutGx57AX7AO
         fOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yo3fzEL2MH9/Z5sCPMvSryXTswiCiE4zCueiwPbmMJw=;
        b=G14GlRomEexWwYxlXr0glrfwRDi835qB/OIPpEYImQFblvrppix9KEY+j8VEtVWYPV
         wDUO1cb32rjVT3g7qHbP++FVcWI68H9OG+0iMb3UQb1wkXx3s44XEGpbIDbfYYLGw8Jh
         og/c2Tv8mkyJpNhpAxnAHpcmnVtLkqJzvAklO8EFtJevUgcaxffPNM3gB6nbN2SQfYFC
         6E6hzwnioU+g2Sp9DuqWs8QQSn9fWwJXnpJID5laRjJmVttWrtoY/YRw8vect0LBZGAv
         unX7DVvsU6eg5gcFG0lyoOz4V0NEVJuGsz/RXGD1jXcbfgbxmlBjNfGByxNxpNWjRwp1
         vKDw==
X-Gm-Message-State: ACgBeo2hLiQfIiep9Y6WrQHXX5md71QjiTIW5nZI8gF6fme1px9RuF2R
	wQzWl0r6aJKxBQrHpsJ1hQtSag==
X-Google-Smtp-Source: AA6agR7zjwZxZLgPdwIfmRIGIY6qewPODEd+YdPLR/bq/XdiO2fld+WmNT11SsXRIBXgOfiXe4ZTjw==
X-Received: by 2002:a05:6512:b11:b0:492:edb9:9d74 with SMTP id w17-20020a0565120b1100b00492edb99d74mr4000341lfu.663.1662714876660;
        Fri, 09 Sep 2022 02:14:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
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
Subject: [PATCH v3 2/9] phy: qcom-qmp-pcie: drop if (table) conditions
Date: Fri,  9 Sep 2022 12:14:26 +0300
Message-Id: <20220909091433.3715981-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021440_554575_E6748D7E 
X-CRM114-Status: UNSURE (   9.08  )
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
index 3ddbb8e89f04..536a6ac835c1 100644
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
