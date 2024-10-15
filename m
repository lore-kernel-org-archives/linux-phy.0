Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E54ACFC29B
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 12:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2UA+YGyKnFP8PRzaq6fP0TxtJJdgxUJ15Ahf0k2q/SU=; b=pdYDw56AR2BIvD
	GV8peS1gRifLyWLVFEDv712dhLviOo4qutcwI7A47K3aORw++HU5BXv2fEHccp7wv85XO9QVVZDTH
	IGUjax7SjNSuTPOwN1/UVdajEQLRMP9tj+oYS0XxSu9HwRreuA5J0WDSptnyta0j15Mw4e0hy3/FJ
	ggWkZBS8s4I4GfzitazWbX1dl4jydDAAyyburko9zz9IuSR2GiBzQjnfBXV2+fSyEQ1F5GRFyGXXs
	RLBX+x5QvcaqSER7jvvEV/IB0ouB4OzkQeRxhiirTP3mGorOI7cdAv/ERotkSLtfOA3lUEeCWwcI1
	DyzvTuLeUjC16USu6x/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0gSJ-000000087hY-36no;
	Tue, 15 Oct 2024 12:15:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0gSG-000000087gi-2Tl3
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 12:15:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B1005C55BE;
	Tue, 15 Oct 2024 12:15:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32C17C4CEC6;
	Tue, 15 Oct 2024 12:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728994511;
	bh=1dTvursAVotDjwh/ETMarv28WWUMW3C4nw02ITS1GJQ=;
	h=From:To:Cc:Subject:Date:From;
	b=OM/8T+WK16XjIesrzIdumV3GCukFt+gD39AhYdM3ckhfJzrEDjQYS4qh0fwxy3COU
	 R48eXoQ7aZHF7EKsD3rp52UX7KiOwaxC3fTGQ1gjCoo+F6F95vl+yYx1yPVZfwIxch
	 b8mL+MapqPhpzeV33LVZGwxGbmF00RDtqgBhPBQzX4BGTnotgxh9d6A19QtzCxT6/D
	 OY65/AcxzBtgLw4oUfs0oKgrUNYP6ItQFIGQT+s1tDY2ukB+XgDaQxGrsu2IFwHGjS
	 h+TsxJFdIjnnRVq8V7gv4LJ0QfHwd5PeEAR7mjyLA1y/GU85xkN+BL4aavxG6VPa/q
	 WVDqXMzsmdyDw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1t0gSK-000000003vj-17ni;
	Tue, 15 Oct 2024 14:15:16 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies
Date: Tue, 15 Oct 2024 14:14:06 +0200
Message-ID: <20241015121406.15033-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_051512_753436_2F9CAD8C 
X-CRM114-Status: UNSURE (   9.15  )
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

The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
one. This also avoids the follow warning at boot:

	qcom-qmp-pcie-phy 1bfc000.phy: supply vdda-qref not found, using dummy regulator

Fixes: 9dab00ee9544 ("phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for X1E80100")
Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f71787fb4d7e..36aaac34e6c6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3661,8 +3661,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= sm8550_qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
@@ -3695,8 +3695,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= sm8550_qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
