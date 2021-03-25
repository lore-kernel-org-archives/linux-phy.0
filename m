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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B7FC433DB
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75E6661A1E
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 75E6661A1E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eGTNKawADOt/w+PDa2S1dS3+S4tUPo4ys7UO2/cepZ0=; b=AQRt98WxJ1q3w8WUIu2e2kcY1
	pd2aehV6pIK3hmiD0Tk7XLjpSzqfcdKw0sbgeZiTtJgFrXyE++mYFWDK8dEdAzKVqqHNcMcGAXDwh
	LpBmff0DIPG3LJonEUslNbNeWnNvMFPL/sMwhM8NY02iX7a6q3377u8o4SsS+JukEoXoLCX/f14Sq
	ndRvXXlTC0pr1WY4XPlXxkORBGtojxw4UxE6YcmHyEHPeQqM+IvSBNNNK4h8XhSwij8RFs31WfuLJ
	pIAExxqgD7qZRE6A3Rn6J+NQgurpbjxT2sIdyMYoccgfTczHhuw2KoQHHqhR99rSuuYA4wSH1C/kf
	TKjKSPjQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT33-001qNw-0k; Thu, 25 Mar 2021 16:41:29 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2z-001qNQ-BR
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:41:27 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 n11-20020a05600c4f8bb029010e5cf86347so4665448wmq.1
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+mgUd3FfBG5V1WiGiq7Sg4bslUVk/BI3WMScbkkNnvo=;
 b=HDU9cNu0XKgix9QOGNKr3nLH70tx8Q2u5VwwF7ZMJ3ce5mq0PCs8Pv97HWyNwjeXGR
 RxBOyzvnY7d3oztATGgWrUCzWHhdHgMJ+eO02W/3xsCZ8QCVf9z9K1nqg/5tpHN9Z4tE
 t2eoxQLNO+KbxhTu3CArygjVjJ4vxUe/b8whrkEeKE3FqQsS3Hkhyr0u1czxHzAsoWCd
 hI4u5/bdf4IoTewIn1k2DLFGKhp45dU/3U3y7mBk9+MPcdfCU+oTcCCuRaADPQ8O5/I7
 0U50ulzmGzBiBzNQ0V2rtxqpVOakvqQcpwVh07B46hC/mFlFvzX8fqNFADxhUUhQRCF4
 qidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+mgUd3FfBG5V1WiGiq7Sg4bslUVk/BI3WMScbkkNnvo=;
 b=VaOlG6zi37Fg6/2YwYHDWLWKf9WjIAESe6QItwaNsBJBWzZB639rUrGVGdI7QerroM
 CjNXSKPtoH3XZaosQxpQIos2SW/+BIqZKjnIwW91FH7/rg7/igRyAp0s0yN88IpJATYE
 zXnNOlNX3WBgYsnygzCl8sPhqKJaYW7r50wH9essbxNwfssWQ5h1BGt+mOKtDiFhQbW7
 AidzzBt7yz2Vlb7DS1MFVhOraxixgF22asl5IemZeQO7wwhAvY3dxp6hNobCZu5eIYsx
 ba/gEk2yubwVQ1Bon4/lwfSIQ7+Hcp+o6tE44FVous78SHuEh7Rv0fkyMtOSX1JsXFtZ
 b0Qg==
X-Gm-Message-State: AOAM530OpjpfyEiIHrAWHxSsElvxHWr3QI4UEavSmbVgZdlixZpGjQ0l
 HxSX2/U6CbXHHfq4cP73YIE=
X-Google-Smtp-Source: ABdhPJwecxKmDPs8sTv0ICfk8y8FLcz6o1BYpe4/XmBXW2UfZiktm5sFyZ8X94fBst1OiLGjH2miEg==
X-Received: by 2002:a1c:f614:: with SMTP id w20mr8746936wmc.70.1616690485017; 
 Thu, 25 Mar 2021 09:41:25 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id n3sm7141949wmi.7.2021.03.25.09.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:41:23 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v8 10/13] phy: tegra: xusb: Tegra210 host mode VBUS control
Date: Thu, 25 Mar 2021 17:40:54 +0100
Message-Id: <20210325164057.793954-11-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164125_608678_6548FDF5 
X-CRM114-Status: GOOD (  14.31  )
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

