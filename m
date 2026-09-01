Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC194C624D5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZw4hhdr2tatY15zn699rhuBY1co1qfkVnMomlIofec=; b=ePlTSfJGTh6yWW
	5TNAwHKQYODnHeu6KR2kJy7PyLMbBrL8Vf7/ZN8GhHpsTvodWTM837NPpDDMRd9BKjQ9bAW8YtVN6
	HKrL0gcRtMCI9CXE5lxl1ISvqflmV6yKICDGVV+S7qpt7hXZlw371c9KctWAPkL9bStqNxVoOK0A3
	HW27SPy1i6Jd7p25XIIO7U+P0xs9d6SIGgAdFY1uAMz3kuSMDZl93xvHiM804T7laepzwe7nPUzeX
	m9Sxh06Sk0qjxGjfPmt8p5BlHDsWtEgj1ZLQN/uNy6HDeY39KzBot1nVJYFuPMQnN+vbHBaet4+Pu
	zk4x/NA9jqUsrpOWjILA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OTt-0000000CDGL-2YgC;
	Tue, 01 Sep 2026 13:24:53 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OTq-0000000CDFq-2T9o
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:24:51 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-48431648f33so805028f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788269089; x=1788873889; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=m9s+pEoGrG4HFANGtdOnl/hc5uhb6frTfUBLBjF9eG0=;
        b=hNVGEZHiJ9VXFPDfjCHV5o9J+XNm4soRsoCeKLXt/f20aF8Ca+HiVYVuIvpwLCeucT
         PnddDIodbSrbg31BqibhDQmsbiGbqFQBx1UWd7qmEDNALbUHh4py9Gk384svnwgjEzQ6
         Cng1iOA3cfw0HuiLfMzMbdf+JY9h5KfxLfOjkHPF48InVB/jWChDQdWOw3/B6Pf45cZU
         LhoCfc6mhNy5/hnzwXd+lnnf2tP0YXNLle77Ln7QQfgL8QVJeRgusF48S0G/MlHkeQOt
         bdtGVj3F39huGmlbvpaoLnGgqRln+YAJzmXaJxQTOzYzkHOP2ob0VCtbIugChXK8MgRA
         bJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788269089; x=1788873889;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m9s+pEoGrG4HFANGtdOnl/hc5uhb6frTfUBLBjF9eG0=;
        b=O4nRo0bLZMM9s0a5NcDhNH2f9O8RDBlq4pbrfoiL0bVmaK9rAySfXoG/R9+61eQO6l
         TTwhHjm9Iq5oHrXhFgDpwjLy+m4CZg9ZqK+uJakx5zaTACN+ePK1jUyjvXtKin2v3p2s
         Pb77r+Vjm8j2OgnwZ3zDJ1ejVQDlwdMUifHFxvMLuy4JZETgXPOSjrmj06roldq+d9Gj
         iVDatACVFFob62SgqOo6J1E7PpUDpD0THiJK1LD1l5oFzdx22LsfIdk6Y33E2Kue6vtK
         yYJ2xGs5guuJLx5+BXeLc+JnDb9Ext9eWr7IbgJoWkjDnV29qvg+hFqwO0vIJaz338lL
         +CIQ==
X-Forwarded-Encrypted: i=1; AKwUvBwBE3Uau2kBF5GksL/racXOnMXI+ee48TS46iwX9sTS31rpH9A5ui76lojirNQKGWJ7ggqaS5dsqWs=@lists.infradead.org
X-Gm-Message-State: AFuF++mrYbCx/BpXYBec547nxL/5td4hkAEfZBpvEv16PRRo172MkIhq
	/OIOw9JmtL+Ns0dfmjqdK8PFE8J8O9mVQh11AJX+A48rqlJ+5o9oTCVNusT5iu5L
X-Gm-Gg: AYBFou2HwK6twt+NPhMWET4pNyPE96TIg63hlC2mJ65DmUsZ3zyFhXS3jLBNeRyXbr0
	/MhFyTCt9H7QE0leC5yDiiQbNtnbIT9djP0nqspgJw2cmlvQAFMO1YUoctrAI6JtYrjJWqbOmd2
	RS0L/Es7uGbTRCjnrLhFPXt0rkcv2Bs4rCulNYzGbIWtlQuOknBV6x4YuHEX8UbJJuV06QDWDqV
	HqJKVMozRxozGqwU19CDkCrkjlh1JKsrai6pxfZm9245eKrVXaR36t/NwWRWBAye1ScMMpOzjsj
	NAwkOOU0IQkOiKpMxyFKbxENMffvBWE5Mh3muw9pYbYcPCFgINleKT1O8GbvniAjNSdbHlYb85d
	0a0z959oqp/bSAD5zdrj5X5GiTIz86rwvU1SVDEpiFsFii9wJg53p861YBUxzhqrO/vMXuxdgQ4
	jrE3JJU3Ia1tMh31zxppCpePqorrEuJ2YKuE5n3+E91681lqBt3VkC8JhTEw72xj3V7aEZruLEX
	t78GnTxAuH65kJ5CUfMFnzJXzHD20F/2H8=
