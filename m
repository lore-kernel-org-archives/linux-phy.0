Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A18E0D116E4
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 02:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJW/3kIcOfsMId8l09GupxK8DxhbRegbqNrLMJuob9s=; b=qy2KWx6iZfRzkb
	VUD7+mfc6Cy+Kx38BLFdDxGBqnEVlsoJ1SbWJIyM60Vu2pHfqeplsZcPPhFlwEpe3wbbzbzYXDOp+
	YpbOnlfKzaw6zYM9arZeCF8LUBuF8s3LbPhOH/22JZ57azK2VMTC8+P2kPtW3Q0vQViB6vvP8ttur
	xkEl0T8XQPyAenWLNeci6ekc3liQ/ZHh28Pkqa4CmRmN9t54NsN5SsQPKMuXNEQWnVjzS9fMdrEOU
	MJjnVqY2KkEMCh6s0RoLcQbC5vOPsHwKXGzxxaEtj3nIFl63rMwCJRKZNAcCh2BYdIADEdsZSt5/y
	+C7FQpfCyErhUFDuG3rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vORkw-0000000FtdG-0tO5;
	Thu, 27 Nov 2025 02:29:14 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vORks-0000000FtcT-0cbF
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 02:29:12 +0000
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 04BD940F84
	for <linux-phy@lists.infradead.org>; Thu, 27 Nov 2025 02:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1764210546;
	bh=moRkfSdnKWE1L7iwARGDzQBHaEjyYU2g3c8YIY8z8/w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=g1k1V0VpiML9C40ropMqf3FYFMCWSouGzWdLohjpPhGvVXU+TvdK/R2o2uFUuchyV
	 Vdqo1/PQlStgEHfFH7gVJjG7Lf+4trkbMZDvQ3/VdPtRZHi6AJBth4QfrXPWXLdj8c
	 PGKVLxQti6V+k2URgdyZUW7UgUd0nuegqP5UVi1u1aBXfMR/Z7e229ROPt+GWEU5pS
	 8Mo9fArsO6udntZDDznwGI7tdW/a/VW2QAZ3taJCbRgWH5If03duaQtGiJjpy2rW47
	 GU8hBY0VEyctxbFXuSOFYh1djoNf+T0hHFRJWwX+F9JZvpQ6lNlfe+/1X9uZR7BMn/
	 5tHo0XujjeZzZlB/u3S1mk542Y6zesINLddhpLerPYAq1Jk54spq3qiL2/nNwydtBk
	 3B505QnP/059ZZkGCmsvusSKmR/OhqjX9w2GNUAAwvQmSODSECgoMjKwHpm+iBqeza
	 o1xeAa+ubnqg7eiO+XyHBNd+xS6Fb0Fy+PArUxV26JjRuOw1Vv1CHMzZ2vUWJqONCb
	 0nJFHXXj+k47QvKBEPDtwvCaBsa6AYgRwCj8r+xQjEXjpiftdCSv7Mmj3gAqPjEpiD
	 IIw30NPHXw2YEvZ1rdTNXTs4abt0oCVHpCBoHWttPn/1wp0mBz3okZ8QMS+xeU6lFm
	 XrnWe57JDV/KH/m7Mwncg+6k=
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295595cd102so6205105ad.3
        for <linux-phy@lists.infradead.org>; Wed, 26 Nov 2025 18:29:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764210544; x=1764815344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=moRkfSdnKWE1L7iwARGDzQBHaEjyYU2g3c8YIY8z8/w=;
        b=iqr2ytg2xq6KeKJA0h0SzOxAbYcUpLPqIOfm15c5nTZchqfKc5CrOutNVhKB1IjmKr
         HUJDAJs3v91o1rm6fK6gyk3DW+kx5uaVJraJJBX/GoZ7HNrEtz+91W+r8sUNNUF1xvLo
         Itf9f89iiph08+xFuQYlIlmazZ5btFKAtWa/ghN03yZPJ5ScXiyVKU3agQkV+beBteTH
         1nStWsZVE1TW4IpLmojc/kicI8to12x2oP7Bk8hsk5kb0NcobCJISNb6YpH5KWkYJOqm
         z4cXd2rujshTVk4Yza29ZddVVJwXUIHPnkjQp+SXLiG+fyzWaKyW2HFaYff7iXz9KACM
         G8MA==