To support XUSB host controller ELPG, this commit moves VBUS control
.phy_power_on()/.phy_power_off() to .phy_init()/.phy_exit().
When XUSB host controller enters ELPG, host driver invokes
.phy_power_off(), VBUS should remain ON so that USB devices will not
disconnect. VBUS can be turned OFF when host driver invokes
.phy_exit() which indicates disabling a USB port.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 52 ++++++++++++++++++++++++-------
 1 file changed, 40 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 8af73ba78ad7..9d39f812fb43 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -1819,8 +1819,25 @@ static int tegra210_usb2_phy_init(struct phy *phy)
 {
 	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	unsigned int index = lane->index;
+	struct tegra_xusb_usb2_port *port;
+	int err;
 	u32 value;
 
+	port = tegra_xusb_find_usb2_port(padctl, index);
+	if (!port) {
+		dev_err(&phy->dev, "no port found for USB2 lane %u\n", index);
+		return -ENODEV;
+	}
+
+	if (port->supply && port->mode == USB_DR_MODE_HOST) {
+		err = regulator_enable(port->supply);
+		if (err)
+			return err;
+	}
+
+	mutex_lock(&padctl->lock);
+
 	value = padctl_readl(padctl, XUSB_PADCTL_USB2_PAD_MUX);
 	value &= ~(XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_MASK <<
 		   XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT);
@@ -1828,11 +1845,30 @@ static int tegra210_usb2_phy_init(struct phy *phy)
 		 XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_PAD_MUX);
 
+	mutex_unlock(&padctl->lock);
+
 	return 0;
 }
 
 static int tegra210_usb2_phy_exit(struct phy *phy)
 {
+	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
+	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	struct tegra_xusb_usb2_port *port;
+	int err;
+
+	port = tegra_xusb_find_usb2_port(padctl, lane->index);
+	if (!port) {
+		dev_err(&phy->dev, "no port found for USB2 lane %u\n", lane->index);
+		return -ENODEV;
+	}
+
+	if (port->supply && port->mode == USB_DR_MODE_HOST) {
+		err = regulator_disable(port->supply);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
@@ -1953,6 +1989,8 @@ static int tegra210_usb2_phy_power_on(struct phy *phy)
 
 	priv = to_tegra210_xusb_padctl(padctl);
 
+	mutex_lock(&padctl->lock);
+
 	if (port->usb3_port_fake != -1) {
 		value = padctl_readl(padctl, XUSB_PADCTL_SS_PORT_MAP);
 		value &= ~XUSB_PADCTL_SS_PORT_MAP_PORTX_MAP_MASK(
@@ -2046,14 +2084,6 @@ static int tegra210_usb2_phy_power_on(struct phy *phy)
 	padctl_writel(padctl, value,
 		      XUSB_PADCTL_USB2_BATTERY_CHRG_OTGPADX_CTL1(index));
 
-	if (port->supply && port->mode == USB_DR_MODE_HOST) {
-		err = regulator_enable(port->supply);
-		if (err)
-			return err;
-	}
-
-	mutex_lock(&padctl->lock);
-
 	if (pad->enable > 0) {
 		pad->enable++;
 		mutex_unlock(&padctl->lock);
@@ -2062,7 +2092,7 @@ static int tegra210_usb2_phy_power_on(struct phy *phy)
 
 	err = clk_prepare_enable(pad->clk);
 	if (err)
-		goto disable_regulator;
+		goto out;
 
 	value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 	value &= ~((XUSB_PADCTL_USB2_BIAS_PAD_CTL1_TRK_START_TIMER_MASK <<
@@ -2094,8 +2124,7 @@ static int tegra210_usb2_phy_power_on(struct phy *phy)
 
 	return 0;
 
-disable_regulator:
-	regulator_disable(port->supply);
+out:
 	mutex_unlock(&padctl->lock);
 	return err;
 }
@@ -2154,7 +2183,6 @@ static int tegra210_usb2_phy_power_off(struct phy *phy)
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);
 
 out:
-	regulator_disable(port->supply);
 	mutex_unlock(&padctl->lock);
 	return 0;
 }
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
