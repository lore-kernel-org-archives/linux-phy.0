Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA10C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVBY5QzYFyczS0iUnymFGcXg2L01tPxTY6HwYPgYnJw=; b=2xTaPbEXdASYIl
	K1wRqgydXOBZDWBNTjOcN0gyGTl54pEYY8/SomZRHqNcujrTojO2FjeI7W3jaf7uV3ar5yrMiJ3uH
	vKKHvXspiWZyCOqa1CI9sl5s17KRRkV4rmUg7FssEvbpXVF7l5nCmDJbPg/lY51NMrvwKXOecqLRH
	HkgssS/GE8B8Fz7lCI6O9kYU/I6ZAgX9gSa3pSz8D9MNPjmKPLOKA6bfsdLfpX0m+1oPYvTXVYAxg
	XMTK6MIpmBSM9+u2upiJF3RQQD0fRGCn7Fh0iWo568GIUcqHZbtg7WKkENHXXtbWuMG97dqItx3lr
	sNxRORGWxdvV5nq02uZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqv8r-000000000VJ-04Dw;
	Mon, 03 Aug 2026 16:03:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqv8o-000000000UH-2hSI
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 16:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785773029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E3o05UEgOpPrf4lyr749hyVgnBUqxpDlvn19KzqMCcY=;
	b=GdRPJuy5sy4/2gHcoNv5yFjW6E2tkJpCOg/Zv2f4N84v1glXRPA1QoTCjkAQwCruykRHA4
	RJkAqumcMaUKEf8KCamOTEQIutToqG5AB3w/s0AjbBiQ8W2k5yFNucy/tKST8exMPc+7/S
	o0fw91om6Q6/pgkWPtXpzEseb25BS7g=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-D4IYn2fhOfCl5Kvuvh_UFQ-1; Mon, 03 Aug 2026 12:03:44 -0400
X-MC-Unique: D4IYn2fhOfCl5Kvuvh_UFQ-1
X-Mimecast-MFC-AGG-ID: D4IYn2fhOfCl5Kvuvh_UFQ_1785773023
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-81e6bb29581so129218117b3.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773023; x=1786377823;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=E3o05UEgOpPrf4lyr749hyVgnBUqxpDlvn19KzqMCcY=;
        b=SG4M11fRfQungabJHZR3gvU9cgbHOG3fxhgWa+GNldHgBuJYPEMNoaLbksv3AS33wt
         q9gKDZHIAni+I4vE/v7PpImiF7efd+OAhiqtaE8aMES/m/LYHkYMTmEsFHy7rH+fMUQ0
         Hcf2wqnpnFRdZ/lg7b8NleBln+h+EyTxB8T1iscQ/qz0c7fX6csbjqJXBrqcm/AQPwU5
         olu6D9Ru330nPtD/5X9lN1sJAsPlKM80ZFzjlvnzsYRCleNI+iCwL6AYlX8VD3jX372o
         fHx7nzFVDqVy0S7fYacvtg5i4hHZcS/wwRSX0zM3pby6GZDL7AeY/zPdpl2UBW8M6BKS
         EPcg==
X-Forwarded-Encrypted: i=1; AHgh+RpriVmDPZQAsG/uTdn/8IdV7AyqV2vU2rFqrkwzgRQSlMOE7/bqjzFjNRq6T84w/u+TQt9DTiX5Ko4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyefoyZGE2uwWVtjVlqVnEdoXS3Ezn7yk3yHIplIXbNcE71Jpjy
	xsbQB+rib7Xy3QUsgL7hT6hExZbqTRc+waKOJocNDdAKUd+0yh/5PwdqB7Yths/JKdW8QoEUlws
	qq3ZNAyE7SuWkfMUP/2Owiypbn3IA1SJsgGgy4J7wnx6SS3QiSDVlcKhTREOirFW00Hg=
