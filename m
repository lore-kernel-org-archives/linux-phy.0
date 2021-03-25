Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4873DC433DB
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C803561A25
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C803561A25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bHSDjgaRoRemV2ubpueZoJH8ZTIyVH1Ca9uC2TsdD9A=; b=Xo7cc7QKgXdNXBzNsXZm2zS/n
	EEBsWrmk4AcKNu9IVjjm2lIY/zAaETDxM+IV2tQAGtbUkFMx8ewrGDLrx/LmuKaSw5Jvodqg06SSE
	Kjpz8saHrQbNgPssP65j/61YkxRtfZxqZ0jceRp9uDULOqZ/3Sr7JMEi1aJdVSF782IiSl+PAA/Jq
	bODF5C9n0uj6+Gn9AI9fyFIPtaEQ69o2zdO/Vrl4E7B6NErDghVtELDlXckwvd2eIHMKQ7TnGjURT
	2qNJF/JkfBbM02d0I6I+g4kfWZ0aaTuP3cQs6MpVzvgFOtLgd4QXUDib1OYf6kJ4FvKt6xrK2pvxi
	sCjpxv8Uw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2b-001qLS-6z; Thu, 25 Mar 2021 16:41:01 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2X-001qKO-24
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:40:59 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso3465602wmi.3
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bBxf9gBp9k49tjzx0XsWTcdYpobBC9Pn/39efvdl5rc=;
 b=qCPIOUccU7XljI5VTQFccIZV4+J7rlVS1W7jP9BsFCGztpGLgKiRYX3MxGbBQ4+/Vp
 jAQxtNl1lXzHO+75x+1C7niOmQjoRXx+TLHRne/x4IAT64lkNyDMQY8rUjB+4/rNDv6k
 RLc+2Q2pVQ4gH+BU5Qnw5GwcXifd+Jkmo+/HV7JveLprFDx3x/pQHvOaiTfa7IZOK2Lo
 dJiRNzCQ2l/5SR0gG1LC8ehc8vF/p9Nd7/lK2F0HdAAMQDCeLkSKxriUdmkpq96RpvQC
 EaiWXqjop0SpzGn6qrW87vyTA2UWSIpATqGlfhHWstTN69hqNxZAvxhUxgEqDM3SceW7
 ByXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bBxf9gBp9k49tjzx0XsWTcdYpobBC9Pn/39efvdl5rc=;
 b=uVuPI9naIkGxpev/Sf0r7PQlCq8m5eFhphtH+3rj+Rhu1YGw7fLzBZIM6Hf7jXLjM9
 5/Ym64PRu9WLF8h1UhyUjRO9oOQ18TeYdCCyI1KKolvykreys4XCJWroCiM39k3djmjH
 t4N6eJqPnjsmtYdsPNQ4vV+70eG6qYA+FhDVYvgodi3VwWGIHCMiCftaMoxVQsqXCqJT
 7ZU9YtSVesWCgPjQ6I0OWlsMX2eTpBFQ3K+MUMdGiriHCUT6DxidmvS9fDQ3RLk5ki1R
 hs2jbHNJHphhYbSOJAM1o6tuVsiE+D0EwRcmC0P6YnphDvsOWeRCaYv4iOmvgD1Y9FK4
 Z4fA==
X-Gm-Message-State: AOAM5308iNhC03I7VGDSHxUBJekBA7GeIFEROPLxbEWmtOjd9hlf4ocj
 e+35zJRJtinlfx1aHGJNIYQ=
X-Google-Smtp-Source: ABdhPJxmG6Yl0yapLMAEo0QEzO8tJBX+RRzr4p9emu9Cfcb8CMQGI+0Z+iptw3HF97MaKquh7FQwhQ==
X-Received: by 2002:a05:600c:4a06:: with SMTP id
 c6mr8932653wmp.35.1616690456072; 
 Thu, 25 Mar 2021 09:40:56 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id s83sm7496830wms.16.2021.03.25.09.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:40:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v8 04/13] phy: tegra: xusb: Rearrange UPHY init on Tegra210
Date: Thu, 25 Mar 2021 17:40:48 +0100
Message-Id: <20210325164057.793954-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164057_185553_00AD7CF8 
X-CRM114-Status: GOOD (  19.59  )
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

From: JC Kuo <jckuo@nvidia.com>

This commit is a preparation for enabling XUSB SC7 support.
It rearranges Tegra210 XUSB PADCTL UPHY initialization sequence,
for the following reasons:

