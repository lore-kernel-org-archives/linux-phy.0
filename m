Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B578EC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 13:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8f71UaSEN0sdqeKgBUDEq8oMkC86W37n8jSj7EHyW4=; b=Zq/kKx+g1nqTCV
	tqwKrDkTN/yoZ2wKEc0Ab+np7d76iTgUGy8DAJY0IjPEPR65qP0eCI2fuSq6mt0wnSXPHIaqfHI2s
	QDuzhdn/MDT5jSkNbF920oug5krHGYLo22jaTOGDjZCKzbiwcRKF+g6OJ8DpF0uBtSxQfrWc3dKCb
	t/oKg8VjNZvvAyL8JhyRddNI7tzZsT1dfsIzIwZKQ2ahD5ufn0NY5qizyljkDKp5RK0uod00au71x
	atzCRy9uOCrDtUxO1noqt7tkmdcR7mjgIVkcyaC5zdn1swcG4NZCo/BIiNthGclt+y2tsq896Ujr+
	KSPP1CWYn0mYRMVhzhSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woi4X-00000005NYE-0CeC;
	Tue, 28 Jul 2026 13:42:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woi4V-00000005NXT-1GKR
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 13:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785246134;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zkiuYMKfTZUCAQyXJDsyAYrYbc3+oqsrPiHuKHrbdH4=;
	b=b5xZS8ljJjqwFg/cqyMMZ4hAQ4P0D3PvyhBy3Nkio9Y/kXKGO9Td8qsbU7173Z008lVIPy
	k5iVc55R7RNmaUMO/QN4cEvkfktiAgtvUzZRMBu085LBTq5f95LaSobTf1Z9icLCUE46GB
	JRQ8Yf/ol6pFANNRF8r/PeXcxI7Onyg=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-6-NMspw01xOVWqx2j05hj3zA-1; Tue, 28 Jul 2026 09:42:12 -0400
X-MC-Unique: NMspw01xOVWqx2j05hj3zA-1
X-Mimecast-MFC-AGG-ID: NMspw01xOVWqx2j05hj3zA_1785246130
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8fdace20927so41822496d6.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 06:42:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785246130; x=1785850930;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zkiuYMKfTZUCAQyXJDsyAYrYbc3+oqsrPiHuKHrbdH4=;
        b=qISp+vMfRGJQ9ZmDy9fD+yinmhoe5+S8ckNVCprZFvQTR+ldCRIvG6YPK/tH+Htd1N
         fGt07VxgdhF9B5d5Q40dMA7PJRpNcoI8gMFay4j7yV8aN2K0wNcicwu2qOmdhowxWsc2
         e+u1K3sUYm6sSjP44Ay4bjJhHqcReSecALKD6ZxBDEYIySTm6rog8M9xPIk7iCyX72QU
         l/7h8ddWxbyjeHT6cq7iQ7vJkVTvdlerrtKGZCb08tAo4dmgNvJgFpg+qt6wHNUE2edD
         wL3QiSLGNGCcT4OHBA2nj9fwSv3CmBBNGZRMfggIVIdmFDgQMcczdi6JsD70v0sL265y
         4Vvw==
X-Forwarded-Encrypted: i=1; AHgh+RpmhtuPeZLCgU6mZ9bDUgkL8YbnKbZ0efzhCJog+rIVbzMnN6YsykO1PJAvaXh3ktRAyoCAxWDEUsY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7AhnpxlNF6ogWVfPOagtwS8ZewGAPclHTr1N5GEhKXDJ4L1L6
	dJolXtMn0CRsXhaD/DRLNMPVC8TzWvXoQO2bp9x7b3W6PXhgzEc86sfOKRxp667R712CcFRAp02
	PiSROF0GMFPGgnUdbTleh2gSJ4VCHrPNM/0/6CydxU22cDND3wnK615GxIoQMOWtURDg=
X-Gm-Gg: AR+sD12wGs5LWnvWyoq1tNI+S30wW/eOQb4yW96oUTtYvM13se6B8rh3lSOZjS6T/hE
	ZOEwdSH7aEZ2SbWUt/IoUX7XY3gKvHLtV3lxgYHa8ADVeZmn5cCMD0BTe3DMm9BPNPWPILvGAXq
	fTqAZaJprueNTmU82O5IJUEYsrj3CCqvpCDBSUrjG+55oQMbpvXXWA5S9wVGWCh+wmoTISpUaPf
	FtjbHT7pLE8fJDhghNYjVoxG68m5T23ByB9cVHn1pdKPvEA9Iw/fgc0ktRCq34WY9aHui9NrTNB
	ays7b4DQqYy7qmHD6rNkdlAiyw6dqlzgKftpjDXDRiKbROJ06G3RcxsDDwTrowMq8oOZ8SYch+B
	bx9wUELWUfsWnDM1hUAcA3wO5asXBKxynQ+E=
X-Received: by 2002:a05:6214:5545:b0:8e8:7de7:ec20 with SMTP id 6a1803df08f44-90816f640a7mr25742516d6.4.1785246130272;
        Tue, 28 Jul 2026 06:42:10 -0700 (PDT)
