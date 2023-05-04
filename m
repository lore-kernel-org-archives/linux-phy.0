Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06690C77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 08:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=816uWJ5e3u3MC198YVJE/IR5Q3RI6APUv/hIcMHAPfc=; b=PJVltte0a71xMZ
	+9t7nRLHujrtUIbAcRGMNoIT/AIV/ElMTnevhnLZ9xU7bwlJarMvtPe7Po4KeVcTHfZL6LtBbd929
	GeEhsgAQ0H96P8FedmU4esow0trHQZLay7hDRVoACrcY2pGmiGYTH9RTO3OC9XL6wECxyme1p8nuM
	Po8yEqoolBrCyTGyRoXL4qaty8U/RVqY8yXJcNYOJsn+jVV+ZDePhIWey9IxQct5LwSlK54ebzdmF
	3VbIMQq8nLJjB4Cns61yX9MpeJ/1GMuD+viW7SbkffNnq8gW8w4xGSC/MsL1HRW0IDperPhKbvGZQ
	7qEPbdY21Cd+BhWI8p+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUkJ-007BIL-27;
	Thu, 04 May 2023 08:55:27 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUkG-007BHq-1s
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 08:55:26 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-55a14807e4cso2215857b3.1
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683190523; x=1685782523;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qh1qSkuyv2vGK4cRlclNgqnUk0gpRzXVLpoZ9by6rLA=;
        b=LutfW/hky6cKmdiUEIPvHTI8rqouC7m+5riODh7gjThHjXccV6Rw1CDXqY/CbeZemw
         R+ZBaOCIKienQBYR97Fjqe4pdcGG/3rZJvxXGDjHVSvNcqJR/nOx5FMwJBd6Nc8gCURR
         o7vFQTvZA0c0qoOTY8kOulU2IOUEaGhvhjAERtmLMI3qqTrn/n/bLB6Xk+EXT9k1X2Au
         BJZj5jhfVDMn5pwqoJ4damHAqG4QW/KnQ4aKYMMIrp9naO5HDdWb4VcxuLw8LZL8ZI1q
         lwIX6VEzU5yR8enTxG+CPogP5EEpDdPTMIES1g0QtEfrbVICD2hkHY6aoInLtSRlxxvd
         TF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683190523; x=1685782523;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qh1qSkuyv2vGK4cRlclNgqnUk0gpRzXVLpoZ9by6rLA=;
        b=hOFXk5ji8bWXGXO5tJM/hdCaRWlljxonaOt1mA8+fHB+sFjko2dSnOjxejKuAFM+Or
         rlgDlZVCZ7s3my/jOIXhnDPsqfbOJGZyxZZ8l1WQg7I1+iBimmxzflrANxa9239JsqUy
         t6tMl7yAT0gLCGqeqSn8VCisXiLTHSnbBehFkHlx1E/r+VcUbF0l6Dba59CYVdFrvD4L
         6w991gkR6VKshfzYVTQV+tKc0PKp4szyS3m4J5GyefdlKech2ePWD1jrhC1X2DywXKeW
         SemruRoPt31B43+4MBphg4pvTZqXLNGSGyAAea32xXDf1w5PV5RXpBKREnzUhLkuZIxW
         zs7A==
X-Gm-Message-State: AC+VfDxMqpBOyOUZuzykCu7A6Gj8dN571PhVQpAjUneNZhET9UZBDAQS
	8mRLYqcLD8kKOC1Ns33jB8ih7ARLtJ4smI6dqHePOA==
X-Google-Smtp-Source: ACHHUZ4guAhY7shonB5ivhaqy8LCBNhETDsG4ZBO3PsnT+cSA7hvtjT6pQ0FeMQ+3yssq6kNLUluJwgeQfRLJkKbyMg=
X-Received: by 2002:a0d:d892:0:b0:55a:64f0:366 with SMTP id
 a140-20020a0dd892000000b0055a64f00366mr1570885ywe.7.1683190522694; Thu, 04
 May 2023 01:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com> <ZFD8oQETtLuDH2Xg@hovoldconsulting.com>
 <20230504031354.GE870858@hu-bjorande-lv.qualcomm.com> <ZFNvHgaYsHUc2Y9L@hovoldconsulting.com>
