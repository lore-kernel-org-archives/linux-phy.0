Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95DD9CA0EEB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 09:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=elRzV3ac1Gwo9h9MyYR+O7lpRLpxK64uSnwTbaGQ9xc=; b=q7Bg5uJ2VA8qN7
	KaVm0TXFwntDRhGGcjXqBrLg8p/E50RNzi7k6SjYJ7SvCegc4biFXZtCKAbXn7q2pEUpq1kV4FGM2
	bMNK4n+mMfUmR8n46S7Q3W5ZBM811U75hWJr1p1hvz4n0LMBTFvrshkdZ0L+w580uUYt0Oabcdflx
	VRMrz/LXnALj0JGze4uIv9SE25niD8a9AyaNKhqdws379TgstnC79u0icGYhbx/JdrcGuuQ2mD/W0
	diPKWUg55FasSl/UeCTnwl9f+ix6yM3/6j/i2Wy9nlBT5ukwiODUXP4f6/Tb1hfL6ZJQOzYbb2XV0
	QUqDu44ZFczGFkCdOnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1nY-0000000GSx5-43Eg;
	Thu, 21 Aug 2025 09:41:33 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up0FL-0000000GAxk-2u5V
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 08:02:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45a1b00f23eso3639155e9.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 01:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755763326; x=1756368126; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hn27vZnhIqBSicegyUAo/osnGXFM0EzIXplvQ6HEFls=;
        b=dVKIkpVmAnaPyy07wlw9gRwiKUt4ERl5ACNYTkBKiQiPY9YIT2pPYS3NDg5ToWPryU
         WAqw9QdRg8Xli2E5Xvrb9Wm4NcSwtGuWgKDk2bzcMuacnr36xl2v+Ytrpyvt054EHRkY
         43P4DQhNk9r5Ez6Zg/Px9mVs1j77/k9VQ1rE05D2L3J0jbAJBIJPNLhE6gZcBmTJXOTw
         IQa6il7B6+grmWKxo19tD/0sB+go9oAoa+XsvePk+6w7hoFVeVjH9FdAyIrTx/BFIuH8
         lMSzqCtuYk886QtUQ6XovjfbzH/U66C8VAgPXnTLNTpRJUjWhHsE2auwyVsgF79XKk+8
         Ijig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755763326; x=1756368126;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hn27vZnhIqBSicegyUAo/osnGXFM0EzIXplvQ6HEFls=;
        b=Eg/d/TiBWxWAJ+0J/w0WadC8F/kq4R4IPd2jICeEPFfaUt49JVPA5QDPxBmho45tOa
         Q1a0N5HLoP+SanTetbwxKYZ3a5Qm+nVcg2HC75AO+Hd9LZumdcpOe4yDjLaxWVUzGVOe
         zaGtHXXmObtUkeyV7y/TQQWYDgH9S4nVptOoAkCMKXRPrRIgbdv7OUlA6uaV2x2ZJ8BP
         i/SFcSfNkY6JVWozC1DyZopgqoIAT5XBCTOZFoPHJPI11oQj4eJLeGDBWktvt65DJZlq
         Et3vcTL6n9Ij0om85Hi14DekZpAHG+p3qrxBPVFZdMib//crYoj5+QJ26jqhWv0MRJIa
         70Gw==
X-Forwarded-Encrypted: i=1; AJvYcCUxNeWh5zRnFynk4cCR6UQM+8heD01GHsoObgfNE2pfBa3PI9Oa2cXOf5r8XvOH3yKSmHPu/OeYRsc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2HjaUZ8Ded/XUHppQdG9mnXJ7SIfjAqi+w9vzh9sTjQp5aubE
	qhaAS/Ik7tgbDL6RZ7cNzHxjRE1uH3OT2AZW1+/WHhestQFyG/g4hxLUkAqVJRz4p+U=
X-Gm-Gg: ASbGncsKsNAKUOmjGg9koeMC5ylc2qiuKc3Km3GzGWmHzFzCo9m2E7J7z1QiT4t8l1W
	6HHY7E5XYI4gg5J3M3TA26lrHFiTvRmWK38LBMVccExTkvGF3RZ/2Pq1HTJnvKxHtApViTmzwat
	5rs9KGtLl228UtB5aGfMbAvAoMLZZ4oDOTKaJ5xOaE2bigxk20SdFOnbxvP0n0uWW5RUocuZ7fI
	NKSm62Es16f7l9BhBZ3bWI/cCpfP58X7WBSjGZupywtam6xPOkB2rAUHtyrnKLOLmHIctgrLkZ4
	w89iy/NWj8HsU7g0EnrCk33484tH6UCeXASuI7nW/alDGA9gZLTezPG4JyOTD64/ZkeO2gBCtGw
	7eWQT1MRI6PWipykjpP4HtOS3n4wa9AudwqBb
