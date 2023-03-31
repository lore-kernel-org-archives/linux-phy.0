Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B16C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 15:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYhlgBlV4bl/duUlsxviyYdTUEqwgFl+dnU2HHu5KRM=; b=uQobtJ4iwZMWwW
	E1l4FBngma5RR9KkfMx9xKa58fJxc/YjBgL/92+EIhwYcndANW9NU5KyLkSkIGgvNN2mZancI3ioO
	U4GkOqn1eGtWbrbRV0t6Zzzj1OQ0d3nsyXnu5A9kmMVGXFvDQuo0Q7KcOFpZxjGeaq/U3YSb4XGdo
	4lwOvcwNa6RbGehP9Y6Z1O2zoKLa/iAyDSqgDRSb9i/iiaIJ0hWfJ+Cp5O4nOHFcZOyihUQZyhWEe
	YlWIrK/IuYnuK/GSdAtr0I3WPgpllfelLenLZKcfiLjhxBvc//HarB6vTgsk/Rx/wI6fL8JE+XXOn
	AXdrkXRd4FchyD3wZB1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piGR2-007s51-0i;
	Fri, 31 Mar 2023 15:13:00 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piGQw-007s1Z-0v
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 15:12:56 +0000
Received: by mail-lj1-x229.google.com with SMTP id t14so23410537ljd.5
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 08:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680275572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/XAz5u4W7EF3PznGOG4CKpssJVKtnSZng4vT2/ozGA=;
        b=hHr8JtfB99Morqcmu5qj1P0BeG1OIBh94IbA6t6kXmMFkIsH2V6OhN/Svm9k3NrhoX
         sV7szFzUsSUt5IsxCEPTFoTxnrQeYg5Pc5YyIkRkJCaDlNhnfy8zxi3WF9r1XGQdzGhu
         +w3SvAdpmO9g8oRvbiFHPpbX930VT6Z+joddNcQmVoxpniOOjCp3Fn0/vA2S0+kLJvi9
         0S5e/Xe1f2QP+eigyEe4vlfTnj0xw0A0kYw6RgMrP+av3RZGvJ421oHQDAOPBTr4qc22
         snOC2uEy0t6JM1iAihzSCzi00BsFm3rVdQNR9qD2JErIj/c+/2HHASMoyUUAHwTio6SF
         c24w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680275572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w/XAz5u4W7EF3PznGOG4CKpssJVKtnSZng4vT2/ozGA=;
        b=DF/6eDBhmoVUsBD7XNnu9yJq3nBUbu7blAmF9FyNgs5lN6k2Bb6TetmGRYuFJ7A+3U
         EXNIyMvBFWGHybWISs5ti1JjI0lbvw+af32r3O+jvd7zetCpZejHRDqaSr1+mKb79/E6
         FG6SUbmCz+Ucj4C6QROK4Nq/wqNjnutpdZq29g75zJdJmyfLLp+bfrhv9EFSXfpicWJb
         SC04deDg7ql5V8llX0xdHnPsAw23Vd7hAAO/wQa94g2KKYe9Lv8c4WKi6w1BxvMA5Ti4
         tWBzsSqvy/lz6PLBfUjJW0yIodjdojli3l0Ubk31Ix9k4+3Ggtw0Rr8XBvyCZuWVLRsx
         HrwA==
X-Gm-Message-State: AAQBX9eYJmEdoDG2oBmw1xkM8MQ2TI5QsM6OYvply2hQmp1R6h160r1z
	B6c8PPgb5b33jOGnlXBRGE4aZg==
X-Google-Smtp-Source: AKy350aikhYuCpaVA47lPInLKEbaA8Ifr7Ed7rw8aSpLWpeZKI0vEV3Hp67lKcoeXSpgZEjs9h7BtQ==
X-Received: by 2002:a2e:a40e:0:b0:2a6:22fd:6b08 with SMTP id p14-20020a2ea40e000000b002a622fd6b08mr678220ljn.3.1680275571946;
        Fri, 31 Mar 2023 08:12:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a8-20020a2e9808000000b002934b5d6a61sm395709ljj.121.2023.03.31.08.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 08:12:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND v2 2/2] phy: qcom-qmp-pcie: drop sdm845_qhp_pcie_rx_tbl
Date: Fri, 31 Mar 2023 18:12:50 +0300
Message-Id: <20230331151250.4049-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
References: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_081254_327807_19C44264 
X-CRM114-Status: UNSURE (   7.58  )
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

The SDM845 QHP PHY doesn't have designated RX region. Corresponding RX
table is empty, so we can drop it completely.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f378c1ebefd7..df505279edfd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -725,9 +725,6 @@ static const struct qmp_phy_init_tbl sdm845_qhp_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_L0_RSM_START, 0x01),
 };
 
-static const struct qmp_phy_init_tbl sdm845_qhp_pcie_rx_tbl[] = {
-};
-
 static const struct qmp_phy_init_tbl sdm845_qhp_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_PHY_POWER_STATE_CONFIG, 0x3f),
 	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_PHY_PCS_TX_RX_CONFIG, 0x50),
@@ -2212,8 +2209,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
 		.tx		= sdm845_qhp_pcie_tx_tbl,
 		.tx_num		= ARRAY_SIZE(sdm845_qhp_pcie_tx_tbl),
-		.rx		= sdm845_qhp_pcie_rx_tbl,
-		.rx_num		= ARRAY_SIZE(sdm845_qhp_pcie_rx_tbl),
 		.pcs		= sdm845_qhp_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
 	},
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