1. PLLE hardware power sequencer has to be enabled only after both
   PEX UPHY PLL and SATA UPHY PLL are initialized.
   tegra210_uphy_init() -> tegra210_pex_uphy_enable()
                        -> tegra210_sata_uphy_enable()
                        -> tegra210_plle_hw_sequence_start()
                        -> tegra210_aux_mux_lp0_clamp_disable()

2. At cold boot and SC7 exit, the following bits must be cleared after
   PEX/SATA lanes are out of IDDQ (IDDQ_DISABLE=1).
   a. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN,
   b. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY
   c. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN

   tegra210_pex_uphy_enable() and tegra210_sata_uphy_enable() are in
   charge of bringing lanes out of IDDQ, and then AUX_MUX_LP0_* bits
   will be cleared by tegra210_aux_mux_lp0_clamp_disable().

3. Once UPHY PLL hardware power sequencer is enabled, do not assert
   reset to PEX/SATA PLLs, otherwise UPHY PLL operation will be broken.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 197 +++++++++++++++---------------
 drivers/phy/tegra/xusb.h          |   4 +-
 2 files changed, 103 insertions(+), 98 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 4dc9286ec1b8..faacb866cd1f 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -288,17 +288,19 @@ static int tegra210_pex_uphy_enable(struct tegra_xusb_padctl *padctl)
 	struct tegra_xusb_pcie_pad *pcie = to_pcie_pad(padctl->pcie);
 	unsigned long timeout;
 	u32 value;
+	unsigned int i;
 	int err;
 
-	if (pcie->enable > 0) {
-		pcie->enable++;
+	if (pcie->enable)
 		return 0;
-	}
 
 	err = clk_prepare_enable(pcie->pll);
 	if (err < 0)
 		return err;
 
+	if (tegra210_plle_hw_sequence_is_enabled())
+		goto skip_pll_init;
+
 	err = reset_control_deassert(pcie->rst);
 	if (err < 0)
 		goto disable;
@@ -481,7 +483,14 @@ static int tegra210_pex_uphy_enable(struct tegra_xusb_padctl *padctl)
 
 	tegra210_xusb_pll_hw_sequence_start();
 
-	pcie->enable++;
+skip_pll_init:
+	pcie->enable = true;
+
+	for (i = 0; i < padctl->pcie->soc->num_lanes; i++) {
+		value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
+		value |= XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(i);
+		padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
+	}
 
 	return 0;
 
@@ -495,29 +504,44 @@ static int tegra210_pex_uphy_enable(struct tegra_xusb_padctl *padctl)
 static void tegra210_pex_uphy_disable(struct tegra_xusb_padctl *padctl)
 {
 	struct tegra_xusb_pcie_pad *pcie = to_pcie_pad(padctl->pcie);
+	u32 value;
+	unsigned int i;
 
-	if (WARN_ON(pcie->enable == 0))
+	if (WARN_ON(!pcie->enable))
 		return;
 
-	if (--pcie->enable > 0)
-		return;
+	pcie->enable = false;
+
+	for (i = 0; i < padctl->pcie->soc->num_lanes; i++) {
+		value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
+		value &= ~XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(i);
+		padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
+	}
 
-	reset_control_assert(pcie->rst);
 	clk_disable_unprepare(pcie->pll);
 }
 
 /* must be called under padctl->lock */
-static int tegra210_sata_uphy_enable(struct tegra_xusb_padctl *padctl, bool usb)
+static int tegra210_sata_uphy_enable(struct tegra_xusb_padctl *padctl)
 {
 	struct tegra_xusb_sata_pad *sata = to_sata_pad(padctl->sata);
+	struct tegra_xusb_lane *lane = tegra_xusb_find_lane(padctl, "sata", 0);
 	unsigned long timeout;
 	u32 value;
+	unsigned int i;
 	int err;
+	bool usb;
 
-	if (sata->enable > 0) {
-		sata->enable++;
+	if (sata->enable)
+		return 0;
+
+	if (IS_ERR(lane))
 		return 0;
-	}
+
+	if (tegra210_plle_hw_sequence_is_enabled())
+		goto skip_pll_init;
+
+	usb = tegra_xusb_lane_check(lane, "usb3-ss");
 
 	err = clk_prepare_enable(sata->pll);
 	if (err < 0)
@@ -718,7 +742,14 @@ static int tegra210_sata_uphy_enable(struct tegra_xusb_padctl *padctl, bool usb)
 
 	tegra210_sata_pll_hw_sequence_start();
 
-	sata->enable++;
+skip_pll_init:
+	sata->enable = true;
+
+	for (i = 0; i < padctl->sata->soc->num_lanes; i++) {
+		value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
+		value |= XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i);
+		padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
+	}
 
 	return 0;
 
