Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454AE60A5BE8
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3XUgpwbI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lkxNKFQ1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Frctr7QT26Eg8vMkBuetCUlc8XGH6lW+WQtDk0YGJHI=; b=3XUgpwbIB/2sU7kSuHAvpdXokX
	sjHtkiC+DECEoE4P/2YQZwiFNhvXEHiiaMEl+yDGPJ8GWVW/gxOZO+dNoqO0AYKd6LGd6kU1TKqcr
	Xpe6voYb72zUcnN9hUaAe2bMH6awglVL6pR/yC5bYhGTmFEYgF5DvnxFRgxSil5+DDYcOnjZn27gs
	Xc0jVHG/hD+YCwWuY9T0wRZ+o1JpSyrVlEYR/QTM6iBlVxQ674SkCWUZoae/tAULfeGWb2r4oNYVK
	gDjjxEj3RS7AZEEra1rahByx1yC8sTvFNWr92ZZzYWxleIvb7EKpKTf4c6C+U8BxgdYzZWYmzxPQ1
	IX+ytoDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZZ-0000000GhPB-05YI;
	Mon, 02 Nov 2026 13:59:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZY-0000000GhOd-0eGw
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:59:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E144340E19;
	Mon,  2 Nov 2026 13:59:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D4AE1F00A1D;
	Mon,  2 Nov 2026 13:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793627979;
	bh=tljb7rtsPlQzIzEu/bBj+fXHIpowDv+rky87XRZ9VDw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=lkxNKFQ1odMKOTvdBvqxcuVuYTL69XNHDMMAahN6rPpg4qNwXrFENKPaWKHscQw0Z
	 Hq1rVTSFgWM6pTDVEx+R0Uy9WoZOoesyGi2rhboSzIpcQUXW1amB4WOqBL8t643VjT
	 1Q2a/wILsjbd2E564vFxVeqJGAoDZ/JzKrFlYriUqhwYJOakK8mMA07UCrFP5688xD
	 RgEwTFtSlJI/V7QT8F8O3vJbWy/3Wp8E4WDjQDiirMJlFVHR7eLvLngfBXiohkD+Qr
	 rrZJJk/P1xpLqS4FYxaZS6DeDG8JGuidvBoRdvHCLkAWM2r/iSAPaBIAzb3Afn4T1R
	 4m0RDVe/T9Qjw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 02 Nov 2026 14:59:33 +0100
Subject: [PATCH 2/3] phy: qcom: qmp-combo: Make v4/v5 targets use the right
 clamp
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-topic-qmp_aon_clamp-v1-2-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793627973; l=3162;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=Jg/cbnzut80B0V7M8OEuBOh1vCJVvAzHbp5LGbo5Akk=;
 b=7etytahGwQHJJkXpWYpzhowAkBH5VofuSlugtYIwvyKJoxmC7f4Fu285zPjvzN0nnmfAOQ3fc
 36EUJo9p9UeADxWAC35/OmzBJoKVbxBjHfUwuPZxVYvPsiDvCLAdGpY
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

The clamp in PCS_MISC may or may not exist on some of these targets,
but in any case it's not the right one to assert. Switch over to the
one the hardware programming guide calls for.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c  | 7 ++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1c7b653975f1..84b9d6f3969c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -159,7 +159,7 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
-	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_CLAMP_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
@@ -186,6 +186,7 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_CLAMP_ENABLE,
 	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
@@ -4699,6 +4700,8 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 			qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
 		else
 			qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	} else if (cfg->regs[QPHY_PCS_CLAMP_ENABLE]) {
+		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 	} else if (pcs_misc) {
 		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 	}
@@ -4717,6 +4720,8 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 			qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
 		else
 			qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	} else if (cfg->regs[QPHY_PCS_CLAMP_ENABLE]) {
+		qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 	} else if (pcs_misc) {
 		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 	}
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
index 36cc80bb9059..1d1688b3d7ba 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
@@ -11,6 +11,7 @@
 #define QPHY_V5_PCS_PCS_STATUS1				0x014
 #define QPHY_V5_PCS_POWER_DOWN_CONTROL			0x040
 #define QPHY_V5_PCS_START_CONTROL			0x044
+#define QPHY_V5_PCS_CLAMP_ENABLE			0x08c
 #define QPHY_V5_PCS_LOCK_DETECT_CONFIG1			0x0c4
 #define QPHY_V5_PCS_LOCK_DETECT_CONFIG2			0x0c8
 #define QPHY_V5_PCS_LOCK_DETECT_CONFIG3			0x0cc

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
