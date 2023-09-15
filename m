Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D4DEED61E
	for <linux-phy@archiver.kernel.org>; Fri, 15 Sep 2023 18:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HstD5olwFL7iNA1LlleU4mZFi2XW2y7c5kvHYyvx8to=; b=dy3Bh15B83FF+R
	NmCxJV2qObYMMb00kHzJyQb1NVBj/DBmrtPfUNw4iJohI8a1lgN3GQqYpYi//2QzOWF9v5v3JrKaw
	d77fHw3HTsgJDtLXa706VWPpxjZiGkiwzn0t/JNxGrpGDePjMtD5LzuHSCrxkzGJunbcsf6cFtRfk
	WtOzfwPJeZz0kTkMAS0v4Bp7Ppw1m6Mx9luTLxh17mjcRGaBkvM5Atn4w3iVnLO8Adn/VbJPRHjP4
	/wwHOIEYUU2xSD1K7AVkbx0ILQp8qKCZbRqRMYXyZIRq160NNZaFqAAnUV2yNq/KwRJhNTkNGAyO9
	D6+zJPUvb3+tQ36Gujfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhDdp-00BC8K-1O;
	Fri, 15 Sep 2023 18:34:09 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhDdm-00BC81-1D
	for linux-phy@lists.infradead.org;
	Fri, 15 Sep 2023 18:34:07 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-ccc462deca6so2287132276.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Sep 2023 11:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694802845; x=1695407645; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XAp4QGQYuiB0aBhykrwn9fuo1kSVZeoCYVkl9zEjWE8=;
        b=z1iNb/jdgB6OIzQKx1DYeVjquAzBC2EIBQqhGx2Kwb4xt9EuoBFYVHHwuBd3Pj0U+7
         s5wf+N1RSd7HZEfOZZc/LzBKw6do856nVa6QItADStOCWyz8xGlYFxv7LyXeNf6BETZM
         ozxdXmSKzMyzSpc2ouE38l2d7LSOqXyPVAfbTKmGqoSWTk+4aXPoslM9eWiuLlN6VZp1
         RptvO46qxG9lVjgWWNxAAIn7NxYe8wJ4HXc5SbxRaH6rR47qlUd0bSuIog19pzppEGE6
         KFt1OMpYyAyWDD1V/FK1xMaxHXkc7lsH44NitVXQPLwMtaBzSkzAZ88NQsZVAOlcGrGX
         jcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694802845; x=1695407645;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XAp4QGQYuiB0aBhykrwn9fuo1kSVZeoCYVkl9zEjWE8=;
        b=S7v2idL8Ly7b/YeLg7JXMfGZuqXcAURzGw4+kyH9meKfQWvPuG7IrIF3QlZHD4GF1z
         tZ1HZRvGfWjZOh6og+MS/Y692kOo8AilCQXsIuyjy0l3E0XuPhk7sg4IycFMy0i85kAS
         8Vpm7KGFZYvidG8Ky0ZLWNA1duhBfAp+DIVYEKdcIWUMkLA29F6X5faHOxkqlZJjBip4
         44Q9XQ35pQPO5spci0d6JZP5FDoeFnKwg/IW9L4FVQe1I0a/G9pl4sgKuTeGzgm8menK
         NaaO6/pG/zMIXRrR8t1uDBGQ7WkwpWq+I8MjjW8RjRvpJazEBH60hcOEbPhNKmPoMO2l
         deYw==
X-Gm-Message-State: AOJu0YzaF0XKi5GU94ATxN+rzo3voAQcKTjkt0yDGVcCgjO41yOlZ2TY
	H5zmtWLcII59EZeYxIwxjFUy+QSNyjIzziZME/62yQ==
X-Google-Smtp-Source: AGHT+IGz/X+sLYorNmDn+iedwieWtRZ/y9HzEpRRT43OwE+qJPUPdVSjf4sOic9847CsYuYN7WCPMNDqcCWsxExcJ04=
X-Received: by 2002:a25:820e:0:b0:d7b:9a4b:5a72 with SMTP id
 q14-20020a25820e000000b00d7b9a4b5a72mr2312461ybk.31.1694802844944; Fri, 15
 Sep 2023 11:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com> <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
 <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com>
In-Reply-To: <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 21:33:53 +0300
Message-ID: <CAA8EJppYD8Oq_fkOOKf8_x7RdbjBx7XzV_5y4sKE3ZDv_WV9_Q@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20230915_113406_423375_AF660691 
X-CRM114-Status: GOOD (  19.73  )
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

On Fri, 15 Sept 2023 at 19:14, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 9/6/2023 1:34 AM, Dmitry Baryshkov wrote:
> > On 23/08/2023 12:17, Nitin Rawat wrote:
> >> Add SC7280 specific register layout and table configs.
> >>
> >> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
> >>   1 file changed, 142 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> index 3927eba8e468..514fa14df634 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >
> > [skipped tables programming]
> >
> > 4),
> Sorry I quite didn't get this comment. what exactly is skipped ?Please
> can you help explain?

I skipped them, as I didn't have comments for them.

>
>
> >> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg
> >> sa8775p_ufsphy_cfg = {
> >>       .regs            = ufsphy_v5_regs_layout,
> >>   };
> >>
> >> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> >> +    .lanes                  = 2,
> >> +
> >> +    .offsets                = &qmp_ufs_offsets,
> >> +
> >> +    .tbls = {
> >> +        .serdes         = sm8150_ufsphy_serdes,
> >> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> >> +        .tx             = sc7280_ufsphy_tx,
> >> +        .tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> >> +        .rx             = sc7280_ufsphy_rx,
> >> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> >> +        .pcs            = sc7280_ufsphy_pcs,
> >> +        .pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> >> +    },
> >> +    .tbls_hs_b = {
> >> +        .serdes         = sm8150_ufsphy_hs_b_serdes,
> >> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> >> +    },
> >> +    .tbls_hs_g4 = {
> >> +        .tx             = sm8250_ufsphy_hs_g4_tx,
> >> +        .tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> >> +        .rx             = sc7280_ufsphy_hs_g4_rx,
> >> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> >> +        .pcs            = sm8150_ufsphy_hs_g4_pcs,
> >> +        .pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> >> +    },
> >> +    .clk_list               = sm8450_ufs_phy_clk_l,
> >> +    .num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> >
> > This doesn't correspond to the bindings. This array has 3 enries, while
> > in the bindings you have opted for two clocks for this PHY.
> Sure. I'll update the bindings.

Are you sure about the third clock? Neither sm8150 nor sm8250 used the
qref clock. Or is that an omission on our side?

>
> >
> >> +    .vreg_list              = qmp_phy_vreg_l,
> >> +    .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >> +    .regs                   = ufsphy_v4_regs_layout,
> >> +};
> >> +
> >>   static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> >>       .lanes            = 2,
> >>
> >> @@ -1648,6 +1787,9 @@ static const struct of_device_id
> >> qmp_ufs_of_match_table[] = {
> >>       }, {
> >>           .compatible = "qcom,sa8775p-qmp-ufs-phy",
> >>           .data = &sa8775p_ufsphy_cfg,
> >> +    }, {
> >> +        .compatible = "qcom,sc7280-qmp-ufs-phy",
> >> +        .data = &sc7280_ufsphy_cfg,
> >>       }, {
> >>           .compatible = "qcom,sc8180x-qmp-ufs-phy",
> >>           .data = &sm8150_ufsphy_cfg,
> >> --
> >> 2.17.1
> >>
> >
> Thanks,
> Nitin



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
