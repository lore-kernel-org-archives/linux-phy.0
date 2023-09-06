Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D734DEB8FB5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCdMzSt/0NmR/mn4Jc6UwinPG8e6/BHo0bu8LEw5cao=; b=u1mPHlql2Yh/jg
	4B+Wr0VhXCg9yV7lJUZr4a27Z3uxXMjONsN5+6vvr/jiyquOKu5WiJ0vUmrT0thvCVgYTU3i6jD1O
	SRE/9Yna7lrnFNOn6amhOyE2kIBG/qAsqgEtOdlFf1GU8yZDdJDtysrqCBGtuR+ymejVelZZxrOv0
	hVqlSBmd/vG11by3NHE9KwEXoxStle/mpmT2atct5hCZ052l5b4aH+idBXdEXjXDyD47OMvaMwn7f
	sB+cAFZ7melaMnnj3LGy9AtMaxGLBTiRL8CkiKAV+tno6xh0AdVJiSSXbg6pI87JRBSliSpf85aai
	la7v/vK8+XyQEr7YXipw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlFo-007J07-1f;
	Wed, 06 Sep 2023 05:39:04 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlFi-007Izg-38
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:39:03 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d7b9de8139fso2809558276.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 22:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693978737; x=1694583537; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N6Vvpw2CmW0nzmxoVXpfXOrVpezzVvzdgd6ePJqRcdY=;
        b=V8LC0mQr/mHv3aqowkQacvDBhzraciDM+l2Z268yAzztorWwUwyyHhq1FRxeTdkS7E
         y87uKXHksKyJoaj1CNDQXVfsFCudC/Np+hZZoQlWi7g+xa+PQpTifvUCwE01k+un5dqn
         dZb/yX3JYI8dZUHasaEbtF5dgWERgivkDsaA/3VQ3sxx/Xuq4i9x/41Pu58sbAWamAmg
         JCduGW7ii0Z+3qVig3Uhwz+2XEOQnd9Qu0DuaIjwjIvN29jdAX3P2M9h7qjjKO7P82TR
         i/ifVq7DB7orPcklCt09EBjarU7JoGEBdsWwYShDGm/Nf5JTPVIVJQqvXO2IZw1/HYFB
         CNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693978737; x=1694583537;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N6Vvpw2CmW0nzmxoVXpfXOrVpezzVvzdgd6ePJqRcdY=;
        b=ZQYPFnXs5n6RU1Lmez/6AGikWuuJNfoai0NBeiHQb3EYsVKwWy99urRj0AMbZyWDq/
         kE/f88MTsv6LrLGlEPWM5H9R0g7oCob0xpq5NQUu1kgtvcgDbtVVyM4bcdFhdf4C5tq8
         z1X9mSZ8TEQoCIQLMxGKRMiPNmJMXW5PAj8OUVLnMnzyIin468n2l+dm4RwOeMFxj3Y4
         Jx4FAga/1VLNvV6qXM1umonrhsyvgN7+why6BsSqi1L0LFdcBjGb922RyHeREIXEtfAA
         4Ik0e+sg+WOX5dresNfNZT/D/XkwjKmoJzbBjFD0NZojYM/PU1ovbps+D5eg0vD9Fne7
         Rk9g==
X-Gm-Message-State: AOJu0Yy9oRVx+NO6kf8rveux9V0vWVqoDEa771d5vnHFgxVm4a78xL/b
	FmTsSN4TKw/3He3iKv1e2rt4eGli4H/7BubVhlcZ1g==
X-Google-Smtp-Source: AGHT+IHi8pHHF8NLpzQYB9v0Pol2eOPcrhcWs3eFGmil2YW0f8FVFZZu+uGmVHEtyjepaxiS6Am92KbgZ80QwJQ18Fc=
X-Received: by 2002:a25:aaa3:0:b0:d3b:24b:561e with SMTP id
 t32-20020a25aaa3000000b00d3b024b561emr16305720ybi.42.1693978737039; Tue, 05
 Sep 2023 22:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
 <35475122-cc40-486d-90a7-09be53588219@linaro.org> <cde5be37-26a1-3efc-17f4-d58b87a9b99d@quicinc.com>
In-Reply-To: <cde5be37-26a1-3efc-17f4-d58b87a9b99d@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Sep 2023 08:38:45 +0300
Message-ID: <CAA8EJpoEWLw3qmcHtGdjX6RGOWii6ysgrP45RCCMvPQTL4oR2w@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, abel.vesa@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, kernel@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_223859_026126_FB0BD474 
X-CRM114-Status: GOOD (  14.88  )
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

On Wed, 6 Sept 2023 at 08:10, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
>
> On 9/6/2023 2:05 AM, Dmitry Baryshkov wrote:
> > On 05/09/2023 13:30, Rohit Agarwal wrote:
> >> SDX65 has 5 clocks so mention in the bindings.
> >>
> >> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> >
> > Fixes tag?
> Ack.
> >
> >> ---
> >>   Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> index 6759105..018117b 100644
> >> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> @@ -180,6 +180,7 @@ allOf:
> >>                 - qcom,sdm670-dwc3
> >>                 - qcom,sdm845-dwc3
> >>                 - qcom,sdx55-dwc3
> >> +              - qcom,sdx65-dwc3
> >
> > Is indent correct here?
> >
> I double cheked the patch and didnt find the indentation wrong. Not
> sure, in your reply it seems wrong but the original patch has correct
> indent.

Ack.

> Thanks,
> Rohit
> >>                 - qcom,sm6350-dwc3
> >>       then:
> >>         properties:
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
