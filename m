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
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD575C433E0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A53B619BF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A53B619BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mtONNv2veFovalGEdUBSM7xwa4pESdM4RABZw97tuVg=; b=e9Sho1OftxJV8vuZ083dvJVco
	ZR4AK3qj95XwLDwDNNGdo1k+TaPyG8QnS2Uv2DEpUIW6yx6JYEHgw34h/tiNIlLJ7npInye2WFRle
	uQQRppPkXHPAIE/4BWe57RcIwBGudp1ws7mlEjKlyXvYI91h4HpENfmQCrropO9XcWGhYDyxOulye
	vMYC2YOGyxGQxbvoGccVRpBLH5OSDiQyn+CZIZuzOXdqUt2H3isiOqg05ZRQjp9/d68vWlUM2V7N5
	qjxC0OLgaUPcx9/Gi/QNlXCtT2oSgNFBlcAYW6imyxAPrdkYRap5ZDuvjcr8B0oBhxf9hfEKFC5E7
	jNsUI8lVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2b-001qLc-PD; Thu, 25 Mar 2021 16:41:01 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2Y-001qL3-LB
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:41:00 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so3475576wml.2
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EpEbA6CM/P+xQGbvt44AnGB0qjb5n3dM+VQpCNtPqmM=;
 b=j+tp6SfV0bfa/JnbEw3236v8dfeZo+yaidQwTkurboXKO7+DX08vw1X1aYhciD8fg/
 0mn/95q25Qe1RGhHMrmQOlOPu8A6mYAw4W3RMt9+kMB8aEUOvGry753YlkZLGEnAElVR
 z05g6AyKoI826aKOtGQUcKq9xNkWxwPjp5wf1iTNDvFu7DIGwy+rSFD5YhGQ7lLwRYoo
 /RcG4vlCb+AcemL2qPPHCV4T0J5oqcC5P3zMKrFoEMnB7Z2j/VGk5m8sD0nrCcothxyU
 qBMXCcfYC0f3SdJlVw8m5SpjrAend5fS5KpGna/amlf76rOpcTBy65f7BDRWhuxxpz95
 d7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EpEbA6CM/P+xQGbvt44AnGB0qjb5n3dM+VQpCNtPqmM=;
 b=hNlhPm382c3dVESb1Psj8dlbMQfwe2E/DGG1FiEodBqizZl0xEXovzM06ZE60HqnLY
 7B9fwnS8eDt4yMAQ/HDnI/Ut4KiNVzddfl2S2mzChRVV0/SRFGUJpioPIcSaYH9hB3CQ
 IhPb8KwHe1y5v8cyLoEmsdD3szISk2as+sHZXC9xAGado8OhxG5fXoCAGBaGfUJ8aoFl
 X6Zi5w+TBI7+f4frYmDo87RYcvEMM6UbocdjBAc9BuADpJaJj6zl05XDlO+/PvDZnR0l
 HqmxPxzYsIwOLTFE2cAxYr3pIP01SMtNA/t9ql+SmP5dZ4CfWc8MkoAf8FFiAPd5CI2k
 wDOQ==
X-Gm-Message-State: AOAM5331CC0l6b9bhpytRA7sCkII3xNLVSY3YEu+ecUfs63Xqx50ckPP
 Wq06IOwvi0AkrPvxuC2hV88=
X-Google-Smtp-Source: ABdhPJwe09p97Asz1de3vmAHa8PX+hcWWVthf2x8ZLCdzwVPwxpOio3pTUB3zoFMKqg2vVcH5vUIbg==
X-Received: by 2002:a05:600c:287:: with SMTP id 7mr9345030wmk.23.1616690458100; 
 Thu, 25 Mar 2021 09:40:58 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id d18sm8367429wra.8.2021.03.25.09.40.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:40:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v8 05/13] phy: tegra: xusb: Add Tegra210 lane_iddq operation
Date: Thu, 25 Mar 2021 17:40:49 +0100
Message-Id: <20210325164057.793954-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164058_780438_67E0401D 
X-CRM114-Status: GOOD (  15.98  )
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

