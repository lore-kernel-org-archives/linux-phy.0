Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F833C5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 15:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6RfQa8h2MkOEz25wZxtLuczwpQEKDqKySJgfuHbaxY=; b=qHryRJWDb/5htz
	dxxN2F41ctgfyBL5D75wu155zD/dEjT37+0wOZpva+IsQQ1vpPpJZpcRqmJOfemI2VUMDEnnz6BWr
	v0LPG3DGdVNrF+B1V8gQscrBSm95tPwbHBUroxLO8qB1Fxm8YOnH9WPH0fx16whaBw/eozUh2bDmc
	3Kp/SJFalOmYPktCVhh4FSlHYVlUQBZSfrzl/dcolCT5Rfl4VNST/WrxxfdDxn9cKsA0ldEBDgEMo
	IrEfaFvFsepcG2pqx/KCQziSLPeG0jkc8Jd+cFdxAuizv8k2ks5Pvfb9+ip2LRGisuyIk77sUA1x/
	nGbCkLY4CUkGNBON2xuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdX9U-00000009uo4-2EBB;
	Fri, 23 Feb 2024 15:07:52 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdX97-00000009ujj-2ulX
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 15:07:34 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so871147276.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 07:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708700846; x=1709305646; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A7N/x1XZZ13w/J9RvBvRRguBA+rtWAzOoF+dbMHjtzE=;
        b=CsXfLypqB4chToLpFW7K44rxO1wV+jOIMKTvogtKgI5dKDDR2eDCl+1OnIY4l6T+pj
         Kkdoq2+p6EjkeFmunQtsC+8URn7TS0kGHjwrOyrPV4M7luAzZ0wB8kizZTBk7AOjygQp
         k0iO7j7ZMZpEeMKTS7QnGLwgSNjd2jeSYtoCF5WiitV/Pc5szuHa8xL+9n8yJPWQsLnZ
         Nd2VqwsapRuEhP5iqW8iqgpjhDA0nvqWCwZ6qcg+uLS938iSI8r90cobyo4HKJJ80QRC
         g1kGTmR/VdB/xT60agcAZ40nARlowA5LUeRKF2YIdZzWGK6jgKAZmjalz5maoXlPgih8
         Me2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708700846; x=1709305646;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7N/x1XZZ13w/J9RvBvRRguBA+rtWAzOoF+dbMHjtzE=;
        b=La2KavdKd9I9UJit6RdSXshrq4imel/ttg56VlIfdhaz7Kk4PKZGJd9DZyhFLixVpl
         vu1KPs49ZFC2x4f9zYuOW4HjVohfX5UyyEGRsI1S8Ze+3TyVi1U0vQhx9z2WRXEzOzBP
         Y75CpB+r4iZi/dAbA8Tt5kFG+RrCOAhzPpOk6NkeQhVmausrtuMDIqvTxzsJ1aVqRLXp
         NODR5MRrflpe3k9r4qsD+MNZq0M2gNO7SGKd1d+Bpe19+qJRM9xBDXuW5S/dHZ+hWr+n
         bMw7hE3tkPOzU7u+718LyGN0BjG+xpfs447TGs+n+c44fsJ5lGM9deggvvG15LBC67AB
         7Rhg==
X-Forwarded-Encrypted: i=1; AJvYcCXU1lOvgghEm+OutyjySieGIZgjOlpKWB4IS0ZygD9GOF2+2lDCkHs+i57U2yv4/2Q0+MfIc/UqECM76iWWWTYaCEHbDlu8WH8Os60zvQ==
X-Gm-Message-State: AOJu0YwH+ODycN2ScXDEI9VGEJaSiV/e3m85xae6rUBFVYqUY8IBjymW
	52lZ84RPooEl/U14SJCKO2jopOo3aLg6d8vD2zIFPEG7quMI0qwDmNWoM+Kpn61PbVKAl1mH+yy
	mEBKXH+TNlMZkrE0JZCDREK0jSyHu/JB2zKpg2Q==
X-Google-Smtp-Source: AGHT+IHVp3IoavGMPyTgcYZAB/4X0W31P+xAKxbr9Gb+QsxAn1gv0v6QzKKvAYqZ5A5+yYWrSQ0bJyPW0Vw0YbTeOKw=
X-Received: by 2002:a25:86d1:0:b0:dc6:e75d:d828 with SMTP id
 y17-20020a2586d1000000b00dc6e75dd828mr84838ybm.18.1708700846276; Fri, 23 Feb
 2024 07:07:26 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
 <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org> <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
 <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org> <ZdiqAPPTn9SvsjL8@hovoldconsulting.com>
 <77715ecd-ddb9-450c-98bf-4fcade0e81c0@linaro.org> <ZdixFo2EjUQDgeFh@hovoldconsulting.com>
 <b5401b19-09d9-4907-86d6-9aab9dc2970e@linaro.org>
In-Reply-To: <b5401b19-09d9-4907-86d6-9aab9dc2970e@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 23 Feb 2024 17:07:14 +0200
Message-ID: <CAA8EJppJL7ha8AQ7g+_b=0omcWRnTpjRc655V58FKoowUDRPeA@mail.gmail.com>
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
To: neil.armstrong@linaro.org
Cc: Johan Hovold <johan@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Bjorn Andersson <andersson@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_070731_153731_C383B37A 
X-CRM114-Status: GOOD (  23.38  )
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

On Fri, 23 Feb 2024 at 16:55, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 23/02/2024 15:52, Johan Hovold wrote:
> > On Fri, Feb 23, 2024 at 03:38:13PM +0100, Neil Armstrong wrote:
> >> On 23/02/2024 15:21, Johan Hovold wrote:
> >
> >>> But it is *not* standalone as I tried to explain above.
> >>>
> >>> So you have to drop it again as the later patches depend on it and
> >>> cannot be merged (through a different tree) without it.
> >>
> >> drm-misc branches cannot be rebased, it must be reverted, but it can still be applied
> >> on drm-misc-next and I'll send a revert patch for drm-misc-fixes if needed, not a big deal.
> >>
> >>> I thought you had all the acks you needed to take this through drm-misc,
> >>> but we can wait a bit more if necessary (and there's no rush to get the
> >>> first one in).
> >>
> >> If you want it to be in v6.9, it's too late since the last drm-misc-next PR has been sent
> >> yesterday (https://cgit.freedesktop.org/drm/drm-misc/tag/?h=drm-misc-next-2024-02-22)
> >>
> >> Please ping Thomas or Maxime, perhaps it's not too late since the drm-misc-next tree
> >> really closes on sunday.
> >
> > I don't want this in 6.9, this is needed for *6.8* as this fixes a DRM
> > regression in 6.8-rc1 that breaks the display on machines like the X13s.
> >
> > If you guys can't sort this out in time, then perhaps Bjorn can take
> > this through the Qualcomm tree instead (with DRM acks).
> >
> > But again, this is fixing a severe *regression* in 6.8-rc1. It can not
> > wait for 6.9.
>
> Right, I can't apply them right now, I send a patchset ack so it can be applied ASAP,

Applied and pushed patches 2-4. Patches 5 and 6 can go through the
phy/fixes. There is no need for them to go through drm-misc tree.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