X-Received: by 2002:a05:6214:5545:b0:8e8:7de7:ec20 with SMTP id 6a1803df08f44-90816f640a7mr25741856d6.4.1785246129549;
        Tue, 28 Jul 2026 06:42:09 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-907e86d499dsm87767676d6.42.2026.07.28.06.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 06:42:07 -0700 (PDT)
Date: Tue, 28 Jul 2026 09:42:06 -0400
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
Subject: Re: [PATCH v8 06/12] clk: zte: Add regmap-based clocks
Message-ID: <amixrkffNj_JuXtU@redhat.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-6-7a107b00f1dd@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260727-zx29clk-v8-6-7a107b00f1dd@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OZVZuybo9yNy4BIKLhXq-uvZY1b1L-9r33JraeAWOf8_1785246130
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_064215_416641_08D37BC5 
X-CRM114-Status: GOOD (  29.10  )
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

On Mon, Jul 27, 2026 at 09:24:21PM +0300, Stefan D=F6singer wrote:
> This is based on meson/clk-regmap.c, although slightly simplified. I
> have kept the copyright lines at the top of the file to indicate its
> origin.
> =

> I see that numerous clock drivers have their own incarnation of regmap-
> based mux/div/gate clocks. If there is any version of it that is likely
> to be elevated to shared code like clk-gate.c I'll copy that and try to
> use it as unmodified as possible.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>
> =

> ---
> =

> Version 8: Use ZX297520V3_CLK_NO_EXPORT instead of 0 for unexported clock=
s.
> =

> Version 6: Remove stray regmap (Sashiko)
> =

> Version 5: Use regmap_test_bits in zte_clk_regmap_gate_is_enabled
> ---
>  drivers/clk/zte/clk-regmap.c | 218 +++++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 215 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/clk/zte/clk-regmap.c b/drivers/clk/zte/clk-regmap.c
> index 984abeb45ab2..671b81bcda4d 100644
> --- a/drivers/clk/zte/clk-regmap.c
> +++ b/drivers/clk/zte/clk-regmap.c
> @@ -7,28 +7,240 @@
>   */
>  =

>  #include <linux/clk-provider.h>
> +#include <linux/container_of.h>
>  #include <linux/device.h>
>  #include <linux/regmap.h>
> +#include <linux/types.h>
>  #include <linux/errno.h>
> +#include <linux/bits.h>
> +#include <linux/err.h>
>  =

>  #include "clk-zx.h"
>  =

> +struct zte_clk_regmap {
> +	struct clk_hw	hw;
> +	struct regmap	*map;
> +	u16		reg;
> +	u8		shift;
> +	u8		size;
> +};
> +
> +static inline struct zte_clk_regmap *to_zte_clk_regmap(struct clk_hw *hw)
> +{
> +	return container_of(hw, struct zte_clk_regmap, hw);
> +}
> +
> +static int zte_clk_regmap_gate_enable(struct clk_hw *hw)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +
> +	return regmap_set_bits(clk->map, clk->reg, BIT(clk->shift));
> +}
> +
> +static void zte_clk_regmap_gate_disable(struct clk_hw *hw)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +
> +	regmap_clear_bits(clk->map, clk->reg, BIT(clk->shift));
> +}
> +
> +static int zte_clk_regmap_gate_is_enabled(struct clk_hw *hw)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +
> +	return regmap_test_bits(clk->map, clk->reg, BIT(clk->shift));
> +}
> +
> +static const struct clk_ops zte_clk_regmap_gate_ops =3D {
> +	.enable		=3D zte_clk_regmap_gate_enable,
> +	.disable	=3D zte_clk_regmap_gate_disable,
> +	.is_enabled	=3D zte_clk_regmap_gate_is_enabled,
> +};
> +
>  int zx_clk_register_gates(struct device *dev, struct regmap *regmap,
>  			  const struct zx_gate_desc *desc, unsigned int num,
>  			  struct clk_hw_onecell_data *clocks)
>  {
> -	return -ENODEV;
> +	struct zte_clk_regmap *clk;
> +	unsigned int i;
> +	int res;
> +
> +	for (i =3D 0; i < num; ++i) {
> +		struct clk_init_data init =3D {};
> +
> +		clk =3D devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
> +		if (!clk)
> +			return -ENOMEM;
> +
> +		init.name =3D desc[i].name;
> +		init.ops =3D &zte_clk_regmap_gate_ops;
> +		init.parent_names =3D &desc[i].parent;
> +		init.num_parents =3D 1;
> +		init.flags =3D CLK_SET_RATE_PARENT | desc[i].flags;
> +		clk->hw.init =3D &init;
> +		clk->map =3D regmap;
> +		clk->reg =3D desc[i].reg;
> +		clk->shift =3D desc[i].shift;
> +		clk->size =3D 1;
> +
> +		res =3D devm_clk_hw_register(dev, &clk->hw);
> +		if (res)
> +			return dev_err_probe(dev, res, "Failed to register clk %s\n", desc[i]=
.name);
> +
> +		if (desc[i].id !=3D ZX297520V3_CLK_NO_EXPORT)
> +			clocks->hws[desc[i].id] =3D &clk->hw;
> +	}
> +
> +	return 0;
> +}
> +
> +static unsigned long zte_clk_regmap_div_recalc_rate(struct clk_hw *hw,
> +						    unsigned long prate)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D regmap_read(clk->map, clk->reg, &val);
> +	if (ret)
> +		/* Gives a hint that something is wrong */
> +		return 0;
> +
> +	val >>=3D clk->shift;
> +	val &=3D clk_div_mask(clk->size);
> +	return divider_recalc_rate(hw, prate, val, NULL, 0, clk->size);

