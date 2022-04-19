Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F178EC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 03:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwsm5eVlHvN456aq2dBOncdq5PmFXD9qlLG3OdalaTo=; b=Z3XxuIZxL+3AmU
	z1EwtzJkeYxs7Wm9kX/K1taQDt5cRLm0LJuz5AIFamjQCiXdtTLknGoBU/0eDceXZASuDVmn3AmtO
	Rexvktgsskg9dDJF3kjMrfBNaZau9YAsOinEs3+FsylgRuQ0OYfaMSbj4KGXfOIU19sn9hVkywXwJ
	LdWbRcZFmHr5xElOBqtCoRzaisXSbJqxOPSGPfR5uaiT+maGVInjPGLluDV5KbCmmQhV1yuwSSasD
	skDNoZuB+sFXSXcZzIClS4JeC9+1Oa0t/2VuEl3s1h77NFDjP357NSXacw8KyBm9ZFzltSNA6RnNM
	i/2malO+QX49ZmuoFiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngefR-001Jaa-DB; Tue, 19 Apr 2022 03:36:41 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngefO-001JZ5-Po
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 03:36:40 +0000
Received: by mail-oi1-x232.google.com with SMTP id e189so16830820oia.8
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 20:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lU62qiMNx0arfmUh5Da57k5+DyOubNWH5tFxNq0qdig=;
 b=ccnhJbk5FaNBOuVV/nnA8lCwOeSSjfFkLv7AixaFuXP6Q+P2VXUyn7VzU4mfW8dBjr
 x5lVNnu295tabyVgpKczuhMib81c2c3hDX4MSNQX+h6dVRogzeVKGjW3cNqn+QIcLcI+
 SKj6r6ts3dg0dEhuUB4ilXc2cqkhAN1Z8IID8asdIjIPPdWYQTJEMAeIrTlaWRIGX2QS
 U1MwbRY9dgVrotBaLFhqCfmkgh/ry5ybBspxA1PkPl+jxjmw0P8cEnAITzxT7IZ+5g8g
 YvyfNQ2ae/4Y8iWfHa84aSR3dXlPCZUoX+0FoUvJ8Qaem9gsyHy5uCHCVU08Zm24K7TM
 uwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lU62qiMNx0arfmUh5Da57k5+DyOubNWH5tFxNq0qdig=;
 b=s+yiAWKxg7HMy4rrTyxZISrWsPX0WwZXoSEfU4xEcJ1OciWy6FW5giQO+LUijXM9cG
 TXU4ppgDqd3rRN95tAT12Od/8toehnLPGrjgqCrBtO+r8rNjOlWW/PqVga22WEKDVjQ3
 WV0Kdm2G0he+5kK/4moNL3rMPbddmcpQusgTx9tuQBzipju5doxIdZcyTBSuXE4vsyS2
 BvsHRa+4te/XL99W5AwMkgqpH3ivyDj/C65oQy9ET0534wikHuiYKYHHGnDQVzy65MCz
 zNppR1tLo48CbIDL7uxt4zHdNGl1ls73n1tx+YJsnY9FDTlViUeAKKU6Q4oMV9JIMISa
 EkCA==
X-Gm-Message-State: AOAM533WVTO8zmBkgJ0xSFAlsQtQioyyAYhOS9gX848yz2AfHg0nPDnV
 HKPJFRPoTLxQ1PGDA5SM8MqGjtPZO+La8CxWE0L3rl+hPa163Q==
X-Google-Smtp-Source: ABdhPJxnueYo1hwjt8S0e82NKKMm6bqJrkcxGFtoSuRywWbD2amSha1sVxCFvYPFWI9IRFXQg4bP8SrcFRTexafDHQE=
X-Received: by 2002:a05:6808:dc3:b0:2ef:86e7:a0b with SMTP id
 g3-20020a0568080dc300b002ef86e70a0bmr6437888oic.48.1650339393324; Mon, 18 Apr
 2022 20:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
 <CAA8EJpqh1pTfNR2Qd7p69i4VvqPNtbd5gOjO-TYdWTTG1rKrrA@mail.gmail.com>
In-Reply-To: <CAA8EJpqh1pTfNR2Qd7p69i4VvqPNtbd5gOjO-TYdWTTG1rKrrA@mail.gmail.com>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 19 Apr 2022 09:06:22 +0530
Message-ID: <CAH=2NtxqRyZ4tOZKu1m3pRR9TgVBpQZq5ExDXF=di85HzVDa=w@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 bhupesh.linux@gmail.com, agross@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, robh+dt@kernel.org, vkoul@kernel.org, 
 bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_203638_899428_DF7C20F1 
X-CRM114-Status: GOOD (  21.88  )
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

On Tue, 19 Apr 2022 at 04:04, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Mon, 18 Apr 2022 at 23:55, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > Since a few boards based on QCoM qmp phy use the
> > 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> > describe the ufs phy nodes, add them to the dt-bindings doc as well.
>
> Ugh. They give a false sense that they are supported. I think in
> reality they are not used by the kernel.
> So, ideally, this patch should be accompanied with regulator core change.
> Or (better) drop them completely.

Indeed. However, the earlier reviews were contrary to this
understanding. Maybe, @Bjorn Andersson can help with more background
on the same.

Although I agree that since this appears mainly in sm8450 and sm8350
dts and is relevant for ufs qmp phy nodes, I can send patches for
cleaning up the dts files instead.

My hunch is that these have been copied over into the qcom dts/dtsi
files from the similar  ones described in [1].

[1]. https://www.kernel.org/doc/Documentation/devicetree/bindings/ufs/ufs-qcom.txt

Thanks,
Bhupesh


> >
> > This fixes the following '$ make dtbs_check' warning(s):
> >
> > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> >   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
> >    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Acked-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > index c39ead81ecd7..411c79dbfa15 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > @@ -90,6 +90,14 @@ properties:
> >      minItems: 1
> >      maxItems: 3
> >
> > +  vdda-max-microamp:
> > +    description:
> > +      Specifies max. load that can be drawn from phy supply.
> > +
> > +  vdda-pll-max-microamp:
> > +    description:
> > +      Specifies max. load that can be drawn from pll supply.
> > +
> >    vdda-phy-supply:
> >      description:
> >        Phandle to a regulator supply to PHY core block.
> > --
> > 2.35.1
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
