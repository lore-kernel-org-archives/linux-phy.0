Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F5ACFB424
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZP5VMx7UuAzNKrodLlcm7ttdghR/V1PE/7Hhpjwo6Jg=; b=rj1clpuJNOzdl6VYlXYroYRXqq
	5z48XjNbtp2oR6Xr/CgIkqWrFDvbso+6MR1OyMjrlUkg7jX5cd+WyXjWCmdNOEXA+0JLuWWG92870
	zXWYKxQ9WjD+ngaZYIGHLrGiY7Gh2CDHNuw3PaA7lYeBx+BP/miLnuSgCNf8wsSK9ijmKCme+szpC
	2OtoewLcmheFfE5Ug2KUBvyspzPch+VoewVoaCvu4RPBBFXD9kJM7hSO3egjg58q8c8pWZzTmFRDF
	L+xVgvjJmc59AkIufvqabtbwX43M2GG3Nm7cCLrkswu5sOjMLTS1k8srDexUKSeSiEmwADrVnviIK
	gGsU9yWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxYtx-00000000fYX-1zfP;
	Sun, 06 Oct 2024 21:34:53 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxYsN-00000000fIJ-0mfY
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 21:33:17 +0000
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B88592C0707;
	Mon,  7 Oct 2024 10:33:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1728250390;
	bh=l/MSR7f3lOpWzC2KH6BmRDqhf55ES641RNtq2ykuvvs=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=dFeIXbUSUV4OP+E3YT91nB0Pnrjb9gHZbN+RyX5qzu3e/6Twk9p4hilKdU7V2Ru9K
	 sRYSB7gelzLVGxlpy//Q0kcSFjkI5AliOlY17lYg74bjK6/nOdnj72U3/x0HHk5ng1
	 nj8ivte4+CfqUhKIAHh1FEx/kAYvNOWJpDyk/plVYuuPkeAekQ3g76wSEfleq75KyN
	 5RVbzmD773Vli9eEjWWlJvj4eiBqd6tqWsuSsH5ORjgB7D1mG4Zu7Bx5nY1G+NSYcr
	 NeUmqO3SWEPWUsXQfIC0+bo2FvvcZk4XOwGug/m3jm+1a21mSUsxfchWBm2OKj7hYC
	 /46oSNaVjaMug==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B670302160000>; Mon, 07 Oct 2024 10:33:10 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id A588D13ED6B;
	Mon,  7 Oct 2024 10:33:10 +1300 (NZDT)
