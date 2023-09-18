Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A1F1CD13CF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Sep 2023 01:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byvyY4UTMTHj4bKIqRJKYhl4AeEJgn2WFlfhjYpQXZw=; b=jDbqb+wwWdYhqX
	gQkYoMpyy76Dn51WF1c/ET2Mb/XMZ5rdypV5FDix0HsMM6XP6GTawtCOhthHOFFj7PXo2HBKJlP9B
	4MXAu9hOD4sHgI/wn6Xpt7PhAngS0i4574+bjQsQLIeTpz50DylCHoVjDmuJrnA1sXZNlP8R9ttQP
	0E2g+9BCW+8Xa6cMS7kueJEAwp7PjN9Ljm2QNc+edw5h0JKB+KazbwGNTpPeR7kjS7b85lW8UKGQc
	Zs/VwNgIWUq1OPgfw5PdIiuWFpHJdgMyxk2L5kBhExkdIqlplkNqmlM1YAKd967jekaIMYvHqvUlp
	IIRku9veMqp1gJW5UPBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi3LQ-00ED6G-2S;
	Mon, 18 Sep 2023 01:46:36 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi3LN-00ED5r-2t
	for linux-phy@lists.infradead.org;
	Mon, 18 Sep 2023 01:46:35 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-59c0b9ad491so24487847b3.1
        for <linux-phy@lists.infradead.org>; Sun, 17 Sep 2023 18:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695001592; x=1695606392; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GN+ZP7HO00noajf9njN6jgdBrsju6UYYDWypBjncENU=;
        b=jXsX27IQXNHDlefvXdcnu8aTSiC5SLIwCrb5R0x189QG7K+AmiD5E9sjllqCbictAq
         xv4/DG5bPW1zmwFc65a+VH3WbUzezyZ0ecyIQ1ilesFV1eUOWRhvc3X05SaWd1I2teWx
         eoanGyszCn7LehrS79PKSdzzbYQ9+mtCFb1YOI2VCCtPufJt9cAqeyqk0Knx8FTWZKSN
         FD5/HiVS9FPzhx0SpYhDXvL1z7Z0M2H92Gq0A7SNyLxds9X5Ag1YOETqlKUIcCNiToWe
         Uoudgc2oNbqB60Ooymb061EJrLGMMt1yEBNBXrgsPRTeBbqJJnedHk2N8qAKcOtN6clB
         d0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695001592; x=1695606392;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GN+ZP7HO00noajf9njN6jgdBrsju6UYYDWypBjncENU=;
        b=YEeplXYBTBTIIB56ixli299tHwS2SmVTb7t8Y6BuqOMHOeClqpSJEAKuYfGW2xgxSg
         BolFE5I5MOy9skxjJ+XW2OYUAorWzZmQzXLCchvMkvQUgfS+CQCfZjr5Z8rN5Oq1zbAE
         +g6g44wKsjsdbIeAd3+LXWwtAYtDqh3vE6ztmMwQd916zj+7zz9juGOR5hgxjug1urUG
         ZsBS+RMtKgFkxnoVfjAvJvBOWnBVu6+PyE5+7Ltr3vyHoko9BkbKwNcQPpt7DQ6SMMLA
         I77fLRDhgvx8vvXm+x8JLykzmVytTuMHcWTrm9LU1J6shJ744cX9z+2GzJw4xxwCC6PT
         JX8A==
X-Gm-Message-State: AOJu0YwNimZR2Sg3Tr05NLVP9J9OfiBPGOugWw0E73mLPJHaqq5BlGQS
	102cgxfDihBezJigOd6BDYO9mJ8pvyPIDZQohgJjtA==
X-Google-Smtp-Source: AGHT+IFyyon2ii0QkHQJw/3KC5VRE/P0uqsTDjykAK8zhw2UPsZAy0HTamPa4+DC6onQOC4lZV/moBMVBprp9PLEc4M=
X-Received: by 2002:a81:524e:0:b0:59b:fe73:dec1 with SMTP id
 g75-20020a81524e000000b0059bfe73dec1mr7886346ywb.7.1695001591904; Sun, 17 Sep
 2023 18:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com> <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
 <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com> <CAA8EJppYD8Oq_fkOOKf8_x7RdbjBx7XzV_5y4sKE3ZDv_WV9_Q@mail.gmail.com>
 <68e111ba-9a7b-511a-5765-24b491ad201b@quicinc.com>
