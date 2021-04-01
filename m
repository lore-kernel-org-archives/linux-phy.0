Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F2F9C433ED
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 06:45:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7F92610C7
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 06:45:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7F92610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2kufc4Onu4dhvRlqEctRO73wYOtF5zHGanDZkI4pTds=; b=Pf5fOvk+vAk2wn9plvfb5Vc8V
	lT/hYHBuI13qGL6Lq25F5SVfjgLOA9yifqZM+OchXpJJinvvtXWEZnxSdFwyvxV2BDNZAROFfou3P
	htfF8Qq6+LfMtt0AE/Y/PBePgYgiPIhO3rtiw/THXd0cA0rXqecQe5Im/gKB8Ann0QQEMRL6K8T6C
	3yKVR3UKkOHH8FsIqau+Nzm8JXKZhPs3s+UZgWZDoFdq6VjYjxA+VxTpBHuQ2f9oGxkFPisJt6gOs
	EDCEVcBwJTBWgyG0vtuzkRg0bGFvWbU4d310Y4r1c2WYIpeOJ35pWMEdNXhs8IAzByOs9d/8EpSkB
	eQm937VAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRr50-008i6a-Co; Thu, 01 Apr 2021 06:45:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRr4t-008i2x-Nd
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 06:45:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B239760234;
 Thu,  1 Apr 2021 06:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617259512;
 bh=rX6OkNjQ5qAogO9pUE4yDv7qnihFhXaQnvjS6gQWT0I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Syveu3emg+wKOm+2rT6776mCKffbv8lLPBehBSwghH/KJ+kJ2jVzHHsR4X7e99IjD
 J5u/eu7kY88DQc1bejZiAcn/m1Keddwr81aFR6k0UUBVEIwHQNgr3eU+CQG3M7ndUT
 QJZBHwqY4l6vu/2GO0/Vhsm7bWicpC/K6dqS9H9mC6Hhq/K8luEheqcRvp9Na5RGf/
 gI+tzM7lHU6ZcAeA2fRbAF/cSbkYVPUQ/N9YYUYXD5BNuCsnkXt9KwNkGK3In1J4Ta
 Bt9yhwoH3alYq9rI5Rrjc7tQ2AZvvGM9gNu7Q8V6oIg1VKi7gWBubCOhGME1RCOJ1A
 +Vf3AIUKlI3zg==
Date: Thu, 1 Apr 2021 12:15:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 09/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra210
Message-ID: <YGVr9EIBOHC9N/+/@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-10-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-10-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_074516_192171_29155289 
X-CRM114-Status: GOOD (  17.84  )
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

On 25-03-21, 17:40, Thierry Reding wrote:

> +static int tegra210_usb3_enable_phy_sleepwalk(struct tegra_xusb_lane *lane,
> +					      enum usb_device_speed speed)
> +{
> +	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
> +	int port = tegra210_usb3_lane_map(lane);
> +	struct device *dev = padctl->dev;
> +	u32 value;
> +
> +	if (port < 0) {
> +		dev_err(dev, "invalid usb3 port number\n");
> +		return -EINVAL;
> +	}
> +
> +	dev_dbg(dev, "phy enable sleepwalk usb3 %d\n", port);

Too much noise for my taste :)
(here and other places)

> +static int tegra210_pmc_utmi_enable_phy_sleepwalk(struct tegra_xusb_lane *lane,
> +						  enum usb_device_speed speed)
> +{
> +	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
> +	struct tegra210_xusb_padctl *priv = to_tegra210_xusb_padctl(padctl);
> +	struct device *dev = padctl->dev;
> +	unsigned int port = lane->index;
> +	u32 value, tctrl, pctrl, rpd_ctrl;
> +
> +	if (!priv->regmap)
> +		return -EOPNOTSUPP;
> +
> +	if (speed > USB_SPEED_HIGH)
> +		return -EINVAL;
> +
> +	dev_dbg(dev, "phy enable sleepwalk usb2 %d speed %d\n", port, speed);
> +
> +	value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
> +	tctrl = TCTRL_VALUE(value);
> +	pctrl = PCTRL_VALUE(value);
> +
> +	value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(port));
> +	rpd_ctrl = RPD_CTRL_VALUE(value);
> +
> +	/* ensure sleepwalk logic is disabled */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
> +	value &= ~UTMIP_MASTER_ENABLE(port);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
> +
> +	/* ensure sleepwalk logics are in low power mode */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_MASTER_CONFIG);
> +	value |= UTMIP_PWR(port);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_MASTER_CONFIG);

We really should have a read_modify_write() helper.. quite repeat of
this here