X-Received: by 2002:a05:6000:4549:b0:475:da0e:744d with SMTP id ffacd0b85a97d-48441fcbc51mr7324639f8f.8.1788269088492;
        Tue, 01 Sep 2026 06:24:48 -0700 (PDT)
Received: from Ansuel-XPS. (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48442d7e452sm4638242f8f.35.2026.09.01.06.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 06:24:48 -0700 (PDT)
Message-ID: <6a96d220.5fb1dcdd.280708.47d5@mx.google.com>
X-Google-Original-Message-ID: <apbSGVNOYn15F6Cr@Ansuel-XPS.>
Date: Tue, 1 Sep 2026 15:24:41 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, linux-phy@lists.infradead.org,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com
Subject: Re: [PATCH v4 3/3] phy: airoha: Add support for Airoha AN7583 USB PHY
References: <20260901123933.15388-1-ansuelsmth@gmail.com>
 <20260901123933.15388-4-ansuelsmth@gmail.com>
 <20260901125344.46F841F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901125344.46F841F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062450_689662_1034B5C2 
X-CRM114-Status: GOOD (  40.14  )
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

On Tue, Sep 01, 2026 at 12:53:43PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 6 potential issue(s) to consider:
> - [High] Failure to propagate PHY lifecycle calls to the underlying SerDes PHY
> - [High] USB PHY instances are inaccessible due to incorrect PHY provider registration
> - [Medium] Use of uninitialized stack variable due to missing regmap_read return check
> - [Medium] Lockdep warning due to recursive locking of phy->mutex in set_mode callbacks
> - [Low] Missing select REGMAP_MMIO in Kconfig leading to link-time errors
> - [Low] Missing explicit inclusion of <linux/delay.h>
> --
> 
> commit 78bb8c49d95aeffce30cf8303d7ac8de16f47e67
> Author: Christian Marangi <ansuelsmth@gmail.com>
> 
>     phy: airoha: Add support for Airoha AN7583 USB PHY
>     
>     Add support for USB PHY for Airoha AN7583 SoC, this share some U2 init
>     from AN7581 but use a totally different init phase for PLL and
>     calibration for U3. Also on AN7583 there is a single USB PHY that init 2
>     U2 port and one U3 port. (the USB controller expose 2 hub, one with 2
>     usb 2.0 port and one with one 3.0 port)
>     
>     A second USB PHY is used for PCIe Gen2 controller and follow the same
>     calibration and setup logic of USB.
> 
> > diff --git a/drivers/phy/airoha/Kconfig b/drivers/phy/airoha/Kconfig
> > new file mode 100644
> > index 0000000000000..13e49ff947e3e
> > --- /dev/null
> > +++ b/drivers/phy/airoha/Kconfig
> > @@ -0,0 +1,11 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +config PHY_AIROHA_AN7583_USB
> > +	tristate "Airoha AN7583 USB PHY Driver"
> > +	depends on ARCH_AIROHA || COMPILE_TEST
> > +	depends on OF
> > +	select GENERIC_PHY
> 
> [Severity: Low]
> Is a select for REGMAP_MMIO missing here? If COMPILE_TEST is enabled and no
> other driver implicitly selects REGMAP_MMIO, couldn't this cause a link-time
> error due to an undefined reference to __devm_regmap_init_mmio_clk?
> 
> > +	help
> > +	  Say 'Y' here to add support for Airoha AN7583 USB PHY driver.
> 
> > diff --git a/drivers/phy/airoha/phy-an7583-usb.c b/drivers/phy/airoha/phy-an7583-usb.c
> > new file mode 100644
> > index 0000000000000..46b5f09582cfd
> > --- /dev/null
> > +++ b/drivers/phy/airoha/phy-an7583-usb.c
> > @@ -0,0 +1,2023 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Author: Christian Marangi <ansuelsmth@gmail.com>
> > + */
> > +
> > +#include <dt-bindings/phy/phy.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/math.h>
> > +#include <linux/module.h>
> > +#include <linux/phy.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/mfd/syscon.h>
> 
> [Severity: Low]
> Does this code rely on linux/delay.h for mdelay() and usleep_range() without
> including it? This could lead to compilation failures on architectures or
> configurations where it isn't implicitly included by other headers.
> 
> [ ... ]
> 
> > +static bool an7583_usb_phy_u3_kband_is_calibrated(struct an7583_usb_phy_priv *priv)
> > +{
> > +	u32 val, res;
> 
> [ ... ]
> 
> > +	regmap_read(priv->regs[AIROHA_USB_PHY_PMA],
> > +		    AIROHA_USB_PMA_INTF_STS_9, &val);
> > +	res = FIELD_GET(AIROHA_USB_PMA_ADDR_INTF_STS_PLL_VCOCAL, val) << 4;
> 
> [Severity: Medium]
> If the regmap_read() fails, wouldn't the uninitialized stack variable val be
> accessed here? Could this result in undefined behavior and potentially bypass
> the KBand calibration loop?
> 
> [ ... ]
> 
> > +static int an7583_usb_phy_init(struct phy *phy)
> > +{
> > +	struct an7583_usb_phy_instance *instance = phy_get_drvdata(phy);
> 
> [Severity: High]
> Does this initialization omit a call to phy_init(instance->serdes_phy)? Since
> the wrapper PHY intercepts the init call, failing to forward it might leave
> the physical SerDes lines uninitialized and the PCIe and USB 3.0 interfaces
> non-functional.
> 
> > +
> > +	switch (instance->type) {
> > +	case PHY_TYPE_USB2:
> 
> [ ... ]
> 
> > +static int an7583_usb_phy_power_on(struct phy *phy)
> > +{
> > +	struct an7583_usb_phy_instance *instance = phy_get_drvdata(phy);
> 
> [Severity: High]
> Similarly, does this fail to call phy_power_on(instance->serdes_phy)? This
> seems to leave the physical SerDes disabled when a consumer attempts to power
> on the PHY.
> 
> > +
> > +	switch (instance->type) {
> > +	case PHY_TYPE_USB2:
> 
> [ ... ]
> 
> > +static int an7583_usb_phy_u3_set_mode(struct phy *phy, enum phy_mode mode,
> > +				      int submode)
> > +{
> > +	struct an7583_usb_phy_instance *instance = phy_get_drvdata(phy);
> > +	int ret;
> > +
> > +	switch (mode) {
> 
> [ ... ]
> 
> > +	}
> > +
> > +	ret = phy_set_mode_ext(instance->serdes_phy, mode, submode);
> 
> [Severity: Medium]
> Can this nested call to phy_set_mode_ext() on the child SerDes PHY cause a
> lockdep warning?
> 
> Since the parent PHY's mutex is already held by the framework, and all PHY
> mutexes are initialized with the same lockdep key, this might trigger a
> possible recursive locking deadlock warning. This pattern also appears in
> an7583_usb_phy_pcie_set_mode().
> 
> [ ... ]
> 
> > +static struct phy *an7583_usb_phy_xlate(struct device *dev,
> > +					const struct of_phandle_args *args)
> > +{
> > +	struct an7583_usb_phy_priv *priv = dev_get_drvdata(dev);
> > +	const struct an7583_usb_phy_match_data *data;
> > +	struct device_node *phy_np = args->np;
> > +	struct phy *phy = NULL;
> > +	int type, index;
> > +
> > +	data = of_device_get_match_data(dev);
> > +
> > +	if (args->args_count != 1) {
> > +		dev_err(dev, "invalid number of cells in 'phy' property\n");
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	for (index = 0; index < data->max_instance; index++) {
> > +		if (!priv->phys[index])
> > +			continue;
> > +
> > +		if (phy_np == priv->phys[index]->dev.of_node) {
> > +			phy = priv->phys[index];
> > +			break;
> > +		}
> > +	}
> 
> [ ... ]
> 
> > +static int an7583_usb_phy_probe(struct platform_device *pdev)
> > +{
> 
> [ ... ]
> 
> > +	phy_provider = devm_of_phy_provider_register(dev, an7583_usb_phy_xlate);
> 
> [Severity: High]
> Does this incorrectly isolate the subnodes from the PHY core?
> 
> By registering the provider with devm_of_phy_provider_register(dev, ...)
> instead of using a variant that checks the children tree, the PHY core might
> fail to traverse to the child nodes when looking up the PHY.
> 
> Furthermore, in an7583_usb_phy_xlate(), comparing the parent node (args->np)
> against the child node stored in priv->phys[index]->dev.of_node would
> guarantee a mismatch. Would this make the USB PHY instances completely
> inaccessible to any consumer?
> 

Is AI getting drunk? Aside from the mostly unreadable message, this is
totally non-sense and out of complete speculation.

The scenario pointed out by AI is in the case where a consumer reference
the provider node in DT but this was never suggested and actually an
implementation error of the user writing the device tree.

The Documentation example instruct for USB nodes to put the phy cell in the
child node, NEVER in the provider node. Any kind of phandle will fail as
the correct cell property won't be found. So I'm not really understanding
the error pointed out here.

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