X-Gm-Gg: AR+sD112N4n8tzXA768v/pUpUFqZ90opC4qcgHEnfcSt3pSipwXJh81QlWriw6AvwpY
	RkKpdVR8iVNf2hzbADujG3mD2k2MDX6pOhyrX0nKSRUxHfpK9+wYWHQssz3nL/BBeEKWxrHNUMU
	2eMF6ZMiYnrNDjBTXNsXSOtNG1eAGPEqNTnbatwN6bxtbVGeCe+V3+Zkjys+aerUGwHUIY+PL45
	45v1xAmmRYYmGWlrqGv2E84r71HyfW4uAHlR8n0l5GgF8RP4OFr/kLzq/wVqf2+H/REMiCpSd3O
	4zjsR9pVQCmjaAGySxip+4mXqssOl8u3UwM9ICGDFGHyFdJ9xJ0m/iRTrJ0YwsSHdEEiweAaAMu
	cqVyegkWF44KPIh0/8jdNPZ4DHyguGlbUBOU=
X-Received: by 2002:a05:690c:16:b0:81e:4aa9:d025 with SMTP id 00721157ae682-81fd49f6badmr118627947b3.6.1785773022047;
        Mon, 03 Aug 2026 09:03:42 -0700 (PDT)
X-Received: by 2002:a05:690c:16:b0:81e:4aa9:d025 with SMTP id 00721157ae682-81fd49f6badmr118625467b3.6.1785773019839;
        Mon, 03 Aug 2026 09:03:39 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81fccf60a76sm57341507b3.13.2026.08.03.09.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 09:03:38 -0700 (PDT)
Date: Mon, 3 Aug 2026 12:03:36 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration infrastructure
Message-ID: <anC72Cf1zKcLYWlC@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bRXt0Tl2LFx7cO6PdL_At2JaiWKSUYxEzOoXZS9Mxk0_1785773023
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_090350_822838_7A59E844 
X-CRM114-Status: GOOD (  49.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Stefan,

On Sun, Aug 02, 2026 at 11:33:37PM +0300, Stefan D=F6singer wrote:
> The next patches will implement the regmap clocks and PLL driver. The
> actual hardware specific clock listing will live in a separate module.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>
> =

> ---
> =

> Version 9:
> Rework parent matching and clock export control. Most of the changes
> will be in the next patches. The visible change here is that the clock
> array is unified with single clocks having a type rather than one array
> per type.
> =

> Depend on HAS_IOMEM, similarly to Sashiko's flagged issue in the Reset
> patch
> =

> ZX297520V3_CLK_NO_EXPORT is gone again.
> =

> The explicit clock input array and enabling of LSP's pclk is removed
> from the clock driver. The MFD parent takes care of this instead. The
> clock driver does some sanity checking on the static clock data though.
> =

> Version 8:
> Use ZX297520V3_CLK_NO_EXPORT=3D(~0u) for unexported clocks. While using 0,
> and starting clock indices at 1, is a common pattern in existing
> drivers, it exposes a driver implementation detail in the hardware
> binding interface.
> =

> If desired, I can change the special index to a separate field in the
> structs.
> =

> Fix the return value if the ->init() callback fails. (Sashiko)
> =

> Version 7:
> *) Add fixed dividers to handle PLL subdivisions
> *) Never register PLLs directly as exported clocks - everything on this
> SoC goes through a gate before it leaves a controller.
> =

> Version 6:
> *) Remove auxdev now that LSP clocks also use MFD
> *) Error codepath fixes pointed out by Sashiko.
> =

> Version 5:
> =

> *) Pass the static clk data instead of calling get_match_data to prepare
> for operating as an MFD child.
> =

> *) Don't use devm_kzalloc to allocate the auxiliary_device
> structure. I guess Sashiko is right, and that's what "Because once the
> device is placed on the bus the parent driver can not tell what other
> code may have a reference to this data" is trying to tell me.
> =

