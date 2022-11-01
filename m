Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B638DC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 20:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVrADXmzu4xjFYBXf5/KZAhksmktFj9CLm0TM8BWlGE=; b=Y2PYEkG+R4f2Tz
	XA2ASk1Mgtwqn7cQshZKECfBYlme55eoVdyisw8UvSqhqEiNmsD9+RiTzk+cNtW6R8wlcB+7q/55s
	JlhEpiugbQhiWO+lRCHIMYq3OQbER6qMjUL7c/SXMyhd4aHcDFK5zreTU8nX/WZJAvZFi86G9+TyA
	XhAIzGKIuASpHyBM2yvN8JNFfI676uVWig3vdXYq+gB7b8jQDHhlmZMWQLHA0P8mZc+Tcm2n20ZAf
	7rR+vll0XbQJ+qv8bVGsa7ZIHkHTJ9W5Zu3RA15ggXRBUo6EqF+D9MhW09KbQF9vlufF4eqqJ25a1
	NY95n3vYGD/CsFCH8JLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opxYP-006qtO-3G; Tue, 01 Nov 2022 20:08:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opxYE-006qrT-DO; Tue, 01 Nov 2022 20:07:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E4DF061717;
	Tue,  1 Nov 2022 20:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4626BC433D6;
	Tue,  1 Nov 2022 20:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667333277;
	bh=jODf5oFatJsSUGvBhFgHv+L4Zcs7WamIZXIwk1cHpiU=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qTcA2zv/0L05XIHYuTr5gtLYwxFQsklUGfH2Gg01dV/ozsG2KKcLK+qPH6wbc+NTa
	 bynztw7vQ+VR/fuKNG4n/KDENs9Ii5fmcR/PpMxj7sLWx+GanvT6EjvPn/xV0nMZb6
	 zyI7FZgrqOiCNgARZXAiziXvdjdLdGcE69vx5JQtuKlbQ2BVVLsCctXVhGI9clC4te
	 LDH+GwpSuy5x8asupkiCldikQym1GuM6B0SI3q4sLyzEds8CFzkUF7HrBjgia3T6gw
	 DV7rIH3wJR4Za0BNYTCRz8P4FCrgVrufoOQwn6c1TOPYPmXxL7t1rtGvC2lEh+BZRp
	 aeGcigCjSCHaA==
MIME-Version: 1.0
In-Reply-To: <5f00ede6-10f5-c11c-ee21-54460c1f98b0@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com> <20221027191113.403712-5-sean.anderson@seco.com> <20221027230331.19C2FC433D6@smtp.kernel.org> <5f00ede6-10f5-c11c-ee21-54460c1f98b0@seco.com>
Subject: Re: [PATCH v8 4/9] phy: fsl: Add Lynx 10G SerDes driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Jonathan Corbet <corbet@lwn.net>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Tue, 01 Nov 2022 13:07:55 -0700
User-Agent: alot/0.10
Message-Id: <20221101200757.4626BC433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_130758_554039_832AD2FD 
X-CRM114-Status: GOOD (  38.90  )
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

Quoting Sean Anderson (2022-10-28 09:13:57)
> On 10/27/22 19:03, Stephen Boyd wrote:
> > Quoting Sean Anderson (2022-10-27 12:11:08)
> >> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> >> index 853958fb2c06..a6ccccf9e39b 100644
> >> --- a/drivers/phy/freescale/Kconfig
> >> +++ b/drivers/phy/freescale/Kconfig
> >> @@ -47,3 +47,25 @@ config PHY_FSL_LYNX_28G
> >>            found on NXP's Layerscape platforms such as LX2160A.
> >>            Used to change the protocol running on SerDes lanes at runtime.
> >>            Only useful for a restricted set of Ethernet protocols.
> >> +
> >> +config PHY_FSL_LYNX_10G
> >> +       tristate "Freescale QorIQ Lynx 10G SerDes support"
> >> +       depends on COMMON_CLK
> > 
> > Does something not compile if COMMON_CLK is disabled?
> 
> ld: drivers/phy/freescale/phy-fsl-lynx-10g-clk.o: in function `lynx_pll_round_rate':
> phy-fsl-lynx-10g-clk.c:(.text+0x444): undefined reference to `clk_hw_round_rate'
> ld: drivers/phy/freescale/phy-fsl-lynx-10g-clk.o: in function `lynx_clks_init':
> phy-fsl-lynx-10g-clk.c:(.text+0x5eb): undefined reference to `devm_clk_hw_register'
> ld: phy-fsl-lynx-10g-clk.c:(.text+0x625): undefined reference to `devm_clk_hw_register'

Cool thanks!

> 
> >> diff --git a/drivers/phy/freescale/lynx-10g.h b/drivers/phy/freescale/lynx-10g.h
> >> new file mode 100644
> >> index 000000000000..75d9353a867b
> >> --- /dev/null
> >> +++ b/drivers/phy/freescale/lynx-10g.h
> >> @@ -0,0 +1,16 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/*
> >> + * Copyright (C) 2022 Sean Anderson <sean.anderson@seco.com>
> >> + */
> >> +
> >> +#ifndef LYNX_10G
> >> +#define LYNX_10G
> >> +
> >> +struct clk;
> >> +struct device;
> >> +struct regmap;
> >> +
> >> +int lynx_clks_init(struct device *dev, struct regmap *regmap,
> > 
> > Can you use auxiliary bus to register this clk controller instead and
> > then move the clk file to drivers/clk/?
> 
> I don't want to have to deal with my clock driver getting unbound (aka
> the user has come and decided to make my life harder). Dynamic binding
> will only add complexity in this situation.

We have 'suppress_bind_attrs' for that. What dynamic binding are you
thinking about?

> 
> I don't know how much context you've picked up, but this driver
> 
> - Has one consumer, and is is the serdes.
> - Is not accessible from outside the serdes.
> - Does not share any code with other drivers.
> - Has bits in its registers which can control the reset process of lanes
>    using the PLLs.
> 
> These drivers are tightly coupled to each other. It is very likely IMO
> that changes to one (bugs, features, etc) will affect the other. For
> this reason, I think it makes sense to keep them in the same source
> directory. I actually would have preferred to keep them in the same
> file.
> 

Using the auxiliary bus is about getting better code review on the
subsystem specific parts of a device. I'm not going to be paying a lot
of attention to the clk parts of this driver if it is outside
drivers/clk. Making this change helps with better code review.

The Kconfig symbol could be the same for the clk part and the phy part,
and this is already split to a different file. It seems that your
argument for keeping the clk file in the phy directory is because
they're part of the same phy device. Do you expect to get clk driver
review on the clk parts with the clk implementation in a different
directory?

> >> +       for (i = 0; i < NUM_PLLS; i++) {
> >> +               ret = lynx_clk_init(hw_data, dev, regmap, i);
> >> +               if (ret)
> >> +                       return ret;
> >> +
> >> +               plls[i] = hw_data->hws[LYNX10G_PLLa(i)]->clk;
> >> +               ex_dlys[i] = hw_data->hws[LYNX10G_PLLa_EX_DLY(i)]->clk;
> > 
> > Use clk_hw_get_clk() please.
> 
> I don't want to do that, because then I'd have to generate the clock ID
> again. And why do we even need a new clock consumer in the first place?
> This is only for internal use by the driver; the consumer is the same as
> the producer.
> 

We want to get rid of the clk pointer stashed in clk_hw. Using
clk_hw_get_clk() lets us easily change that and not need to change this
driver. I don't quite understand why you need to generate a clock ID.
Are you concerned about passing in the 'con_id' argument? That string
can be anything.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
