Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33785606A32C
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0M3BIey1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ZS2t3qUk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UL4GmjLHDxOmQ2KXeBoY257ZgSIss5IjToBpWnTh6mM=; b=0M3BIey17WIUIcRs+S/nH2F48r
	K38P1gPBFUsYoO6xbtFrB0aFbOWwdLHHoCX+6uN4vjW3AabyPmjrpkejipJIfbK+AD7dCGMAQoSbQ
	c3VO2jg1Fe2w4j8a6InIyjiiP8fhgkt7VkT5CBWfjPT97AfbW/LpJQSTdgES8bu/XmanBYRms5S+n
	P6dtiMfPAPoQdmLSzbCdswgo0mx5Yvw5biUduUpYoPSho0a2tQegKq9/4NP5OZUJNKvb43b7lZ6ID
	AA5zjDZs8N7/MVgwdWegDddPc6fX1XkdkTA8rrK1LvXNokTeN/1zeCbe4T8ZElaCnoweN3agmPl/e
	2RbwTz0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZW-0000000GhOE-3e78;
	Mon, 02 Nov 2026 13:59:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZW-0000000GhNp-0K6G
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:59:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D280443E7D;
	Mon,  2 Nov 2026 13:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333241F00A1A;
	Mon,  2 Nov 2026 13:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793627977;
	bh=Rse/YC9ktFD3iTURhqAd9fVTwoAUpW32zPZZFufJXZ0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=ZS2t3qUk4CUiDINRk52HiwnIsDx/HxkYIoN79KF9NQfz0YgvyLcVWEoeJgSBEo9tD
	 ffAFCE4WUQlEHeh4xfRIo6AKU5OTGqxJx+LusnbyUzqXs+smBfkVpI8DWFjcx/Fx4e
	 7hrH6fCRjtziyhjwZWSGxvaG+KoE8qwUWWK4qUU2gCj7lfTlOttbKzBAbQMp/JJTge
	 9cn8mABaJ2vd6cV62bDl4BhIe7a80Z5hhGEKzjKfClChoIADujcvR+IK/FKF4sV3My
	 XOoeQL6XhjiokeSLysgbvo3+Tkpak0MdKBV3cV6XBHf6MbgxanEYRZ68UpQLVZtQTw
	 EEW1V7WKm9wPA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 02 Nov 2026 14:59:32 +0100
Subject: [PATCH 1/3] phy: qcom: qmp-combo: Separate PCS misc clamp mapping
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-topic-qmp_aon_clamp-v1-1-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793627973; l=3634;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=ZMDcgcYPPUkRm87FwlhtfXTmJGjtzjYLaZTdEAefy2k=;
 b=sEBJg1L0GwYfD7rwKeZpaWVjCkmQUXCN/Oa2Qr1xAJb13wj+KWb8yMQg/kw4q9nq7O2Uda0VX
 6RWfO485amACeD5kt8stOcb45i4VEEcmjoI86WZ2oApiqgtXIi+m/qY
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNWANTED_LANGUAGE_BODY,UPPERCASE_50_75,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

PCS clamp offsets can belong to different register windows. Using
QPHY_PCS_CLAMP_ENABLE for both the AON and PCS misc windows conflates
those layouts when a PHY has both controls.

Add QPHY_PCS_MISC_CLAMP_ENABLE for misc-backed platforms and use it for
misc-window clamp accesses. Keep QPHY_PCS_CLAMP_ENABLE for PCS/AON
clamps.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index aa9dc9716574..1c7b653975f1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -101,6 +101,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	QPHY_PCS_CLAMP_ENABLE,
+	QPHY_PCS_MISC_CLAMP_ENABLE,
 	QPHY_PCS_USB4_CLAMP_ENABLE,
 
 	QPHY_COM_RESETSM_CNTRL,
@@ -131,7 +132,7 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 
-	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
@@ -158,7 +159,7 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
-	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
@@ -185,7 +186,7 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
-	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
@@ -4698,8 +4699,9 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 			qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
 		else
 			qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
-	} else if (pcs_misc)
-		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	} else if (pcs_misc) {
+		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	}
 }
 
 static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
@@ -4715,8 +4717,9 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 			qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
 		else
 			qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
-	} else if (pcs_misc)
-		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	} else if (pcs_misc) {
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	}
 
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
