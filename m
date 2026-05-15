Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F4ACCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 12:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNJCjSgh01kL8UtkLxhPXpwYzwSymhl2oy0ZZBSMNCU=; b=MpzGLqrz0SCz/n
	bf1YsCVeTHsLuuEyX/VoaoPz5Uc9/740VPclpCk0fuxYC43lKXjmTcAY5jDAEbjE70MBrggnglNuG
	9/gec0fn0t5dDK4UoViuWO3iDryTStkysC7W5OIPforaGaRvrUcTW5w/kfvtU9kahZbHL9JE+UvP3
	ktr4AGSaFm1uwSVl2bRm1uaizptVNl3eKl4+25FOjy4XEL5AdJ4qi0UJDof/wnzo0l2YoZKol/lFe
	wAztKtx3/rGE5o4ABi2S+PKGjh8MmXQ9JK4m9WeEqcVWVg3LNjxWN5t721ErrP2177+pxuLWgx23y
	dz9QOhLHXTp0WTnI6jCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrad-00000008Jcw-2NPt;
	Fri, 15 May 2026 12:24:27 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrab-00000008JcB-00C7
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 12:24:27 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-48d10c981e4so10674695e9.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 05:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778847863; x=1779452663; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8XqpAyLmGQCyogYc0ZRPb2ZQz/k14Ga1XFZBsKcAbX0=;
        b=RrVmYN0X5Bbw0XDhpAfPYXyn7i2XxdLfyqhTyhEmyt/XZBS+EAo+3yXXOsWMVIGj5s
         I99mY06a/zNJlrIYNDW+ZfigZWkD82BJVLeP1TEyj/i5m8PaA53XGvOOkI/TxZ90EEEz
         6U8007L6JhsiSYTVVvN5pcMTH9N00aDlgccCP4rla1BffV78xWXRFXNkDeHDegvnI5zq
         ZLCF27Ay+RavkCZq419zUtTN/6D2mkc7aqKxp18tk7XKXR2VMz3OKdSCqK/Og8pIpsRr
         8p48eaijPPIEtJAkA7ajlzisWotmvrjHUSGFUzTqYRGC3Z9wrGlytPXn33JuzVaSsYx9
         p25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778847863; x=1779452663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8XqpAyLmGQCyogYc0ZRPb2ZQz/k14Ga1XFZBsKcAbX0=;
        b=pBkKuLm4chWqlPVZJg26eg2lCM5cySLJr/O+jGZI9PW8p4iU6CuEjkSifrf00roDWB
         NvZaD4AyYK4fNK0MSfSFuR6OmgE//6gjgdE/0cpiaMAkD3DUT6A9XcSEoCbbV0H1bRwF
         6sZSseoH/fh7Iu8KbBcxY4VkKT4LurJMlJGBies+XKGzN/lAt/C5e1Il1ttSFFtRoLv5
         v31+yx+oVK2VfBIUIcYfPn5dIrlXOqudWBgO+SuY68r48v3CpOPLhSHdZZuE4VEXdPf1
         UFRVkXBKSyftNxYFW0wwpdlbZ1RrwqhF5xoeaYaNmj1F+2DrV3RypuauLv1Zqbw2XVTg
         mbsQ==
X-Forwarded-Encrypted: i=1; AFNElJ8kSfpTolqojcqemdvLVDASQpYprTLVNo20X3MYK2exzALRgrx5JXYq5DlVFDsacNRf4mE9/N53fVI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAKzBlar5Az6jFK9iXiT8QzZxML8bMJhwHa71E8Jj8mi2coizk
	MUPZWXEgcvGorKISd6EBzy1VMDx29kOp6aJEeMcIGKkW2u003GgAqHQwh56gZg==
