Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B3AC46467
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jan 2023 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNMSifzoaXvpwSOORy5GuQAsXwM+iKVevcF2Xo5ABME=; b=E9RBHPbHH9ARuU
	jnxsENtu4JQaiH0iFCxMUxHtacv0IC2ZZP91iVgzhMe77RBsBjJGp7NDxAVe8CVZygZ0lW0CIxD1g
	agPlFhu7ndnC7Oq18pjjHc5Uh+/Hr8q2Mm2nA9ymVuci6w3R3HzFnOMVwz1h4ePdhj+uLtGLXnZNS
	mZMTRATxDg+qs9PojuDkTbncr/ETa0bfkidCWL6/xywiWPlyYy185v5w2b4/JR+j1X8JcnYmeZs3e
	1z66zuT43dwASRdX4unDMhGs1FBvDRPkVtFN3Kkwwzug9B1AsHVTkB0SEdqh3HTogcffSrp/6dFUq
	czolKCchatkVr7Yf6S4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCy6v-007MHJ-51; Wed, 04 Jan 2023 07:22:53 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCy6S-007M96-84
	for linux-phy@lists.infradead.org; Wed, 04 Jan 2023 07:22:26 +0000
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197]) by mx-outbound15-224.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 04 Jan 2023 07:22:17 +0000
Received: by mail-lj1-f197.google.com with SMTP id by6-20020a05651c1a0600b0027fc191dd12so5674394ljb.20
        for <linux-phy@lists.infradead.org>; Tue, 03 Jan 2023 23:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MPr6Xd4nz1xJ4HkAPF7aPXqQXKgfzwm0p8dfzBvdBL4=;
        b=NygIbKg3K8OU6dHO4fevpu1TOszp/orSOULJFc+uAni8FwLTQIL5d2FurhVFoUfMZ8
         RY/l7sHX/yQTxe9hYjYhvZP15diSWGoNpAv3okkhnR7LGE7T+Q6ivVZ+nuyjquxuzdA2
         GTCyuyU0XIlfNMKXXHHaxj9YdwapBTrNnferc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MPr6Xd4nz1xJ4HkAPF7aPXqQXKgfzwm0p8dfzBvdBL4=;
        b=jdUUO8Y+FuKxuhKOHhlGGoVMP8/buvkY7KP1vtqUvPK5VvO3tbR/MWEtjrDPM7BjmO
         RBCXUxWyA0lJYQ4abz5u1jiBXPYisG1QCejimnOPwBrquzV1/HWWyYBZNRE9EFZjzxnZ
         LOQ5Xx3HPNOHPdtjgTLwEnOuuMm8W+fB8fza3j1TIsMGUK8njq3Nku0yUxYIbzDTebkK
         3Z/3HM7HZWZHAx1BD7K5n4ZiN/dVNSGbWUFFbFBHksdBiyTwpCQdVeNWDHVWi1Rxgyvi
         LdTEt5aqrb8hgBrVtMMnjwVG0Y11otEHoBZyr5Xa5AFb2pg1+xAVyWACDhr+27vdnRUV
         V2Ew==
X-Gm-Message-State: AFqh2ko5rO+fi3ksFDNoWqpG6y89keNVcNHJ1KaXL7ccudNVsZbpbN/9
	7JELznK8MKykGszkC6HvsEvNPiGNfr7DCjQJLPIHpZTfnGhZ+F+q48+noBU+jyAurhic0kafukd
	YEo90CTFlQK6BsakDBGC4Gw6hyVcg+6ylGGVY5k4N7F5OYblwBdfpaqQe7rkdqNZY1kMVbGmqP9
	SN7A==
X-Received: by 2002:a2e:a37b:0:b0:27f:c04f:aa1d with SMTP id i27-20020a2ea37b000000b0027fc04faa1dmr2582406ljn.40.1672816936891;
        Tue, 03 Jan 2023 23:22:16 -0800 (PST)
X-Google-Smtp-Source: AMrXdXunuxL2xbl/2H1i2awmpkiFKs7C8YBoMpa9p5n32fbtyy9bvUMymVQM8rfpYxINyfARYqnZMrPyY56jNr/OJzI=
X-Received: by 2002:a2e:a37b:0:b0:27f:c04f:aa1d with SMTP id
 i27-20020a2ea37b000000b0027fc04faa1dmr2582399ljn.40.1672816936649; Tue, 03
 Jan 2023 23:22:16 -0800 (PST)
MIME-Version: 1.0
References: <20221213124854.3779-1-sinthu.raja@ti.com> <20221213124854.3779-3-sinthu.raja@ti.com>
 <47c159b6-a1d3-dd7f-265e-6acbfc06ead0@kernel.org>
