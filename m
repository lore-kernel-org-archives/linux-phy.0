Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19896C10DCE
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 11:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvId4ppB9GtsRHEEYkYPHe9yN5trrhPdMAYn/35PAzM=; b=q0+9MVQ/z0jMkm
	BEpZpBr90fL6DjYOmQL0tQPRobd1pqoXTGN0FXj2FkjTTb/NQqrlB/b8V7TDgq6kyE+2uXBgn3iTe
	sfRz/ddKTlFTuENe+gjxB1I4pReuqWwQjD+3pATVu3u7NAr8tjtuMwAlL/En+cQMkhU76dLa2urgP
	YN6vhenUw7H8TmJHJ9KgyDyQdNQtPhUXLNg6XZhqPOZmYyHvN5Mx+vf4rHknVyUUuVRmbTf0C84Fl
	nfur6aiO0xbZxKqb19qsX6dU0ETliovn14UCs/ao6v0ACw/xktfRSERtr2Ymd+Mt8VlS6ppBFtA38
	eOyo84Veo9t55AtTuRXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBYep-00FKQb-2e;
	Fri, 08 Dec 2023 11:04:35 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBYen-00FKPi-16
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 11:04:34 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5c85e8fdd2dso18397807b3.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 03:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702033469; x=1702638269; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tmWSiLFpH5ilop9PgBwEvCl5zyYcl/sRlYRMt6cwB08=;
        b=YD9/vi5JLeOYQJ1GIElLmdkTCgcWV4ShWMzt5Jvyz59pHcMLI7weofM4hwQBD+n/iJ
         Evwt+JF4aD2YmOum2kknwrmRRh/5aA2zVBIs6Z/MrFZFVmA1YNldHLz2pMvuARgNcMZM
         lu7qLFkTy4/crdnopn1UNPDrpWawUC8WDmNfXio1x1BY+IBhH5/kgANQltTUayYoT37H
         +4PHHabK3DCrnAoAd3XjWGzVpZei6wNWAa0dHdtYU1LqjsZM/DgAxmuDbfoZRfEdvQjr
         iWxIdoDArkUPuepgD43DnHckl/andn3HSAncFKN8RQkDbGxTo2QjeqBCS0RcirXcei4B
         Zkfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033469; x=1702638269;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tmWSiLFpH5ilop9PgBwEvCl5zyYcl/sRlYRMt6cwB08=;
        b=oIOpei8wKA94WgiEuyapSmpyLPmBYEsH2YH+ygbJbovB85t1/3rFqjme0Q5L3l+Qga
         Kw0KSO+YbiG4wSE37FKXmc/DgPSvohmHRo5omzNIkIZCZVc8Wti5hcs5JmiLK+1tuSAB
         RASx4SAVbHRPfCyxAnSyB6GZr6jcH4fDa5qQWbSz2GOAvXRdaoWvT80Eba4nLavq69kA
         cNtzOoMMTQUFotI+lprDXfMJvDM/Vf6KCL7tEL7Q48xW6wW0JIEJquqm7DcZyLwSwQB4
         MApBlz6ndGe9nMwWdRCUrTegGK7S6L1HXoYtPkLfdd5qjw8Kmx47XZL+PcoMxvgNNA4K
         2Q8g==
X-Gm-Message-State: AOJu0YxL8+oohW22lj78H7APXFScnLP4ymILAvw9RIuDFtRFIx+WDsvy
	NPIag02s4xSCeDB91eoid84kviHrodGPmUDRiaF27g==
X-Google-Smtp-Source: AGHT+IGCB8quVSHKY0fmnpid8nxEPOPtVtmvqpR1rpFARtS3Ovn3+gVCYD81mAQa7wkJ4TWtjHLTA0qrGC8SKmGeTt4=
X-Received: by 2002:a81:4312:0:b0:5da:2235:493 with SMTP id
 q18-20020a814312000000b005da22350493mr3478692ywa.10.1702033469187; Fri, 08
 Dec 2023 03:04:29 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org> <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org>
In-Reply-To: <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 13:04:18 +0200
Message-ID: <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_030433_379747_BFAC8578 
X-CRM114-Status: GOOD (  20.85  )
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

On Fri, 8 Dec 2023 at 09:47, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 07/12/2023 20:16, Konrad Dybcio wrote:
> >
> >
> > On 12/7/23 17:51, Krzysztof Kozlowski wrote:
> >
> > [...]
> >
> >>> +allOf:
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - qcom,x1e80100-dp-phy
> >>> +    then:
> >>> +      properties:
> >>> +        phy-type:
> >>> +          description: DP (default) or eDP type
> >>
> >> Properties must be defined in top-level "properties:" block. In
> >> allOf:if:then you only disallow them for other variants.
> >>
> >>> +          enum: [ 6, 13 ]
> >>> +          default: 6
> >>
> >> Anyway, I was thinking this should be rather argument to phy-cells.
> > I'm not sure I'm for this, because the results would be:
> >
> > --- device.dts ---
> > &dp_controller0 {
> >      phys = <&dp_phy0 PHY_EDP>;
> > };
> >
> > &dp_controller1 {
> >      phys = <&dp_phy1 PHY_DP>;
> > };
> > ------------------
> >
> > as opposed to:
> >
> > --- device.dts ---
> > &dp_phy0 {
> >      phy-type <PHY_EDP>;
> > };
> >
> > &dp_phy1 {
> >      phy-type = <PHY_DP>;
> > };
> > ------------------
>
> Which is exactly what I proposed/wanted to see.
>
> >
> > i.e., we would be saying "this board is connected to this phy
> > instead" vs "this phy is of this type on this board".
> >
> > While none of them really fit the "same hw, different config"
> > situation, I'd vote for the latter one being closer to the
> > truth
>
> Then maybe I miss the bigger picture, but commit msg clearly says:
> "multiple PHYs that can work in both eDP or DP mode"
>
> If this is not the case, describe the hardware correctly in the commit
> msg, so people will not ask stupid questions...

There are multiple PHYs (each of them at its own address space). Each
of the PHYs in question can be used either for the DisplayPort output
(directly or through the USB-C) or to drive the eDP panel.

Same applies to the displayport-controller. It can either drive the DP
or eDP output, hardware-wise it is the same.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