As per Tegra210 TRM, before changing lane assignments, driver should
keep lanes in IDDQ and sleep state; after changing lane assignments,
driver should bring lanes out of IDDQ.
This commit implements the required operations.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 82 ++++++++++++++++++++++++++++---
 drivers/phy/tegra/xusb.c          |  6 +++
 drivers/phy/tegra/xusb.h          |  6 +++
 3 files changed, 86 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index faacb866cd1f..b038d032fea1 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -198,6 +198,18 @@
 #define XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_TERM_EN BIT(18)
 #define XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_MODE_OVRD BIT(13)
 
+#define XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(x) (0x464 + (x) * 0x40)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ BIT(0)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ_OVRD BIT(1)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_MASK (0x3 << 4)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_VAL (0x3 << 4)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_PWR_OVRD BIT(24)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ BIT(8)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ_OVRD BIT(9)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_MASK (0x3 << 12)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_VAL (0x3 << 12)
+#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_PWR_OVRD BIT(25)
+
 #define XUSB_PADCTL_UPHY_PLL_S0_CTL1 0x860
 
 #define XUSB_PADCTL_UPHY_PLL_S0_CTL2 0x864
@@ -209,6 +221,7 @@
 #define XUSB_PADCTL_UPHY_PLL_S0_CTL8 0x87c
 
 #define XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL1 0x960
+#define XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL2 0x964
 
 #define XUSB_PADCTL_UPHY_USB3_PADX_ECTL1(x) (0xa60 + (x) * 0x40)
 #define XUSB_PADCTL_UPHY_USB3_PAD_ECTL1_TX_TERM_CTRL_SHIFT 16
@@ -1640,6 +1653,55 @@ static const struct tegra_xusb_pad_soc tegra210_hsic_pad = {
 	.ops = &tegra210_hsic_ops,
 };
 
