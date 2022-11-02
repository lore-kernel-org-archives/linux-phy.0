Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C8FC4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=axQORBwV8vYpD8kExDirjG1LfTB2FVyWejwRSXUl7Ns=; b=iVJNL0OOlOEVpm
	RHwcjFjdH5ezhI4N2dxXm60X22PiRV2KpJU3dyv4PJpd8W9d52wdedp36YQRkjEbF5nLSlPJWjfbS
	aY+7TB6iXGFaO7mh/0D/RzCTdmKblld1DbRUKtR72GcuOVOl/MM42uIMidf2zJ404mar+RS5p0H8q
	4yrEMWRuRueFNzNaeim7jvoUJ423U3lHwp2HSCQPrOc4I4Eprxr4Udeg8Ccqfw54vvKsElt++3e2w
	QMXHTCGPwsMAMVqO3/ZPMyi6hng6PBNEmQoZ/IpC1AgVidqrNEJLZgPtXAvMhqcksSkDODyHq6nPv
	67Ui2Go9b0q7R9sRoZ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8xZ-008oxg-2z; Wed, 02 Nov 2022 08:18:53 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8xW-008oqz-BW
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 08:18:51 +0000
Received: by mail-pj1-x102f.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so1405913pjc.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Nov 2022 01:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uz5rAU9ELZXUhQKdgWYW63dEr04gx2RZSGlNehPa+N8=;
        b=lb8jMkTcXaHJTitiyBxQbSrcZWiZz5kx5p6cbMUPZH6oCszvVJInkTYfFqjzN8I2WM
         qqTuRWb1vYrSFD+j2nZfvJ8qQ3JfnBhJPyTDUnfFambe2spQjs0FYhIJkaZtw4nwixFD
         dHKH10Z+JrcObhTp35cJabwQR977rAFw9epn0wWXjt0+TQWuSz5gaQPWCfrGjDF/O/fH
         dnPHvbRvASZlBkr1wyoDRLhRObbntYWt//sg+1o/lqRncs8h8vdLLj/arNyPcTLNIxRN
         buct0YDRX0dB/U33RxXePscMRkSOoBtGfaobjLB1zV1+CEqYaQEkUbpxbSU6DrYJk9un
         bDPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uz5rAU9ELZXUhQKdgWYW63dEr04gx2RZSGlNehPa+N8=;
        b=u+dIDGuGYDwXvyQz+ELr6zqw0yvfMM6M14Wm5EvMLcbH0vy2uYYalwryAkv8q8Sji9
         rP4EWjsz4REN9X6mYIMWvYOt+T41M1i1YxphHycp05aIBwUs90DlxTTZ1TMptJKrrWX6
         lLymVX6yIni2aRiXcJP7r4mSVOolJTOCUVvbnTsEXkXjEW0GCmunILwgNpaX560Fx8Ok
         1h0FfRh8Mpy2g9ehnof38n7sEEWDzzsfN72hcfNXyXC272eIUOYk68Z+rhspYJY5EuMp
         0y92yZoy46gQV1m1Eqcuf3JHynJvTme4wfxiQtoLMLrbd/iaz2tktvIm0OQNDnRNIovT
         +TmQ==
X-Gm-Message-State: ACrzQf0gBAt/tWO9q/jY+dux74UzekdGL1svEaBuRLAtmUVn0CqNnca9
	O7IRLZolVSo1lxDffibLYa43
X-Google-Smtp-Source: AMsMyM7UxrZC+2KKOSCG7ffJJkbSLuBDA+h4rihKC7yQbTlTPUM4lLxutHEw5Yyv3WkQ1DZwOQt3yQ==
X-Received: by 2002:a17:90a:b792:b0:212:ea82:bbb with SMTP id m18-20020a17090ab79200b00212ea820bbbmr12253622pjr.171.1667377126628;
        Wed, 02 Nov 2022 01:18:46 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.178])
        by smtp.gmail.com with ESMTPSA id v18-20020a170902ca9200b00186e8526790sm7635119pld.127.2022.11.02.01.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 01:18:45 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/2] phy: qcom-qmp-pcie: Fix high latency with 4x2 PHY when ASPM is enabled
Date: Wed,  2 Nov 2022 13:48:34 +0530
Message-Id: <20221102081835.41892-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_011850_447341_6F693129 
X-CRM114-Status: GOOD (  11.23  )
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

The PCIe QMP 4x2 RC PHY generates high latency when ASPM is enabled. This
seem to be fixed by clearing the QPHY_V5_20_PCS_PCIE_PRESET_P10_POST
register of the pcs_misc register space.

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2

* Dropped the changes to PCS_PCIE_EQ_CONFIG{2/3} registers and added
a new PCS_PCIE_PRESET_P10_POST register

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f3f75eda01a6..9473f63d2c1c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1305,6 +1305,7 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rc_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_PRESET_P10_POST, 0x00),
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index c9fa90b45475..3d9713d348fe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -11,6 +11,7 @@
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5	0x084
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
+#define QPHY_V5_20_PCS_PCIE_PRESET_P10_POST		0x0e0
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
 #define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
 #define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