X-Gm-Gg: Acq92OGVBNSot1JBjSzAHyDMHqcOLnl/b0dw/n7J4KZDHHvjD/JAbTqvxC2IUl1JnEH
	KkVyNRrwjxtKsXS3ytBpBV4Pw175qM08xa5BbkWiLf2tfOijM2MoucuMAjd7yy0xrU4E/uLVphJ
	dHq/+mue++BJ7Yy7kglehg8ReBG7SjuSMu3UnYdsk1/N/FbYxn3bCsnFktgi0gWNck3fmvj++iA
	0bGv6ZOcy2hNECbzusNGnAd6d4xUZkIbWzwQtVLzDUhA51fycV2JD8CORn1fHk/XG6pbxd3IjI9
	55WaKLqZw4J68/tNQWVZSOg8D+4aj3jyy40Zelp+JV5QyqHRu8rR8pd3hU+yBzJNoZ+SXCpSehJ
	U3b/s7CwTexpeiMzOskyXBsQyreTCFfdvMblWRk6/7OjYoOxSn2LEhIviP4iZS0hV357WcPISHg
	IN0M4wcCFFTcUScw==
X-Received: by 2002:a05:600c:c177:b0:48a:56d4:7274 with SMTP id 5b1f17b1804b1-48fe66423ecmr25025435e9.3.1778847862553;
        Fri, 15 May 2026 05:24:22 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d507:6e00:9f61:24db:b04:35c4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4c834besm58836735e9.3.2026.05.15.05.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 05:24:21 -0700 (PDT)
Date: Fri, 15 May 2026 15:24:18 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <20260515122418.edzemzv5gnronihb@skbuf>
References: <20260515110145.1925579-1-ioana.ciornei@nxp.com>
 <20260515110145.1925579-1-ioana.ciornei@nxp.com>
 <20260515110145.1925579-3-ioana.ciornei@nxp.com>
 <20260515110145.1925579-3-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515110145.1925579-3-ioana.ciornei@nxp.com>
 <20260515110145.1925579-3-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_052425_107017_DE7D5BC7 
X-CRM114-Status: GOOD (  45.16  )
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

