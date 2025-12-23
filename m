Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBA9E6F095
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 15:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRSLwZMRnpWpOWFlV0vhi590CQCzzx6U0mUNXToWi9U=; b=rcVqDbGas3VZzN
	zmQpS+w4t4j1C7FqF74I7yAaPSt4ijB8mv08PuJgXTUUz+ESLB3vvIKv91wHvba8yaHLHbsoMHtl+
	HoysGuOAnAgP3jTNOBJwEEL16WdSS2DJuJjRlnnMHkO3Gk0HbBDWUSVXVOhXpMhxKXOYi/ARmq4xe
	TvDHp79HtzBTcyA+EtvdgSQcTtW7N1okXL8MFcDLKGGazA6ACbWuwjctOSufEETbqT4wBc4pMG0ob
	hdc/PPE2M9pb0/FtCudKe9hA4rYXKillQV08dJH7RP6MNAiJeeoCEdlfra0kQ1qxwu0CU1pVMxYn+
	1q5M2LddWYmopIQwrYLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4TL-0000000FiKQ-1CwD;
	Tue, 23 Dec 2025 15:38:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4TJ-0000000FiKB-3HQy;
	Tue, 23 Dec 2025 15:38:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 04E5660123;
	Tue, 23 Dec 2025 15:38:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03767C113D0;
	Tue, 23 Dec 2025 15:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766504328;
	bh=+TcYH6TIplkug/gQDHnsv7nQ7tnduk4LL2LEZzCzTXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gUVBe1kCA7fLdvKrVG0h5qsIh/rC+egrV6e7Up8wRserT+b4oT/cWBgXvVYtRkJLx
	 XXmXOeV3PxUG3J6sTPqcRTPX6LN057jv6T2BTlX/9rvwal2APvWfFe+BdErlJyDw2/
	 AdgMW+/5AJFvJXeW+knuJIjBvt1lFeHqRZtfjjN77djedCv8pi6aVbcEpHrgQoZWxa
	 tzBOBqGG5uOt/ASGMox4RtJLubgZXl89Hd6b3x5sbC9M2QvYme51dj+U2EYfFZi87X
	 raWvWn/d6vOn0FQPFRvGcHrgW9bENrAKpJLfdCk792XxCYhGdFOgxeBqhFZ8siwtx0
	 zd+8TbCtNY6rg==
Date: Tue, 23 Dec 2025 21:08:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v7 4/7] PHY: aspeed: Add ASPEED PCIe PHY driver
Message-ID: <aUq3hF7Xfk-f35Nh@vaman>
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
 <20251216-upstream_pcie_rc-v7-4-4aeb0f53c4ce@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251216-upstream_pcie_rc-v7-4-4aeb0f53c4ce@aspeedtech.com>
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

On 16-12-25, 09:50, Jacky Chou wrote:
> Introduce support for Aspeed PCIe PHY controller available in
> AST2600/2700.

What is with the uppercase "PHY" in patch title instead of lowercase
'phy' as is the convention

> 
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> ---
>  drivers/phy/Kconfig                  |   1 +
>  drivers/phy/Makefile                 |   1 +
>  drivers/phy/aspeed/Kconfig           |  15 +++
>  drivers/phy/aspeed/Makefile          |   2 +
>  drivers/phy/aspeed/phy-aspeed-pcie.c | 209 +++++++++++++++++++++++++++++++++++
>  5 files changed, 228 insertions(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0a..f6a8f06fd244 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -103,6 +103,7 @@ config PHY_NXP_PTN3222
>  
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
> +source "drivers/phy/aspeed/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
>  source "drivers/phy/cadence/Kconfig"
>  source "drivers/phy/freescale/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494..18990c87dfb0 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -15,6 +15,7 @@ obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
>  obj-y					+= allwinner/	\
>  					   amlogic/	\
> +					   aspeed/	\
>  					   broadcom/	\
>  					   cadence/	\
>  					   freescale/	\
> diff --git a/drivers/phy/aspeed/Kconfig b/drivers/phy/aspeed/Kconfig
> new file mode 100644
> index 000000000000..6aeeca84091f
> --- /dev/null
> +++ b/drivers/phy/aspeed/Kconfig
> @@ -0,0 +1,15 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for Aspeed platforms
> +#
> +config PHY_ASPEED_PCIE
> +	tristate "ASPEED PCIe PHY driver"
> +	select GENERIC_PHY
> +	depends on ARCH_ASPEED
> +	default y

NO! why should this driver be default!

> +	help
> +	  This option enables support for the ASPEED PCIe PHY driver.
> +	  The driver provides the necessary interface to control and
> +	  configure the PCIe PHY hardware found on ASPEED SoCs.
> +	  It is required for proper operation of PCIe devices on
> +	  platforms using ASPEED chips.
> \ No newline at end of file

??

> diff --git a/drivers/phy/aspeed/Makefile b/drivers/phy/aspeed/Makefile
> new file mode 100644
> index 000000000000..7203152f44bf
> --- /dev/null
> +++ b/drivers/phy/aspeed/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_PHY_ASPEED_PCIE)		+= phy-aspeed-pcie.o
> \ No newline at end of file

Are we expecting more drivers for aspeed, if not move it to drivers/phy/
once we have couple of them we can add a directory

> diff --git a/drivers/phy/aspeed/phy-aspeed-pcie.c b/drivers/phy/aspeed/phy-aspeed-pcie.c
> new file mode 100644
> index 000000000000..3de43a86ac17
> --- /dev/null
> +++ b/drivers/phy/aspeed/phy-aspeed-pcie.c
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2025 Aspeed Technology Inc.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>

why do you need this

> +#include <linux/phy/pcie.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>


Do you need all headers here?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