X-Forwarded-Encrypted: i=1; AJvYcCXCS+la676tyy9Dzxif+8s/9wJ/igpLdR6FDYDNN6sr1mqQrbC5ZJ5Kks5HfcBVC26iCU1r5ALpN5c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyWKwE+Ukw9gVR5lvO+pKhRuekrvqFic8q9ggt/83B9xKKMl8P
	HJ/5P5DOuFVNV4XD8R1BII2rtOHhWaPEHqkbvG5yQRKzYL8dcwIEz3xN80shPMrFgaiKIotu47q
	MSRW75bUOTgCP0taIC44gfndbLSDCeLeXj6RBLscFaQJvhPIrbIxSr64VvC3lmMRUkBB8JVZO8b
	EAUhr2eJw=
X-Gm-Gg: ASbGncsNVZoyXNsGPrPb0EmH2qP7d+8+Kxf4U2SJUSvj+E5hkTm3TfExY45ivvK/PKL
	GrxlIj/w4vDize+yfb9yfAMlSoDiEd0KB+QPedsh8+R4yKXjzGxyVPDj5fiFTaZridSeIa+sNzC
	xp7nvIgTRSTHrNRlh+CDXHq+l5BhtGqkSoIROcWXhEZNWYzKJB1LPZ6YT+0C+qPzqOP07ghIA3G
	eJQFXSGfW0axkWfw6TbTvNXkswAuhGyux1NvqOjN++TbVYoy/kzmwaaGlvx+JSuTBKF5T3ujosU
	c2BPHT+9G0sw0gTw8ARZg2XJrTbivNP2MUL6m95IYSdp7YcIJ+yPicoqfJ/KfL+RenY00MAytvO
	eNmRMKzdm3FXA3BYpGajxw6FWUVe0ijvBamDkXQx5OM1eXkZIP8uzfOpQFoWeej95Sk1aanGNR0
	hVEKganakMbZDwWE7r9GKTRlDjR3UH/8ND8PgNsRgaDx83I17xfmhrBA==
X-Received: by 2002:a17:903:1212:b0:295:f47:75cb with SMTP id d9443c01a7336-29b6becc173mr231768945ad.23.1764210544433;
        Wed, 26 Nov 2025 18:29:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJbyia6acW5QghgQDjbQSlX3VHT1ZArhGAQXYDqmf0tGph2/FKIDt4U28ZbOGlnwTPfcPKYg==
X-Received: by 2002:a17:903:1212:b0:295:f47:75cb with SMTP id d9443c01a7336-29b6becc173mr231768485ad.23.1764210543907;
        Wed, 26 Nov 2025 18:29:03 -0800 (PST)
Received: from localhost.localdomain (125-228-254-191.hinet-ip.hinet.net. [125.228.254.191])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b25e638sm211732475ad.58.2025.11.26.18.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 18:29:03 -0800 (PST)
From: Jian Hui Lee <jianhui.lee@canonical.com>
To: tommaso.merciai.xr@bp.renesas.com
Cc: andi.shyti@kernel.org,
	arnd@arndb.de,
	biju.das.jz@bp.renesas.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	fabrizio.castro.jz@renesas.com,
	geert+renesas@glider.be,
	gregkh@linuxfoundation.org,
	jonathan.cameron@huawei.com,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	peda@axentia.se,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tomm.merciai@gmail.com,
	ukleinek@kernel.org,
	vkoul@kernel.org,
	yoshihiro.shimoda.uh@renesas.com