Newline before the return

> +}
> +
> +static int zte_clk_regmap_div_determine_rate(struct clk_hw *hw,
> +					     struct clk_rate_request *req)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +
> +	return divider_determine_rate(hw, req, NULL, clk->size, 0);
> +}
> +
> +static int zte_clk_regmap_div_set_rate(struct clk_hw *hw, unsigned long =
rate,
> +				       unsigned long parent_rate)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D divider_get_val(rate, parent_rate, NULL, clk->size, 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	val =3D (unsigned int)ret << clk->shift;
> +	return regmap_update_bits(clk->map, clk->reg, clk_div_mask(clk->size) <=
< clk->shift, val);
>  }
>  =

> +static const struct clk_ops zte_clk_regmap_divider_ops =3D {
> +	.recalc_rate =3D zte_clk_regmap_div_recalc_rate,
> +	.determine_rate =3D zte_clk_regmap_div_determine_rate,
> +	.set_rate =3D zte_clk_regmap_div_set_rate,
> +};
> +
>  int zx_clk_register_dividers(struct device *dev, struct regmap *regmap,
>  			     const struct zx_div_desc *desc, unsigned int num)
>  {
> -	return -ENODEV;
> +	struct zte_clk_regmap *clk;
> +	unsigned int i;
> +	int res;
> +
> +	for (i =3D 0; i < num; ++i) {
> +		struct clk_init_data init =3D {};
> +
> +		clk =3D devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
> +		if (!clk)
> +			return -ENOMEM;
> +
> +		init.name =3D desc[i].name;
> +		init.ops =3D &zte_clk_regmap_divider_ops;
> +		init.parent_names =3D &desc[i].parent;

Use parent_data instead of parent_names

> +		init.num_parents =3D 1;
> +		init.flags =3D CLK_SET_RATE_PARENT;
> +		clk->hw.init =3D &init;
> +		clk->map =3D regmap;
> +		clk->reg =3D desc[i].reg;
> +		clk->shift =3D desc[i].shift;
> +		clk->size =3D desc[i].size;
> +
> +		res =3D devm_clk_hw_register(dev, &clk->hw);
> +		if (res)
> +			return dev_err_probe(dev, res, "Failed to register clk %s\n", desc[i]=
.name);
> +	}
> +
> +	return 0;
>  }
>  =

> +static u8 zte_clk_regmap_mux_get_parent(struct clk_hw *hw)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D regmap_read(clk->map, clk->reg, &val);
> +	if (ret)
> +		return 0xff;
> +
> +	val >>=3D clk->shift;
> +	val &=3D GENMASK(clk->size - 1, 0);
> +	return clk_mux_val_to_index(hw, NULL, 0, val);
> +}
> +
> +static int zte_clk_regmap_mux_set_parent(struct clk_hw *hw, u8 index)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	unsigned int val =3D clk_mux_index_to_val(NULL, 0, index);
> +
> +	return regmap_update_bits(clk->map, clk->reg,
> +				  GENMASK(clk->size - 1, 0) << clk->shift,
> +				  val << clk->shift);
> +}
> +
> +static int zte_clk_regmap_mux_determine_rate(struct clk_hw *hw, struct c=
lk_rate_request *req)
> +{
> +	return clk_mux_determine_rate_flags(hw, req, 0);
> +}
> +
> +static const struct clk_ops zte_clk_regmap_mux_ops =3D {
> +	.get_parent =3D zte_clk_regmap_mux_get_parent,
> +	.set_parent =3D zte_clk_regmap_mux_set_parent,
> +	.determine_rate =3D zte_clk_regmap_mux_determine_rate,
> +};
> +
>  int zx_clk_register_muxes(struct device *dev, struct regmap *regmap,
>  			  const struct zx_mux_desc *desc, unsigned int num,
>  			  struct clk_hw_onecell_data *clocks)
>  {
> -	return -ENODEV;
> +	struct zte_clk_regmap *clk;
> +	unsigned int i;
> +	int res;
> +
> +	for (i =3D 0; i < num; ++i) {
> +		struct clk_init_data init =3D {};
> +
> +		clk =3D devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
> +		if (!clk)
> +			return -ENOMEM;
> +
> +		init.name =3D desc[i].name;
> +		init.ops =3D &zte_clk_regmap_mux_ops;
> +		init.parent_names =3D desc[i].parents;

Use parent_data instead of parent_names

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
