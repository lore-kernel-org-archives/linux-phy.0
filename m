Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49348C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:15:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1178961002
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:15:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1178961002
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auTlnZ3zssQ8i/uLjnxUHwr4bv51AmQTW+rmWgRHS60=; b=NNWEDwSQjRMKAI
	w/E9avLmB9jBaGjuX65AUpKXIdxkh8dl6u7GNosFI9zrF7fQ/GJnKN4D6VzAN0146vkZVLviZeUuR
	omRRVCtFfUzKEDoKZLSul4Y3/YVOqfsivmP3zkoY1n56YpEvX1x9HUcKo5J7TiDw3MtcOwEp7rQcL
	7k9cz9Ds9oym5NnuuspzRYdwBq6tG9J8aI7HzeWrLr9gV7SsMxNQCEXWO0qA1CisbHV6XlHbPZXbZ
	5FjktCYtVj9gY7eTjc1NMO/5UUdGq+GWRvrZpUKPry1ONkt8fCVQBHH1GpQl9/3urw8jgJmXkHIJf
	1JLV+256vSnwtU1DfKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvG1R-002qkK-JW; Mon, 21 Jun 2021 09:15:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvG1F-002qiY-7U; Mon, 21 Jun 2021 09:15:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79C3F1FB;
 Mon, 21 Jun 2021 02:14:55 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 530323F718;
 Mon, 21 Jun 2021 02:14:53 -0700 (PDT)
Date: Mon, 21 Jun 2021 10:14:36 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh@kernel.org>, Icenowy
 Zheng <icenowy@aosc.io>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, Ondrej Jirman
 <megous@megous.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 14/19] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Message-ID: <20210621101436.3d1ce911@slackpad.fritz.box>
In-Reply-To: <YNAXT5lYVcJ309zJ@vkoul-mobl>
References: <20210615110636.23403-1-andre.przywara@arm.com>
 <20210615110636.23403-15-andre.przywara@arm.com>
 <YNAXT5lYVcJ309zJ@vkoul-mobl>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_021501_415072_698F3763 
X-CRM114-Status: GOOD (  26.03  )
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

On Mon, 21 Jun 2021 10:06:31 +0530
Vinod Koul <vkoul@kernel.org> wrote:

Hi Vinod,

thanks for having a look!

> On 15-06-21, 12:06, Andre Przywara wrote:
> > At least the Allwinner H616 SoC requires a weird quirk to make most
> > USB PHYs work: Only port2 works out of the box, but all other ports
> > need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> > RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> > the PMU PHY control register needs to be cleared. For this register to
> > be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> > 
> > Instead of disguising this as some generic feature, do exactly that
> > in our PHY init:
> > If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> > this one special clock, and clear the SIDDQ bit. We can pull in the
> > other required clocks via the DT.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  drivers/phy/allwinner/phy-sun4i-usb.c | 59 +++++++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> > 
> > diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
> > index 126ef74d013c..316ef5fca831 100644
> > --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> > +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> > @@ -120,6 +120,7 @@ struct sun4i_usb_phy_cfg {
> >  	u8 phyctl_offset;
> >  	bool dedicated_clocks;
> >  	bool phy0_dual_route;
> > +	bool needs_phy2_siddq;
> >  	int missing_phys;
> >  };
> >  
> > @@ -289,6 +290,50 @@ static int sun4i_usb_phy_init(struct phy *_phy)
> >  		return ret;
> >  	}
> >  
> > +	/* Some PHYs on some SoCs need the help of PHY2 to work. */
> > +	if (data->cfg->needs_phy2_siddq && phy->index != 2) {
> > +		struct sun4i_usb_phy *phy2 = &data->phys[2];
> > +
> > +		ret = clk_prepare_enable(phy2->clk);
> > +		if (ret) {
> > +			reset_control_assert(phy->reset);
> > +			clk_disable_unprepare(phy->clk2);
> > +			clk_disable_unprepare(phy->clk);
> > +			return ret;
> > +		}
> > +
> > +		ret = reset_control_deassert(phy2->reset);
> > +		if (ret) {
> > +			clk_disable_unprepare(phy2->clk);
> > +			reset_control_assert(phy->reset);
> > +			clk_disable_unprepare(phy->clk2);
> > +			clk_disable_unprepare(phy->clk);
> > +			return ret;
> > +		}  
> 
> no delay between deassert and assert... ?

Mmmh, not sure what you are after. This is just the clean-up path,
when the deassert failed, and we tear down what was brought up before.
And the assert is not for the same reset line that we tried to
deassert anyway, if that is what you mean?
Or do I miss something here?

Cheers,
Andre

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
