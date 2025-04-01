Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FD7C36017
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a053I5PhwvEQABTqNidoLbjqjTKk5H7ByZkoh9bLF5c=; b=NR6CTym1vWtHvD
	ZsveBd4h4H6pX/7W35DnotFx25WHdO/v4uea8WL1zHkZWbZtKfrHcMk0IiwypDNTZKSdvAQJrzgQI
	0TDRVR67gP+sIiUaIaNRDsj0WYZ9jSuHciYE/pVaxZv/NO69bj+39T/FkLKwmK0lifh1k8UerSSuM
	n82cmppm5Arab0p9eTtLKIQl2TtKrMI4CEXLcz+PzkkAjWaTg1moeBsEwsXeeRs8UOZ+s3O/XcdNz
	7611pm3xqAUQZSZdLTtwQV+CupDMYxV+jsw7bZG1CTBxbOgaLxUGWC84rK653c7PHD4bSDvvBpf2v
	IyGLgMMHBkR2tsZokZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tziuO-00000004QBu-46zh;
	Tue, 01 Apr 2025 21:12:32 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzipj-00000004P35-1iQb
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 21:07:44 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-22438c356c8so117610595ad.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 14:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743541663; x=1744146463; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9cGZNzTDySqtCe9xGXh3eTfbPIhI3Qq1UlfL9bUHRLY=;
        b=J0YfW+FGF7jnAn1I6Ne7eAGV7xSakgYSWjglgI0SxVVwAMS6eEAqlxZPQ4H1Wrs5Uk
         AUtekcjErzSF/aCvdqotCKvpHxDUjZRRy8hditEc1FMNTGKZfAk/UpfC4QPGK5Yvr1vc
         Yy4Twlr2A+Bo7KLDdKptxqJtlVKEY4yGxPoLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743541663; x=1744146463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9cGZNzTDySqtCe9xGXh3eTfbPIhI3Qq1UlfL9bUHRLY=;
        b=pNgCoBTQKNEnEOWRCSWURSekvjIQUGmfc5LRessjB6b6HC+0qDiPMvh+2FdLgkK/97
         z24bHNvmiTmwGBgB+LWq3f/VG7iXtQu4iOHpONj7uyqgj2X1H2iFf+F8qL5lXAYXn4qH
         y1ExcQ96eBw6qiKjVT1i9m05sHXqqF0sB35TxMfDYygZPfwlQFuGmrMbYHNgZG56U+Ad
         it590Ie4NtA9hfS4INTUNfWXlf0T3ZClYkaDaBjUGPW81iLcNH/RuYiFjzLQh5DG7mZm
         qbrQuzDlOMyfrH/yem6ctEkqamUQEb4NzQpuAWTpCgJVFokaAs5q/0ioX8Gk8GwANrfi
         kTVg==
X-Forwarded-Encrypted: i=1; AJvYcCWWZj5W+57hDVY/1oZB2MKHdfnFQVPzHD3Qs11G/HcrnKzsAPAPa7L+poOFI+ftW/r7pRnCKqw/AR0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywo2jM4Rev5Z6AlWUtfXuneUCEIlCD2SWYZ4PCZaqNnX4z27MQv
	AfjNFFyk7IDoKfUoGKvDlFxbU/3ImoJe5w9B4MMa67Z3nDaSGYA+gps62eRueA==
X-Gm-Gg: ASbGncsLO2DeIPOSqxAkSlzT90tWRhoIWNY/4JfWtCCBbvlj6A5RDnX5QZuVoAyrit7
	h0Rr0a+jXzgaPDorQHX6Iv7cNr1gLvRTJoMefxPtZXukYpwfsfyqVgtEQnHJD0yAQ29ehTsVSdy
	X5TBkm53uxmqJVkSAhpL2KfE6OwE4U9caNhigaqgDI2BvT0NSnnjO8rXZ4cAH02AkZnv+Wx+5Hc
	nRy/5QhvkOL7HsDo395jLA17ZYoy0QBydgYmZ9gGbF1XKIJY3WqjLA7UjZRsYl2VsPCw9m5glCd
	jZRnSKrUgw9kGLmphFBilfWQn9yfBJGg7nB2EmsUziabH3DOO89PZGIUErAFyXu0CcoJn1BBEKP
	hP2jH94FtAxLmh7WKq0MKXw==
X-Google-Smtp-Source: AGHT+IFLDrJLEatm7s+GAbwkMWcBogEjj61Fn4bw0eSDrWuf3LIpPvI8qKY0wpi06AoycTIkarChtw==
X-Received: by 2002:a05:6a00:3c91:b0:736:53c5:33ba with SMTP id d2e1a72fcca58-7398043000fmr19821066b3a.16.1743541662774;
        Tue, 01 Apr 2025 14:07:42 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deef7fsm9414995b3a.9.2025.04.01.14.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 14:07:42 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 2/2] phy: usb: add support for bcm74110
Date: Tue,  1 Apr 2025 14:07:36 -0700
Message-Id: <20250401210736.2613748-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250401210736.2613748-1-justin.chen@broadcom.com>
References: <20250401210736.2613748-1-justin.chen@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_140743_449856_8E4E25BA 
X-CRM114-Status: GOOD (  13.72  )
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

