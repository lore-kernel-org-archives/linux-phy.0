Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D8C5C761AF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 00:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=91bpQVEm755CI9qEt+Dl0CaEnGYHohA2BI52eAKb0bM=; b=mvdn2brmEJy94r
	fy1n1mEJWWIlzmKYhdrq4Uy2FhPa2XluhWYoRCbB7qZZJk9v83gI4qUbBXcFe4ncv3chs7IHRXDQy
	s07Ingy0Y8ALtrTn/36/GZ4jH3JJYbG5sScj2zJBWj4TqNm0XxtxrKVe7HEZmmcZEOjuJ9YiJx80b
	xGKrfAvYi+OsfBGSYYG2WpfGQ1s5SEYHGBEsFgfAFYYkpNpaT/sil+x03Ch1TXdMVMVlsKGUHqgzX
	LTeCHfaGK89H/p722ByHHrxgwsAvhaiDZPW1X0eGSa3mNp/7DaHToq1fvD0Wr4/hhaq6rw8F9rjqt
	mmS34rB0s5mFxFDHA1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfV88-003EnQ-0d;
	Fri, 24 Mar 2023 00:18:04 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfV85-003Emp-26
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 00:18:02 +0000
Received: by mail-lf1-x12e.google.com with SMTP id t11so158114lfr.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 17:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679617079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o5tZLMNjAh2M2jpyVusReltMpzTxxZzGAgNQbIiLgTM=;
        b=FFZPxz5nrSq4c6yaE3oxJJUJsy8sQVI+WVJUq04IdYqGEXvP+Rn2O9m8tYPcOML8nd
         0wxxkJK2HVVGUj3kYimU1Xb61uBqQHWNdw/8fqMG19Eza6gL27NEe99LcZ2t8ZeUUcMK
         EgundMMpkoj4vJEkdoStfqAaTcyjeejFb1oevIaTcAlWmL/TWC7pEcLJnUbHjvLS1sfe
         PRm0Z79q8Prb6zYjACojlNV2kOCOMxt6X0ftG5PIZdXZYxPYdFchlbau2dD7JxonnOGk
         Dcfo8GZiwZvjB+e00Xz4V82ouLNhqID8R708SiS601u9yMmmyNY56K2b0bW8HYw0v+F5
         3PVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679617079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5tZLMNjAh2M2jpyVusReltMpzTxxZzGAgNQbIiLgTM=;
        b=8HuNEnfS7hAKgdYqs8evO6OgGeXb+OVem+UudHpA8qeSJpgkMuQb3L68Qj+VdkW7Y7
         +yW8j/L6kQ5NU4TZ963J6At0HBa+ITb6OA3Rm91iDiW74Hew7K2+150x3f9rR99zMeOr
         643qH70Z8RbMmfSjUgY+/DPdeDYrUtkJvKdMsRtPSGHHD4AsLzFhhl6AIKy96WgE49xN
         z/MUBnLLvgXTpL0xNF08H2m8xjuH/qmc+c0j/hV2hMvYPFIwsJ/BgCYFE9EkjqKeYC0m
         ND03UGgsDd6n/aAT0XrDxAVSvaPJ9ZbpsKspOHEapRqGbxRQWy/FlB4k34IYpK6KvoS7
         Z+QQ==
X-Gm-Message-State: AAQBX9eZmwqK3I8bPHdgLb9GF0PFZexACjM+l24KtXMFNggn9+b4Ayf9
	kSWkDfENmoKr9rF0LQOMxcmn3Q==
X-Google-Smtp-Source: AKy350YQ8y0gnCHLyne/IGVn1UwNuRGJfuLNzshH+91SiARkQWHfJqp5Hfu1EixYG6IkUB75e6fOVw==
X-Received: by 2002:ac2:548b:0:b0:4dd:af71:a5c3 with SMTP id t11-20020ac2548b000000b004ddaf71a5c3mr124106lfk.58.1679617074214;
        Thu, 23 Mar 2023 17:17:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i17-20020ac25231000000b004eafa77e435sm569147lfl.146.2023.03.23.17.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 17:17:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/2] phy: qcom-qmp-pcie: drop sdm845_qhp_pcie_rx_tbl
Date: Fri, 24 Mar 2023 03:17:51 +0300
Message-Id: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_171801_739834_12FAFC8B 
X-CRM114-Status: UNSURE (   6.96  )
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

Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d671748bc097..d580f3d3e221 100644
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
@@ -2079,8 +2076,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
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
