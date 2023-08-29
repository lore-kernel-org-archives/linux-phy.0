Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4733C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 18:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2rl5rqpE9Uouhn0Ye0R8ClhHejF27m+6LNmngIAV+0=; b=phq3T1dHCs1tyS
	RzNGJoWJEDXlN8R9s/4M63gT3/6Uj09NX/BXL2sVb/NTFQqoKy4bT8BN0MuWESuIuhwVA9aKGHA+T
	GbpwUz0oAImbIhes8q57q5E7TX5no8GQqlyT/QJ9sqMr+EdmtSQo7z+Y1jTuUUkTc8FZfdS7kKfQS
	sftP8bWzGQyL4TyMcpGxvp/Z8kL9zKX1i3j/JMycUDkpy+OlRs94apBz6ZiyEBZBOMAt2AB9Gu+sm
	RuxJ8YlBqkNeAQklZ/L9K0MPBoUcfJlFBkVzzHS+SoAkMP4lIlz3i/hAdOhp27nBn8LP7PnYqiuiK
	DFsMsPwFE0enLM3I3hLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb3jZ-00C4Qr-1W;
	Tue, 29 Aug 2023 18:46:37 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb3jW-00C4Pd-2J
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 18:46:36 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d7b91422da8so440854276.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 11:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693334791; x=1693939591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6+ED0KXs67DGrmo6iXaWzPAJQDmbnXsYGdJFbasrMdI=;
        b=ClWjzcAfjYvtZ8nl+s7yeWbc+hc5FJFSCfsmTr8wmd/zVGplocRb++tAmdLjdsc9zc
         nfs6Ak/RS7XX2cggg/o75ialkDJwSUmqpoE0jlMeh3HrLPdu5cp3G0lkpB0XGMYE3XOC
         s5Z3wGgOcqeZVH4rZ4Z18ix/VHAoHldddAp34xZc28soOqMULHblq4fl9sVDsgxIZLN1
         UQWTMxiRjLNSy54jTnOGWiDCUivs75yf4KiJWzQlLbqvLyuPzW4fmCFix5ea17knoMq4
         7Ov+viFXw9Qeb7kfTlBZ45jKJGGg1ngVZixWXIuhHigS6SN/T5lzODHIBbHBip0x5fcC
         2OJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693334791; x=1693939591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+ED0KXs67DGrmo6iXaWzPAJQDmbnXsYGdJFbasrMdI=;
        b=MwTnkvW2OR6Y6ykJzuwiGeOeqeSeOSVEA7BDaBSu1k2cv/SkXSzrpFREJYDpLHFrxl
         EdhPxj0x2gmMFaiILd2qD/605TDweehvPh8wqPSors3gJxEOssRArFXhz/ue9n05vCUk
         Ahvem98kBMy9ihsK8anx448kaZxRS5kYPsfTLOHUt5ReDmbd5FlaaZeccspA/97qZZK3
         GbIdhYsWZyimTahNlECLdJfLBHeYXALZ5ToMWBFAMz5KXCXux2CdJq3ngw3ifTjksXSh
         gMKAf1qiT2p0H+zbk6eWadTQFbsY4uvziv4iDiyWXN/4UM/rhuqnaT/5mj7D7aqP0TfS
         Co9Q==
X-Gm-Message-State: AOJu0YzN/Aik64Ffpt3SFwP6ss6B1GBQTEbS+JbW1aLlGfk/4In+sPRa
	mDwW2uq+1nhqKIi44MpzO4HRzEhNBDriHKutnvzb9w==
X-Google-Smtp-Source: AGHT+IF7Q+2ONedva5BlExE5dN6mOQYTGK+793vpj6L4wQkNIymKBXWY+28Y72O3M02h08fxfWekTJ3xhcGsPQoR0RA=
X-Received: by 2002:a25:d10a:0:b0:d62:b91b:10e3 with SMTP id
 i10-20020a25d10a000000b00d62b91b10e3mr30257956ybg.48.1693334791365; Tue, 29
 Aug 2023 11:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-5-quic_ipkumar@quicinc.com> <169331975886.2142011.7345682428392154402.robh@kernel.org>
 <17e2413b-6d06-a113-e35b-30cc078a6e83@linaro.org>
In-Reply-To: <17e2413b-6d06-a113-e35b-30cc078a6e83@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 21:46:20 +0300
Message-ID: <CAA8EJppNGs0UVhBJq_+RFt8pALEk0tEoKfUo1AxzbSu82A5_HA@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kishon@kernel.org, robert.marko@sartura.hr, robh+dt@kernel.org, 
	geert+renesas@glider.be, peng.fan@nxp.com, konrad.dybcio@linaro.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, will@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, quic_varada@quicinc.com, 
	vkoul@kernel.org, nfraprado@collabora.com, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, quic_wcheng@quicinc.com, 
	rafal@milecki.pl, gregkh@linuxfoundation.org, luka.perkov@sartura.hr, 
	andersson@kernel.org, arnd@arndb.de, linux-usb@vger.kernel.org, 
	agross@kernel.org, catalin.marinas@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_114634_769276_E2E759A3 
X-CRM114-Status: GOOD (  15.96  )
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

On Tue, 29 Aug 2023 at 20:09, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/08/2023 16:35, Rob Herring wrote:
> >
> > On Tue, 29 Aug 2023 19:28:13 +0530, Praveenkumar I wrote:
> >> Add ipq5332 USB3 SS UNIPHY support.
> >>
> >> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> >> ---
> >>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
> >>  1 file changed, 114 insertions(+), 3 deletions(-)
> >>
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > In file included from Documentation/devicetree/bindings/phy/qcom,uniphy.example.dts:45:
> > ./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:19: warning: "GCC_BLSP1_AHB_CLK" redefined
> >    19 | #define GCC_BLSP1_AHB_CLK                               10
> >       |
>
> So the only patch which actually needed dependency information did not
> have it. All other patches have something, even defconfig (!). Confusing.

Much simpler. This patch adds a second example to the schema. Both
examples include something-gcc.h. As both examples end up in the same
example.dts file, second include conflicts with the first one.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
