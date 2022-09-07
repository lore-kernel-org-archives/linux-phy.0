Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DFFAC6FA8B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95nD9geURg4YPAKSs8i+mUw4iBaUPHNQ0cDVYGFrQWg=; b=dQaOigZlT6brJq
	n74ErEN77LJMIgSXXu7CXRhm3PntgCC5YJ2WjNbQVHOlZlMFMr7u3J3YsWwfEM7MVUJ3P3x03Qmh4
	U5sqta33bZCAUDBqzG9Ll4gZJD6YPA5NI2viTqlH/4V0QTA+45JWm6ssUUtaffhLmN+qhXY1KeZu4
	6ecjBPZYzPMBzasC3wSZrvkVdwTSQGEHm8Ip0YQ+XcOEIr5YIGW/DFrTKKWYT98JyV6Vkpv4astD2
	AGEv20nkP5xdvgyV2uj8e3/YofiEPL2guCKbCRfCxhfODZKRFzrlsgLODjkzZP8IS7BXaewWbtCKe
	4umhJXuYKQvaW5N9xv0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsud-005XJV-Ln; Wed, 07 Sep 2022 11:08:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuN-005X4z-0p
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F31B361879;
	Wed,  7 Sep 2022 11:07:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B129C43145;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=ymfYTg0RXAypX0hrPmht7eiOD+LusHcAybYa8Vl9Jg4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kygaKH7T5EwLCKzO5LLFQLydod0Cit/ATFHZ7c7J7nU2CUOirVfYVgS5v2J/od0D0
	 WFrFNOwI0Ac5keriqvM0CHjKfSNTKbW8ItBj/tyKBdq29iTyoGgx2MYzK39DsSEpzj
	 +3Ef59c9UQeoZZAP1xsXth/Zu4E8cDhHdg0mW7kwlGtLWxWPUcuOrjcSQAkP9uTqVw
	 OPJnWDfphCcEUv2AeekzB8cAm2m6SVr0B/z1d90gQQfrNaBohXO4o1vyITJTPxyQKl
	 ZQ0bsXn9hmNoO3OVeySs/MNy+zwgm+YffBUe6NGmhLhwyWZrvB8BcnD3iGy68KGurE
	 vQSuOxmmZdJ7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004zF-Ug; Wed, 07 Sep 2022 13:07:52 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 10/16] phy: qcom-qmp-usb: drop unused defines
Date: Wed,  7 Sep 2022 13:07:22 +0200
Message-Id: <20220907110728.19092-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040751_159176_C4CE3BDA 
X-CRM114-Status: GOOD (  12.24  )
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

Drop defines and enums that are unused since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b63183aaacb8..c50ebe8d19bc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -28,16 +28,11 @@
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */
 #define SW_PWRDN				BIT(0)
-#define REFCLK_DRV_DSBL				BIT(1)
 /* QPHY_START_CONTROL bits */
 #define SERDES_START				BIT(0)
 #define PCS_START				BIT(1)
-#define PLL_READY_GATE_EN			BIT(3)
 /* QPHY_PCS_STATUS bit */
 #define PHYSTATUS				BIT(6)
-#define PHYSTATUS_4_20				BIT(7)
-/* QPHY_PCS_READY_STATUS & QPHY_COM_PCS_READY_STATUS bit */
-#define PCS_READY				BIT(0)
 
 /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
 /* DP PHY soft reset */
@@ -71,8 +66,6 @@
 #define POWER_DOWN_DELAY_US_MIN			10
 #define POWER_DOWN_DELAY_US_MAX			11
 
-#define MAX_PROP_NAME				32
-
 /* Define the assumed distance between lanes for underspecified device trees. */
 #define QMP_PHY_LEGACY_LANE_STRIDE		0x400
 
@@ -115,15 +108,9 @@ struct qmp_phy_init_tbl {
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
-	/* Common block control registers */
-	QPHY_COM_SW_RESET,
-	QPHY_COM_POWER_DOWN_CONTROL,
-	QPHY_COM_START_CONTROL,
-	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
-	QPHY_PCS_READY_STATUS,
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