In-Reply-To: <47c159b6-a1d3-dd7f-265e-6acbfc06ead0@kernel.org>
From: Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date: Wed, 4 Jan 2023 12:52:04 +0530
Message-ID: <CAEd-yTSgABwuohxg=-GxDkJYkW1hSLHmtW=LUuSnzYN3X0AXLw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap
To: Roger Quadros <rogerq@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
X-BESS-ID: 1672816937-304064-5387-431-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.208.197
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245240 [from 
	cloudscan12-143.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_RULE7568M, BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_232224_539090_B18E4513 
X-CRM114-Status: GOOD (  35.63  )
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

Hi Roger,
On Wed, Dec 14, 2022 at 2:47 PM Roger Quadros <rogerq@kernel.org> wrote:
>
>
>
> On 13/12/2022 14:48, Sinthu Raja wrote:
> > Serdes wiz supports both LN23 and LN10 Type-C swap. Add support to
>
> SerDes?
>
> what is wiz?
The WIZ acts as a wrapper for the SerDes and can send control signals
to and report status signals from the SerDes, and muxes SerDes to
peripherals.
>
> It has nothing to do with Type-C. It is just a lane swap.
> There may or may not be a Type-C port.
According to the SerDes design, in the case of 4 lanes SerDes, Lane 0
and Lane 2 are reserved for USB for type-C lane swap if Lane 1 and
Lane 3 are integrated into USB3 PHY. The C-type lane swap is
responsible for swapping lanes 0 and 1 or lanes 2 and 3 based on the
configuration register. This allows a Type C USB connector to deal
with the connector orientation.
>
> > configure LN23 bit to swap between lane2 or lane3 if required.
>
> What do you mean by "swap between lane2 or lane3"?
>
> Do you mean "swap lanes 2 and 3"?
Yes.
>
> Is LN23 bit supported on all variants?
Yes, it is supported in all J7 variants if it is a 4 Lanes SerDes and
USB3 PHY is supported.
>
> >
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >  drivers/phy/ti/phy-j721e-wiz.c | 33 +++++++++++++++++++++++++++++----
> >  1 file changed, 29 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> > index b17eec632d49..0091892af0b0 100644
> > --- a/drivers/phy/ti/phy-j721e-wiz.c
> > +++ b/drivers/phy/ti/phy-j721e-wiz.c
> > @@ -58,6 +58,11 @@ enum wiz_lane_standard_mode {
> >       LANE_MODE_GEN4,
> >  };
> >
> > +enum wiz_lane_typec_swap_mode {
> > +     LANE10_SWAP = 0,
> > +     LANE23_SWAP = 2,
> > +};
>
> What is this? Is it a register setting?
These are the master lane numbers that support the C-type lane swap.
Will change the enum name relatable and also shall add a comment for
more clarification.
>
> > +
> >  enum wiz_refclk_mux_sel {
> >       PLL0_REFCLK,
> >       PLL1_REFCLK,
> > @@ -194,6 +199,9 @@ static const struct reg_field p_mac_div_sel1[WIZ_MAX_LANES] = {
> >  static const struct reg_field typec_ln10_swap =
> >                                       REG_FIELD(WIZ_SERDES_TYPEC, 30, 30);
> >
> > +static const struct reg_field typec_ln23_swap =
> > +                                     REG_FIELD(WIZ_SERDES_TYPEC, 31, 31);
> > +
> >  struct wiz_clk_mux {
> >       struct clk_hw           hw;
> >       struct regmap_field     *field;
> > @@ -366,6 +374,7 @@ struct wiz {
> >       struct regmap_field     *mux_sel_field[WIZ_MUX_NUM_CLOCKS];
> >       struct regmap_field     *div_sel_field[WIZ_DIV_NUM_CLOCKS_16G];
> >       struct regmap_field     *typec_ln10_swap;
> > +     struct regmap_field     *typec_ln23_swap;
> >       struct regmap_field     *sup_legacy_clk_override;
> >
> >       struct device           *dev;
> > @@ -675,6 +684,13 @@ static int wiz_regfield_init(struct wiz *wiz)
> >               return PTR_ERR(wiz->typec_ln10_swap);
> >       }
> >
> > +     wiz->typec_ln23_swap = devm_regmap_field_alloc(dev, regmap,
> > +                                                    typec_ln23_swap);
> > +     if (IS_ERR(wiz->typec_ln23_swap)) {
> > +             dev_err(dev, "LN23_SWAP reg field init failed\n");
> > +             return PTR_ERR(wiz->typec_ln23_swap);
> > +     }
> > +
> >       wiz->phy_en_refclk = devm_regmap_field_alloc(dev, regmap, phy_en_refclk);
> >       if (IS_ERR(wiz->phy_en_refclk)) {
> >               dev_err(dev, "PHY_EN_REFCLK reg field init failed\n");
> > @@ -1242,15 +1258,24 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
> >                               regmap_field_write(wiz->typec_ln10_swap, 0);
> >               } else {
> >                       /* if no typec-dir gpio was specified, and USB lines
> > -                      * are connected to Lane 0 then set LN10 SWAP bit to 1.
> > +                      * are connected to SWAP lanes '0' or '2' then set LN10 SWAP
> > +                      * or LN23 bit to 1 respectively.
> >                        */
> >                       u32 num_lanes = wiz->num_lanes;
> >                       int i;
> >
> >                       for (i = 0; i < num_lanes; i++) {
> > -                             if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
> > -                                             && wiz->lane_phy_reg[i] == 0) {
> > -                                     regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                             if (wiz->lane_phy_type[i] == PHY_TYPE_USB3) {
> > +                                     switch (wiz->lane_phy_reg[i]) {
> > +                                     case LANE10_SWAP:
> > +                                             regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                                             break;
> > +                                     case LANE23_SWAP:
> > +                                             regmap_field_write(wiz->typec_ln23_swap, 1);
> > +                                             break;
> > +                                     default:
> > +                                             break;
> > +                                     }
>
> Could you please explain what is going on here?
> What is the basis for deciding if LN10 or LN23 bit must be set or not?
This snippet is used to configure the SerDes Type C control register
that allows the external lanes selection to be swapped. Based on the
master lane number and if the PHY type is USB3, we are configuring the
lane swap bits.
>

> What about clearing those bits?
According to the design this does not need to be cleared if it is set.
By default, it is set to 0.
>
> >                               }
> >                       }
> >               }
>
> cheers,
> -roger



-- 
With Regards
Sinthu Raja

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