+static void tegra210_uphy_lane_iddq_enable(struct tegra_xusb_lane *lane)
+{
+	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	u32 value;
+
+	value = padctl_readl(padctl, lane->soc->regs.misc_ctl2);
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ_OVRD;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ_OVRD;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_PWR_OVRD;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_PWR_OVRD;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_MASK;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_VAL;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_MASK;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_VAL;
+	padctl_writel(padctl, value, lane->soc->regs.misc_ctl2);
+}
+
+static void tegra210_uphy_lane_iddq_disable(struct tegra_xusb_lane *lane)
+{
+	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	u32 value;
+
+	value = padctl_readl(padctl, lane->soc->regs.misc_ctl2);
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ_OVRD;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ_OVRD;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_PWR_OVRD;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_PWR_OVRD;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_MASK;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_VAL;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ;
+	value &= ~XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_MASK;
+	value |= XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_VAL;
+	padctl_writel(padctl, value, lane->soc->regs.misc_ctl2);
+}
+
+#define TEGRA210_UPHY_LANE(_name, _offset, _shift, _mask, _type, _misc)	\
+	{								\
+		.name = _name,						\
+		.offset = _offset,					\
+		.shift = _shift,					\
+		.mask = _mask,						\
+		.num_funcs = ARRAY_SIZE(tegra210_##_type##_functions),	\
+		.funcs = tegra210_##_type##_functions,			\
+		.regs.misc_ctl2 = _misc,				\
+	}
+
 static const char *tegra210_pcie_functions[] = {
 	"pcie-x1",
 	"usb3-ss",
@@ -1648,13 +1710,13 @@ static const char *tegra210_pcie_functions[] = {
 };
 
 static const struct tegra_xusb_lane_soc tegra210_pcie_lanes[] = {
-	TEGRA210_LANE("pcie-0", 0x028, 12, 0x3, pcie),
-	TEGRA210_LANE("pcie-1", 0x028, 14, 0x3, pcie),
-	TEGRA210_LANE("pcie-2", 0x028, 16, 0x3, pcie),
-	TEGRA210_LANE("pcie-3", 0x028, 18, 0x3, pcie),
-	TEGRA210_LANE("pcie-4", 0x028, 20, 0x3, pcie),
-	TEGRA210_LANE("pcie-5", 0x028, 22, 0x3, pcie),
-	TEGRA210_LANE("pcie-6", 0x028, 24, 0x3, pcie),
+	TEGRA210_UPHY_LANE("pcie-0", 0x028, 12, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(0)),
+	TEGRA210_UPHY_LANE("pcie-1", 0x028, 14, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(1)),
+	TEGRA210_UPHY_LANE("pcie-2", 0x028, 16, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(2)),
+	TEGRA210_UPHY_LANE("pcie-3", 0x028, 18, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(3)),
+	TEGRA210_UPHY_LANE("pcie-4", 0x028, 20, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(4)),
+	TEGRA210_UPHY_LANE("pcie-5", 0x028, 22, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(5)),
+	TEGRA210_UPHY_LANE("pcie-6", 0x028, 24, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(6)),
 };
 
 static struct tegra_xusb_usb3_port *
@@ -1815,6 +1877,8 @@ static void tegra210_pcie_lane_remove(struct tegra_xusb_lane *lane)
 static const struct tegra_xusb_lane_ops tegra210_pcie_lane_ops = {
 	.probe = tegra210_pcie_lane_probe,
 	.remove = tegra210_pcie_lane_remove,
+	.iddq_enable = tegra210_uphy_lane_iddq_enable,
+	.iddq_disable = tegra210_uphy_lane_iddq_disable,
 };
 
 static int tegra210_pcie_phy_init(struct phy *phy)
@@ -1939,7 +2003,7 @@ static const struct tegra_xusb_pad_soc tegra210_pcie_pad = {
 };
 
 static const struct tegra_xusb_lane_soc tegra210_sata_lanes[] = {
-	TEGRA210_LANE("sata-0", 0x028, 30, 0x3, pcie),
+	TEGRA210_UPHY_LANE("sata-0", 0x028, 30, 0x3, pcie, XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL2),
 };
 
 static struct tegra_xusb_lane *
@@ -1978,6 +2042,8 @@ static void tegra210_sata_lane_remove(struct tegra_xusb_lane *lane)
 static const struct tegra_xusb_lane_ops tegra210_sata_lane_ops = {
 	.probe = tegra210_sata_lane_probe,
 	.remove = tegra210_sata_lane_remove,
+	.iddq_enable = tegra210_uphy_lane_iddq_enable,
+	.iddq_disable = tegra210_uphy_lane_iddq_disable,
 };
 
 static int tegra210_sata_phy_init(struct phy *phy)
diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 3110aafa8cf6..a34d304677bb 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -321,11 +321,17 @@ static void tegra_xusb_lane_program(struct tegra_xusb_lane *lane)
 	if (soc->num_funcs < 2)
 		return;
 
+	if (lane->pad->ops->iddq_enable)
+		lane->pad->ops->iddq_enable(lane);
+
 	/* choose function */
 	value = padctl_readl(padctl, soc->offset);
 	value &= ~(soc->mask << soc->shift);
 	value |= lane->function << soc->shift;
 	padctl_writel(padctl, value, soc->offset);
+
+	if (lane->pad->ops->iddq_disable)
+		lane->pad->ops->iddq_disable(lane);
 }
 
 static void tegra_xusb_pad_program(struct tegra_xusb_pad *pad)
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index ccb5dc9b1220..e789d5ff4eb8 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -35,6 +35,10 @@ struct tegra_xusb_lane_soc {
 
 	const char * const *funcs;
 	unsigned int num_funcs;
+
+	struct {
+		unsigned int misc_ctl2;
+	} regs;
 };
 
 struct tegra_xusb_lane {
@@ -126,6 +130,8 @@ struct tegra_xusb_lane_ops {
 					 struct device_node *np,
 					 unsigned int index);
 	void (*remove)(struct tegra_xusb_lane *lane);
+	void (*iddq_enable)(struct tegra_xusb_lane *lane);
+	void (*iddq_disable)(struct tegra_xusb_lane *lane);
 };
 
 bool tegra_xusb_lane_check(struct tegra_xusb_lane *lane, const char *function);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
