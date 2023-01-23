Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 938F3C25B50
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 19:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/EN6JCNL25/mWp+m48zG0LmeaiA8fqVtK+27nld7Bo=; b=Iz8SK6OXzXgNNS
	w4/5qDXUcHx2npxp5+++JJVqBdBYjHVdFQt54+T00ilLxO1R/JcKnM4OOqky/CMwWbmy9vFS3Ra+r
	9eLuRJyILJS8fhYE/RjzawEmt1alHMaj8TggUNRu/hJSEoTD508LBW5umFB2EKhuO5vakrOKF397v
	JzIdPNfyI0QrcQFFyeMixW6gbfTLRumE3ebmwC5OqU34Iko6LMYAk9S/qXq51p5aVnT4jScWDZG/B
	o6qb/SHeRvqqONSL9dd2cXK2glyCii7MTCwG01wCgYPfDD2lhFKgRXws3KCVRWngGGrOU8m4N2e9C
	DQu02KRJ0Z+DQGo5a7xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK23E-0015kH-1u; Mon, 23 Jan 2023 19:00:16 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK23B-0015hN-5D
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 19:00:14 +0000
Received: by mail-yb1-xb30.google.com with SMTP id m199so367351ybm.4
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 11:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B8sSohvWdeGR854ywrgR9OxUM3Kmm0F/pKhgNWx62Gc=;
        b=G6FnlpNfZErOiG4DtB5aA5k1KFTRsZW6MSzsHwFNA7/BB7+QqojQBEyWFyis3TyeAt
         VplDekwOOHXZbk96HcnsextR2Vub/u1FZMm6GHYsqqzwGclYzch27EnbKwt2HyKhk7y4
         nZMu4YP7WP2Ge1t9ALpDl4DshLg2L40c3sUmz8T25DSuErdzlR6QzLHHDLuYD41P/1XF
         0yWAeTPT1M8VZ2NRwrJ/NhadihrATZ6mKbOx5piUGPCHpyE2EexHeY3c3LSZ3Ah3/wsY
         wapJcs5ll/5Q1DivlfhDvt5iRHF9lsP3pDOvjVY07J83F1jqtdw9ryaXMmDejLLqVAlT
         lSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8sSohvWdeGR854ywrgR9OxUM3Kmm0F/pKhgNWx62Gc=;
        b=jJ2NFPJ31hBxTfQQqBn8jhLY3N6tPoRBBbeQfPtuap9bvlx1STBIy8pTMQX7Xi/M7y
         8t6stZJtcS6pHwufmoTN2amsMh502waVFeYGQJssw9fNEWLoTObtXCQVYyS5oMnUg2aH
         XOyeuev3FyhfzOv3Ut8x72nmuJ5T2UTru6h/9vTyBfWbAXhFQeyE1ViurIcL+ztSxqrG
         lnVWDJPk7cEDH6cdTJrBqTRKYhrDX2KBtF6uRu/M5awGAYYJ86xYbXOgwMNH2AIUlUKH
         BThqdYh3kGFhqC85hQjA5/A97v9X3Pm4oGW/sJQ7A6S5ILpxXq3kIQe/sAlfvN8gg01c
         sAbw==
X-Gm-Message-State: AFqh2kooDGWIpCVb8p43gRkh6/Kfe00yVwvxy13ZqbHArRgWh0KNcay4
	NpA5pOZnLxN6qGa7NEEVfB6nPGMJigy8VLhnHM53auY/zItnCmgx
X-Google-Smtp-Source: AMrXdXsXcpimRuFloMT17rxdhV5ggwkbSJFO8dxxUhNSQDaPeT2613uy05QEP75h+EwfYywQpAI6h3Lmus1Th02/Q6Y=
X-Received: by 2002:a5b:305:0:b0:709:9335:236e with SMTP id
 j5-20020a5b0305000000b007099335236emr2370198ybp.288.1674500399574; Mon, 23
 Jan 2023 10:59:59 -0800 (PST)
MIME-Version: 1.0
References: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org> <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
In-Reply-To: <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 23 Jan 2023 20:59:48 +0200
Message-ID: <CAA8EJppU4nQRYWwAahWtjrVbU1ywF4P+zxHs1PZm98bzKswiZA@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_110013_239979_31A1578C 
X-CRM114-Status: GOOD (  24.26  )
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

On Mon, 23 Jan 2023 at 16:00, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Jan 23, 2023 at 02:08:07PM +0200, Dmitry Baryshkov wrote:
> > Correct DP register offsets used with new DT bindings scheme. First, DP
> > TX registers reside in separate regions, not in the same regions as USB
> > TX registers do. Second, correct DP_PHY region offset to follow the
> > offset used for earlier generations/bindings.
>
> No, this patch is broken. SC8280XP is different, doesn't seem to have
> separate DP TX regions and the DP_PHY registers lies at a different
> offset than on previous generations.
>
> You can't just pull these numbers out of your ... ;)
>
> This is the only platform that I can test the DP part on and it is
> working. If that happens to be by chance, then you need to blame the
> commit adding support for sc8280xp (i.e. not the one that fixed the
> binding). And note that this was added by Bjorn who do have access to
> the documentation for this SoC (as well as actual hardware).

Ack, let's wait for Bjorn to check the offsets. I find it extremely
suspicious that dp_txa/txb use the same region as usb txa/txb do.

>
> > Cc: Johan Hovold <johan+linaro@kernel.org>
> > Fixes: 83a0bbe39b17 ("phy: qcom-qmp-combo: add support for updated sc8280xp binding")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 1f022e580407..c6634f92de19 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -807,6 +807,8 @@ struct qmp_combo_offsets {
> >       u16 usb3_pcs;
> >       u16 usb3_pcs_usb;
> >       u16 dp_serdes;
> > +     u16 dp_txa;
> > +     u16 dp_txb;
> >       u16 dp_dp_phy;
> >  };
> >
> > @@ -984,7 +986,9 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
> >       .usb3_pcs       = 0x1400,
> >       .usb3_pcs_usb   = 0x1700,
> >       .dp_serdes      = 0x2000,
> > -     .dp_dp_phy      = 0x2200,
> > +     .dp_txa         = 0x2200,
> > +     .dp_txa         = 0x2600,
>
> You added dp_txa twice.

Ack

>
> > +     .dp_dp_phy      = 0x2a00,
> >  };
> >
> >  static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
> > @@ -2639,8 +2643,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
> >       qmp->pcs_usb = base + offs->usb3_pcs_usb;
> >
> >       qmp->dp_serdes = base + offs->dp_serdes;
> > -     qmp->dp_tx = base + offs->txa;
> > -     qmp->dp_tx2 = base + offs->txb;
> > +     qmp->dp_tx = base + offs->dp_txa;
> > +     qmp->dp_tx2 = base + offs->dp_txb;
> >       qmp->dp_dp_phy = base + offs->dp_dp_phy;
> >
> >       qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