X-Google-Smtp-Source: AGHT+IFyf4GxZUgfH24ON3BuA2aO3p7JoOEyz8RGPT602L+yh2FycWNW4H1ldr6Xsp2nsN+1IQ/uyQ==
X-Received: by 2002:a05:600c:138f:b0:456:1824:4808 with SMTP id 5b1f17b1804b1-45b4d8779camr9361005e9.32.1755763325420;
        Thu, 21 Aug 2025 01:02:05 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:a59f:f2cf:3ca3:965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4dc28fc8sm16337285e9.24.2025.08.21.01.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:02:05 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 21 Aug 2025 10:01:47 +0200
Subject: [PATCH v3] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
MIME-Version: 1.0
Message-Id: <20250821-phy-qcom-qmp-pcie-nocsr-fix-v3-1-4898db0cc07c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGrSpmgC/43NsQ6DIBSF4VcxzL0NXIXWTn2PpgMCKkkVhIbUG
 N+96NQuTcf/DN9ZSDTBmkguxUKCSTZaN+YoDwVRvRw7A1bnJkiR0zND8P0Mk3IDTIMHr6yB0ak
 YoLUvYIKWjAqsK6VJFnwwed712z13b+PThXk/S2xb/3MTAwa1PGkqucamEteHHWVwRxc6ssEJP
 7HqN4YZaw0X2HBNUbIvbF3XN3EVRhcUAQAA
X-Change-ID: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wenbin Yao <quic_wenbyao@quicinc.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_010207_749643_F26987D5 
X-CRM114-Status: GOOD (  21.67  )
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

Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
support") added support for using the "no_csr" reset to skip configuration
of the PHY if the init sequence was already applied by the boot firmware.
The expectation is that the PHY is only turned on/off by using the "no_csr"
reset, instead of powering it down and re-programming it after a full
reset.

The boot firmware on X1E does not fully conform to this expectation: If the
PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
the PHY is already initialized and skips the configuration/power up
sequence. The PHY won't come up again without clearing the
QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:

  qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
  phy phy-1be0000.phy.0: phy poweron failed --> -110
  qcom-pcie 1bd0000.pcie: cannot initialize host
  qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110

This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
is inserted for PCIe3.

Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
to QPHY_START_CTRL. If the PHY is powered down with the register, it
doesn't conform to the expectations for using the "no_csr" reset, so we
fully re-initialize with the normal reset sequence.

Also check the register more carefully to ensure all of the bits we expect
are actually set. A simple !!(readl()) is not enough, because the PHY might
be only partially set up with some of the expected bits set.

Cc: stable@vger.kernel.org
Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v3:
- Move up existing comment block and clarify it, so that it is more obvious
  what the additional checks really do (Bjorn)
- Link to v2: https://lore.kernel.org/r/20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org

Changes in v2:
- Ensure that all expected bits are set (Konrad)
- Link to v1: https://lore.kernel.org/r/20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..0fa63b734b67b8f44580b56555950bb5d74ef94c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3067,6 +3067,14 @@ struct qmp_pcie {
 	struct clk_fixed_rate aux_clk_fixed;
 };
 
+static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
+{
+	u32 reg;
+
+	reg = readl(base + offset);
+	return (reg & val) == val;
+}
+
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -4339,16 +4347,21 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
 	int ret;
 
-	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
 	/*
-	 * We need to check the existence of init sequences in two cases:
-	 * 1. The PHY doesn't support no_csr reset.
-	 * 2. The PHY supports no_csr reset but isn't initialized by bootloader.
-	 * As we can't skip init in these two cases.
+	 * We can skip PHY initialization if all of the following conditions
+	 * are met:
+	 *  1. The PHY supports the nocsr_reset that preserves the PHY config.
+	 *  2. The PHY was started (and not powered down again) by the
+	 *     bootloader, with all of the expected bits set correctly.
+	 * In this case, we can continue without having the init sequence
+	 * defined in the driver.
 	 */
+	qmp->skip_init = qmp->nocsr_reset &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
+
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
 		return -ENODATA;

---
base-commit: aac1256a41cfbbaca12d6c0a5753d1e3b8d2d8bf
change-id: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
