Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02331C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 21:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OAOKquXI/mFYe8ZrBiV87PAIh3AYDtVWoTzBJV3PIQQ=; b=u1/gAEGsVwJLsZ
	rAvRa1kU625eg6md2syy5wXk2vb/wGK2rn0+ndRYhEGG+eGxeE5m/p7l851UToVaF38bu+qY9qv0C
	XrL5cvd4yEjavm46CkLz48hPOEouaOBu0ufTXEGBH0N7yu/eXfnzW3fZxeKhKcBTvoOKF5M8gZxsQ
	3/V0J4gTD/1szCYlKstxM/dOYjE8qulUy58hiAwC6QXUuOCKd6uPTKRRAGC6k3w/cAnNMZNmK502q
	8VfFvLIT9t0okM7K9YihYROnQpQHs663/NQjmG0JveOSSwMvjo8uYcSTpXKnSwJNHVXnYBegaF6Z4
	RIMEsNF5RuPksSODzEAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqhek-001jra-EX; Thu, 03 Nov 2022 21:21:46 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqheh-001jqM-OQ
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 21:21:45 +0000
Received: by mail-wr1-x430.google.com with SMTP id o4so4584067wrq.6
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 14:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VIcm/SirnZMuA7oz66y5Oz4Q+8fuoc4tcWENPsKxvJU=;
        b=km90eVlRFFREd/Ht0TdeBdyFn7QERBsyBxvACAsXnW5BgsIndfPfk3IugX6Q2o8J9C
         ZS9QtORTcfsH6lV9aelKa9N8/6FaXuSrk+8AcGaysY2QGp8NC05x1nO6g+uNy1yLFAtL
         SzuzNw4wAaoCAZKFt7hpeY9tyH2H4BMnrYjLOZArOMJvGUu6sYt/ZgPIbY9c37UyCcPW
         ZlXllmPdx/FnnavTKRHzK19ib2uupuzalotJyCuybb9lO4w0AyNmbB7Elw3VmUsy0Yfy
         y1PNHGzZchJ5WM2d23hNDbk2mcv5TiFzbdYaHI0zXueNJJMprlVCJHKsDeyaQnBsnUNG
         IgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VIcm/SirnZMuA7oz66y5Oz4Q+8fuoc4tcWENPsKxvJU=;
        b=IfiNHejRfKvWJLPDtNMLwsTJK0wMM69/yFD0UMPCN198QSa76KTzpTifQqYItTejPo
         /RMlDJKCM1g/2SmOfDweLUzpStGyTl1Dng6xNnFCr7eI/XQ8R72V/qrldnKjs+eZzUle
         5rt36zHk73U2TEUttN4slThnBQb+OND4Jg16LSjA1KvKCZuCH+j3qI/juFQ7jajAqdFo
         HSP6n0sCDmjZ+heAG47qEYXQBVHF7V3aARMiMULllsskfAH9FXFoLApOvzpXXiDHZXr2
         wN96HAHpojO6Rv7tdAltx2xJvhyatnjqRqSBjbM0kdoM3M3Zbe8VlbQdvkOxiF73PF2z
         xpdw==
X-Gm-Message-State: ACrzQf2RBDV2nfXmp6tkFQ8CGkl1y1uVBmHtFpZToB543yUcynE3AUWc
	jVHOqPljG3dby19LcW84UWs=
X-Google-Smtp-Source: AMsMyM4Tc7NHZWTmPrJLUG4XIhrT0h6TeynUXjG6j3uBaakeeybFCdXAj7cn1BoDQg0XLzlwqOVi+w==
X-Received: by 2002:a5d:4887:0:b0:226:ed34:7bbd with SMTP id g7-20020a5d4887000000b00226ed347bbdmr19529597wrq.561.1667510501178;
        Thu, 03 Nov 2022 14:21:41 -0700 (PDT)
Received: from localhost.localdomain (93-42-71-18.ip85.fastwebnet.it. [93.42.71.18])
        by smtp.googlemail.com with ESMTPSA id m29-20020a05600c3b1d00b003b47b913901sm6968320wms.1.2022.11.03.14.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 14:21:40 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Christian Marangi <ansuelsmth@gmail.com>,
	Robert Marko <robimarko@gmail.com>
Subject: [PATCH 1/2] phy: qcom-qmp-pcie: split pcs_misc init cfg for ipq8074 pcs table
Date: Thu,  3 Nov 2022 22:21:24 +0100
Message-Id: <20221103212125.17156-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_142143_811451_E0F5BFBB 
X-CRM114-Status: GOOD (  10.85  )
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

Commit af6643242d3a ("phy: qcom-qmp-pcie: split pcs_misc region for ipq6018
pcie gen3") reworked the pcs regs values and removed the 0x400 offset
for each pcs_misc regs.

This change caused the malfunction of ipq8074 downstream since it still
has the legacy pcs table where pcs_misc are not placed on a different
table and instead put together assuming the offset of 0x400 for the
related pcs_misc regs.

Split pcs_misc init cfg from the ipq8074 pcs init table to be handled
correctly to prepare for actual support for gen3 pcie for ipq8074.

Fixes: af6643242d3a ("phy: qcom-qmp-pcie: split pcs_misc region for ipq6018 pcie gen3")
Reported-by: Robert Marko <robimarko@gmail.com>
Tested-by: Robert Marko <robimarko@gmail.com>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7c81667dd968..d699fb4f7436 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -485,6 +485,13 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNTRL1, 0x01),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_P2U3_WAKEUP_DLY_TIME_AUXCLK_H, 0x0),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x1),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_G12S1_TXDEEMPH_M3P5DB, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_DCC_CAL_CONFIG, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x0d),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_ACTIONS, 0x0),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
@@ -497,11 +504,7 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG2, 0x50),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG4, 0x1a),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x6),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_G12S1_TXDEEMPH_M3P5DB, 0x10),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_DCC_CAL_CONFIG, 0x01),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x0d),
 };
 
 static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
@@ -1506,6 +1509,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 		.rx_num		= ARRAY_SIZE(ipq8074_pcie_gen3_rx_tbl),
 		.pcs		= ipq8074_pcie_gen3_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_tbl),
+		.pcs_misc	= ipq8074_pcie_gen3_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_misc_tbl),
 	},
 	.clk_list		= ipq8074_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