> *) Fix error check for device_node_to_regmap.
> ---
>  MAINTAINERS                  |   1 +
>  drivers/clk/Kconfig          |   1 +
>  drivers/clk/Makefile         |   1 +
>  drivers/clk/zte/Kconfig      |  17 ++++
>  drivers/clk/zte/Makefile     |   5 ++
>  drivers/clk/zte/clk-regmap.c |  32 ++++++++
>  drivers/clk/zte/clk-zx.c     | 189 +++++++++++++++++++++++++++++++++++++=
++++++
>  drivers/clk/zte/clk-zx.h     | 142 ++++++++++++++++++++++++++++++++
>  drivers/clk/zte/pll-zx.c     |  18 +++++
>  9 files changed, 406 insertions(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index b9f96455bca7..77fa86c671b8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3915,6 +3915,7 @@ F:	Documentation/devicetree/bindings/clock/zte,zx29=
7520v3-matrixcrm.yaml
>  F:	Documentation/devicetree/bindings/clock/zte,zx297520v3-topcrm.yaml
>  F:	arch/arm/boot/dts/zte/
>  F:	arch/arm/mach-zte/
> +F:	drivers/clk/zte/
>  F:	drivers/mfd/zte-zx297520v3-crm.c
>  F:	include/dt-bindings/clock/zte,zx297520v3-clk.h
>  F:	include/dt-bindings/phy/zte,zx297520v3-topcrm.h
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 1717ce75a907..6f0a863951ca 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -545,6 +545,7 @@ source "drivers/clk/uniphier/Kconfig"
>  source "drivers/clk/visconti/Kconfig"
>  source "drivers/clk/x86/Kconfig"
>  source "drivers/clk/xilinx/Kconfig"
> +source "drivers/clk/zte/Kconfig"
>  source "drivers/clk/zynqmp/Kconfig"
>  =

>  # Kunit test cases
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 6899e32e14aa..651fe866ddad 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -167,5 +167,6 @@ ifeq ($(CONFIG_COMMON_CLK), y)
>  obj-$(CONFIG_X86)			+=3D x86/
>  endif
>  obj-y					+=3D xilinx/
> +obj-$(CONFIG_COMMON_CLK_ZTE)		+=3D zte/
>  obj-$(CONFIG_ARCH_ZYNQ)			+=3D zynq/
>  obj-$(CONFIG_COMMON_CLK_ZYNQMP)         +=3D zynqmp/
> diff --git a/drivers/clk/zte/Kconfig b/drivers/clk/zte/Kconfig
> new file mode 100644
> index 000000000000..152c2423b8f0
> --- /dev/null
> +++ b/drivers/clk/zte/Kconfig
> @@ -0,0 +1,17 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# ZTE Clock Drivers
> +#
> +
> +config COMMON_CLK_ZTE
> +	tristate "Clock driver for ZTE SoCs"
> +	depends on HAS_IOMEM
> +	depends on ARCH_ZTE || COMPILE_TEST
> +	default ARCH_ZTE
> +	select MFD_SYSCON
> +	help
> +	  This option selects common clock infrastructure for ZTE based SoCs.
> +	  You will need to enable one or more SoC specific drivers to make use
> +	  of this.
> +
> +	  Enable this if you are building a kernel for a ZTE designed board.
> diff --git a/drivers/clk/zte/Makefile b/drivers/clk/zte/Makefile
> new file mode 100644
> index 000000000000..27db07293165
> --- /dev/null
> +++ b/drivers/clk/zte/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-$(CONFIG_COMMON_CLK_ZTE) +=3D clk-zte.o
> +
> +clk-zte-y +=3D clk-zx.o pll-zx.o clk-regmap.o
> diff --git a/drivers/clk/zte/clk-regmap.c b/drivers/clk/zte/clk-regmap.c
> new file mode 100644
> index 000000000000..80332dba97f6
> --- /dev/null
> +++ b/drivers/clk/zte/clk-regmap.c
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2026 Stefan D=F6singer
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/device.h>
> +#include <linux/errno.h>
> +#include <linux/regmap.h>
> +
> +#include "clk-zx.h"
> +
> +struct clk_hw *zx_clk_register_gate(struct device *dev, struct regmap *r=
egmap,
> +				    const struct zx_gate_desc *desc,
> +				    struct clk_hw * const *clocks)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
> +struct clk_hw *zx_clk_register_divider(struct device *dev, struct regmap=
 *regmap,
> +				       const struct zx_div_desc *desc,
> +				       struct clk_hw * const *clocks)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
> +struct clk_hw *zx_clk_register_mux(struct device *dev, struct regmap *re=
gmap,
> +				   const struct zx_mux_desc *desc,
> +				   struct clk_hw * const *clocks)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> diff --git a/drivers/clk/zte/clk-zx.c b/drivers/clk/zte/clk-zx.c
> new file mode 100644
> index 000000000000..27bbafd8ce4d
> --- /dev/null
> +++ b/drivers/clk/zte/clk-zx.c
> @@ -0,0 +1,189 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2026 Stefan D=F6singer
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/errno.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +
> +#include "clk-zx.h"
> +
> +static struct clk_hw *zx_clk_register_fixed_div(struct device *dev,
> +						const struct zx_fixed_divider_desc *desc,
> +						struct clk_hw * const *clocks)
> +{
> +	const struct zx_parent_desc *p =3D &desc->parent;
> +
> +	switch (p->type) {
> +	case ZX_PARENT_FW:
> +		return devm_clk_hw_register_fixed_factor_fwname(dev, NULL, desc->name,=
 p->fw_name,
> +								CLK_SET_RATE_PARENT, 1, desc->div);
> +
> +	case ZX_PARENT_ID:
> +		return devm_clk_hw_register_fixed_factor_parent_hw(dev, desc->name, cl=
ocks[p->id],
> +								   CLK_SET_RATE_PARENT, 1,
> +								   desc->div);
> +	}
> +	WARN_ON_ONCE(1);
> +	return ERR_PTR(-EINVAL);
> +}
> +
> +static int zx_clk_validate(struct device *dev, struct device_node *of_no=
de,
> +			   const struct zx_clk_data *data)
> +{
> +	const struct zx_parent_desc *parents;
> +	unsigned int i, p, num_parents;
> +	struct clk *clk;
> +
> +	/*
> +	 * Sanity check: Make sure all parents are there and write a clear mess=
age rather than
> +	 * leave potential orphans.
> +	 */

It's not common for clk drivers to have a validate function like this.
That said, I know you are reverse engineering what's in the downstream
BSP without documentation, and there is value in having this. I think
it'd be useful to clarify that in the comments because code usually gets
copied and pasted between drivers over time.

That said, once it's verified that the clock tree is correct, can these
checks be eventually dropped so that this validation logic isn't ran on
every boot?

k
> +	for (i =3D 0; i < data->num_clocks; ++i) {
> +		switch (data->clocks[i].type) {
> +		case ZX_CLOCK_PLL:
> +			parents =3D data->clocks[i].pll.parents;
> +			num_parents =3D data->clocks[i].pll.num_parents;
> +			break;
> +
> +		case ZX_CLOCK_FIXED_DIV:
> +			parents =3D &data->clocks[i].fixed_div.parent;
> +			num_parents =3D 1;
> +			break;
> +
> +		case ZX_CLOCK_MUX:
> +			parents =3D data->clocks[i].mux.parents;
> +			num_parents =3D data->clocks[i].mux.num_parents;
> +			break;
> +
> +		case ZX_CLOCK_DIV:
> +			parents =3D &data->clocks[i].div.parent;
> +			num_parents =3D 1;
> +			break;
> +
> +		case ZX_CLOCK_GATE:
> +			parents =3D &data->clocks[i].gate.parent;
> +			num_parents =3D 1;
> +			break;
> +
> +		default:
> +			return dev_err_probe(dev, -EINVAL, "Invalid clock entry %u\n", i);
> +		}
> +
> +		for (p =3D 0; p < num_parents; ++p) {
> +			switch (parents[p].type) {
> +			case ZX_PARENT_FW:
> +				clk =3D of_clk_get_by_name(of_node, parents[p].fw_name);
> +				if (IS_ERR(clk))
> +					return dev_err_probe(dev, PTR_ERR(clk),
> +							     "Input clk %s failure\n",
> +							     parents[p].fw_name);
> +				clk_put(clk);
> +				break;
> +
> +			case ZX_PARENT_ID:
> +				if (parents[p].id >=3D i)
> +					return dev_err_probe(dev, -EINVAL,
> +							     "Clock %u has parent %u\n",
> +							     i, parents[p].id);
> +				break;
> +
> +			default:
> +				return dev_err_probe(dev, -EINVAL,
> +						     "Clock %u has unexpected parent of type %u\n",
> +						     i, parents[p].type);
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +int zx_clk_common_probe(struct device *dev, struct device_node *of_node,
> +			const struct zx_clk_data *data)
> +{
> +	struct clk_hw_onecell_data *exports;
> +	struct clk_hw **clocks;
> +	struct regmap *map;
> +	unsigned int i;
> +	int res;
> +
> +	res =3D zx_clk_validate(dev, of_node, data);
> +	if (res)
> +		return res;
> +
> +	map =3D device_node_to_regmap(of_node);
> +	if (IS_ERR(map))
> +		return PTR_ERR(map);
> +
> +	clocks =3D devm_kcalloc(dev, data->num_clocks, sizeof(*clocks), GFP_KER=
NEL);
> +	if (!clocks)
> +		return -ENOMEM;
> +
> +	if (data->init) {
> +		res =3D data->init(map);
> +		if (res)
> +			return res;
> +	}
> +
> +	for (i =3D 0; i < data->num_clocks; ++i) {
> +		struct clk_hw *hw;
> +
> +		switch (data->clocks[i].type) {
> +		case ZX_CLOCK_PLL:
> +			hw =3D zx_clk_register_pll(dev, map, &data->clocks[i].pll, clocks);
> +			break;
> +
> +		case ZX_CLOCK_FIXED_DIV:
> +			hw =3D zx_clk_register_fixed_div(dev, &data->clocks[i].fixed_div, clo=
cks);
> +			break;
> +
> +		case ZX_CLOCK_MUX:
> +			hw =3D zx_clk_register_mux(dev, map, &data->clocks[i].mux, clocks);
> +			break;
> +
> +		case ZX_CLOCK_DIV:
> +			hw =3D zx_clk_register_divider(dev, map, &data->clocks[i].div, clocks=
);
> +			break;
> +
> +		case ZX_CLOCK_GATE:
> +			hw =3D zx_clk_register_gate(dev, map, &data->clocks[i].gate, clocks);
> +			break;
> +
> +		default:
> +			return -EINVAL;
> +		}
> +
> +		if (IS_ERR(hw))
> +			return dev_err_probe(dev, PTR_ERR(hw), "Failed to register clk %u\n",=
 i);
> +
> +		clocks[i] =3D hw;
> +	}
> +
> +	exports =3D devm_kzalloc(dev, struct_size(exports, hws, data->num_expor=
ts), GFP_KERNEL);
> +	if (!exports)
> +		return -ENOMEM;
> +	exports->num =3D data->num_exports;
> +
> +	for (i =3D 0; i < data->num_exports; ++i) {
> +		if (data->exports[i] >=3D data->num_clocks)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "Export %u points to out of range clock %u\n",
> +					     i, data->exports[i]);
> +
> +		exports->hws[i] =3D clocks[data->exports[i]];
> +	}
> +
> +	devm_kfree(dev, clocks);
> +
> +	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, exports);
> +}
> +EXPORT_SYMBOL_NS_GPL(zx_clk_common_probe, "ZTE_CLK");
> +
> +MODULE_AUTHOR("Stefan D=F6singer <stefandoesinger@gmail.com>");
> +MODULE_DESCRIPTION("ZTE common clock driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/clk/zte/clk-zx.h b/drivers/clk/zte/clk-zx.h
> new file mode 100644
> index 000000000000..175fbba3e0b3
> --- /dev/null
> +++ b/drivers/clk/zte/clk-zx.h
> @@ -0,0 +1,142 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2026 Stefan D=F6singer
> + */
> +
> +#ifndef __DRV_CLK_ZX_H
> +#define __DRV_CLK_ZX_H
> +
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/types.h>
> +
> +#define CLK_ZX_PLL_PREPARE_IS_ENABLE	1
> +#define CLK_ZX_MAX_PARENTS		8
> +
> +enum zx_parent_type {
> +	ZX_PARENT_FW,
> +	ZX_PARENT_ID,
> +};
> +
> +struct zx_parent_desc {
> +	enum zx_parent_type		type;
> +	union {
> +		const char		*fw_name;
> +		unsigned int		id;
> +	};
> +};
> +
> +#define PARENT_FW(_name) { .type =3D ZX_PARENT_FW, .fw_name =3D (_name) }
> +
> +#define PARENT_ID(_id) { .type =3D ZX_PARENT_ID, .id =3D (_id) }
> +
> +static inline struct clk_parent_data zx_get_parent(const struct zx_paren=
t_desc *p,
> +						   struct clk_hw * const *clocks)
> +{
> +	struct clk_parent_data ret =3D {};
> +
> +	switch (p->type) {
> +	case ZX_PARENT_FW:
> +		ret.fw_name =3D p->fw_name;
> +		ret.index =3D -1;
> +		return ret;
> +
> +	case ZX_PARENT_ID:
> +		ret.hw =3D clocks[p->id];
> +		ret.index =3D -1;
> +		return ret;
> +	};
> +
> +	WARN_ON_ONCE(1);
> +	return ret;
> +}
> +
> +struct zx_pll_desc {
> +	const char			*name;
> +	const struct zx_parent_desc	*parents;
> +	unsigned int			num_parents;
> +	unsigned long			rate;
> +	u16				reg;
> +	u16				flags;
> +};
> +
> +struct zx_fixed_divider_desc {
> +	const char			*name;
> +	struct zx_parent_desc		parent;
> +	unsigned int			div;
> +};
> +
> +struct zx_mux_desc {
> +	const char			*name;
> +	const struct zx_parent_desc	*parents;
> +	unsigned int			num_parents;
> +	u16				reg;
> +	u8				shift, size;
> +};
> +
> +struct zx_div_desc {
> +	const char			*name;
> +	struct zx_parent_desc		parent;
> +	u16				reg;
> +	u8				shift, size;
> +};
> +
> +struct zx_gate_desc {
> +	const char			*name;
> +	struct zx_parent_desc		parent;
> +	unsigned long			flags;
> +	u16				reg;
> +	u8				shift;
> +};
> +
> +enum zx_clock_type {
> +	ZX_CLOCK_INVALID =3D 0,
> +	ZX_CLOCK_PLL,
> +	ZX_CLOCK_FIXED_DIV,
> +	ZX_CLOCK_MUX,
> +	ZX_CLOCK_DIV,
> +	ZX_CLOCK_GATE,
> +};
> +
> +struct zx_clock {
> +	enum zx_clock_type type;
> +	union {
> +		struct zx_pll_desc pll;
> +		struct zx_fixed_divider_desc fixed_div;
> +		struct zx_mux_desc mux;
> +		struct zx_div_desc div;
> +		struct zx_gate_desc gate;
> +	};
> +};
> +
> +struct clk_hw *zx_clk_register_pll(struct device *dev, struct regmap *re=
gmap,
> +				   const struct zx_pll_desc *desc,
> +				   struct clk_hw * const *clocks);
> +struct clk_hw *zx_clk_register_mux(struct device *dev, struct regmap *re=
gmap,
> +				   const struct zx_mux_desc *desc,
> +				   struct clk_hw * const *clocks);
> +struct clk_hw *zx_clk_register_divider(struct device *dev, struct regmap=
 *regmap,
> +				       const struct zx_div_desc *desc,
> +				       struct clk_hw * const *clocks);
> +struct clk_hw *zx_clk_register_gate(struct device *dev, struct regmap *r=
egmap,
> +				    const struct zx_gate_desc *desc,
> +				    struct clk_hw * const *clocks);
> +
> +struct zx_clk_export {
> +	unsigned int priv;
> +	unsigned int binding;
> +};

Sashiko flagged this as unused.

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
