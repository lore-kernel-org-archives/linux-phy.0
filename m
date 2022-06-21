Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCEDC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0O9kTOJiAt44quZuwiB1LT1gCuR2PwnVGva5NZ8zvDw=; b=FUJ++WMj7N1OhG
	Ojealj+pRDu3dhs2LZ/BCUbwsodx/5GSDLo85PclDRnmcXSVw1w46EAXsgHFDfVG9s62h54e6CRsf
	7nMMjBlW7anVhcJHacHVbXpyLm54eL7kMG/S/mpLEfPH6o6JjyiY4A1m6LQCoWBK/uGK8dX1jKmny
	zQDaxVVvrTtfWwSDocUELQeTZQGsNM3D1GwdyngQo48L5TsUpZBI/olQBKyIrhsnSlARhZPS4NDyM
	dQ0/m2TTf+n9saEpjtPbMh+WOpM2MHL0X6dbNkYBDCwN8fl6BxPPuqzKZoB5BB7/OxIKUe+b9hCno
	K3nIBUXfMAhUsLEfOTUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ipw-006kU8-K8; Tue, 21 Jun 2022 18:42:52 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ipu-006kTF-5U
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 18:42:51 +0000
Received: by mail-qk1-x72f.google.com with SMTP id d128so10808382qkg.8
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 11:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oGfOroIOMjBFMqeQB76AS2zkjX5R3sWEZA4rFxbtDBQ=;
        b=HaPkMUwgnEgi/9PaAOcWC82P8iy7ma5WP+KVn7AtLQrQ2yiWKH5BUiXKWbGX7E5Rzg
         E49RWWwOM/yXXNgSdMGJxZYanpzVi8l7hvtZnQRNtqEpzARBRTBMZfjD7zjWW7vljD0F
         GiI46C86bVKVlFvUHYqV5OYlt2CWnzusNiWrSkQf4Z1oIYUTWjkRabFndApyA0ima+lU
         XPIqNi/wCSUspcphNmBId1SJCVwyxbOOUbIPxH5BF17X8lS5AV6qTNvsWUVcGjh9R3iq
         VVIbT1h8xx/8CXBHmlTqUl7lfQTjIllzJD1UAC8eZ3rjUQERVSeM6PTPvUz/jhwE14YW
         l3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oGfOroIOMjBFMqeQB76AS2zkjX5R3sWEZA4rFxbtDBQ=;
        b=OkvZBFEJHF+PKrljgOUfwtTbji7+X66h93H3S8Sgkg4kai5hE1n1Ijf/0NnSrdpzCt
         LARvZYn2Fn7tAU9k59rZXzTfpIrJL11FbUMxpcdjDUOQzK93AJnFFfBzJSrHL9VMcKk1
         tk7wVXaOKqyRIjnA9Kh0imY1ypRlU2jOoJUUmyRtdcvoGGTrK/of7bDjcEcN6OtfJxED
         1eAkaL74qwM6S5ZBRXRcfGn5lynch+1jOqJImFbLuhU7w/IEm2Do1HxCqVbp5AO9bAKR
         nXUvItMqx1J7F4rwWnqUfsJwwsXfq+8iNBPhDwBLCuisTP9RQVSYqkFnBD4F4Au36SV4
         86rw==
X-Gm-Message-State: AJIora9o6lZKj1iLB3+/E9huUcvhFEX2anlF0OS5sx8JOpYnNPYp84oW
	ISyS+PBxhmUyRYtzEAI4pL4lvK4LGlk7To8Kdpg=
X-Google-Smtp-Source: AGRyM1thp6nGMmzuJ/FywLbVv3L0O0Cuj95xEMlgTJOo52d5Ia3+d17MP/ybPtJvqNB5yRqHv0+ZUwU2SpnOjgoK8Go=
X-Received: by 2002:a05:620a:2494:b0:6a7:6a06:7aae with SMTP id
 i20-20020a05620a249400b006a76a067aaemr21419086qkn.87.1655836968098; Tue, 21
 Jun 2022 11:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220621111818.447452-1-robimarko@gmail.com> <20220621111818.447452-2-robimarko@gmail.com>
 <CAA8EJposq4796b33jkovDDQdzQsrp733kN5tQYAhFow4G8hvow@mail.gmail.com>
In-Reply-To: <CAA8EJposq4796b33jkovDDQdzQsrp733kN5tQYAhFow4G8hvow@mail.gmail.com>
From: Robert Marko <robimarko@gmail.com>
Date: Tue, 21 Jun 2022 20:42:37 +0200
Message-ID: <CAOX2RU51EtsrxissD1-yx2z4tesE4Lgd5nWDQ3USEwuwvw9+ng@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, kishon@ti.com, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-phy@lists.infradead.org, 
	Devicetree List <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_114250_266128_527C6DFB 
X-CRM114-Status: GOOD (  24.61  )
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

On Tue, 21 Jun 2022 at 19:26, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 21 Jun 2022 at 14:18, Robert Marko <robimarko@gmail.com> wrote:
> >
> > IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> > Gen2 one is already supported, so add the support for the Gen3 one.
> > It uses the same register layout as IPQ6018.
> >
> > Signed-off-by: Robert Marko <robimarko@gmail.com>
> > ---
> > Changes in v2:
> > * Rebase onto next-20220621 to apply on the refactored driver
> > * Remove non existant has_phy_com_ctrl and has_lane_rst
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 171 ++++++++++++++++++++++-
> >  1 file changed, 169 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index b2cd0cf965d8..b4836417b2c0 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>
> [skipped]
>
> > @@ -2121,8 +2277,16 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
> >
> >         init.ops = &clk_fixed_rate_ops;
> >
> > -       /* controllers using QMP phys use 125MHz pipe clock interface */
> > -       fixed->fixed_rate = 125000000;
> > +       /*
> > +        * Controllers using QMP PHY-s use 125MHz pipe clock interface
> > +        * unless other frequency is specified in the DTS.
> > +        */
> > +       ret = of_property_read_u32(np, "clock-output-rate", &rate);
>
> The clock-output-rate is a new property, which doesn't exist yet. If
> the rate is peculiar to your platform/PHY, I'd suggest adding a field
> to the qmp configuration instead.

Hi,
That sounds like a better idea than adding new DT property, it's
specific only to the Gen3 PHY
for IPQ8074.

I will change it for v3.

Regards,
Robert
>
> > +       if (ret)
> > +               fixed->fixed_rate = 125000000;
> > +       else
> > +               fixed->fixed_rate = rate;
> > +
> >         fixed->hw.init = &init;
> >
> >         ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> > @@ -2255,6 +2419,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
> >         }, {
> >                 .compatible = "qcom,ipq8074-qmp-pcie-phy",
> >                 .data = &ipq8074_pciephy_cfg,
> > +       }, {
> > +               .compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
> > +               .data = &ipq8074_pciephy_gen3_cfg,
> >         }, {
> >                 .compatible = "qcom,ipq6018-qmp-pcie-phy",
> >                 .data = &ipq6018_pciephy_cfg,
> > --
> > 2.36.1
> >
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
