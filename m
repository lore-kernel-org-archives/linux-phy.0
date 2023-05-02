Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9534DC77B7E
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 04:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO3XdYH3ZWKCT3khdOGqetmfzMmF5t0RMuZK/BzWGMY=; b=hAZ2XX7F8hkBA3
	szFMDL7p7/ONmmX5yuGBwiaS4DrrU3hZWPJ5TpxYf16bGhrHZsXJ4NAEyjMXjQ43/b220HznflAWO
	P3CyECgUntlmtsV+k9a3/wLEtUcQa0a7CDftyd84xO5KWsw5rmx7psqKW5X5qWKfiz2wKmbOjkss4
	0QgWJcDHWZjhIe/mW0MW+/xfo3O7fKYGd2p4yW6zP1l1NfTTpW6s9x2pAfLB1FknwJpePbNEFOCqP
	I6Jgv+mJKUx7dp1xc25eDE6IFbiSgOM5RftEsVB89N78CB3dTYjL5uvMwQuVpbOIOZ9RLpVt9FGWh
	Idv8hy5kGw7CSJjzj5lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pthsA-0007xg-0S;
	Tue, 02 May 2023 04:44:18 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pths5-0007w4-2Y
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 04:44:17 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f315712406so151570905e9.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 21:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683002652; x=1685594652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SjAkXszgotjphxC6hqTl4pNTopNCtvCijtli/J67wJc=;
        b=Yd9IEn2UzuraiKv1BNWloSfI/gQXN5DkadhkGXQWkphj0ySFeamClw8j2hx4DSAs3h
         rlGAuBfmcyKYnNQqq5D/+tFQKLSmFd1ZTFJPqV80nqqzKWkoa+znGBEF3u547NGEXJNI
         iqm2Z7g8GI1qk49mcR/OgoNyY6FbqshyI48Qju3NHp3grBfodXQNONwpp9OOTr0uvqTu
         yKxFVl7Mv3AV0//xKJ6M1yyYMpfA6yGicguTXBGhXCGNrAdm6JXmevR/NvGMPKWgaQYY
         0YndTJ2PuvBvnL80os4TWl01o+myhzSTLQrHPIue02jmcTpg7q6Zg04pyMqvSTRA64Ax
         tKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683002652; x=1685594652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjAkXszgotjphxC6hqTl4pNTopNCtvCijtli/J67wJc=;
        b=RJLEM2oUX8+SB0fZdN9fL5kx3Ax43Re/us5QS1I9SMDvK39DHhLwxkyqADcUsZaLWe
         DPCpzEWYNUvDr7wZQp5hZNO8N8MR99n82kn5rpko/aGUyXxXZkVlbOqmwSeeOy8vQBOl
         slkT8gjlLqvoKK9XXcy8Obm8aS2Aea+/SnFxW6xteQg8WjvZ38vt4Yl4kMZ8DjAG46QH
         11nv5fcHdDL8+W1/flJp6zRSJ0TOaAf6Qbuvj828lvN/zJ5oXPAHTMfmLAGlsxXp7SJk
         xx+J7uUw88VKoccjbczViVb+MGfRvJ7FstlZvkxepmzr+2XWj2/khsXS7PsqfXuwgIIZ
         xXow==
X-Gm-Message-State: AC+VfDwhcN9Dod3k760W8mQS6toSvqAr2EFjqa/RvAnnQKkCLmh5WjV/
	1g0TYKTh3ivg5Fx+THOA2BAeiRp4zpKPHLLlQFK5Tg==
X-Google-Smtp-Source: ACHHUZ5rCXKUpxDP0Ua+qlPJBj8KodZY1HXjjK+w2EHgd7XTKUYWoJIM1m9fKouskiytgc5NlL6vNWTq/L0j9LAIv48=
X-Received: by 2002:a5d:6e04:0:b0:2f7:cfe2:6507 with SMTP id
 h4-20020a5d6e04000000b002f7cfe26507mr14177934wrz.20.1683002651896; Mon, 01
 May 2023 21:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-3-bhupesh.sharma@linaro.org> <1be5930d-a389-7fa0-2886-4e9af09cbf85@linaro.org>
In-Reply-To: <1be5930d-a389-7fa0-2886-4e9af09cbf85@linaro.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 2 May 2023 10:14:00 +0530
Message-ID: <CAH=2NtzicVig8wv43YZS0N5LSMRpxd3U84fc=qFV+sJF9BKcig@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] phy: qcom-qmp-usb: add support for updated qcm2290
 / sm6115 binding
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_214413_839577_11ADC4EA 
X-CRM114-Status: GOOD (  20.96  )
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

On Tue, 2 May 2023 at 05:43, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 01/05/2023 22:24, Bhupesh Sharma wrote:
> > Add support for the new qcm2290 / sm6115 binding.
> >
> > The USB QMP phy on these devices supports 2 lanes. Also note that the
> > binding now does not describe every register subregion and instead
> > the driver holds the corresponding offsets. This also includes
> > the PCS_MISC region.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
> >   1 file changed, 22 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > index a49711c5a63d..aa143c081805 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > @@ -1414,6 +1414,10 @@ struct qmp_usb_offsets {
> >       u16 pcs_usb;
> >       u16 tx;
> >       u16 rx;
> > +     /* for PHYs with >= 2 lanes */
> > +     u16 tx2;
> > +     u16 rx2;
> > +     u16 pcs_misc;
> >   };
> >
> >   /* struct qmp_phy_cfg - per-PHY initialization config */
> > @@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
> >       "vdda-phy", "vdda-pll",
> >   };
> >
> > +static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
> > +     .serdes         = 0,
> > +     .pcs            = 0xc00,
> > +     .tx             = 0x200,
> > +     .rx             = 0x400,
> > +     .tx2            = 0x600,
> > +     .rx2            = 0x800,
> > +     .pcs_misc       = 0xa00,
> > +};
> > +
> >   static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
> >       .serdes         = 0,
> >       .pcs            = 0x0200,
> > @@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
> >   static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
> >       .lanes                  = 2,
> >
> > +     .offsets                = &qmp_usb_offsets_v3,
> > +
> >       .serdes_tbl             = qcm2290_usb3_serdes_tbl,
> >       .serdes_tbl_num         = ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
> >       .tx_tbl                 = qcm2290_usb3_tx_tbl,
> > @@ -2497,6 +2513,12 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
> >       qmp->tx = base + offs->tx;
> >       qmp->rx = base + offs->rx;
> >
> > +     if (cfg->lanes >= 2) {
> > +             qmp->tx2 = base + offs->tx2;
> > +             qmp->rx2 = base + offs->rx2;
> > +             qmp->pcs_misc = base + offs->pcs_misc;
>
> pcs_misc should also be usable for a single-lane PHYs.

Ok. I will make it generic in the next version.

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