Subject: Re: [PATCH v4 06/22] mux: Add driver for Renesas RZ/V2H USB VBUS_SEL mux
Date: Thu, 27 Nov 2025 10:28:41 +0800
Message-ID: <20251127022841.743277-1-jianhui.lee@canonical.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <d4152c7008cadbb1fbfaab3d7946b036dcdbcca8.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
References: <d4152c7008cadbb1fbfaab3d7946b036dcdbcca8.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_182910_576573_11D4C23C 
X-CRM114-Status: GOOD (  33.90  )
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

On Fri, Nov 21, 2025 at 04:11:55PM +0100, Tommaso Merciai wrote:
> As per the RZ/V2H(P) HW manual, VBUSEN can be controlled by the VBUS_SEL
> bit of the VBENCTL Control Register. This register is mapped in the
> reset framework. The reset driver expose this register as mux-controller
> and instantiates this driver. The consumer will use the mux API to
> control the VBUS_SEL bit.
> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v3->v4:
>  - Removed mux_chip->dev.of_node not needed.
> 
> v2->v3:
>  - Added mux_chip->dev.of_node = dev->of_node->child as the mux-controller
>    is an internal node.
>  - Fixed auxiliary_device_id name.
>  - Get rdev using from platform_data.
>  - Drop struct auxiliary_device adev from reset_rzv2h_usb2phy_adev
>    as it is needed.
>  - Drop to_reset_rzv2h_usb2phy_adev() as it is not needed.
> 
> v1->v2:
>  - New patch
> 
>  drivers/mux/Kconfig                       | 10 +++
>  drivers/mux/Makefile                      |  2 +
>  drivers/mux/rzv2h-usb-vbus.c              | 97 +++++++++++++++++++++++
>  include/linux/reset/reset_rzv2h_usb2phy.h | 11 +++
>  4 files changed, 120 insertions(+)
>  create mode 100644 drivers/mux/rzv2h-usb-vbus.c
>  create mode 100644 include/linux/reset/reset_rzv2h_usb2phy.h
> 
> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> index c68132e38138..604f625544ed 100644
> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -59,4 +59,14 @@ config MUX_MMIO
>  	  To compile the driver as a module, choose M here: the module will
>  	  be called mux-mmio.
>  
> +config MUX_RZV2H_VBENCTL
> +	tristate "Renesas RZ/V2H USB VBUS mux driver"
> +	depends on RESET_RZV2H_USB2PHY || COMPILE_TEST
> +	depends on OF
> +	select REGMAP_MMIO
> +	select AUXILIARY_BUS
> +	default RESET_RZV2H_USB2PHY
> +	help
> +	  Support for VBUS mux implemented on Renesas RZ/V2H SoCs.
> +
>  endmenu
> diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
> index 6e9fa47daf56..9421660399af 100644
> --- a/drivers/mux/Makefile
> +++ b/drivers/mux/Makefile
> @@ -8,9 +8,11 @@ mux-adg792a-objs		:= adg792a.o
>  mux-adgs1408-objs		:= adgs1408.o
>  mux-gpio-objs			:= gpio.o
>  mux-mmio-objs			:= mmio.o
> +mux-rzv2h-usb-vbus-objs		:= rzv2h-usb-vbus.o
>  
>  obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
>  obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
>  obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
>  obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
>  obj-$(CONFIG_MUX_MMIO)		+= mux-mmio.o
> +obj-$(CONFIG_MUX_RZV2H_VBENCTL)	+= mux-rzv2h-usb-vbus.o
> diff --git a/drivers/mux/rzv2h-usb-vbus.c b/drivers/mux/rzv2h-usb-vbus.c
> new file mode 100644
> index 000000000000..9513bc8f35ff
> --- /dev/null
> +++ b/drivers/mux/rzv2h-usb-vbus.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Renesas RZ/V2H(P) USB2 VBUS_SEL mux driver
> + *
> + * Copyright (C) 2025 Renesas Electronics Corp.
> + */
> +
> +#include <linux/auxiliary_bus.h>
> +#include <linux/bitops.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/mux/driver.h>
> +#include <linux/of.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/reset/reset_rzv2h_usb2phy.h>
> +
> +#define RZV2H_VBENCTL		0xf0c
> +
> +struct mux_rzv2h_usb_vbus_priv {
> +	struct regmap_field *field;
> +};
> +
> +static int mux_rzv2h_usb_vbus_set(struct mux_control *mux, int state)
> +{
> +	struct mux_rzv2h_usb_vbus_priv *priv = mux_chip_priv(mux->chip);
> +
> +	return regmap_field_write(priv->field, state);
> +}
> +
> +static const struct mux_control_ops mux_rzv2h_usb_vbus_ops = {
> +	.set = mux_rzv2h_usb_vbus_set,
> +};
> +
> +static const struct regmap_config rzv2h_usb_vbus_regconf = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = RZV2H_VBENCTL,
> +};
> +
> +static int mux_rzv2h_usb_vbus_probe(struct auxiliary_device *adev,
> +				    const struct auxiliary_device_id *id)
> +{
> +	struct reset_rzv2h_usb2phy_adev *rdev = adev->dev.platform_data;
> +	struct mux_rzv2h_usb_vbus_priv *priv;
> +	struct device *dev = &adev->dev;
> +	struct mux_chip *mux_chip;
> +	struct regmap *regmap;
> +	struct reg_field reg_field = {
> +		.reg = RZV2H_VBENCTL,
> +		.lsb = 0,
> +		.msb = 0,
> +	};
> +	int ret;
> +
> +	regmap = devm_regmap_init_mmio(dev, rdev->base, &rzv2h_usb_vbus_regconf);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	mux_chip = devm_mux_chip_alloc(dev, 1, sizeof(*priv));
> +	if (IS_ERR(mux_chip))
> +		return PTR_ERR(mux_chip);
> +
> +	priv = mux_chip_priv(mux_chip);
> +
> +	priv->field = devm_regmap_field_alloc(dev, regmap, reg_field);
> +	if (IS_ERR(priv->field))
> +		return PTR_ERR(priv->field);
> +
> +	mux_chip->ops = &mux_rzv2h_usb_vbus_ops;
> +	mux_chip->mux[0].states = 2;
> +	mux_chip->mux[0].idle_state = MUX_IDLE_AS_IS;
> +
> +	ret = devm_mux_chip_register(dev, mux_chip);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to register mux chip\n");
> +
> +	return 0;
> +}
> +
> +static const struct auxiliary_device_id mux_rzv2h_usb_vbus_ids[] = {
> +	{ .name = "rzv2h_usb2phy_reset.vbus-sel-mux" },

hi Tommaso,
this string causes buffer overflow, could you help to check on it?

[   15.349036] strlen: detected buffer overflow: 33 byte read of buffer size 32
[   15.349083] WARNING: CPU: 0 PID: 518 at lib/string_helpers.c:1035 __fortify_report+0x64/0xc8
[   15.349110] Modules linked in: mux_rzv2h_usb_vbus(+) rcar_canfd(+) mtd sm4_ce(-) can_dev rz_dmac(+) pwm_rzg2l_gpt binfmt_misc dm_multipath efi_pstore nfnetlink ip_tables x_tables autofs4 btrfs blake2b_generic raid10 raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor xor_neon raid6_pq raid1 raid0 linear rtc_isl1208 micrel phy_package mmc_block raa215300 rpmb_core dwmac_renesas_gbeth spi_rpc_if pcs_rzn1_miic stmmac_platform stmmac polyval_ce renesas_sdhi_internal_dmac renesas_usbhs ghash_ce panfrost udc_core pcs_xpcs renesas_sdhi_core reset_rzv2h_usb2phy gpu_sched tmio_mmc_core xhci_rcar_hcd ehci_platform sm4 phy_rzg3e_usb3 phy_rcar_gen3_usb2 rzv2m_usb3drd xhci_plat_hcd ohci_platform renesas_rpc_if i2c_riic gpio_regulator gpio_keys fixed aes_neon_bs aes_neon_blk aes_ce_blk aes_ce_cipher
[   15.349359] CPU: 0 UID: 0 PID: 518 Comm: (udev-worker) Not tainted 6.18.0-5.5 #3 PREEMPT(voluntary)
[   15.349371] Hardware name: Renesas SMARC EVK version 2 based on r9a09g047e57 (DT)
[   15.349380] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[   15.349390] pc : __fortify_report+0x64/0xc8
[   15.349400] lr : __fortify_report+0x64/0xc8
[   15.349408] sp : ffff8000854fb830
[   15.349413] x29: ffff8000854fb830 x28: ffff80007c7a41d8 x27: ffff80007c7a4300
[   15.349430] x26: ffff800083c4d780 x25: 0000000000000000 x24: ffff0000c5de9de8
[   15.349446] x23: ffff800081d23b68 x22: ffff0000c004b200 x21: ffff0000ca6dd080
[   15.349462] x20: 0000000000000020 x19: ffff80007c7a6140 x18: ffff800084b870a8
[   15.349477] x17: 0000000000000000 x16: 0000000000000000 x15: 0000000000000000
[   15.349492] x14: 0000000000000000 x13: 323320657a697320 x12: 7265666675622066
[   15.349507] x11: 0000000000000000 x10: 0000000000000000 x9 : ffff800080208f0c
[   15.349522] x8 : 0000000000000000 x7 : 0000000000000000 x6 : 0000000000000000
[   15.349536] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000000
[   15.349550] x2 : 0000000000000000 x1 : 0000000000000000 x0 : 0000000000000000
[   15.349565] Call trace:
[   15.349572]  __fortify_report+0x64/0xc8 (P)
[   15.349583]  __fortify_panic+0x14/0x18
[   15.349595]  auxiliary_match_id+0xf8/0x110
[   15.349608]  auxiliary_match+0x28/0x60
[   15.349617]  __driver_attach+0x34/0x2a8
[   15.349629]  bus_for_each_dev+0x88/0x110
[   15.349639]  driver_attach+0x30/0x60
[   15.349649]  bus_add_driver+0x178/0x2d8
[   15.349658]  driver_register+0x74/0x178
[   15.349668]  __auxiliary_driver_register+0x7c/0x150
[   15.349677]  mux_rzv2h_usb_vbus_driver_init+0x34/0xfd0 [mux_rzv2h_usb_vbus]

> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(auxiliary, mux_rzv2h_usb_vbus_ids);
> +
> +static struct auxiliary_driver mux_rzv2h_usb_vbus_driver = {
> +	.name		= "vbus-sel-mux",
> +	.probe		= mux_rzv2h_usb_vbus_probe,
> +	.id_table	= mux_rzv2h_usb_vbus_ids,
> +};
> +module_auxiliary_driver(mux_rzv2h_usb_vbus_driver);
> +
> +MODULE_DESCRIPTION("RZ/V2H USB VBUS_SEL mux driver");
> +MODULE_AUTHOR("Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/reset/reset_rzv2h_usb2phy.h b/include/linux/reset/reset_rzv2h_usb2phy.h
> new file mode 100644
> index 000000000000..06247080a66c
> --- /dev/null
> +++ b/include/linux/reset/reset_rzv2h_usb2phy.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _RESET_RZV2H_USB2PHY_H
> +#define _RESET_RZV2H_USB2PHY_H
> +
> +#include <linux/auxiliary_bus.h>
> +
> +struct reset_rzv2h_usb2phy_adev {
> +	void __iomem *base;
> +};
> +
> +#endif
> -- 
> 2.43.0
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
