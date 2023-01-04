Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 930A0C46467
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jan 2023 07:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPWmDba1gSYDJQjmobvydrQrEWqYvIp9te3rgpqDhls=; b=ttPJjBM6an7tW2
	7ubVQWEdf+7CEZX2N5Lbx1AVhEBzO1UZm0VTqlxaQMSI/SkcYwiaXJP0d2i5zCcTjdZnsXNLHwSV9
	p6nDqHpEWBTTZrf0zb3tboyIaW4AtpFX43MQ5MuaG2SAPOiag0G2cM/TSY8m0epIe/SAiHHS0de+R
	IjSVDC4BUKhVmSrPcOORvCGRCqItIa+zR7p1gZDj3WSOwwEFEyA2DbzxfdVSz5LAOiZu2sjEE9wIk
	nQx4ikaWFwBSd54jcV5XNrEcocC+xuO5odDK5z0WbfGk0UxZTUuOR/HG7Ms/zpP+c7dApA4XmdNwm
	+iObi2xeDnbf7smxNORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCyW5-007Ubj-Tx; Wed, 04 Jan 2023 07:48:53 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCyV1-007UPq-U9
	for linux-phy@lists.infradead.org; Wed, 04 Jan 2023 07:47:50 +0000
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72]) by mx-outbound15-224.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 04 Jan 2023 07:47:45 +0000
Received: by mail-lf1-f72.google.com with SMTP id y26-20020a0565123f1a00b004b4b8aabd0cso11645281lfa.16
        for <linux-phy@lists.infradead.org>; Tue, 03 Jan 2023 23:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D9f5z3cCFhs4FR8+gGLSNtq0xtNbjblXeZzCadPdRGE=;
        b=O6d2M1Vej/BwZLu4EoGLh5uM7yv0nu6iP0TkVbc3k7WGicrfyEfKuHmSdPUv0bUcUd
         oojLPhabL2JIoviRqHTudV0sDgdh9LehmAKWbFMRLoVLzlUrFhq+UVvr2Nr3itsInn0j
         fJ/6JBCHqi6sVeveJG6TMbN+vzYYCCkPszDWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9f5z3cCFhs4FR8+gGLSNtq0xtNbjblXeZzCadPdRGE=;
        b=D8jDo0JrHCQE2r4dFSOHUpFUH1OYnUZ9r0PdBmayzsNqAWa4/s/lyfmlPbg+XCCBOa
         ZUrDuc96gxseyYnMGq6InZx0SRAnKobApwMW72UXIpr70hAVJRetw89UzVlAziL1Bv//
         eH/Q/M5aqj4qZBvHkkreKHDQKpNyEyJ4p8EVl8ACIGt/7431WyYVLyrvzUQ4XWL3pip+
         e2ARsw3dbKBuzDkqA569Q5aDP651V22WMg2+C61Or3GQQGAau6/jBdmC2k2Zuk4D4efm
         Z68i1bk4nPjP/2sUz7u4IX4dUQEK0jnWrsmEguyOI6Fn47ekWF8cwwAvO90mPuOU09WM
         IMVQ==
X-Gm-Message-State: AFqh2kq60agGQPGytTEU88Lao4unjdiJMOxRY/P5Wl3sr/Ky6H2PQfsN
	6WyEu8Yzcv8AQqre7v27yZDBRga2tD9mO8YGnYesk62C8YK/87sc4aAXz+GhNCiJV1tpTnrX2+Y
	6tuB/oRdt3nL9CmArI3HTrruKt1K3wsMufICjjbavEmLp1KYOyTXO5XV2CDGGyUImcpQX5Qj7Fa
	ghRg==
X-Received: by 2002:ac2:5de3:0:b0:4b4:a536:f866 with SMTP id z3-20020ac25de3000000b004b4a536f866mr1787903lfq.262.1672818464885;
        Tue, 03 Jan 2023 23:47:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvcwoBZoAjr1B1FS1N0PlG/MN9fvsCDXnPzOywCadO0g5UuE7gHb7YLH7P42zk3VwKiejVRKyn1giV2dty0xqY=
