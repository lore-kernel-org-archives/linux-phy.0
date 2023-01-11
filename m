Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31187C46467
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 09:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QyZuWFx6zuIww54LoOVMP71yGGJykFyV7NkxHMl5Bg=; b=A0rKSTOC+huMQH
	VtOS9mFE4IALfwbiT+YDZyzJRp3+FBJ7UIWL0zzT4py4glUmBO6mq7S4re245PUrvjy/jtfjFkV/v
	mAXNH+VpgyrhPva2aG5fHlGGnz5NTQU3ZrE8mHM8PqwkCLNOYc79tdH7uKXxcJ1HuAKMYimRhykqs
	4E+N0wns982lklYhVRRdR8Np2E2BKPerNbtQWcMOL/K+7oGi0KxbdDfAwomDKmKODkFw7wzPXv9gG
	4KnMfib9eEFhm9YQF5H/+PuSEVq4SJeYO7vRpo1LZ2JkBJnKHRDJek43of6ci4hROjHDUfNpR4xBQ
	tPi/JMsTq3Tdb4V/cYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXsg-00AesX-KU; Wed, 11 Jan 2023 09:58:50 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXsc-00Aepq-Q0
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 09:58:48 +0000
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69]) by mx-outbound9-241.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 11 Jan 2023 09:58:36 +0000
Received: by mail-lf1-f69.google.com with SMTP id z8-20020ac25de8000000b004c66d7fb5baso5570273lfq.21
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 01:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+NDmNbFwjo9DxMWr9KM3RKDdc7/RIp0UCXNPTu6MxA=;
        b=VlOJxEjrjd+VrQXJF6dP3QOBELPyvzrhRIc7t7KdSQp+j9RupVVVCYCNvRx4+ZKgeb
         ql5Q/vYxqD39/7mRf5D/l4Vw8MeK/rfq+3ubX9EJWsSCiLW/VTtTaHTA9xVHzV4jQp/p
         gpBATLZFlgKMT5mtSUOTXETbKZJC/8XAj/deM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f+NDmNbFwjo9DxMWr9KM3RKDdc7/RIp0UCXNPTu6MxA=;
        b=BrdkKOkTs3YeFBEIvtG7myMVaJ+pUSwbWgmMeWgcL9W3PLgGBRfuUIMpFp+Fk+oZfS
         9J/9GxaVyJiGbQPiNyv0YzJ8Cmr1sxj+VqNLndXTIId9wQWP7b7ialg+uYjjC+7jF8qi
         ZsWzKwOe7Y7n6kCBtmXN56KuQeU5EQkM0tRbTWKTMOuVKXNp+Zq/wOcaZ8A78zu6miGj
         xUNgqEuPfDA0yLTAdtXfPIZGJYxDABxnJyKLcHL57NtwcnSCHsBPaRNE3ZXo8dbdtUnp
         hordJwt1pwVny23iR0ATwwX/fuX20+snYYgDa06IQF+knN3j9BDgkNZEnvSwLiDPhCrP
         KNmQ==
X-Gm-Message-State: AFqh2kqx99VUD/L+RVE2LJCPZe6CAuyFdax0WKLze+cwvAmxQeBrMf6n
	fnOIYtn7+uBDHAqXqfjAlHolvtaYbNdskE8DcDWuquiU2CkWi+S4lVlCWL1Ko5ZpjIEBLkNi6b0
	2dOu3H4kTaRTXBfFcr+qwEncGQcpEyfzZ60EkCVW++UeGGB59swULpfGlD0NSaLO2YM2EcBLqbp
	p/7g==
X-Received: by 2002:a05:651c:210c:b0:286:6e49:190f with SMTP id a12-20020a05651c210c00b002866e49190fmr717450ljq.40.1673431115286;
        Wed, 11 Jan 2023 01:58:35 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsufEAoTnnzxY8wmHx63idXKB1GFlobCduIWhEry1RFVfcwllpiNPdlE9GyZtuOaND3yRD93DBm8KZoD8RtA18=
X-Received: by 2002:a05:651c:210c:b0:286:6e49:190f with SMTP id
 a12-20020a05651c210c00b002866e49190fmr717441ljq.40.1673431114978; Wed, 11 Jan
 2023 01:58:34 -0800 (PST)
MIME-Version: 1.0
References: <20230106071714.30562-1-sinthu.raja@ti.com> <20230106071714.30562-3-sinthu.raja@ti.com>
 <cf854af6-fbbc-6e5c-f773-c4a868d85278@kernel.org>
In-Reply-To: <cf854af6-fbbc-6e5c-f773-c4a868d85278@kernel.org>
From: Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date: Wed, 11 Jan 2023 15:28:23 +0530
Message-ID: <CAEd-yTTDrTs_dpb_VqhyZjbTWDcXvZwKqhoP=sU_921PjuLpGQ@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] phy: ti: j721e-wiz: Add support to enable LN23
 Type-C swap