In-Reply-To: <ZFNvHgaYsHUc2Y9L@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 May 2023 11:55:11 +0300
Message-ID: <CAA8EJpr3VaVuXro6yqfUtAOrF9fcQgsy9kbSGhhrA6sTP5sLaA@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_015524_648146_29549B41 
X-CRM114-Status: GOOD (  40.77  )
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

On Thu, 4 May 2023 at 11:38, Johan Hovold <johan@kernel.org> wrote:
>
> On Wed, May 03, 2023 at 08:13:54PM -0700, Bjorn Andersson wrote:
> > On Tue, May 02, 2023 at 02:05:53PM +0200, Johan Hovold wrote:
> > > On Mon, Apr 24, 2023 at 08:40:08PM -0700, Bjorn Andersson wrote:
> > > > The QMP combo PHY sits in an of_graph connected between the DisplayPort
> > > > controller and a USB Type-C connector (or possibly a redriver).
> > > >
> > > > The TCPM needs to be able to convey the HPD signal to the DisplayPort
> > > > controller, but no directly link is provided by DeviceTree so the signal
> > > > needs to "pass through" the QMP combo phy.
> > > >
> > > > Handle this by introducing a drm_bridge which upon initialization finds
> > > > the next bridge (i.e. the usb-c-connector) and chain this together. This
> > > > way HPD changes in the connector will propagate to the DisplayPort
> > > > driver.
> > > >
> > > > The connector bridge is resolved lazily, as the TCPM is expected to be
> > > > able to resolve the typec mux and switch at probe time, so the QMP combo
> > > > phy will probe before the TCPM.
> > > >
> > > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 36 +++++++++++++++++++++++
> > > >  1 file changed, 36 insertions(+)
> > > >
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > index 5d6d6ef3944b..84bc08002537 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>
> > > > @@ -3196,6 +3200,34 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
> > > >   return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, dp_np);
> > > >  }
> > > >
> > > > +static int qmp_combo_bridge_attach(struct drm_bridge *bridge,
> > > > +                            enum drm_bridge_attach_flags flags)
> > > > +{
> > > > + struct qmp_combo *qmp = container_of(bridge, struct qmp_combo, bridge);
> > > > + struct drm_bridge *next_bridge;
> > > > +
> > > > + if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> > > > +         return -EINVAL;
> > > > +
> > > > + next_bridge = devm_drm_of_get_bridge(qmp->dev, qmp->dev->of_node, 0, 0);
> > > > + if (IS_ERR(next_bridge))
> > > > +         return dev_err_probe(qmp->dev, PTR_ERR(next_bridge), "failed to acquire drm_bridge\n");
> > >
> > > Using dev_err_probe() in an attach callback looks wrong as these
> > > functions should not be returning -EPROBE_DEFER (and this is not a probe
> > > function).
> >
> > The problem is that this might return EPROBE_DEFER, and at least today
> > propagates out to returning EPROBE_DEFER from our DP controller's
> > bind().
>
> Due to the known issue with the MSM driver panel lookup, or due to some
> more fundamental problem with the stack?

Ideally MSM DP driver should call component_add() only when the next
bridge is available. This is how we handle it for the DSI case.
However I'm yet to see the changes to dp_display_probe() which make
actual use of the done_probing callback. And even that will only fix
the eDP case. For the normal DP case we have no way of being properly
notified when the next bridge becomes available. So the driver will
try to drm_bridge_attach() from the component's bind() callback and
return an error if the chain is not (yet) fully available.

>
> At least in the former case, I don't think we should hide the fact that
> we have an unresolved issue with the MSM driver this way even if it
> means printing an extra error message until it has been resolved (cf.
> the panel lookup errors that we've intentionally kept in place).
>
> > This is not optimal, but unfortunately we have a two way dependency
> > across the of_graph, so we need to make one of the sides lazy...
>
> But this comments seems to suggest this is a bigger issue than the panel
> lookup.
>
> Could you describe the issue in some more detail (e.g. when would you
> see -EPROBE_DEFER here)?
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