> +
> +	/* set debounce time */
> +	value = padctl_pmc_readl(priv, PMC_USB_DEBOUNCE_DEL);
> +	value &= ~UTMIP_LINE_DEB_CNT(~0);
> +	value |= UTMIP_LINE_DEB_CNT(0x1);
> +	padctl_pmc_writel(priv, value, PMC_USB_DEBOUNCE_DEL);
> +
> +	/* ensure fake events of sleepwalk logic are desiabled */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_FAKE(port));
> +	value &= ~(UTMIP_FAKE_USBOP_VAL(port) | UTMIP_FAKE_USBON_VAL(port) |
> +			UTMIP_FAKE_USBOP_EN(port) | UTMIP_FAKE_USBON_EN(port));
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_FAKE(port));
> +
> +	/* ensure wake events of sleepwalk logic are not latched */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_LINE_WAKEUP);
> +	value &= ~UTMIP_LINE_WAKEUP_EN(port);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_LINE_WAKEUP);
> +
> +	/* disable wake event triggers of sleepwalk logic */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
> +	value &= ~UTMIP_WAKE_VAL(port, ~0);
> +	value |= UTMIP_WAKE_VAL_NONE(port);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
> +
> +	/* power down the line state detectors of the pad */
> +	value = padctl_pmc_readl(priv, PMC_USB_AO);
> +	value |= (USBOP_VAL_PD(port) | USBON_VAL_PD(port));
> +	padctl_pmc_writel(priv, value, PMC_USB_AO);
> +
> +	/* save state per speed */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SAVED_STATE(port));
> +	value &= ~SPEED(port, ~0);
> +	if (speed == USB_SPEED_HIGH)
> +		value |= UTMI_HS(port);
> +	else if (speed == USB_SPEED_FULL)
> +		value |= UTMI_FS(port);
> +	else if (speed == USB_SPEED_LOW)
> +		value |= UTMI_LS(port);
> +	else
> +		value |= UTMI_RST(port);

This could look better with a switch statement

> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SAVED_STATE(port));
> +
> +	/* enable the trigger of the sleepwalk logic */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEPWALK_CFG(port));
> +	value |= UTMIP_LINEVAL_WALK_EN(port);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEPWALK_CFG(port));
> +
> +	/* reset the walk pointer and clear the alarm of the sleepwalk logic,
> +	 * as well as capture the configuration of the USB2.0 pad
> +	 */

/*
 * multi
 * line style please
 */

> +	value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_TRIGGERS);
> +	value |= (UTMIP_CLR_WALK_PTR(port) | UTMIP_CLR_WAKE_ALARM(port) |
> +		UTMIP_CAP_CFG(port));
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_TRIGGERS);
> +
> +	/* program electrical parameters read from XUSB PADCTL */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_TERM_PAD_CFG);
> +	value &= ~(TCTRL_VAL(~0) | PCTRL_VAL(~0));
> +	value |= (TCTRL_VAL(tctrl) | PCTRL_VAL(pctrl));
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_TERM_PAD_CFG);
> +
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_PAD_CFGX(port));
> +	value &= ~RPD_CTRL_PX(~0);
> +	value |= RPD_CTRL_PX(rpd_ctrl);
> +	padctl_pmc_writel(priv, value, PMC_UTMIP_PAD_CFGX(port));
> +
> +	/* setup the pull-ups and pull-downs of the signals during the four
> +	 * stages of sleepwalk.
> +	 * if device is connected, program sleepwalk logic to maintain a J and
> +	 * keep driving K upon seeing remote wake.
> +	 */
> +	value = padctl_pmc_readl(priv, PMC_UTMIP_SLEEPWALK_PX(port));
> +	value = (UTMIP_USBOP_RPD_A | UTMIP_USBOP_RPD_B | UTMIP_USBOP_RPD_C |
> +		UTMIP_USBOP_RPD_D);
> +	value |= (UTMIP_USBON_RPD_A | UTMIP_USBON_RPD_B | UTMIP_USBON_RPD_C |
> +		UTMIP_USBON_RPD_D);
> +	if (speed == USB_SPEED_UNKNOWN) {
> +		value |= (UTMIP_HIGHZ_A | UTMIP_HIGHZ_B | UTMIP_HIGHZ_C |
> +			UTMIP_HIGHZ_D);
> +	} else if ((speed == USB_SPEED_HIGH) || (speed == USB_SPEED_FULL)) {
> +		/* J state: D+/D- = high/low, K state: D+/D- = low/high */
> +		value |= UTMIP_HIGHZ_A;
> +		value |= UTMIP_AP_A;
> +		value |= (UTMIP_AN_B | UTMIP_AN_C | UTMIP_AN_D);
> +	} else if (speed == USB_SPEED_LOW) {
> +		/* J state: D+/D- = low/high, K state: D+/D- = high/low */
> +		value |= UTMIP_HIGHZ_A;
> +		value |= UTMIP_AN_A;
> +		value |= (UTMIP_AP_B | UTMIP_AP_C | UTMIP_AP_D);
> +	}

no else? err case? Also this could use a switch too

> +static int tegra210_pmc_utmi_disable_phy_sleepwalk(struct tegra_xusb_lane *lane)
> +{
> +	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
> +	struct tegra210_xusb_padctl *priv = to_tegra210_xusb_padctl(padctl);
> +	struct device *dev = padctl->dev;
> +	unsigned int port = lane->index;
> +	u32 value;
> +
> +	if (!priv->regmap)
> +		return -EOPNOTSUPP;

That should be an error like EIO as we always expect regmap to be set,
no an unsupported error right?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