@@ -732,26 +763,27 @@ static int tegra210_sata_uphy_enable(struct tegra_xusb_padctl *padctl, bool usb)
 static void tegra210_sata_uphy_disable(struct tegra_xusb_padctl *padctl)
 {
 	struct tegra_xusb_sata_pad *sata = to_sata_pad(padctl->sata);
+	u32 value;
+	unsigned int i;
 
-	if (WARN_ON(sata->enable == 0))
+	if (WARN_ON(!sata->enable))
 		return;
 
-	if (--sata->enable > 0)
-		return;
+	sata->enable = false;
+
+	for (i = 0; i < padctl->sata->soc->num_lanes; i++) {
+		value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
+		value &= ~XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i);
+		padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
+	}
 
-	reset_control_assert(sata->rst);
 	clk_disable_unprepare(sata->pll);
 }
 
-static int tegra210_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
+static void tegra210_aux_mux_lp0_clamp_disable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
-	mutex_lock(&padctl->lock);
-
-	if (padctl->enable++ > 0)
-		goto out;
-
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
 	value &= ~XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);
@@ -767,24 +799,12 @@ static int tegra210_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
 	value &= ~XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);
-
-out:
-	mutex_unlock(&padctl->lock);
-	return 0;
 }
 
-static int tegra210_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
+static void tegra210_aux_mux_lp0_clamp_enable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
-	mutex_lock(&padctl->lock);
-
-	if (WARN_ON(padctl->enable == 0))
-		goto out;
-
-	if (--padctl->enable > 0)
-		goto out;
-
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
 	value |= XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);
@@ -800,12 +820,38 @@ static int tegra210_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
 	value |= XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);
+}
+
+static int tegra210_uphy_init(struct tegra_xusb_padctl *padctl)
+{
+	if (padctl->pcie)
+		tegra210_pex_uphy_enable(padctl);
+
+	if (padctl->sata)
+		tegra210_sata_uphy_enable(padctl);
+
+	if (!tegra210_plle_hw_sequence_is_enabled())
+		tegra210_plle_hw_sequence_start();
+	else
+		dev_dbg(padctl->dev, "PLLE is already in HW control\n");
+
+	tegra210_aux_mux_lp0_clamp_disable(padctl);
 
-out:
-	mutex_unlock(&padctl->lock);
 	return 0;
 }
 
+static void __maybe_unused
+tegra210_uphy_deinit(struct tegra_xusb_padctl *padctl)
+{
+	tegra210_aux_mux_lp0_clamp_enable(padctl);
+
+	if (padctl->sata)
+		tegra210_sata_uphy_disable(padctl);
+
+	if (padctl->pcie)
+		tegra210_pex_uphy_disable(padctl);
+}
+
 static int tegra210_hsic_set_idle(struct tegra_xusb_padctl *padctl,
 				  unsigned int index, bool idle)
 {
@@ -942,14 +988,12 @@ static int tegra210_usb2_phy_init(struct phy *phy)
 		 XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_PAD_MUX);
 
-	return tegra210_xusb_padctl_enable(padctl);
+	return 0;
 }
 
 static int tegra210_usb2_phy_exit(struct phy *phy)
 {
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
-
-	return tegra210_xusb_padctl_disable(lane->pad->padctl);
+	return 0;
 }
 
 static int tegra210_xusb_padctl_vbus_override(struct tegra_xusb_padctl *padctl,
@@ -1407,14 +1451,12 @@ static int tegra210_hsic_phy_init(struct phy *phy)
 		 XUSB_PADCTL_USB2_PAD_MUX_HSIC_PAD_TRK_SHIFT;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_PAD_MUX);
 
-	return tegra210_xusb_padctl_enable(padctl);
+	return 0;
 }
 
 static int tegra210_hsic_phy_exit(struct phy *phy)
 {
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
-
-	return tegra210_xusb_padctl_disable(lane->pad->padctl);
+	return 0;
 }
 
 static int tegra210_hsic_phy_power_on(struct phy *phy)