bcm74110 adds a freerun utmi/ref clock that saves further power during
suspend states. A tune is also necessary to pass USB compliance test.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 3 files changed, 76 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index dc452610934a..8a5ed50f2da0 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -43,6 +43,8 @@
 #define   USB_CTRL_SETUP_tca_drv_sel_MASK		BIT(24)
 #define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		BIT(25)
 #define USB_CTRL_USB_PM			0x04
+#define   USB_CTRL_USB_PM_REF_S2_CLK_SWITCH_EN_MASK	BIT(1)
+#define   USB_CTRL_USB_PM_UTMI_S2_CLK_SWITCH_EN_MASK	BIT(2)
 #define   USB_CTRL_USB_PM_XHC_S2_CLK_SWITCH_EN_MASK	BIT(3)
 #define   USB_CTRL_USB_PM_XHC_PME_EN_MASK		BIT(4)
 #define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		BIT(22)
@@ -61,6 +63,13 @@
 #define   USB_CTRL_CTLR_CSHCR_ctl_pme_en_MASK		BIT(18)
 #define USB_CTRL_P0_U2PHY_CFG1		0x68
 #define   USB_CTRL_P0_U2PHY_CFG1_COMMONONN_MASK		BIT(10)
+#define USB_CTRL_P0_U2PHY_CFG2		0x6c
+#define   USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_MASK	GENMASK(20, 17)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_SHIFT	17
+#define   USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_MASK	GENMASK(24, 23)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_SHIFT	23
+#define   USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_MASK	GENMASK(26, 25)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_SHIFT	25
 
 /* Register definitions for the USB_PHY block in 7211b0 */
 #define USB_PHY_PLL_CTL			0x00
@@ -369,6 +378,42 @@ static void usb_uninit_common_7216(struct brcm_usb_init_params *params)
 	}
 }
 
+static void usb_init_common_74110(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	u32 reg;
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM));
+	reg &= ~(USB_CTRL_MASK(USB_PM, REF_S2_CLK_SWITCH_EN) |
+		USB_CTRL_MASK(USB_PM, UTMI_S2_CLK_SWITCH_EN));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM));
+
+	usb_init_common_7216(params);
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, P0_U2PHY_CFG2));
+	reg &= ~(USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_MASK |
+		 USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_MASK |
+		 USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_MASK);
+	reg |= (0x6 << USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_SHIFT) |
+		(0x3 << USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_SHIFT) |
+		(0x2 << USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_SHIFT);
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, P0_U2PHY_CFG2));
+}
+
+static void usb_uninit_common_74110(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	u32 reg;
+
+	if (params->wake_enabled) {
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM));
+		reg |= (USB_CTRL_MASK(USB_PM, REF_S2_CLK_SWITCH_EN) |
+		       USB_CTRL_MASK(USB_PM, UTMI_S2_CLK_SWITCH_EN));
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM));
+	}
+	usb_uninit_common_7216(params);
+}
+
 static void usb_uninit_common_7211b0(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
@@ -426,6 +471,16 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params)
 	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 }
 
+static const struct brcm_usb_init_ops bcm74110_ops = {
+	.init_ipp = usb_init_ipp,
+	.init_common = usb_init_common_74110,
+	.init_xhci = usb_init_xhci,
+	.uninit_common = usb_uninit_common_74110,
+	.uninit_xhci = usb_uninit_xhci,
+	.get_dual_select = usb_get_dual_select,
+	.set_dual_select = usb_set_dual_select,
+};
+
 static const struct brcm_usb_init_ops bcm7216_ops = {
 	.init_ipp = usb_init_ipp,
 	.init_common = usb_init_common_7216,
@@ -446,6 +501,12 @@ static const struct brcm_usb_init_ops bcm7211b0_ops = {
 	.set_dual_select = usb_set_dual_select,
 };
 
+void brcm_usb_dvr_init_74110(struct brcm_usb_init_params *params)
+{
+	params->family_name = "74110";
+	params->ops = &bcm74110_ops;
+}
+
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 {
 
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index c1a88f5cd4cd..4c7be78d0b14 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -72,6 +72,7 @@ struct  brcm_usb_init_params {
 	bool wake_enabled;
 };
 
+void brcm_usb_dvr_init_74110(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_4908(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params);
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 6362ca5b7fb6..0666864c2f77 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -283,6 +283,16 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
+static const struct match_chip_info chip_info_74110 = {
+	.init_func = &brcm_usb_dvr_init_74110,
+	.required_regs = {
+		BRCM_REGS_CTRL,
+		BRCM_REGS_XHCI_EC,
+		BRCM_REGS_XHCI_GBL,
+		-1,
+	},
+};
+
 static const struct match_chip_info chip_info_4908 = {
 	.init_func = &brcm_usb_dvr_init_4908,
 	.required_regs = {
@@ -325,6 +335,10 @@ static const struct match_chip_info chip_info_7445 = {
 };
 
 static const struct of_device_id brcm_usb_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm74110-usb-phy",
+		.data = &chip_info_74110,
+	},
 	{
 		.compatible = "brcm,bcm4908-usb-phy",
 		.data = &chip_info_4908,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