On Fri, May 15, 2026 at 02:01:45PM +0300, Ioana Ciornei wrote:
> Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> speeds but it can easily extended to also cover other usecases.
> 
> Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> does not name the registers, the name for the macros were determined by
> their usage pattern.
> 
> A PHY device is created for each of the two channels present on the
> retimer. This allows for independent configuration of the two channels.
> This capability is especially important on retimers which have more than
> 2 channels that can be, depending on the board design, connected in
> multiple different ways to the SerDes lanes.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
> - Explicitly include all the needed headers
> - Change ds125df111_xlate() so that it returns an error if args_count is
> not exactly 1
> - Add a MAINTAINERS entry
> ---
>  MAINTAINERS                     |   7 +
>  drivers/phy/ti/Kconfig          |  10 ++
>  drivers/phy/ti/Makefile         |   1 +
>  drivers/phy/ti/phy-ds125df111.c | 252 ++++++++++++++++++++++++++++++++
>  4 files changed, 270 insertions(+)
>  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f877e5aaf2c7..58f410b666e7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -26781,6 +26781,13 @@ T:	git git://linuxtv.org/mhadli/v4l-dvb-davinci_devices.git
>  F:	drivers/media/platform/ti/davinci/
>  F:	include/media/davinci/
>  
> +TI DS125DF111 RETIMER PHY DRIVER
> +M:	Ioana Ciornei <ioana.ciornei@nxp.com>
> +L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> +F:	drivers/phy/ti/phy-ds125df111.c
> +
>  TI ENHANCED CAPTURE (eCAP) DRIVER
>  M:	Vignesh Raghavendra <vigneshr@ti.com>
>  R:	Julien Panis <jpanis@baylibre.com>
> diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> index b40f28019131..475e80fcd52d 100644
> --- a/drivers/phy/ti/Kconfig
> +++ b/drivers/phy/ti/Kconfig
> @@ -111,3 +111,13 @@ config PHY_TI_GMII_SEL
>  	help
>  	  This driver supports configuring of the TI CPSW Port mode depending on
>  	  the Ethernet PHY connected to the CPSW Port.
> +
> +config PHY_TI_DS125DF111
> +	tristate "DS125DF111 2-Channel Retimer Driver"
> +	depends on OF && I2C
> +	select GENERIC_PHY
> +	help
> +	  Enable this to add support for configuration and runtime management
> +	  of the TI DS125DF111 Multi-Protocol 2-Channel Retimer.
> +	  The retimer is modeled as a Generic PHY and supports both 10G and 1G
> +	  link speeds.
> diff --git a/drivers/phy/ti/Makefile b/drivers/phy/ti/Makefile
> index dcba2571c9bd..e68445ddd848 100644
> --- a/drivers/phy/ti/Makefile
> +++ b/drivers/phy/ti/Makefile
> @@ -9,3 +9,4 @@ obj-$(CONFIG_TWL4030_USB)		+= phy-twl4030-usb.o
>  obj-$(CONFIG_PHY_AM654_SERDES)		+= phy-am654-serdes.o
>  obj-$(CONFIG_PHY_TI_GMII_SEL)		+= phy-gmii-sel.o
>  obj-$(CONFIG_PHY_J721E_WIZ)		+= phy-j721e-wiz.o
> +obj-$(CONFIG_PHY_TI_DS125DF111)		+= phy-ds125df111.o
> diff --git a/drivers/phy/ti/phy-ds125df111.c b/drivers/phy/ti/phy-ds125df111.c
> new file mode 100644
> index 000000000000..084a94e655c2
> --- /dev/null
> +++ b/drivers/phy/ti/phy-ds125df111.c
> @@ -0,0 +1,252 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright 2026 NXP */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +#include <linux/slab.h>
> +
> +#define DS125DF111_NUM_CH			2
> +#define DS125DF111_NUM_VCO_GROUP_REG		5
> +
> +#define DS125DF111_CH_SELECT			0xff
> +#define DS125DF111_CH_SELECT_TARGET_MASK	GENMASK(3, 0)
> +#define DS125DF111_CH_SELECT_EN			BIT(2)
> +
> +#define DS125DF111_CH_CTRL			0x00
> +#define DS125DF111_CH_CTRL_RESET		BIT(2) /* self clearing */
> +
> +#define DS125DF111_VCO_GROUP_BASE		0x60
> +
> +#define DS125DF111_RATIOS			0x2F
> +#define DS125DF111_RATIOS_RATE_MASK		GENMASK(7, 6)
> +#define DS125DF111_RATIOS_SUBRATE_MASK		GENMASK(5, 4)
> +
> +struct ds125df111_ch {
> +	struct phy *phy;
> +	struct ds125df111_priv *priv;
> +	int idx;
> +};
> +
> +struct ds125df111_priv {
> +	struct ds125df111_ch ch[DS125DF111_NUM_CH];
> +	struct i2c_client *client;
> +	struct mutex mutex; /* protects access to shared registers */
> +};
> +
> +enum ds125df111_mode {
> +	FREQ_1G,
> +	FREQ_10G,
> +};
> +
> +static const struct ds125df111_config {
> +	u8 vco_group[DS125DF111_NUM_VCO_GROUP_REG];
> +	u8 rate;
> +	u8 subrate;
> +} ds125df111_cfg[] = {
> +	[FREQ_1G] = {
> +		/* VCO group #0 = 10GHz, VCO group #1 = 10GHz */
> +		.vco_group = {0x00, 0xB2, 0x00, 0xB2, 0xCC},
> +		/* By using the following combination of rate and subrate we
> +		 * select divide ratios of 1, 2, 4, 8 on both groups
> +		 */
> +		.rate = 0x1,
> +		.subrate = 0x2,
> +	},
> +
> +	[FREQ_10G] = {
> +		/* VCO group #0 = 10.3125GHz, VCO group #1 = 10.3125GHz */
> +		.vco_group = {0x90, 0xB3, 0x90, 0xB3, 0xCD},
> +		/* By using the following combination of rate and subrate we
> +		 * select divide ratios of 1 on both groups
> +		 */
> +		.rate = 0x1,
> +		.subrate = 0x3,
> +	},
> +};
> +
> +static int ds125df111_configure(struct phy *phy,
> +				const struct ds125df111_config *cfg)
> +{
> +	struct ds125df111_ch *ch = phy_get_drvdata(phy);
> +	struct ds125df111_priv *priv = ch->priv;
> +	struct i2c_client *i2c = priv->client;
> +	struct device *dev = &phy->dev;
> +	u8 val;
> +	int err, i;

Not mandatory, but if the rest of the file uses reverse Christmas tree
variable ordering, could you stick to that here as well?

> +
> +	mutex_lock(&priv->mutex);
> +
> +	/* Make sure that any subsequent read/write operation will be directed
> +	 * only to the registers of the selected channel
> +	 */
> +	err = i2c_smbus_read_byte_data(i2c, DS125DF111_CH_SELECT);
> +	if (err < 0) {
> +		dev_err(dev, "Unable to select channel\n");

Here and everywhere else: could you please print a symbolic description
of the error? %pe, ERR_PTR(err).

> +		goto out;
> +	}
> +	val = (u8)err;
> +	val &= ~DS125DF111_CH_SELECT_TARGET_MASK;
> +	val |= DS125DF111_CH_SELECT_EN | ch->idx;
> +	err = i2c_smbus_write_byte_data(i2c, DS125DF111_CH_SELECT, val);
> +	if (err < 0) {
> +		dev_err(dev, "Unable to select channel\n");
> +		goto out;
> +	}
> +
> +	/* Reset Channel Registers */
> +	err = i2c_smbus_read_byte_data(i2c, DS125DF111_CH_CTRL);
> +	if (err < 0) {
> +		dev_err(dev, "Error resetting channel configuration\n");
> +		goto out;
> +	}
> +	val = (u8)err;
> +	val |= DS125DF111_CH_CTRL_RESET;
> +	err = i2c_smbus_write_byte_data(i2c, DS125DF111_CH_CTRL, val);
> +	if (err < 0) {
> +		dev_err(dev, "Error resetting channel configuration\n");
> +		goto out;
> +	}

Did you consider simplifying this function using a ds125df111_rmw() helper?
All configuration accesses except the VCO group frequencies are
read-modify-write.

> +
> +	/* Program the VCO group frequencies */
> +	for (i = 0; i < DS125DF111_NUM_VCO_GROUP_REG; i++) {
> +		err = i2c_smbus_write_byte_data(i2c,
> +						DS125DF111_VCO_GROUP_BASE + i,
> +						cfg->vco_group[i]);
> +		if (err < 0) {
> +			dev_err(dev, "Error programming VCO group frequencies\n");
> +			goto out;
> +		}
> +	}
> +
> +	/* Set the Divide Ratios for the VCO Groups*/

Space between Groups and */
Also, Divide Ratios, Groups, Channel Registers are not proper nouns,
they don't need to be capitalized.

> +	err = i2c_smbus_read_byte_data(i2c, DS125DF111_RATIOS);
> +	if (err < 0) {
> +		dev_err(dev, "Error programming the divide ratios\n");
> +		goto out;
> +	}
> +	val = (u8)err;
> +	val &= ~(DS125DF111_RATIOS_RATE_MASK | DS125DF111_RATIOS_SUBRATE_MASK);
> +	val |= FIELD_PREP(DS125DF111_RATIOS_RATE_MASK, cfg->rate) |
> +		FIELD_PREP(DS125DF111_RATIOS_SUBRATE_MASK, cfg->subrate);
> +	err = i2c_smbus_write_byte_data(i2c, DS125DF111_RATIOS, val);
> +	if (err < 0) {
> +		dev_err(dev, "Error programming the divide ratios\n");
> +		goto out;
> +	}
> +
> +	mutex_unlock(&priv->mutex);
> +
> +	return 0;
> +
> +out:
> +	mutex_unlock(&priv->mutex);
> +
> +	return err;

You don't need a separate code path for the 'out' label, it can be
common with the normal exit path (err will be 0).

> +}
> +
> +static int ds125df111_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	const struct ds125df111_config *cfg;
> +
> +	if (mode != PHY_MODE_ETHERNET)
> +		return -EOPNOTSUPP;

