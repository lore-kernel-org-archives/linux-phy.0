Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D320C54EE9
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PksCpgU+WYLDyQOG1z5j+TBR1jh6HLt8IHRXENUf0Fs=; b=dAKWkdxXHE74H/
	K3ETgrRy+mDLhP6AzmEZRUFGyrJDUjTXmdMi9pE36YouSD5PvAYlyRcn2IglAiPGq7Dhp5PP+ijxZ
	qPFQBpeLCV7C6pn2k+UA+ioo1AR8apNo+ovPYWZvoVe45e3J7blcAuPqXGy20j9VRyZoCojffCF9P
	IEUgqEHbjFCP0KCa7ghkYdLW9BF9LOG7CFNexdU1RVbjR2ONp0CxDq5CmYynQpsyRIZVQsoaAaJ7w
	fQp6jthZ26AB41i8yeoR8WTE1b1H4fUtJUkUSrvSt+7e0liXFGt3M42LzVjXZ9ta5SEyryuH91AZj
	iu5LOLlONd3ylNiRwTBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsue-005XKL-5U; Wed, 07 Sep 2022 11:08:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuO-005X79-Rh
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5D8EC6189B;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B7CBC4314E;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=0amttqEto7nuzemuoVK0sV/cR99Pk94dN9n5WbK/ABM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Htso2rnh9LSMUo2OOizi7Do8bL3ruQKkiAPFa0M9pTROq3U9krxTqBQ2Iz842uf5U
	 0Du3t8mloocVH+2eoN3t6xPWtGL5GXVsyym8hY6BEE3+3XmDHS8JbNyzQ1ualcFEqs
	 ZUA9TxkyOgFAr6kLjUCt+7kdKwznt1nRuMzNRYtcBZG8GzkxqTm2A1TUNl/bJ6/v96
	 NJvl2UjumQj9XDtjW7LMMqLGI/zzPcueNsfGmMQ+zqsAx9A+0BxTn6LQQ0qFLA2yN+
	 XqE5MlC5k+XXY4pog+Q6dLn4tHEwVRxVFS6nuay7KH0Er7TIK5t/iFA8WG7BmSKHei
	 uj8sC+gm/MepQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004yw-CS; Wed, 07 Sep 2022 13:07:52 +0200
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
Subject: [PATCH 04/16] phy: qcom-qmp-pcie: drop unused defines
Date: Wed,  7 Sep 2022 13:07:16 +0200
Message-Id: <20220907110728.19092-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040753_049790_3519C98E 
X-CRM114-Status: UNSURE (   9.93  )
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

Drop defines and enums that are unused since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 860620972d8a..c5d8eedab4ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -32,32 +32,11 @@
 /* QPHY_START_CONTROL bits */
 #define SERDES_START				BIT(0)
 #define PCS_START				BIT(1)
-#define PLL_READY_GATE_EN			BIT(3)
 /* QPHY_PCS_STATUS bit */
 #define PHYSTATUS				BIT(6)
 #define PHYSTATUS_4_20				BIT(7)
-/* QPHY_PCS_READY_STATUS & QPHY_COM_PCS_READY_STATUS bit */
-#define PCS_READY				BIT(0)
-
-/* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
-/* DP PHY soft reset */
-#define SW_DPPHY_RESET				BIT(0)
-/* mux to select DP PHY reset control, 0:HW control, 1: software reset */
-#define SW_DPPHY_RESET_MUX			BIT(1)
-/* USB3 PHY soft reset */
-#define SW_USB3PHY_RESET			BIT(2)
-/* mux to select USB3 PHY reset control, 0:HW control, 1: software reset */
-#define SW_USB3PHY_RESET_MUX			BIT(3)
-
-/* QPHY_V3_DP_COM_PHY_MODE_CTRL register bits */
-#define USB3_MODE				BIT(0) /* enables USB3 mode */
-#define DP_MODE					BIT(1) /* enables DP mode */
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
-#define POWER_DOWN_DELAY_US_MIN			10
-#define POWER_DOWN_DELAY_US_MAX			11
-
-#define MAX_PROP_NAME				32
 
 /* Define the assumed distance between lanes for underspecified device trees. */
 #define QMP_PHY_LEGACY_LANE_STRIDE		0x400
@@ -109,11 +88,8 @@ enum qphy_reg_layout {
 	/* PCS registers */
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
-	QPHY_PCS_READY_STATUS,
 	QPHY_PCS_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	/* PCS_MISC registers */
-	QPHY_PCS_MISC_TYPEC_CTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
