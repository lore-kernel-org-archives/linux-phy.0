Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B342BECAAD5
	for <linux-phy@archiver.kernel.org>; Sat, 10 Sep 2022 06:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7QPHGVl5qCQBjhaX2Gx5U21SSejlIzVtP/znZB7R5QU=; b=0YhO4LvJXdhKfF
	QFYVoOpodY9x2zJ9eCM/ZRQxreSwnxko60sgI9Y8Jc33JE0aDGCSmBbBIRqYRMTIfgNri9tDBofF3
	welpt7Dd6D9xJlHcKzS2gY4AvIrQFbt2QXpPilZMTCtiJmrL1SapGMxixdzhEOM3FJMXRp84QT8HQ
	RU46s6KL+rUB5dhu3A/lIQTEaotJvKRqwPTDxUxYvo8QipA9pav7Mg7inKVVlXnaIrTdexWeFzDbC
	rVr0V67+rpwe5AD/A+rSox7n+mQdcdj5LVnYvW71i+exGIUVgvj1zH1B2udvjZOHeNcGWfjFIyrjf
	zoj43uiljQvJhmEvBT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWu95-006lwA-WE; Sat, 10 Sep 2022 06:39:16 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWu92-006lus-QP
	for linux-phy@lists.infradead.org; Sat, 10 Sep 2022 06:39:14 +0000
Received: by mail-wr1-x430.google.com with SMTP id k9so6664546wri.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 23:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=K+R864MMNrO2cPNjMkmAS7jKfMoXiY8NdWAl+fB+eGQ=;
        b=Ta3M7TMOo18hZLLz/HdVlxCgCxesGB8wcCY8DDlufzHFedqX/LO2nYzWP5u3dSndfm
         HAouPQ+uhreEbDJ+WuRgjLGibnDOye6fDRdrESgZj5UpQyiFd/eG1Y6vNwSb1Si31F5O
         YOJSXAly6uf9L9RdWBaFJM0ilJQPbMllyDJ7Ocq2s3KW0pic/qqudNO6HYb9i2GPaEVa
         tU6/aXPukfVPHjJjYsPWDWRkIttshBgw8kCfVUactwXUco0AaTRqfhEzE8KIDgzsrKlI
         P/RVQNNW3Czzi0Y2t8dBgSUp+0mZJaBsTZ98lnIIrDBjRUnE2MCd48AblL1MXQRlA8AI
         PKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=K+R864MMNrO2cPNjMkmAS7jKfMoXiY8NdWAl+fB+eGQ=;
        b=IkZCMYABQ7mp/Im1QmO1aryORCMclELsOMAD3M7UX8vbi2SBmvXFaeLvyu2Rz++Nfs
         De0U4tQv7LpOEHdH7cK7mCH80aMkRCfzuiqAWE3ZgWZI9uGkEWI8AEkSH3S732WTVdTt
         bhpZlE6I7dCRTBxIE0lJ0t3c3ZTAzTztBRJszB5vEYp3bhpegpmjTXzwyqN1RjtF5cpj
         MnbSMrBlhnu0xGm9b2eVQA847vNj9cnmW99JSEGUkk9mZbmR1Gq1BOQr0YyZGx9Qr/tY
         UWjia1acBAu7zKcw35kjukgLzdfwOzfZyk9YkqHH+SBdkNdYyNHjAs+9wQmTzX9zGBo3
         WIIA==
X-Gm-Message-State: ACgBeo09wBLwzcM5A9OFzdBc38WRYCNY9utQlc0fxvwZqjSxjWEUwxL9
	5rUxguHWtD14X8891Ka3D6kw
X-Google-Smtp-Source: AA6agR6QAj/SfJNU9CxBdKX4kBZXqHVDvjDJBdHU1uD66ll37WGHTQO4n1qpphh1QfGPqgefg9npmQ==
X-Received: by 2002:adf:e4ca:0:b0:228:d8b7:48a7 with SMTP id v10-20020adfe4ca000000b00228d8b748a7mr9426556wrm.300.1662791949868;
        Fri, 09 Sep 2022 23:39:09 -0700 (PDT)
Received: from localhost.localdomain ([117.217.182.47])
        by smtp.gmail.com with ESMTPSA id c17-20020a05600c4a1100b003a61306d79dsm2825371wmp.41.2022.09.09.23.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 23:39:09 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org,
	andersson@kernel.org
Cc: kishon@ti.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] phy: qcom-qmp-pcie: Fix the SM8450 PCS registers
Date: Sat, 10 Sep 2022 12:08:57 +0530
Message-Id: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_233912_883635_11A782CA 
X-CRM114-Status: GOOD (  10.48  )
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

In the PCS region, registers QPHY_V5_PCS_EQ_CONFIG4 and
QPHY_V5_PCS_EQ_CONFIG5 should be used instead of QPHY_V5_PCS_EQ_CONFIG2
and QPHY_V5_PCS_EQ_CONFIG3.

This causes high latency when ASPM is enabled, so fix it!

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 4 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4648467d5cac..b508903d77d0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1332,8 +1332,8 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG2, 0x16),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG3, 0x22),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG4, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG5, 0x22),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_G3S2_PRE_GAIN, 0x2e),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x99),
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
index 61a44519f969..cca6455ec98c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
@@ -11,7 +11,7 @@
 #define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
 #define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
-#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
-#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4
+#define QPHY_V5_PCS_EQ_CONFIG4				0x2e0
+#define QPHY_V5_PCS_EQ_CONFIG5				0x2e4
 
 #endif
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