Please use a different error code like -EINVAL. Let -EOPNOTSUPP mean
that the function is not implemented (when calling phy_set_mode_ext()).

> +
> +	switch (submode) {
> +	case PHY_INTERFACE_MODE_10GBASER:
> +		cfg = &ds125df111_cfg[FREQ_10G];
> +		break;
> +	case PHY_INTERFACE_MODE_1000BASEX:
> +	case PHY_INTERFACE_MODE_SGMII:
> +		cfg = &ds125df111_cfg[FREQ_1G];
> +		break;
> +	default:
> +		return -EOPNOTSUPP;

Same here.

> +	}
> +
> +	return ds125df111_configure(phy, cfg);
> +}
> +
> +static const struct phy_ops ds125df111_ops = {
> +	.set_mode	= ds125df111_set_mode,

Can you please implement .validate() as well? It will be made mandatory
in the future for those who implement .set_mode().

> +	.owner		= THIS_MODULE,
> +};
> +
> +static struct phy *ds125df111_xlate(struct device *dev,
> +				    const struct of_phandle_args *args)
> +{
> +	struct ds125df111_priv *priv = dev_get_drvdata(dev);
> +	u32 idx;
> +
> +	if (args->args_count != 1)
> +		return ERR_PTR(-EINVAL);
> +
> +	idx = args->args[0];
> +	if (idx >= DS125DF111_NUM_CH) {
> +		dev_err(dev, "Maximum number of channels is %d\n",
> +			DS125DF111_NUM_CH);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return priv->ch[idx].phy;
> +}
> +
> +static int ds125df111_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct phy_provider *provider;
> +	struct ds125df111_priv *priv;
> +	int i, err;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +	priv->client = client;
> +	err = devm_mutex_init(dev, &priv->mutex);
> +	if (err)
> +		return err;
> +
> +	i2c_set_clientdata(client, priv);
> +
> +	for (i = 0; i < DS125DF111_NUM_CH; i++) {
> +		struct ds125df111_ch *ch = &priv->ch[i];
> +		struct phy *phy;
> +
> +		phy = devm_phy_create(dev, NULL, &ds125df111_ops);
> +		if (IS_ERR(phy))
> +			return PTR_ERR(phy);
> +
> +		ch->idx = i;
> +		ch->priv = priv;
> +		ch->phy = phy;
> +
> +		phy_set_drvdata(phy, ch);
> +	}
> +
> +	provider = devm_of_phy_provider_register(dev, ds125df111_xlate);
> +
> +	return PTR_ERR_OR_ZERO(provider);
> +}
> +
> +static const struct of_device_id ds125df111_dt_ids[] = {
> +	{ .compatible = "ti,ds125df111", },
> +	{},

Unnecessary comma after sentinel entry.

> +};
> +MODULE_DEVICE_TABLE(of, ds125df111_dt_ids);
> +
> +static struct i2c_driver ds125df111_driver = {
> +	.driver = {
> +		.name = "ds125df111",
> +		.of_match_table = ds125df111_dt_ids,
> +	},
> +	.probe = ds125df111_probe,
> +};
> +module_i2c_driver(ds125df111_driver);
> +
> +MODULE_AUTHOR("Ioana Ciornei <ioana.ciornei@nxp.com>");
> +MODULE_DESCRIPTION("TI DS125DF111 Retimer driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
