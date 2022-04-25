Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA55AC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 21:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGxQM3/s7NFVVlIrCz/6cqKb0V01qMY534lVufUSM2A=; b=PqPwbPWGGiTa48
	oqWKzFGAJx0NqhVHSdus8sfWaVQS4y/v8WYJcemTMjlxUe8Pq8aMqN74EPkKv4qE/9KU1GQ7gGE3T
	V/KW+OH6G5jK6gQtiHMIu4bHkX6l9xrB9ZPlCUNgRZx0bwbtJ5Yu/iStWqYyAoHn3wnVrsz07VNjY
	Szne6ofBN2A0l6NRYMgRD7cFtgtMViFayYOenVLDRCWFQKbeIfPFp8Q61IwkDnWZuP2a5XEhD+X9S
	l3H+cGqRevYUi4sQGMbFt75AZcGOt8v9AMOZ13v1+Jx4nY5tavvcxnJ94/V/OQ+loCik8THWhU5qz
	Ea8pEfK9vgFxdY9dzxVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj66m-00BTpM-Bx; Mon, 25 Apr 2022 21:19:00 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj66j-00BToO-Sr
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 21:18:59 +0000
Received: by mail-ed1-x52c.google.com with SMTP id p4so4391749edx.0
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=24iOF1MSGz5s6cCyjfamucZLvCAzW+z+udRAosCU0zY=;
 b=IKCjLomd/fBFKtHP7jTm5t+W2FCOv7AOIpQTxPrtj949PY1Tsrb/D6jZuxB1xNoSYP
 GWBX5KG9TOQnKlzchsow3SoefF2kBW7rQ2HKQYl95HTmbBgI32JNTGqDNermeWSyTZtL
 Hf42Do0mf0k3Q96cMYnFlH/CAVL53m+8sBlv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=24iOF1MSGz5s6cCyjfamucZLvCAzW+z+udRAosCU0zY=;
 b=aJAnYhnm21p/fI5qfpARmesOc4cewh8q16LTxK7sBIQmLHmehgfx3WVEcbn8AdeUT0
 xTOcW1Y6Dd65AjVa08wIdhG1xiD1xFJst5EEuy5Fcp19qnniTTCPd3MgtrLwcWjxi/tH
 tvZl2DZNv4/b1bMwXdy4IX3bIOuJfQr7KgBdiHWCdXyrsbUgJbAEYJCCftqAou4PSX8A
 vu1QPPOe3HKdi4treRuWaoN39rE6p5PmTPOx1LTg2GpTLrbwB3DBQBTUvR0EvOWBqtvO
 5UY61ECvXwOx1M9QsWx0Xmug76Wcf1Ks72T1kn6N4TVQeeUPeBvRZRjpN95R9dzA9et5
 Q6jQ==
X-Gm-Message-State: AOAM530FZDvZRC+ZhY9NcQdi0PiZp1llUsNVWgcXr5pLU4+zUoAQU6bf
 R9uKRuSAnoCwECreil9ZidlEF+pDpbgNqzp/
X-Google-Smtp-Source: ABdhPJz7T02wVZ4+K+7PAfNpiF0e4b7qMHWxrKiffSyv0DtZ5YsUaCdubUYWeew6Z+4pQR/COno/MA==
X-Received: by 2002:a05:6402:274b:b0:423:fe73:95a0 with SMTP id
 z11-20020a056402274b00b00423fe7395a0mr21113009edd.224.1650921533932; 
 Mon, 25 Apr 2022 14:18:53 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43]) by smtp.gmail.com with ESMTPSA id
 e12-20020a170906c00c00b006e66eff7584sm4029417ejz.102.2022.04.25.14.18.52
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 14:18:53 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id
 u17-20020a05600c211100b0038eaf4cdaaeso335863wml.1
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:18:52 -0700 (PDT)
X-Received: by 2002:a05:600c:3d0e:b0:38f:f83b:e7dc with SMTP id
 bh14-20020a05600c3d0e00b0038ff83be7dcmr26954889wmb.29.1650921531776; Mon, 25
 Apr 2022 14:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
In-Reply-To: <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 25 Apr 2022 14:18:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
Message-ID: <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
To: Stephen Boyd <swboyd@chromium.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-phy@lists.infradead.org, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 freedreno <freedreno@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 quic_kalyant <quic_kalyant@quicinc.com>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@linux.ie>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_141857_977227_3654881E 
X-CRM114-Status: GOOD (  25.65  )
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

Hi,

On Mon, Apr 25, 2022 at 2:14 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Douglas Anderson (2022-04-25 14:06:42)
> > We're supposed to list the supplies in the dt bindings but there are
> > none in the DP controller bindings. Looking at the Linux driver and
> > existing device trees, we can see that two supplies are expected:
> > - vdda-0p9-supply
> > - vdda-1p2-supply
> >
> > Let's list them both in the bindings. Note that the datasheet for
> > sc7280 doesn't describe these supplies very verbosely. For the 0p9
> > supply, for instance, it says "Power for eDP 0.9 V circuits". This
> > this is obvious from the property name, we don't bother cluttering the
> > bindings with a description.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  .../devicetree/bindings/display/msm/dp-controller.yaml      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > index cd05cfd76536..dba31108db51 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > @@ -76,6 +76,9 @@ properties:
> >    "#sound-dai-cells":
> >      const: 0
> >
> > +  vdda-0p9-supply: true
> > +  vdda-1p2-supply: true
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >      properties:
> > @@ -137,6 +140,9 @@ examples:
> >
> >          power-domains = <&rpmhpd SC7180_CX>;
> >
> > +        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
>
> Having 'a' in 'vdda' typically means 'analog' for 'analog' circuits, so
> I'd expect this to only matter for the phy that contains the analog
> circuitry. It would be great to remove the regulator code from
> drivers/gpu/drm/msm/dp/dp_power.c and move the regulator_set_load() call
> to the phy driver if possible. Hopefully qcom folks can help clarify
> here.

Interesting. Oddly enough, the sc7280 datasheet doesn't list the "_A".
It calls these "VDD_VREF_0P9" and "VDD_VREF_1P2". However, on the
schematic in front of me someone labeled these pins on the sc7280 with
the "A". ...and the driver looks for a supply with the "a". :-/

It would be good to get clarification from someone with better information.

-Doug

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
