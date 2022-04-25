Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC121C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 21:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ok51Z9r9r8DK3mmyZu3CWSa7YYC16MvlN4sRJOoDhw=; b=iZ6d5RslQuijRk
	wlVycYHBQI61KPQLAYXXXxdnqQbUZrKorv7SkCz+1YDUQAdiv/213ZG5MAjw/o6vlEw7sFObaWf6W
	DN4hSroU9YKF9L5i1gw2Fv7ywbKDnLZRk9sLIV6/eHfvHKkvT2YAG+/051ntcN2Plob+hUOAOmCPm
	UkN4vthOGZaM6wSzbiwlY9a5aeZpWocwA3sV2tcS5PVfSiPXAP17+YinHSpzGOKOHkoVI9WWTSy/j
	+8GEWNlXkL4GRifBHBdvbqlMauDlGXsXPH5OKJQSDoMulu63EorS84dOcPSrqSE2ZTiFYhxlHc6tJ
	9TyT10k+ZspjfAhNp6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj62R-00BSse-96; Mon, 25 Apr 2022 21:14:31 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj62O-00BSrh-15
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 21:14:29 +0000
Received: by mail-oi1-x22d.google.com with SMTP id e4so18606604oif.2
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=X8qBR4k7N3biK/baIHugbINU/cSkeqhq6SIFIR2b73g=;
 b=BYv54WpQMfcQHf9EDLt0vgrF2mLVZ5MNLfSA6GV7H7W7HA8OQtn7WOTar0ykA6Lj4a
 UpNrT8Qi8xqIO/wlkhnFrZ5jjWJNWcJZpKzS02rhG2lomL9AdL2U+20NFJZVe9+KiWs5
 HjAvLJpl+dL1J7dLUDPXLywfNY6mcNrqC62mU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=X8qBR4k7N3biK/baIHugbINU/cSkeqhq6SIFIR2b73g=;
 b=RIWsn3NMrlXG/w+8qeuwV94eQYZYCtbaAGCdl2r4vOJVq5LQ6XLq+DXA+JdnmACe+z
 lesQZdkzkhnFT3YXeM8juY9cZkzvUncOjr8VOYGgjyU+DfuwtY7UEZZp45qJhf9A8gJa
 FPjA8kSXDWy/kkrrrQjYn0kokXmlVPiyyatH9Zg5pCwkW/Uxun3DjAo2lQTYX402/Lfw
 cZISsol7dCbrMIvTI8rYKoz+Io8dWw9JJZs/1fAm3IQ6uBW94CaKGrt4abuO1pDR3b10
 VhgaoU1X3oy7m2eFen3QgKPVbvYt/KNCq1Sl5S7zoMrQBZg6BD9CoYJRBZijLRMSFC4o
 tOsQ==
X-Gm-Message-State: AOAM530veA/8qrkpcENN60MOktM6N92/pi/VPArmrIXLCiQhovE3+n3y
 BI2plOg4pKdapzd2XDD4fxQQ3b1l5XtGjNGd2g5KVg==
X-Google-Smtp-Source: ABdhPJztvQbfhKUVNaMO1H0yxKW2QJXWNd3iFmKb0M3Orpq7oisRwtkCiiqoU7PJj6ZXQ7WmO1sLao/x8L0uFXM5LbY=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr5332637oiw.193.1650921265969; Mon, 25
 Apr 2022 14:14:25 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 25 Apr 2022 14:14:25 -0700
MIME-Version: 1.0
In-Reply-To: <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 25 Apr 2022 14:14:25 -0700
Message-ID: <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, 
 Rob Clark <robdclark@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-phy@lists.infradead.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 Kishon Vijay Abraham I <kishon@ti.com>,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, 
 quic_kalyant@quicinc.com, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, 
 Sean Paul <sean@poorly.run>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_141428_126392_ED988A86 
X-CRM114-Status: GOOD (  16.87  )
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

Quoting Douglas Anderson (2022-04-25 14:06:42)
> We're supposed to list the supplies in the dt bindings but there are
> none in the DP controller bindings. Looking at the Linux driver and
> existing device trees, we can see that two supplies are expected:
> - vdda-0p9-supply
> - vdda-1p2-supply
>
> Let's list them both in the bindings. Note that the datasheet for
> sc7280 doesn't describe these supplies very verbosely. For the 0p9
> supply, for instance, it says "Power for eDP 0.9 V circuits". This
> this is obvious from the property name, we don't bother cluttering the
> bindings with a description.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  .../devicetree/bindings/display/msm/dp-controller.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index cd05cfd76536..dba31108db51 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -76,6 +76,9 @@ properties:
>    "#sound-dai-cells":
>      const: 0
>
> +  vdda-0p9-supply: true
> +  vdda-1p2-supply: true
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
> @@ -137,6 +140,9 @@ examples:
>
>          power-domains = <&rpmhpd SC7180_CX>;
>
> +        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;

Having 'a' in 'vdda' typically means 'analog' for 'analog' circuits, so
I'd expect this to only matter for the phy that contains the analog
circuitry. It would be great to remove the regulator code from
drivers/gpu/drm/msm/dp/dp_power.c and move the regulator_set_load() call
to the phy driver if possible. Hopefully qcom folks can help clarify
here.

> +        vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