To: Roger Quadros <rogerq@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
X-BESS-ID: 1673431115-302545-5390-2780-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.167.69
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245392 [from 
	cloudscan11-79.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_015847_244904_682B701C 
X-CRM114-Status: GOOD (  29.34  )
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

On Wed, Jan 11, 2023 at 3:24 PM Roger Quadros <rogerq@kernel.org> wrote:
>
> Hi Sinthu,
>
> On 06/01/2023 09:17, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > The WIZ acts as a wrapper for SerDes and has Lanes 0 and 2 reserved
> > for USB for type-C lane swap if Lane 1 and Lane 3 are linked to the
> > USB PHY that is integrated into the SerDes IP. The WIZ control register
> > has to be configured to support this lane swap feature.
> >
> > The support for swapping lanes 2 and 3 is missing and therefore
> > add support to configure the control register to swap between
> > lanes 2 and 3 if PHY type is USB.
> >
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >
> > Changes in V2:
> > =============
> > Address review comments:
> > - Update commit description.
> > - Rename enum variable name from wiz_lane_typec_swap_mode to wiz_typec_master_lane.
> > - Rename enumerators name specific to list of master lanes used for lane swapping.
> > - Add inline comments.
> >
> > V1: https://linkprotect.cudasvc.com/url?a=https%3a%2f%2flore.kernel.org%2flkml%2f20221213124854.3779-2-sinthu.raja%40ti.com%2fT%2f%23m5e2d1a15d647f5df9dd28ed2dedc4b0812d6466f&c=E,1,Y-aGHFF9W5xMNeMlJ71LqKOZsmcrFFVOKtXq77GFhXQctctl3hRfr-TLmdAnjdaeSzzP0z8DPPPmxLORLMeyROZypsrLBJDsa2LdQkLThbo_gfu7bN9Uj_qC&typo=1
> >
> >  drivers/phy/ti/phy-j721e-wiz.c | 33 ++++++++++++++++++++++++++++++---
> >  1 file changed, 30 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> > index 571f0ca18874..815e8124b94a 100644
> > --- a/drivers/phy/ti/phy-j721e-wiz.c
> > +++ b/drivers/phy/ti/phy-j721e-wiz.c
> > @@ -58,6 +58,14 @@ enum wiz_lane_standard_mode {
> >       LANE_MODE_GEN4,
> >  };
> >
> > +/*
> > + * List of master lanes used for lane swapping
> > + */
> > +enum wiz_typec_master_lane {
> > +     LANE0 = 0,
> > +     LANE2 = 2,
> > +};
> > +
> >  enum wiz_refclk_mux_sel {
> >       PLL0_REFCLK,
> >       PLL1_REFCLK,
> > @@ -194,6 +202,9 @@ static const struct reg_field p_mac_div_sel1[WIZ_MAX_LANES] = {
> >  static const struct reg_field typec_ln10_swap =
> >                                       REG_FIELD(WIZ_SERDES_TYPEC, 30, 30);
> >
> > +static const struct reg_field typec_ln23_swap =
> > +                                     REG_FIELD(WIZ_SERDES_TYPEC, 31, 31);
> > +
> >  struct wiz_clk_mux {
> >       struct clk_hw           hw;
> >       struct regmap_field     *field;
> > @@ -367,6 +378,7 @@ struct wiz {
> >       struct regmap_field     *mux_sel_field[WIZ_MUX_NUM_CLOCKS];
> >       struct regmap_field     *div_sel_field[WIZ_DIV_NUM_CLOCKS_16G];
> >       struct regmap_field     *typec_ln10_swap;
> > +     struct regmap_field     *typec_ln23_swap;
> >       struct regmap_field     *sup_legacy_clk_override;
> >
> >       struct device           *dev;
> > @@ -676,6 +688,13 @@ static int wiz_regfield_init(struct wiz *wiz)
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
> > @@ -1254,9 +1273,17 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
> >                       int i;
> >
>
> Don't you have to update the below comment you added in patch 1 to mention about LN23 as well?

Thanks for the review, Roger.
Yes, I have to. My bad. I will send out another version updating this comment.
>
>
> +                       /* if no typec-dir gpio was specified and PHY type is
> +                        * USB3 with master lane number is '0', set LN10 SWAP
> +                        * bit to '1'
> +                        */
>
>
> >                       for (i = 0; i < num_lanes; i++) {
> > -                             if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3)
> > -                                             && wiz->master_lane_num[i] == 0) {
> > -                                     regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                             if (wiz->lane_phy_type[i] == PHY_TYPE_USB3) {
> > +                                     switch (wiz->master_lane_num[i]) {
> > +                                     case LANE0:
> > +                                             regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                                             break;
> > +                                     case LANE2:
> > +                                             regmap_field_write(wiz->typec_ln23_swap, 1);
> > +                                             break;
> > +                                     default:
> > +                                             break;
> > +                                     }
> >                               }
> >                       }
> >               }
>
> Otherwise looks good.
>
> cheers,
> -roger
>


-- 
With Regards
Sinthu Raja

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