@@ -1778,38 +1820,28 @@ static const struct tegra_xusb_lane_ops tegra210_pcie_lane_ops = {
 static int tegra210_pcie_phy_init(struct phy *phy)
 {
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
+	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 
-	return tegra210_xusb_padctl_enable(lane->pad->padctl);
-}
+	mutex_lock(&padctl->lock);
 
-static int tegra210_pcie_phy_exit(struct phy *phy)
-{
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
+	tegra210_uphy_init(padctl);
+
+	mutex_unlock(&padctl->lock);
 
-	return tegra210_xusb_padctl_disable(lane->pad->padctl);
+	return 0;
 }
 
 static int tegra210_pcie_phy_power_on(struct phy *phy)
 {
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
-	u32 value;
-	int err;
+	int err = 0;
 
 	mutex_lock(&padctl->lock);
 
-	err = tegra210_pex_uphy_enable(padctl);
-	if (err < 0)
-		goto unlock;
-
-	value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
-	value |= XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(lane->index);
-	padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
-
 	if (tegra_xusb_lane_check(lane, "usb3-ss"))
 		err = tegra210_usb3_phy_power_on(phy);
 
-unlock:
 	mutex_unlock(&padctl->lock);
 	return err;
 }
@@ -1819,16 +1851,9 @@ static int tegra210_pcie_phy_power_off(struct phy *phy)
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 	int err = 0;
-	u32 value;
 
 	mutex_lock(&padctl->lock);
 
-	value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
-	value &= ~XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(lane->index);
-	padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
-
-	tegra210_pex_uphy_disable(padctl);
-
 	if (tegra_xusb_lane_check(lane, "usb3-ss"))
 		err = tegra210_usb3_phy_power_off(phy);
 
@@ -1838,7 +1863,6 @@ static int tegra210_pcie_phy_power_off(struct phy *phy)
 
 static const struct phy_ops tegra210_pcie_phy_ops = {
 	.init = tegra210_pcie_phy_init,
-	.exit = tegra210_pcie_phy_exit,
 	.power_on = tegra210_pcie_phy_power_on,
 	.power_off = tegra210_pcie_phy_power_off,
 	.owner = THIS_MODULE,
@@ -1959,38 +1983,27 @@ static const struct tegra_xusb_lane_ops tegra210_sata_lane_ops = {
 static int tegra210_sata_phy_init(struct phy *phy)
 {
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
+	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 
-	return tegra210_xusb_padctl_enable(lane->pad->padctl);
-}
+	mutex_lock(&padctl->lock);
 
-static int tegra210_sata_phy_exit(struct phy *phy)
-{
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
+	tegra210_uphy_init(padctl);
 
-	return tegra210_xusb_padctl_disable(lane->pad->padctl);
+	mutex_unlock(&padctl->lock);
+	return 0;
 }
 
 static int tegra210_sata_phy_power_on(struct phy *phy)
 {
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
-	u32 value;
-	int err;
+	int err = 0;
 
 	mutex_lock(&padctl->lock);
 
-	err = tegra210_sata_uphy_enable(padctl, false);
-	if (err < 0)
-		goto unlock;
-
-	value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
-	value |= XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(lane->index);
-	padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
-
 	if (tegra_xusb_lane_check(lane, "usb3-ss"))
 		err = tegra210_usb3_phy_power_on(phy);
 
-unlock:
 	mutex_unlock(&padctl->lock);
 	return err;
 }
@@ -2000,16 +2013,9 @@ static int tegra210_sata_phy_power_off(struct phy *phy)
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 	int err = 0;
-	u32 value;
 
 	mutex_lock(&padctl->lock);
 
-	value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
-	value &= ~XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(lane->index);
-	padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);
-
-	tegra210_sata_uphy_disable(lane->pad->padctl);
-
 	if (tegra_xusb_lane_check(lane, "usb3-ss"))
 		err = tegra210_usb3_phy_power_off(phy);
 
@@ -2019,7 +2025,6 @@ static int tegra210_sata_phy_power_off(struct phy *phy)
 
 static const struct phy_ops tegra210_sata_phy_ops = {
 	.init = tegra210_sata_phy_init,
-	.exit = tegra210_sata_phy_exit,
 	.power_on = tegra210_sata_phy_power_on,
 	.power_off = tegra210_sata_phy_power_off,
 	.owner = THIS_MODULE,
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index 37a5550a84ac..ccb5dc9b1220 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -232,7 +232,7 @@ struct tegra_xusb_pcie_pad {
 	struct reset_control *rst;
 	struct clk *pll;
 
-	unsigned int enable;
+	bool enable;
 };
 
 static inline struct tegra_xusb_pcie_pad *
@@ -247,7 +247,7 @@ struct tegra_xusb_sata_pad {
 	struct reset_control *rst;
 	struct clk *pll;
 
-	unsigned int enable;
+	bool enable;
 };
 
 static inline struct tegra_xusb_sata_pad *
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