X-Received: by 2002:ac2:5de3:0:b0:4b4:a536:f866 with SMTP id
 z3-20020ac25de3000000b004b4a536f866mr1787900lfq.262.1672818464592; Tue, 03
 Jan 2023 23:47:44 -0800 (PST)
MIME-Version: 1.0
References: <20221213124854.3779-1-sinthu.raja@ti.com> <20221213124854.3779-2-sinthu.raja@ti.com>
 <b4f725b1-3ed6-51fd-4973-92e28987f488@kernel.org>
In-Reply-To: <b4f725b1-3ed6-51fd-4973-92e28987f488@kernel.org>
From: Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date: Wed, 4 Jan 2023 13:17:32 +0530
Message-ID: <CAEd-yTQEUcXYP1hJkUHyvd95-tyDMRETDNHBf07-_zbQu7UAJw@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if
 typec-gpio-dir not specified
To: Roger Quadros <rogerq@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
X-BESS-ID: 1672818465-304064-5388-1602-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.167.72
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245240 [from 
	cloudscan13-86.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_234748_180365_6A0E8387 
X-CRM114-Status: GOOD (  41.97  )
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

On Wed, Dec 14, 2022 at 3:12 PM Roger Quadros <rogerq@kernel.org> wrote:
>
> Hi,
>
> Some more comments below.
>
> On 13/12/2022 14:48, Sinthu Raja wrote:
> > It's possible that the Type-C plug orientation on the DIR line will be
> > implemented through hardware design. In that situation, there won't be
> > an external GPIO line available, but the driver still needs to address
> > this since the DT won't use the typec-gpio-dir property.
> >
> > Add code to handle LN10 Type-C swap if typec-gpio-dir property is not
> > specified in DT.
> >
> > Remove typec-gpio-dir check to use minimum debounce from Type-C spec if
> > it is not provided in DT
> >
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >  drivers/phy/ti/phy-j721e-wiz.c | 65 +++++++++++++++++++++-------------
> >  1 file changed, 40 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> > index 141b51af4427..b17eec632d49 100644
> > --- a/drivers/phy/ti/phy-j721e-wiz.c
> > +++ b/drivers/phy/ti/phy-j721e-wiz.c
> > @@ -375,6 +375,7 @@ struct wiz {
> >       struct gpio_desc        *gpio_typec_dir;
> >       int                     typec_dir_delay;
> >       u32 lane_phy_type[WIZ_MAX_LANES];
> > +     u32 lane_phy_reg[WIZ_MAX_LANES];
>
> This name looks misleading. I'll discuss about it where you are setting it.
Will change the name to master_lane_num[];
>
> >       struct clk              *input_clks[WIZ_MAX_INPUT_CLOCKS];
> >       struct clk              *output_clks[WIZ_MAX_OUTPUT_CLOCKS];
> >       struct clk_onecell_data clk_data;
> > @@ -1231,14 +1232,28 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
> >       int ret;
> >
> >       /* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
> > -     if (id == 0 && wiz->gpio_typec_dir) {
> > -             if (wiz->typec_dir_delay)
> > -                     msleep_interruptible(wiz->typec_dir_delay);
> > -
> > -             if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> > -                     regmap_field_write(wiz->typec_ln10_swap, 1);
> > -             else
> > -                     regmap_field_write(wiz->typec_ln10_swap, 0);
> > +     if (id == 0 && wiz->typec_dir_delay) {
> > +             msleep_interruptible(wiz->typec_dir_delay);
> > +
> > +             if (wiz->gpio_typec_dir) {
> > +                     if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> > +                             regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                     else
> > +                             regmap_field_write(wiz->typec_ln10_swap, 0);
> > +             } else {
> > +                     /* if no typec-dir gpio was specified, and USB lines
> > +                      * are connected to Lane 0 then set LN10 SWAP bit to 1.
> > +                      */
>
> Why should lanes 1 and 0 be swapped if USB is connected to lane 0?
My Bad! I should have been more precise in mentioning the USB3 Type C.
Lanes 0 and 2 are reserved for USB3 for type-C connector lane swap.
>
> > +                     u32 num_lanes = wiz->num_lanes;
> > +                     int i;
> > +
> > +                     for (i = 0; i < num_lanes; i++) {
> > +                             if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
> > +                                             && wiz->lane_phy_reg[i] == 0) {
> > +                                     regmap_field_write(wiz->typec_ln10_swap, 1);
> > +                             }
> > +                     }
>
> I really don't understand what you are doing here.
> It definitely doesn't match your comment.
> As an example. If num_lanes = 2 then wiz->lane_phy_reg[1] is being used without being
> really initialized (see later). Just because of kzalloc, it would of course be 0.
This register is used to configure the external lanes selections that
need to be swapped for SerDes type C. The initialization of the lanes
is done separately. This bit is set to configure that all control for
lane 0 will apply to lane 1 and vice versa.  Will update the commit
description.
>
> > +             }
> >       }
> >
> >       if (id == 0) {
> > @@ -1370,8 +1385,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
> >               dev_dbg(dev, "%s: Lanes %u-%u have phy-type %u\n", __func__,
> >                       reg, reg + num_lanes - 1, phy_type);
> >
> > -             for (i = reg; i < reg + num_lanes; i++)
> > +             for (i = reg; i < reg + num_lanes; i++) {
> > +                     wiz->lane_phy_reg[i] = reg;
>
> As per DT binding
>       reg:
>         description:
>           The master lane number. This is the lowest numbered lane in the lane group.
>
> So you are in fact storing the Master lane number of every Link (or lane group).
> A link may have 1 or more lanes in it.
>
> Also notice that if num_lanes has been 2 then wiz->lane_phy_reg[1] is not initialized.
Irrespective of the number of lanes that are connected to the link, if
the master lane is '0' or '2'  and the PHY type is USB3, then this bit
needs to be set in the SerDes WIZ control register (according to the
design).
>
> >                       wiz->lane_phy_type[i] = phy_type;
> > +             }
> >       }
> >
> >       return 0;
> > @@ -1464,24 +1481,22 @@ static int wiz_probe(struct platform_device *pdev)
> >               goto err_addr_to_resource;
> >       }
> >
> > -     if (wiz->gpio_typec_dir) {
> > -             ret = of_property_read_u32(node, "typec-dir-debounce-ms",
> > -                                        &wiz->typec_dir_delay);
> > -             if (ret && ret != -EINVAL) {
> > -                     dev_err(dev, "Invalid typec-dir-debounce property\n");
> > -                     goto err_addr_to_resource;
> > -             }
> > +     ret = of_property_read_u32(node, "typec-dir-debounce-ms",
> > +                                &wiz->typec_dir_delay);
> > +     if (ret && ret != -EINVAL) {
> > +             dev_err(dev, "Invalid typec-dir-debounce property\n");
> > +             goto err_addr_to_resource;
> > +     }
> >
> > -             /* use min. debounce from Type-C spec if not provided in DT  */
> > -             if (ret == -EINVAL)
> > -                     wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
> > +     /* use min. debounce from Type-C spec if not provided in DT  */
> > +     if (ret == -EINVAL)
> > +             wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
> >
> > -             if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
> > -                 wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
> > -                     ret = -EINVAL;
> > -                     dev_err(dev, "Invalid typec-dir-debounce property\n");
> > -                     goto err_addr_to_resource;
> > -             }
> > +     if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
> > +         wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
> > +             ret = -EINVAL;
> > +             dev_err(dev, "Invalid typec-dir-debounce property\n");
> > +             goto err_addr_to_resource;
> >       }
> >
> >       ret = wiz_get_lane_phy_types(dev, wiz);
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
