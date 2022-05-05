Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 807CFC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  5 May 2022 18:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mF3pPo0hfR6rkAbOAax9WzcQrCCiaHaY6SC+tibxySk=; b=W9+1Aq2uSI465d
	gK262rtJRiear6W5LyzNvMhGbU+cfBqdPXzVGJPQAf806flUDFOE6W+CxYdk1dNIJSB4+FrlzjBAX
	nMDdDvGEKK7LXyFn5DQq2uB0Pq+PAeIyKkWiFWoXWdFLB64hQuonPJyviD2ebvbHz3MElHpXkIOdy
	93Mh95qC/LhXPAx25B7DOYfFu80pLVCVNMWv0f7hFSJ0q19h58xczC9HLnkAV0EECWJlfzcPFSqd6
	ffg0uO8Y+NbF4lL/A55zDIeyLFiIdVjIO/0+68dZEQJz+MJyhe/JTAXf92EB1fF8qBSZIsQllA4/m
	IGc6FSkp7OMIdaDGsTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmg3S-00HIQy-Uw; Thu, 05 May 2022 18:18:22 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmg3P-00HINe-Hx
 for linux-phy@lists.infradead.org; Thu, 05 May 2022 18:18:20 +0000
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-ee1e7362caso909212fac.10
 for <linux-phy@lists.infradead.org>; Thu, 05 May 2022 11:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=1jpEHyGirjaqNUVRP1nz/MiyeczcMtRZCBgdvFueFbg=;
 b=dNocJH2pm51w2sdCBeubcHoBirqMpP4BeW10hHVrgouUJomu19MuSgDP10MAcJT1nj
 mBhKXkC5eceOPxd/JNxBGm0skq56M6pzHm1+7vMA6y1XdjmY/oQybSc78dHVxPuR11wK
 kQeBG67nLfix9PfNYpH8hazatCrGvl2JUyXw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=1jpEHyGirjaqNUVRP1nz/MiyeczcMtRZCBgdvFueFbg=;
 b=60tKLvQ7o5y597UfSHgSBaTMPU2Hs0ILPf2uYngVE0Sb8CojiFo77aNFTyQlNybqpN
 qdcjtAoHQLSVhsijw9FGBxSieJFq4T0tyMOCeqxmbWPaLmSNGqb6Uml8dBs3zhqbPfKz
 i//QmITw1z2a2XiW0UXZqlWcMqROo5pNqNw8znoJCKFx1k6IakGDfpxQpDJzesQT0xHb
 HqdoxM2KNyOayMUG+W8En5SRAgwm9PwZ/8DDJg0c8oUMdaQ49y3qtOINP0xsX3BRhCI9
 nu53P1kBlW0YJiugl4vc0HACgarvV/2D2+3y0+PDMiHQMi01dZN5KIRC4wd/EGVT9V/M
 mbpQ==
X-Gm-Message-State: AOAM531Zcgvgn551MwI2CJfcE1qwHKv5MKM1oeEnXddIWKbXbcnFcYX1
 pUjRUzbkkIDqwfEg/s8Wm6pMjWqtH+G5N4Dyrrcn+w==
X-Google-Smtp-Source: ABdhPJzMp5CHlTo8w5ux98tGyd6+gy+uiMp3v8K0Hb9IdRobOQWLGqnf7677jht+CONLIgkUYNLz7u6VoaG/olKYp+g=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr2956854oao.63.1651774695213; Thu, 05
 May 2022 11:18:15 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 5 May 2022 14:18:14 -0400
MIME-Version: 1.0
In-Reply-To: <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
 <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
 <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Thu, 5 May 2022 14:18:14 -0400
Message-ID: <CAE-0n51Q=cGwrMec3JEQENqWHV3pAUjLPT6RwZLA5xV080sgxQ@mail.gmail.com>
Subject: RE: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
To: Doug Anderson <dianders@chromium.org>,
 Sankeerth Billakanti <sbillaka@qti.qualcomm.com>
Cc: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 freedreno <freedreno@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Kalyan Thota <quic_kalyant@quicinc.com>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@linux.ie>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, 
 devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_111819_659476_7D06CF28 
X-CRM114-Status: GOOD (  16.54  )
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

Quoting Sankeerth Billakanti (2022-05-05 11:02:36)
> >>
> >> Quoting Douglas Anderson (2022-04-25 14:06:42)
> >>
> >> Having 'a' in 'vdda' typically means 'analog' for 'analog' circuits,
> >> so I'd expect this to only matter for the phy that contains the analog
> >> circuitry. It would be great to remove the regulator code from
> >> drivers/gpu/drm/msm/dp/dp_power.c and move the regulator_set_load()
> >> call to the phy driver if possible. Hopefully qcom folks can help
> >> clarify here.
> >
> >Interesting. Oddly enough, the sc7280 datasheet doesn't list the "_A".
> >It calls these "VDD_VREF_0P9" and "VDD_VREF_1P2". However, on the
> >schematic in front of me someone labeled these pins on the sc7280 with the
> >"A". ...and the driver looks for a supply with the "a". :-/
> >
> >It would be good to get clarification from someone with better information.
> >
> >-Doug
>
> Our internal power grid documents list the regulators as VDD_A_*_1P2 and VDD_A_*_0P9
> for all the platforms.

Do your internal power grid documents indicate what these supplies are
powering? The question is if these supplies power any of the logic
inside the eDP controller or if they only supply power to the analog
circuits in the eDP phy. If it's the eDP phy only then the regulator
usage in the eDP driver should be removed. I would suspect this is the
case because the controller is probably all digital logic and runs at
the typical 1.8V that the rest of the SoC uses. Similarly, these are
voltage references which sound like a PLL reference voltage.

Please clarify this further.

>
> So, as a practice, we put the same name in the DT files. Hence,
>
> Reviewed-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
