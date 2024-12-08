Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC9BFE77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 16:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GrhJxtmk07YlsCRFKLC3mW2As/8zrKaMt7iwxUElr4=; b=IJWrUeeq1YJ0hM
	yFmbpCbQYvDaHzQbEknwU67ya+1ANYzA8cewb4epjwMD8Y2C6UUBBckr7dhznS5qAgLGxsv2Lhlna
	pgoaR78eC8w4x5ytlWcF4iGZ+uZGalbqhX94pqQMT04y0Tdema5FS7cB2PDUkLUAdvbf0XFwyP29e
	u+obVLUWxvvbqnkgkzmbPmNYGKnst1g55Th1OdsPXaw3ezWsCpnGNklxQ8YSxy0ZTk0lz7g7qQIW0
	nUwpDeS2b2k3sV7SxkYV6qhopcqKtlWZymjMH1RW1T50xCg97RtA4MBEcVa+0zVTJJL2Kf5psy7us
	pwdG58mA8CCnBHyWr1XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKIo-00000005ZVu-3eO5;
	Sun, 08 Dec 2024 16:38:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKIl-00000005ZVS-2paO
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 16:38:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 95D8D5C1628;
	Sun,  8 Dec 2024 16:37:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD8A6C4CED2;
	Sun,  8 Dec 2024 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733675913;
	bh=ufoslps1bcKPpYIcdgGDac1WBviggIXkkTDYQ8sYXgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FvhGF291gORPlFbYVn26bLZ4V/MqgURwwNmG5qqHIAlcxPUWlFvItgPfXwamsssiO
	 ycY7j2NG27lAGyJS/jLTYbK5+jbdCeFMcHmcmUn9sbc2MdUnRot7Z281TruU0OKi2G
	 SNal101cAsldWQRxL2J517jPxWK5WZOldwmcxSa/8sOGNUxxHD9aPF0H6hWdZvVLFl
	 NpksmvaFmHLVdx0u10dyF7j+bL9iwUAInb8MDOaotR5MODXPkr7HIFQHE4B1mLrI3m
	 /ZShcF3Gi/Q4ABAQzbrX9yC6opFpwlMgbFCJAfpJO6bTp7yP7hJ6cywYJS5gW5fN/k
	 ibcB0JIcyI0UA==
Date: Sun, 8 Dec 2024 22:08:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
Message-ID: <Z1XLheRVQYu43hI+@vaman>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-3-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017162400.3881609-3-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_083835_867837_97D7F508 
X-CRM114-Status: GOOD (  52.29  )
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

On 17-10-24, 12:24, Markus Stockhausen wrote:
> The Realtek Otto platform is a series of 4 different MIPS32 based network
> switch SoCs. They consist of:
> 
>  - RTL838x: 500MHz single core, up to 28 ports 20GBps switching capacity
>  - RTL839x: 700MHz single core, up to 52 ports 100GBps switching capacity
>  - RTL930x: 700MHz single core, up to 28 ports 120GBps switching capacity
>  - RTL931x: 1.0GHz dual core, up to 52 ports 170GBps switching capacity
> 
> The SoCs have 6-14 SerDes that provide the interconnect between several
> one, quad or octa port attached transceivers like the RTL8214FC.
> 
> This driver builts on top of several GPL source drops from different switch
> vendors and harmonizes the different programming models. The common basics
> are:
> 
>  - A SerDes is controlled through registers that are organized into pages
>  - A page consists of 32x 16 bit registers that cover various functions
>  - Registers are either accessed through I/O addresses or an MDIO style bus
>  - The SerDes operate on different MII variants (mostly QSGMII & XGMII)
> 
> While some of the pages have meaningful names the registers within a page
> cannot be identified. Use 2 digit hex notation for a consistent register
> access in the code and debug interface.
> 
> The SerDes rely on heavy register modifications with lots of undocumented
> features. This is even hardware specific (board, transceivers, ...) and
> developers may not have access to all devices. Provide a debug interface
> that allows to access the most important internals. With that patching
> sequences can be developed that can be fed back as firmware files into
> the driver.
> 
> Examples of other drivers with similar reset/register interfaces are:
> 
>  - gpu/drm/msm/adreno/a5xx_debugfs.c
>  - gpu/drm/i915/i915_debugfs_params.c
>  - gpu/drm/armada/armada_debugfs.c
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
> 
> Changes in v5:
> 
>  - fix typos and punctuation in comments
> 
> Changes in v4:
> 
>  - drop hardcoded firmware name fallback
>  - drop fwname from ctrl & conf structures as it is no longer used
>  - fix kernel test robot warning about dev_info & size_t
> 
> Changes in v3:
> 
> REMARK FOR REVIEW! Because of helpful feedback and the problems that can
> arise from different hardware designs and device configurations this patch
> version was overhauled in several places. From now on patches can be
> applied that are loaded from firmware files. For this a lot of locations
> have been hardened to ensure that hardware is instructed the right way.
> This allows for easier adaption and bug analysis when moving forward with
> this driver in the future. So some changes might differ from the feedback
> for v2.
> 
>  - designed/explained meaningful firmware format
>  - converted patch sequences to be firmware loadable
>  - determine/print chip version to verify DT compatibility
>  - consolidated/simplified reset code paths
>  - verify input in debug interface
>  - added page names in code where known & possible
>  - add multiple helpers for cleaner code
>  - add possibility to modify registers from debug interface
>  - fixed kernel buildbot warnings
>  - changed comments to imperative style
>  - recipient list according to get_maintainers
> 
> Changes in v2:
> 
>  - switched logic to internal patch sequences
>  - added setup sequences for RTL838x and RTL839x
>  - moved includes from header to source file
>  - added helpers for better readability
> 
> ---
>  drivers/phy/realtek/Kconfig               |   10 +
>  drivers/phy/realtek/Makefile              |    1 +
>  drivers/phy/realtek/phy-rtk-otto-serdes.c | 1355 +++++++++++++++++++++
>  drivers/phy/realtek/phy-rtk-otto-serdes.h |  169 +++
>  4 files changed, 1535 insertions(+)
>  create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.c
>  create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.h
> 
> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
> index 75ac7e7c31ae..021b4c4e700a 100644
> --- a/drivers/phy/realtek/Kconfig
> +++ b/drivers/phy/realtek/Kconfig
> @@ -30,3 +30,13 @@ config PHY_RTK_RTD_USB3PHY
>  	  of the parameters.
> 
>  endif # ARCH_REALTEK || COMPILE_TEST
> +
> +config PHY_RTK_OTTO_SERDES

