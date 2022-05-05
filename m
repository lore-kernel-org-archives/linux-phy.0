Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF830C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  5 May 2022 19:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vob3a8HBzoWLBPEN9iFNsuEEYJX3l5LPZzLhAiec2Jc=; b=Sk46PjJ8VjMx0X
	+bqzKOQxjK5l2rAZGeDWVaKnRXba9UGu+CmBrOsw1w9srbCOt0pnEMYh8VSqDFjVpLktMSXPRUe/d
	+gvyv3Kdo5Vt7+MlbHia4VuIrZt3QYJWZJWZDJ6PGdDEC6iSUo8a3T8ZB10z2l4NR163s82QeU6Wi
	3qHxpgzSc6ZiOvMXuSXIQbWzwpYMweByJtxsbU9+IwTU5MnBHC0TpW1o2QQWyu9A7+lDmCwaJs+7E
	aRHMBpohR4C+l3CztKzS9XGDYYmTbNrdzflevoyNpJSmY4aiE+uCNrK9XYQpxibzBc6VVjV2PVyP8
	jYoK0t3lsWhaKorMOW0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmgnp-00HSAk-72; Thu, 05 May 2022 19:06:17 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmgnn-00HS9T-1R
 for linux-phy@lists.infradead.org; Thu, 05 May 2022 19:06:16 +0000
Received: by mail-oi1-x231.google.com with SMTP id l16so5295456oil.6
 for <linux-phy@lists.infradead.org>; Thu, 05 May 2022 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=D0hIIaQCI/Dh7yD1DKDpvDpYdxU4Kww1YfWBC7PJ66o=;
 b=Y5TZ8gwH28OUdcotbTOTVpcbR4pDhTI/YaqLz24TF+cgaEBsGrcHfKJ6FBpz5fI8YD
 0ZQoF6vw49X7WRHB1KNIwNnaHPbGRAeoDQ27rWR0fcMzDbA4qQ8IRsYiuu1tu/cgCh6i
 7ztBLJfvDKa2BhXMW2eS+XrHhX8up86RwTwaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=D0hIIaQCI/Dh7yD1DKDpvDpYdxU4Kww1YfWBC7PJ66o=;
 b=UTaAfTCoJlbSDzpjsN5REtXqrb95iFpzZjWfkfJj6ksb+wnWuNHNbTfxA/wAphF6+I
 kUqJzxoJA+6Uwnz2NclmmtYtZyDbPkpBe2Q4YZPBmMBv1/E7fMuI4A8vd/FgIwBfTjZd
 Nv8xPupRvaXFQ57ShwH7etSJQ/RgN9U62zVYOy2hopzSWju455VCSKCKQOmiINavIxn4
 QV4kY6WTV5gM2YO6f6U26ANFkLdU7EQqWylLbdNFtZBWAVjuwsGejBrkdR+R5Hu0dDcf
 lWOyRLlHMx28BHypIufCqqb+nlEL3Ya1/jcgfu4vihQcKgBjPxmv1mKpQhxGdew3eQf/
 lmaA==
X-Gm-Message-State: AOAM533I+4Nz4mhrXwctePCTwjsciaksoBc0A3p4IvOFlTuBniRW92/O
 GGCj9VV5xNJ7houy/6syuxAwjbaJoPHn/IFv2yioRg==
X-Google-Smtp-Source: ABdhPJynlWjxd2luIxa71ND0gePgQJv4YZ4ySZIIn/1gXDonkO41PQ/jE3q3+0goFTuJnjQr8o6y5FLtPhweRHmec9s=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr3286599oif.63.1651777571605; Thu, 05
 May 2022 12:06:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 5 May 2022 15:06:10 -0400
MIME-Version: 1.0
In-Reply-To: <MW4PR02MB71867A18732B266DE8FA2040E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
 <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
 <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
 <CAE-0n51Q=cGwrMec3JEQENqWHV3pAUjLPT6RwZLA5xV080sgxQ@mail.gmail.com>
 <MW4PR02MB71867A18732B266DE8FA2040E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Thu, 5 May 2022 15:06:10 -0400
Message-ID: <CAE-0n53MEBYhyRtGWOCmjj923UQU_iVE_SEBQw6_FUci8NLz3w@mail.gmail.com>
Subject: RE: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
To: Doug Anderson <dianders@chromium.org>,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 freedreno <freedreno@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Kalyan Thota <quic_kalyant@quicinc.com>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@linux.ie>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_120615_137384_E58FE73D 
X-CRM114-Status: GOOD (  16.06  )
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

Quoting Sankeerth Billakanti (QUIC) (2022-05-05 11:47:20)
> >Quoting Sankeerth Billakanti (2022-05-05 11:02:36)
> >>
> >> Our internal power grid documents list the regulators as VDD_A_*_1P2
> >> and VDD_A_*_0P9 for all the platforms.
> >
> >Do your internal power grid documents indicate what these supplies are
> >powering? The question is if these supplies power any of the logic inside the
> >eDP controller or if they only supply power to the analog circuits in the eDP
> >phy. If it's the eDP phy only then the regulator usage in the eDP driver should
> >be removed. I would suspect this is the case because the controller is
> >probably all digital logic and runs at the typical 1.8V that the rest of the SoC
> >uses. Similarly, these are voltage references which sound like a PLL reference
> >voltage.
> >
> >Please clarify this further.
> >
>
> For the DP driver using the usb-dp combo phy, there were cases where the usb driver
> was turning off the phy and pll regulators whenever usb-dp concurrent mode need not be supported.
> This caused phy and pll to be powered down causing aux transaction failures and display blankouts.
> From then on, it became a practice for the controller driver to vote for the phy and pll regulators also.
>

That sounds like USB-DP combo phy driver had improper regulator power
management where aux transactions from DP didn't keep the power on to
the phy. Where does the power physically go? If the power isn't
physically going to the DP controller it shouldn't be controlled from
the DP controller driver. If the aux bus needs the DP phy enabled, the
DP controller driver should enable the phy power (via phy_power_on()?).

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