Message-ID: <c07188b2-c7e4-45bf-9a78-c5e92c85c4e5@alliedtelesis.co.nz>
Date: Mon, 7 Oct 2024 10:33:10 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 1/4] phy: Realtek Otto SerDes: add header file
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
 linux-phy@lists.infradead.org
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-2-markus.stockhausen@gmx.de>
Content-Language: en-US
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20241004195712.1891488-2-markus.stockhausen@gmx.de>
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=67030216 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=VwQbUJbxAAAA:8 a=PCdjaG5UOUDYjn-dc0cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_143315_744987_877CD580 
X-CRM114-Status: GOOD (  19.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 5/10/24 08:56, Markus Stockhausen wrote:
> This adds the header file for the new Otto SerDes driver.
> ---
>   drivers/phy/realtek/phy-rtl-otto-serdes.h | 126 ++++++++++++++++++++++
>   1 file changed, 126 insertions(+)
>   create mode 100644 drivers/phy/realtek/phy-rtl-otto-serdes.h
>
> diff --git a/drivers/phy/realtek/phy-rtl-otto-serdes.h b/drivers/phy/realtek/phy-rtl-otto-serdes.h
> new file mode 100644
> index 000000000000..4d951731c02c
> --- /dev/null
> +++ b/drivers/phy/realtek/phy-rtl-otto-serdes.h
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
> + * Copyright (c) 2024 Markus Stockhausen <markus.stockhausen@gmx.de>
> + */
> +
> +#ifndef _PHY_RTL_OTTO_SERDES_H
> +#define _PHY_RTL_OTTO_SERDES_H
> +
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#define RTSDS_PAGE_SDS				0
> +#define RTSDS_PAGE_SDS_EXT			1
> +#define RTSDS_PAGE_FIB				2
> +#define RTSDS_PAGE_FIB_EXT			3
> +#define RTSDS_PAGE_NAMES			48
> +
> +#define RTSDS_INV_HSO				0x100
> +#define RTSDS_INV_HSI				0x200
> +
> +#define RTSDS_EVENT_SETUP			0
> +#define RTSDS_EVENT_INIT			1
> +#define RTSDS_EVENT_POWER_ON			2
> +#define RTSDS_EVENT_PRE_SET_MODE		3
> +#define RTSDS_EVENT_POST_SET_MODE		4
> +#define RTSDS_EVENT_PRE_RESET			5
> +#define RTSDS_EVENT_POST_RESET			6
> +#define RTSDS_EVENT_PRE_POWER_OFF		7
> +#define RTSDS_EVENT_POST_POWER_OFF		8
> +#define RTSDS_EVENT_MAX				8
> +
> +#define RTSDS_SEQ_STOP				0
> +#define RTSDS_SEQ_MASK				1
> +#define RTSDS_SEQ_WAIT				2
> +
> +#define RTSDS_SWITCH_ADDR_BASE			(0xbb000000)
> +#define RTSDS_REG(x)				((void __iomem __force *)RTSDS_SWITCH_ADDR_BASE + (x))
> +#define iomask32(mask, value, addr)		iowrite32((ioread32(addr) & ~(mask)) | (value), addr)

I've started the process of adding the switch block as a syscon device. 
I've only done a dts change for the rtl930x but I'm guessing the 
RTL838x/839x are similar.

https://lore.kernel.org/lkml/20240925215847.3594898-5-chris.packham@alliedtelesis.co.nz/

These devices can also be run in a core disabled mode in which case the 
registers are accessed via a SPI interface. It would probably make sense 
to lean on regmap to allow for MMIO or SPI to be used.

> +
> +#define RTSDS_838X_MAX_SDS			5
> +#define RTSDS_838X_MAX_PAGE			3
> +#define RTSDS_838X_SDS_MODE_SEL			RTSDS_REG(0x0028)
> +#define RTSDS_838X_INT_MODE_CTRL		RTSDS_REG(0x005c)
> +
> +#define RTSDS_839X_MAX_SDS			13
> +#define RTSDS_839X_MAX_PAGE			11
> +#define RTSDS_839X_MAC_SERDES_IF_CTRL		RTSDS_REG(0x0008)
> +
> +#define RTSDS_930X_MAX_SDS			11
> +#define RTSDS_930X_MAX_PAGE			63
> +#define RTSDS_930X_SDS_MODE_SEL_0		RTSDS_REG(0x0194)
> +#define RTSDS_930X_SDS_MODE_SEL_1		RTSDS_REG(0x02a0)
> +#define RTSDS_930X_SDS_MODE_SEL_2		RTSDS_REG(0x02a4)
> +#define RTSDS_930X_SDS_MODE_SEL_3		RTSDS_REG(0x0198)
> +#define RTSDS_930X_SDS_SUBMODE_CTRL0		RTSDS_REG(0x01cc)
> +#define RTSDS_930X_SDS_SUBMODE_CTRL1		RTSDS_REG(0x02d8)
> +
> +#define RTSDS_931X_MAX_SDS			13
> +#define RTSDS_931X_MAX_PAGE			191
> +#define RTSDS_931X_SERDES_MODE_CTRL		RTSDS_REG(0x13cc)
> +#define RTSDS_931X_PS_SERDES_OFF_MODE_CTRL	RTSDS_REG(0x13f4)
> +#define RTSDS_931X_SDS_FORCE_SETUP		0x80
> +
> +#define RTSDS_COMBOMODE(mode, submode)		(0x10000 | (mode << 8) | submode)
> +#define RTSDS_MODE(combomode)			((combomode >> 8) & 0xff)
> +#define RTSDS_SUBMODE(combomode)		(combomode & 0xff)
> +
> +struct __attribute__ ((__packed__)) rtsds_seq {
> +	u16 action;
> +	u16 ports;
> +	u16 page;
> +	u16 reg;
> +	u16 val;
> +	u16 mask;
> +};
> +
> +struct rtsds_sds {
> +	struct phy *phy;
> +	int mode;
> +	int link;
> +	int min_port;
> +	int max_port;
> +};
> +
> +struct rtsds_ctrl {
> +	struct device *dev;
> +	void __iomem *base;
> +	struct mutex lock;
> +	u32 sds_mask;
> +	struct rtsds_conf *conf;
> +	struct rtsds_sds sds[RTSDS_930X_MAX_SDS + 1];
> +	struct rtsds_seq *sequence[RTSDS_EVENT_MAX + 1];
> +};
> +
> +struct rtsds_macro {
> +	struct rtsds_ctrl *ctrl;
> +	u32 sid;
> +};
> +
> +struct rtsds_conf {
> +	u32 max_sds;
> +	u32 max_page;
> +	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
> +	int (*mask)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u32 val, u32 mask);
> +	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int (*set_mode)(struct rtsds_ctrl *ctrl, u32 idx, int mode);
> +	int (*get_mode)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int mode_map[PHY_INTERFACE_MODE_MAX];
> +};
> +
> +/*
> + * This SerDes module should be written in quite a clean way so that direct calls are
> + * not needed. The following functions are provided just in case ...
> + */
> +
> +int rtsds_read(struct phy *phy, u32 page, u32 reg);
> +int rtsds_write(struct phy *phy, u32 page, u32 reg, u32 val);
> +int rtsds_mask(struct phy *phy, u32 page, u32 reg, u32 val, u32 mask);
> +
> +#endif /* _PHY_RTL_OTTO_SERDES_H */
> --
> 2.44.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