First please keep this sorted alphabetically and second should this not
be inside the if case ..?

> +	tristate "SerDes driver for the Realtek Otto platform"
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support Realtek SerDes in the RTL83xx and
> +	  RTL93xx network SoCs. These are based on MIPS32 architecture
> +	  and the SerDes connect to one to octa transceivers to build
> +	  up switches with up to 52 ports.
> diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
> index ed7b47ff8a26..34e607f33961 100644
> --- a/drivers/phy/realtek/Makefile
> +++ b/drivers/phy/realtek/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
>  obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
> +obj-$(CONFIG_PHY_RTK_OTTO_SERDES)	+= phy-rtk-otto-serdes.o

This one too, alphabetically sorted please

> diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.c b/drivers/phy/realtek/phy-rtk-otto-serdes.c
> new file mode 100644
> index 000000000000..c2b3197dc566
> --- /dev/null
> +++ b/drivers/phy/realtek/phy-rtk-otto-serdes.c
> @@ -0,0 +1,1355 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
> + * Copyright (c) 2024 Markus Stockhausen <markus.stockhausen@gmx.de>
> + */
> +
> +#include <linux/crc32.h>
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/firmware.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#include "phy-rtk-otto-serdes.h"
> +
> +/*
> + * A Realtek Otto SerDes is configured/patched by writing specific values into its registers.
> + * These values are bound to the individual hardware and the transceivers that are connected to
> + * it. Depending on the model, some of this might be integrated into the bootloader. To fully
> + * support different configurations allow the driver to load firmware files and run patch
> + * sequences.
> + *
> + * A firmware file contains a head, a directory and at the end the raw patch data. See
> + * structure rtsds_fw_head, rtsds_fw_dir an rtsds_fw_seq for more details.
> + *
> + * header
> + *	(u32) magic = 0x83009300, see RTSDS_FW_MAGIC
> + *	(u32) CRC checksum of the following data
> + *	(u32) filesize
> + *	(u32) directory size = number of sequences
> + *
> + * directory with n elements consisting of
> + *	(u32) id of the sequence. See RTSDS_FW_EVT_xxx
> + *	(u32) offset of patch data for this directory entry
> + *
> + * patch data with x elements consisting of
> + *	(u16) action to process. See RTSDS_FW_OP_xxx
> + *	(u16) mode for which the command is to be executed. See RTSDS_FW_MODE_xxx
> + *	(u16) SerDes ports bitmask for which the command is to be executed
> + *	(u16) page for action
> + *	(u16) register for action
> + *	(u16) value for action
> + *	(u16) mask for write operations
> + *	(u16) future use to avoid structure breakage
> + */
> +
> +static const char *rtsds_fw_events[RTSDS_FW_EVT_CNT] = {
> +	[RTSDS_FW_EVT_SETUP]		= "setup",
> +	[RTSDS_FW_EVT_INIT]		= "init",
> +	[RTSDS_FW_EVT_POWER_ON]		= "power-on",
> +	[RTSDS_FW_EVT_PRE_SET_MODE]	= "pre-set-mode",
> +	[RTSDS_FW_EVT_POST_SET_MODE]	= "post-set-mode",
> +	[RTSDS_FW_EVT_PRE_RESET]	= "pre-reset",
> +	[RTSDS_FW_EVT_POST_RESET]	= "post-reset",
> +	[RTSDS_FW_EVT_PRE_POWER_OFF]	= "pre-power-off",
> +	[RTSDS_FW_EVT_POST_POWER_OFF]	= "post-power-off",
> +};
> +
> +static const u8 rtsds_fw_modes[PHY_INTERFACE_MODE_MAX] = {
> +	[PHY_INTERFACE_MODE_NA]		= RTSDS_FW_MODE_ALL,
> +	[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_FW_MODE_QSGMII,
> +	[PHY_INTERFACE_MODE_XGMII]	= RTSDS_FW_MODE_XGMII,
> +	[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_FW_MODE_USXGMII,
> +	[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_FW_MODE_1000BASEX,
> +	[PHY_INTERFACE_MODE_2500BASEX]	= RTSDS_FW_MODE_2500BASEX,
> +	[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_FW_MODE_10GBASER,
> +};
> +
> +static int rtsds_fw_load(struct rtsds_ctrl *ctrl)
> +{
> +	struct rtsds_fw_head *h;
> +	u32 checksum;
> +	const char *msg;
> +	const char *fwname;
> +
> +	if (device_property_read_string(ctrl->dev, "firmware-name", &fwname)) {
> +		dev_info(ctrl->dev, "firmware not configured, patching disabled\n");

should this not be error?

> +		return 0;
> +	}
> +
> +	if (firmware_request_nowarn(&ctrl->firmware, fwname, ctrl->dev) < 0) {
> +		msg = "not found";
> +		goto error;
> +	}
> +
> +	if (ctrl->firmware->size < 16) {
> +		msg = "size to small";
> +		goto error;
> +	}
> +
> +	h = (struct rtsds_fw_head *)ctrl->firmware->data;
> +	if (h->magic != RTSDS_FW_MAGIC) {
> +		msg = "magic mismatch";
> +		goto error;
> +	}
> +
> +	if (h->filesize != ctrl->firmware->size) {
> +		msg = "size mismatch";
> +		goto error;
> +	}
> +
> +	checksum = ~crc32(0xFFFFFFFFU, ctrl->firmware->data + 8, ctrl->firmware->size - 8);
> +	if (h->checksum != checksum) {
> +		msg = "checksum mismatch";
> +		goto error;
> +	}
> +
> +	dev_info(ctrl->dev, "firmware %s: loaded with %zu bytes, %d sequences\n",
> +		 fwname, ctrl->firmware->size, h->dirsize);
> +
> +	return 0;
> +error:
> +	dev_err(ctrl->dev, "firmware %s: %s, patching disabled\n", fwname, msg);
> +	ctrl->firmware = NULL;
> +	return -EINVAL;
> +}
> +
> +static struct rtsds_fw_seq *rtsds_fw_get_sequence(struct rtsds_ctrl *ctrl, int evt)
> +{
> +	int i;
> +	struct rtsds_fw_head *h;

inverted Christmas tree notation pls

> +
> +	if (!ctrl->firmware)
> +		return NULL;
> +
> +	h = (struct rtsds_fw_head *)ctrl->firmware->data;
> +	for (i = 0; i < h->dirsize; i++)
> +		if (h->dir[i].evtid == evt)
> +			return (struct rtsds_fw_seq *)(ctrl->firmware->data + h->dir[i].offset);
> +
> +	return NULL;
> +}
> +
> +static int rtsds_fw_run_event(struct rtsds_ctrl *ctrl, u32 sid, int evt)
> +{
> +	int ret, step = 1, delay = 0, mode = rtsds_fw_modes[ctrl->sds[sid].mode];
> +	struct rtsds_fw_seq *seq;
> +
> +	if (evt >= RTSDS_FW_EVT_CNT || sid >= ctrl->conf->sds_cnt)
> +		return -EINVAL;
> +
> +	seq = rtsds_fw_get_sequence(ctrl, evt);
> +	if (!seq)
> +		return 0;
> +
> +	while (seq->action != RTSDS_FW_OP_STOP) {

Do we have a chance of this running infinitely?

> +		if (!(seq->ports & BIT(sid)) ||
> +		    (seq->mode != RTSDS_FW_MODE_ALL && seq->mode != mode)) {
> +			step++;	seq++;
> +			continue;
> +		}
> +
> +		if (seq->action == RTSDS_FW_OP_WAIT)
> +			delay = seq->val;
> +
> +		if (delay) {
> +			dev_dbg(ctrl->dev, "%s/%03d: SDS %02d WAIT(%d)\n",
> +				rtsds_fw_events[evt], step, sid, delay);
> +
> +			usleep_range(delay << 10, (delay + 1) << 10);
> +		}
> +
> +		if (seq->action == RTSDS_FW_OP_MASK) {
> +			dev_dbg(ctrl->dev,
> +				"%s/%03d: SDS %02d MASK(0x%04x, 0x%04x, 0x%04x, 0x%04x, 0x%04x, 0x%04x)\n",
> +				rtsds_fw_events[evt], step, sid, seq->mode, seq->ports,
> +				seq->page, seq->reg, seq->val, seq->mask);
> +
> +			ret = ctrl->conf->mask(ctrl, sid, seq->page,
> +					       seq->reg, seq->val, seq->mask);
> +			if (ret) {
> +				dev_err(ctrl->dev,
> +					"sequence %s failed for SerDes %d at step %d, rc=%d",
> +					rtsds_fw_events[evt], sid, step, ret);
> +				return -EIO;
> +			}
> +		}
> +
> +		step++; seq++;
> +	}
> +
> +	return 0;
> +}
> +
> +/* common helpers */
> +
> +static inline bool rtsds_invalid_reg(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	return (sid >= ctrl->conf->sds_cnt || page >= ctrl->conf->page_cnt || reg > 31);
> +}
> +
> +static inline bool rtsds_invalid_sds(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	return (sid >= ctrl->conf->sds_cnt);
> +}
> +
> +static inline bool rtsds_invalid_mask(u32 val, u32 mask)
> +{
> +	return (val & mask) != val;
> +}
> +
> +static int rtsds_hwmode_to_phymode(struct rtsds_ctrl *ctrl, int hwmode)
> +{
> +	for (int m = 0; m < PHY_INTERFACE_MODE_MAX; m++)
> +		if (ctrl->conf->mode_map[m] == hwmode)
> +			return m;
> +
> +	return PHY_INTERFACE_MODE_MAX;
> +}
> +
> +static void rtsds_get_chip(struct rtsds_ctrl *ctrl)
> +{
> +	u32 val, shift = 28;
> +	void __iomem __force *reg;
> +
> +	if (ctrl->conf->family == RTSDS_838X_FAMILY)
> +		reg = RTSDS_838X_MODEL_NAME_INFO;
> +	else if (ctrl->conf->family == RTSDS_839X_FAMILY)
> +		reg = RTSDS_839X_MODEL_NAME_INFO;
> +	else {
> +		reg = RTSDS_93XX_MODEL_NAME_INFO;
> +		shift = 16;
> +	}
> +
> +	val = ioread32(reg);
> +	ctrl->soc.model_id = val >> 16;
> +	ctrl->soc.model_version = (val >> 11) & 0x1f;

Please define masks and use FIELD_xxx apis for this

> +
> +	iomask32(0xf << shift, 0xa << shift, reg + 4);
> +	val = ioread32(reg + 4);
> +	ctrl->soc.chip_id = val & 0xffff;
> +	ctrl->soc.chip_version = (val >> (44 - shift)) & 0x1f;

Here too and bunch of other places


> +
> +	snprintf(ctrl->soc.model_name, sizeof(ctrl->soc.model_name),
> +		 "RTL%04X%c", ctrl->soc.model_id,
> +		 ctrl->soc.model_version ? ctrl->soc.model_version + 64 : 0);
> +
> +	snprintf(ctrl->soc.chip_name, sizeof(ctrl->soc.chip_name),
> +		 "%04X%c", ctrl->soc.chip_id,
> +		 ctrl->soc.chip_version ? ctrl->soc.chip_version + 64 : 0);
> +}
> +
> +/* common RTL838x and RTL839x helpers */
> +
> +static inline int rtsds_83xx_sds_5g(u32 sid)
> +{
> +	return 0xcff & BIT(sid);
> +}
> +
> +static void rtsds_83xx_rx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	u32 page, reg, bits, sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (sds5g) {
> +		/* RTL838x or RTL839x 5G SerDes */
> +		page = RTSDS_PAGE_SDS_EXT;
> +		reg = 0x09;
> +		bits = RTSDS_BIT_RX_SELF;
> +	} else if (sid == 8 || sid == 12) {
> +		/* RTL839x 10G SerDes */
> +		page = RTSDS_PAGE_ANA_TG_EXT;
> +		reg = 0x00;
> +		bits = RTSDS_BIT_RX_SELF_10G;
> +	} else
> +		return;
> +
> +	ctrl->conf->mask(ctrl, sid, page, reg, bits, bits);
> +	usleep_range(100000, 101000);
> +	ctrl->conf->mask(ctrl, sid, page, reg, 0, bits);
> +}
> +
> +static void rtsds_83xx_digital_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int bits;
> +
> +	/* soft reset */
> +	bits = RTSDS_BIT_SOFT_RST;
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x03, bits, bits);
> +	usleep_range(100000, 101000);
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x03, 0, bits);
> +
> +	/* SerDes RX/TX reset */
> +	bits = RTSDS_BIT_SDS_EN_RX | RTSDS_BIT_SDS_EN_TX;
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x00, 0, bits);
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x00, bits, bits);
> +}
> +
> +static void rtsds_83xx_cmu_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int  mask, shift, hi = sid | 1, sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (ctrl->conf->family == RTSDS_838X_FAMILY) {
> +		/* 5G SerDes sequence for register with bits CMU_EN, RXEN, PDOWN */
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4040, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4740, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x47c0, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4000, 0xffff);
> +	} else if (sds5g) {
> +		shift = 4 + ((sid & 1) << 2);
> +		mask = 3 << shift;
> +		/* 5G SerDes sequence for undocumented shared CMU register at offset 0x3C0 */
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 1 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 3 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 0, mask);
> +	} else {
> +		shift = (sid & 1) << 2;
> +		mask = 3 << shift;
> +		/* 10G SerDes sequence for undocumented shared CMU register at offset 0x3F8 */
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 1 << shift, mask);
> +		usleep_range(500000, 501000);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 3 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 0, mask);
> +	}
> +}
> +
> +static int rtsds_83xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_83xx_rx_reset(ctrl, sid);
> +	rtsds_83xx_cmu_reset(ctrl, sid);
> +	rtsds_83xx_digital_reset(ctrl, sid);
> +
> +	return 0;
> +}
> +
> +/* common RTL930x and RTL931x helpers */
> +
> +static inline int rtsds_rt93xx_io(struct rtsds_ctrl *ctrl, int cmd)
> +{
> +	int cnt = 100;
> +
> +	iowrite32(cmd | RTSDS_93XX_SDS_BUSY, ctrl->base);
> +	while (--cnt && (ioread32(ctrl->base) & RTSDS_93XX_SDS_BUSY))
> +		usleep_range(30, 60);
> +
> +	return cnt ? 0 : -EIO;
> +}
> +
> +static int rtsds_93xx_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int cmd = (sid << 2) | (page << 7) | (reg << 13) | RTSDS_93XX_SDS_READ;
> +
> +	if (rtsds_rt93xx_io(ctrl, cmd))
> +		return -EIO;
> +
> +	return ioread32(ctrl->base + 4) & 0xffff;
> +}
> +
> +static int rtsds_93xx_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int cmd = (sid << 2) | (page << 7) | (reg << 13) | RTSDS_93XX_SDS_WRITE;
> +
> +	if (mask != 0xffff) {
> +		int oldval = rtsds_93xx_read(ctrl, sid, page, reg);
> +
> +		if (oldval < 0)
> +			return -EIO;
> +		val |= oldval & ~mask;
> +	}
> +
> +	iowrite32(val, ctrl->base + 4);
> +	return rtsds_rt93xx_io(ctrl, cmd);
> +}
> +
> +static int rtsds_93xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int ret, hwcur, hwoff, pwr = 0;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
> +		return 0;
> +
> +	hwoff = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
> +	hwcur = ctrl->conf->mode_map[ctrl->sds[sid].mode];
> +
> +	if (ctrl->conf->family == RTSDS_931X_FAMILY) {
> +		pwr = ioread32(RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +		iowrite32(pwr | BIT(sid), RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +	}
> +
> +	ret = ctrl->conf->set_hwmode(ctrl, sid, hwoff);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid, hwcur);
> +
> +	if (ctrl->conf->family == RTSDS_931X_FAMILY)
> +		iowrite32(pwr, RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +
> +	return ret;
> +}
> +
> +/*
> + * The RTL838x has 6 SerDes. The 16 bit registers start at 0xbb00e780 and are mapped directly into
> + * 32 bit memory addresses. High 16 bits are always empty. A "lower" memory block serves pages 0/3
> + * a "higher" memory block pages 1/2.
> + */
> +
> +static int rtsds_838x_reg_offset(u32 sid, u32 page, u32 reg)
> +{
> +	if (page == 0 || page == 3)
> +		return (sid << 9) + (page << 7) + (reg << 2);
> +	else
> +		return 0xb80 + (sid << 8) + (page << 7) + (reg << 2);
> +}
> +
> +static int rtsds_838x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	offs = rtsds_838x_reg_offset(sid, page, reg);
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	return ioread32(ctrl->base + offs);
> +}
> +
> +static int rtsds_838x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	offs = rtsds_838x_reg_offset(sid, page, reg);
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	iomask32(mask, val, ctrl->base + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_838x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift, mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (sid >= 4) {
> +		shift = (sid - 4) * 3;
> +		iomask32(0x7 << shift, (submode & 0x7) << shift, RTSDS_838X_INT_MODE_CTRL);
> +	} else if (submode != 0)
> +		return -EINVAL;
> +
> +	shift = 25 - sid * 5;
> +	iomask32(0x1f << shift, (mode & 0x1f) << shift, RTSDS_838X_SDS_MODE_SEL);
> +
> +	return 0;
> +}
> +
> +static int rtsds_838x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int shift, mode, submode = 0;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (sid >= 4) {
> +		shift = (sid - 4) * 3;
> +		submode = (ioread32(RTSDS_838X_INT_MODE_CTRL) >> shift) & 0x7;
> +	}
> +
> +	shift = 25 - sid * 5;
> +	mode = (ioread32(RTSDS_838X_SDS_MODE_SEL) >> shift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL839x has 14 SerDes starting at 0xbb00a000. 0-7, 10, 11 are 5GBit, 8, 9, 12, 13 are
> + * 10GIt. Two adjacent SerDes are tightly coupled and share a 1024 bytes register area. Per 32 bit
> + * address two registers are stored. The first register is stored in the lower 2 bytes ("on the
> + * right" due to big endian) and the second register in the upper 2 bytes. We know the following
> + * register areas:
> + *
> + * - XSG0	(4 pages @ offset 0x000): for even SerDes
> + * - XSG1	(4 pages @ offset 0x100): for odd SerDes
> + * - TGRX	(4 pages @ offset 0x200): for even 10G SerDes
> + * - ANA_RG	(2 pages @ offset 0x300): for even 5G SerDes
> + * - ANA_RG	(2 pages @ offset 0x380): for odd 5G SerDes
> + * - ANA_TG	(2 pages @ offset 0x300): for even 10G SerDes
> + * - ANA_TG	(2 pages @ offset 0x380): for odd 10G SerDes
> + *
> + * The most consistent mapping that aligns to the RTL93xx devices is:
> + *
> + *		even 5G SerDes	odd 5G SerDes	even 10G SerDes	odd 10G SerDes
> + * Page 0:	XSG0/0		XSG1/0		XSG0/0		XSG1/0
> + * Page 1:	XSG0/1		XSG1/1		XSG0/1		XSG1/1
> + * Page 2:	XSG0/2		XSG1/2		XSG0/2		XSG1/2
> + * Page 3:	XSG0/3		XSG1/3		XSG0/3		XSG1/3
> + * Page 4:	<zero>		<zero>		TGRX/0		<zero>
> + * Page 5:	<zero>		<zero>		TGRX/1		<zero>
> + * Page 6:	<zero>		<zero>		TGRX/2		<zero>
> + * Page 7:	<zero>		<zero>		TGRX/3		<zero>
> + * Page 8:	ANA_RG		ANA_RG		<zero>		<zero>
> + * Page 9:	ANA_RG_EXT	ANA_RG_EXT	<zero>		<zero>
> + * Page 10:	<zero>		<zero>		ANA_TG		ANA_TG
> + * Page 11:	<zero>		<zero>		ANA_TG_EXT	ANA_TG_EXT
> + */
> +
> +static int rtsds_839x_reg_offset(u32 sid, u32 page, u32 reg)
> +{
> +	int offs = ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1) + (page << 6);
> +	int sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (page < 4)
> +		return offs + ((sid & 1) << 8);
> +	else if ((page & 4) && (sid == 8 || sid == 12))
> +		return offs + 0x100;
> +	else if (page >= 8 && page <= 9 && sds5g)
> +		return offs + 0x100 + ((sid & 1) << 7);
> +	else if (page >= 10 && !sds5g)
> +		return offs + 0x80 + ((sid & 1) << 7);
> +
> +	return -1; /* hole */

Better error codes?

> +}
> +
> +static int rtsds_839x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int offs, shift = (reg << 4) & 0x10;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	offs = rtsds_839x_reg_offset(sid, page, reg);
> +	if (offs < 0)
> +		return 0;
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	return (ioread32(ctrl->base + offs) >> shift) & 0xffff;
> +}
> +
> +static int rtsds_839x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int oldval, offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	offs = rtsds_839x_reg_offset(sid, page, reg);
> +	if (offs < 0)
> +		return 0;
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	oldval = ioread32(ctrl->base + offs);
> +	val = reg & 1 ? (oldval & ~(mask << 16)) | (val << 16) : (oldval & ~mask) | val;
> +	iowrite32(val, ctrl->base + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_839x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
> +	int mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_839x_mask(ctrl, sid, RTSDS_PAGE_SDS, 0x04, (submode << 12) & 0xf000, 0xf000);
> +	iomask32(0xf << shift, (mode & 0xf) << shift, RTSDS_839X_MAC_SERDES_IF_CTRL + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_839x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int mode, submode, shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	submode = (rtsds_839x_read(ctrl, sid, RTSDS_PAGE_SDS, 0x04) >> 12) & 0xf;
> +	mode = (ioread32(RTSDS_839X_MAC_SERDES_IF_CTRL + offs) >> shift) & 0xf;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL930x family has 12 SerdDes of three types. They are accessed through two IO registers at
> + * 0xbb0003b0 which simulate commands to an internal MDIO bus:
> + *
> + * - SerDes 0-1 exist on the RTL9301 and 9302B and are QSGMII capable
> + * - SerDes 2-9 are USXGMII capabable with either quad or single configuration
> + * - SerDes 10-11 are 10GBase-R capable
> + */
> +
> +static int rtsds_930x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	return rtsds_93xx_read(ctrl, sid, page, reg);
> +}
> +
> +static int rtsds_930x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	return rtsds_93xx_mask(ctrl, sid, page, reg, val, mask);
> +}
> +
> +static void rtsds_930x_mode_offset(int sid,
> +				   void __iomem __force **modereg, int *modeshift,
> +				   void __iomem __force **subreg, int *subshift)
> +{
> +	if (sid > 3) {
> +		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL1;
> +		*subshift = (sid - 4) * 5;
> +	} else {
> +		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL0;
> +		*subshift = (sid - 2) * 5;
> +	}
> +
> +	if (sid < 4) {
> +		*modeshift = sid * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_0;
> +	} else if (sid < 8) {
> +		*modeshift = (sid - 4) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_1;
> +	} else if (sid < 10) {
> +		*modeshift = (sid - 8) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_2;
> +	} else {
> +		*modeshift = (sid - 10) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_3;
> +	}
> +}
> +
> +static int rtsds_930x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int modeshift, subshift;
> +	int mode = RTSDS_MODE(combomode);
> +	int submode = RTSDS_SUBMODE(combomode);
> +	void __iomem __force *modereg, *subreg;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
> +	if (sid >= 2 && sid <= 9)
> +		iomask32(0x1f << subshift, (submode & 0x1f) << subshift, subreg);
> +	else if (submode != 0)
> +		return -EINVAL;
> +	iomask32(0x1f << modeshift, (mode & 0x1f) << modeshift, modereg);
> +
> +	return 0;
> +}
> +
> +static int rtsds_930x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int modeshift, subshift, mode, submode = 0;
> +	void __iomem __force *modereg, *subreg;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
> +	mode = (ioread32(modereg) >> modeshift) & 0x1f;
> +	if (sid >= 2 && sid <= 9)
> +		submode = (ioread32(subreg) >> subshift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL931x family has 14 "frontend" SerDes that are cascaded. All operations (e.g. reset) work
> + * on this frontend view while their registers are distributed over a total of 32 background
> + * SerDes. Two types of SerDes exist:
> + *
> + * An "even" SerDes with numbers 0, 1, 2, 4, 6, 8, 10, 12 works on two background SerDes. 64 analog
> + * and 64 XGMII data pages are coming from a first background SerDes while another 64 XGMII pages
> + * are served from a second SerDes.
> + *
> + * The "odd" SerDes with numbers 3, 5, 7, 9, 11 & 13 SerDes consist of a total of 3 background
> + * SerDes (one analog and two XGMII) each with an own page/register set.
> + *
> + * Align this for readability by simulating a total of 576 pages and mix them as follows.
> + *
> + * frontend page		"even" frontend SerDes		"odd" frontend SerDes
> + * page 0x000-0x03f (analog):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS
> + * page 0x100-0x13f (XGMII1):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS+1
> + * page 0x200-0x23f (XGMII2):	page 0x000-0x03f back SDS+1	page 0x000-0x03f back SDS+2
> + */
> +
> +static int rtsds_931x_sds_offset(u32 sid, u32 page)
> +{
> +	int map[] = {0, 1, 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23};
> +	int backsid = map[sid];
> +
> +	if (page & 0xc0)
> +		return -1; /* hole */
> +
> +	if ((sid & 1) && (sid != 1))
> +		backsid += (page >> 8); /* distribute "odd" to 3 background SerDes */
> +	else if (page >= 512)
> +		backsid += 1; /* distribute "even" to 2 background SerDes */
> +
> +	return backsid;
> +}
> +
> +static int rtsds_931x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int backsid;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	backsid = rtsds_931x_sds_offset(sid, page);
> +
> +	return backsid < 0 ? 0 : rtsds_93xx_read(ctrl, backsid, page & 0x3f, reg);
> +}
> +
> +static int rtsds_931x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int backsid;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	backsid = rtsds_931x_sds_offset(sid, page);
> +
> +	return backsid < 0 ? 0 : rtsds_93xx_mask(ctrl, backsid, page & 0x3f, reg, val, mask);
> +}
> +
> +static int rtsds_931x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift = (sid & 3) << 3, offs = sid & ~3;
> +	int mode = RTSDS_MODE(combomode);
> +	int submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_931x_mask(ctrl, sid, 0x1f, 0x09, (submode & 0x3f) << 6, 0x0fc0);
> +	iomask32(0xff << shift, ((mode | RTSDS_931X_SDS_FORCE_SETUP) & 0xff) << shift,
> +		 RTSDS_931X_SERDES_MODE_CTRL + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_931x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int mode, submode, shift = (sid & 3) << 3, offs = sid & ~3;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	submode = (rtsds_931x_read(ctrl, sid, 0x1f, 0x09) >> 6) & 0x3f;
> +	mode = (ioread32(RTSDS_931X_SERDES_MODE_CTRL + offs) >> shift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/* phy controller functions */
> +
> +static int rtsds_phy_init(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "init SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_INIT);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "init failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_power_on(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "power on SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POWER_ON);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_power_off(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "power off SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_POWER_OFF);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid,
> +					     ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA]);
> +	if (!ret)
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_POWER_OFF);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "power off failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_set_mode_int(struct rtsds_ctrl *ctrl, u32 sid, int phymode, int hwmode)
> +{
> +	int ret;
> +
> +	if (ctrl->conf->get_hwmode(ctrl, sid) == hwmode)
> +		return 0;
> +
> +	dev_dbg(ctrl->dev, "switch SerDes %d to %s (hw mode %X)\n",
> +		sid, phy_modes(phymode), hwmode);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_SET_MODE);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid, hwmode);
> +	if (!ret) {
> +		ctrl->sds[sid].mode = phymode;
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_SET_MODE);
> +	}
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "set mode failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +
> +	if (mode != PHY_MODE_ETHERNET)
> +		return -EINVAL;
> +
> +	return rtsds_phy_set_mode_int(ctrl, sid, submode, ctrl->conf->mode_map[submode]);
> +}
> +
> +static int rtsds_phy_reset_int(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "reset SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_RESET);
> +	if (!ret)
> +		ret = ctrl->conf->reset(ctrl, sid);
> +	if (!ret)
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_RESET);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "reset failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_reset(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +
> +	return rtsds_phy_reset_int(ctrl, sid);
> +}
> +
> +static const struct phy_ops rtsds_phy_ops = {
> +	.init		= rtsds_phy_init,
> +	.power_on	= rtsds_phy_power_on,
> +	.power_off	= rtsds_phy_power_off,
> +	.reset		= rtsds_phy_reset,
> +	.set_mode	= rtsds_phy_set_mode,
> +	.owner		= THIS_MODULE,
> +};
> +
> +/*
> + * The SerDes offer a lot of magic that sill needs to be uncovered. To help further development
> + * provide some basic debugging about registers, modes, reset and polarity. All functions are
> + * run under the global lock to avoid inconsistencies.
> + */
> +
> +#ifdef CONFIG_DEBUG_FS
> +
> +#define RTSDS_PAGE_NAMES 48
> +
> +static const char *rtsds_page_name[RTSDS_PAGE_NAMES] = {
> +	[0] = "SDS",		[1] = "SDS_EXT",
> +	[2] = "FIB",		[3] = "FIB_EXT",
> +	[4] = "DTE",		[5] = "DTE_EXT",
> +	[6] = "TGX",		[7] = "TGX_EXT",
> +	[8] = "ANA_RG",		[9] = "ANA_RG_EXT",
> +	[10] = "ANA_TG",	[11] = "ANA_TG_EXT",
> +	[31] = "ANA_WDIG",
> +	[32] = "ANA_MISC",	[33] = "ANA_COM",
> +	[34] = "ANA_SP",	[35] = "ANA_SP_EXT",
> +	[36] = "ANA_1G",	[37] = "ANA_1G_EXT",
> +	[38] = "ANA_2G",	[39] = "ANA_2G_EXT",
> +	[40] = "ANA_3G",	[41] = "ANA_3G_EXT",
> +	[42] = "ANA_5G",	[43] = "ANA_5G_EXT",
> +	[44] = "ANA_6G",	[45] = "ANA_6G_EXT",
> +	[46] = "ANA_10G",	[47] = "ANA_10G_EXT",
> +};
> +
> +static int rtsds_dbg_mode_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int mode, sid = macro->sid;
> +
> +	mutex_lock(&ctrl->lock);
> +	mode = ctrl->conf->get_hwmode(ctrl, sid);
> +	mutex_unlock(&ctrl->lock);
> +
> +	seq_printf(seqf, "hw mode: 0x%X\n", mode);
> +	seq_puts(seqf, "phy mode: ");
> +
> +	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
> +		seq_puts(seqf, "off\n");
> +	else
> +		seq_printf(seqf, "%s\n", phy_modes(ctrl->sds[sid].mode));
> +
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
> +				    size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, hwmode, phymode, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 16, &hwmode);
> +	if (ret)
> +		return ret;
> +
> +	/* Allow only modes we have under control. */
> +	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
> +	if (phymode == PHY_INTERFACE_MODE_MAX)
> +		return -EINVAL;
> +
> +	ret = rtsds_phy_set_mode_int(ctrl, sid, phymode, hwmode);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
> +
> +static int rtsds_dbg_reset_show(struct seq_file *seqf, void *unused)
> +{
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_reset_write(struct file *file, const char __user *userbuf,
> +				     size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, reset, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 10, &reset);
> +	if (ret || reset != 1)
> +		return -EINVAL;
> +
> +	ret = rtsds_phy_reset_int(ctrl, sid);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
> +
> +static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 page = 0, reg, sid = macro->sid;
> +
> +	seq_printf(seqf, "%*s", 12, "");
> +	for (int i = 0; i < 32; i++)
> +		seq_printf(seqf, "   %02X", i);
> +
> +	mutex_lock(&ctrl->lock);
> +	while (page < ctrl->conf->page_cnt) {
> +		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
> +			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
> +		else if (page == 64 || page == 320) {
> +			page += 192;
> +			seq_printf(seqf, "\n\nXGMII_%d    : ", page >> 8);
> +		} else
> +			seq_printf(seqf, "\nPAGE_%03X   : ", page);
> +		for (reg = 0; reg < 0x20; reg++)
> +			seq_printf(seqf, "%04X ", ctrl->conf->read(ctrl, sid, page, reg));
> +		page++;
> +	}
> +	seq_puts(seqf, "\n");
> +	mutex_unlock(&ctrl->lock);
> +
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_registers_write(struct file *file, const char __user *userbuf,
> +				    size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, sid = macro->sid;
> +	u32 reg, page, val, mask;
> +	u64 data;
> +
> +	/*
> +	 * Due to many different devices and limited regional hardware access for developers,
> +	 * improve analysis with write access to the SerDes registers. This allows testers to
> +	 * build new patch sequences from the command line without creating new firmware files
> +	 * and building new images.
> +	 */
> +
> +	ret = kstrtou64_from_user(userbuf, count, 16, &data);
> +	if (ret)
> +		return ret;
> +
> +	page = (data >> 40) & 0x3ff;
> +	reg = (data >> 32) & 0xff;
> +	val = (data >> 16) & 0xffff;
> +	mask = data & 0xffff;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = ctrl->conf->mask(ctrl, sid, page, reg, val, mask);
> +	mutex_unlock(&ctrl->lock);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_registers);
> +
> +static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int val, sid = macro->sid;
> +
> +	mutex_lock(&ctrl->lock);
> +	val = ctrl->conf->read(ctrl, sid, RTSDS_PAGE_SDS, 0x00);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (val < 0)
> +		return -EIO;
> +
> +	seq_puts(seqf, "tx polarity: ");
> +	seq_puts(seqf, val & RTSDS_BIT_INV_HSO ? "inverse" : "normal");
> +	seq_puts(seqf, "\nrx polarity: ");
> +	seq_puts(seqf, val & RTSDS_BIT_INV_HSI ? "inverse" : "normal");
> +	seq_puts(seqf, "\n");
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> +
> +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> +
> +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_reset_fops);
> +
> +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_polarity_fops);
> +
> +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_registers_fops);
> +}

Please create a driver directory and add files to that please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