In-Reply-To: <68e111ba-9a7b-511a-5765-24b491ad201b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Sep 2023 04:46:20 +0300
Message-ID: <CAA8EJpr-E=wASYXnsviLTwYEvkzOCDi-m5Nu8v-yV5=xKP5yEg@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230917_184633_955557_59542CEC 
X-CRM114-Status: GOOD (  23.17  )
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

On Sun, 17 Sept 2023 at 17:23, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 9/16/2023 12:03 AM, Dmitry Baryshkov wrote:
> > On Fri, 15 Sept 2023 at 19:14, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 9/6/2023 1:34 AM, Dmitry Baryshkov wrote:
> >>> On 23/08/2023 12:17, Nitin Rawat wrote:
> >>>> Add SC7280 specific register layout and table configs.
> >>>>
> >>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> >>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> >>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >>>> ---
> >>>>    drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
> >>>>    1 file changed, 142 insertions(+)
> >>>>
> >>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> index 3927eba8e468..514fa14df634 100644
> >>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>
> >>> [skipped tables programming]
> >>>
> >>> 4),
> >> Sorry I quite didn't get this comment. what exactly is skipped ?Please
> >> can you help explain?
> >
> > I skipped them, as I didn't have comments for them.
> >
> >>
> >>
> >>>> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg
> >>>> sa8775p_ufsphy_cfg = {
> >>>>        .regs            = ufsphy_v5_regs_layout,
> >>>>    };
> >>>>
> >>>> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> >>>> +    .lanes                  = 2,
> >>>> +
> >>>> +    .offsets                = &qmp_ufs_offsets,
> >>>> +
> >>>> +    .tbls = {
> >>>> +        .serdes         = sm8150_ufsphy_serdes,
> >>>> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> >>>> +        .tx             = sc7280_ufsphy_tx,
> >>>> +        .tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> >>>> +        .rx             = sc7280_ufsphy_rx,
> >>>> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> >>>> +        .pcs            = sc7280_ufsphy_pcs,
> >>>> +        .pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> >>>> +    },
> >>>> +    .tbls_hs_b = {
> >>>> +        .serdes         = sm8150_ufsphy_hs_b_serdes,
> >>>> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> >>>> +    },
> >>>> +    .tbls_hs_g4 = {
> >>>> +        .tx             = sm8250_ufsphy_hs_g4_tx,
> >>>> +        .tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> >>>> +        .rx             = sc7280_ufsphy_hs_g4_rx,
> >>>> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> >>>> +        .pcs            = sm8150_ufsphy_hs_g4_pcs,
> >>>> +        .pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> >>>> +    },
> >>>> +    .clk_list               = sm8450_ufs_phy_clk_l,
> >>>> +    .num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> >>>
> >>> This doesn't correspond to the bindings. This array has 3 enries, while
> >>> in the bindings you have opted for two clocks for this PHY.
> >> Sure. I'll update the bindings.
> >
> > Are you sure about the third clock? Neither sm8150 nor sm8250 used the
> > qref clock. Or is that an omission on our side?
> >
>
> Hi Dmitry,
>
> For SC7280 we need all the three clocks for this target. Same is being
> used in downstream code as well. Hence I would need to update the
> binding as well.

Ack, thanks for the confirmation.

>
> Thanks,
> Nitin
>
>
> >>
> >>>
> >>>> +    .vreg_list              = qmp_phy_vreg_l,
> >>>> +    .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >>>> +    .regs                   = ufsphy_v4_regs_layout,
> >>>> +};
> >>>> +
> >>>>    static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> >>>>        .lanes            = 2,
> >>>>
> >>>> @@ -1648,6 +1787,9 @@ static const struct of_device_id
> >>>> qmp_ufs_of_match_table[] = {
> >>>>        }, {
> >>>>            .compatible = "qcom,sa8775p-qmp-ufs-phy",
> >>>>            .data = &sa8775p_ufsphy_cfg,
> >>>> +    }, {
> >>>> +        .compatible = "qcom,sc7280-qmp-ufs-phy",
> >>>> +        .data = &sc7280_ufsphy_cfg,
> >>>>        }, {
> >>>>            .compatible = "qcom,sc8180x-qmp-ufs-phy",
> >>>>            .data = &sm8150_ufsphy_cfg,
> >>>> --
> >>>> 2.17.1
> >>>>
> >>>
> >> Thanks,
> >> Nitin
> >
> >
> >
--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
