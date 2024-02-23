Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3660FC5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 14:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zT9YLW4vMoOUgiC4mV0ah/vOC2XFe59ZLEqO2pP6O5A=; b=4pckr3PcyGj0vt
	kPUNmeDmBki8YSUqL9EDVePQuBTPpFu0cUY1oduohC/dSvD0EPUZ+s9c+kkluO1jbdGAOO6fyPp7K
	zzOZkV0o7fWGoORIp5iFZjeCPQMznhHW9cMOYWpKBcs36anaaGt3tBXYWK49bmU5Sa1h8ZO3GoEQo
	GK4oFDgm7A97QIsYtFJTv6U2MkLkHugoivTbSBDCwCh2IsWb/3/lYcNrahRUB41EcCrLZWokKxREQ
	/wJrXLtLy/Ta5Q5dPjbFPmfpdCWZ0XIUuet2ED3RHJSSRkbGI6Wcz2inWZo8OZ0n2r2BTnkxQzuml
	pcxEXS7yRoQhusfHesBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWNg-00000009jAm-3ijn;
	Fri, 23 Feb 2024 14:18:28 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdWNd-00000009j7L-3cfd
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 14:18:27 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dcc73148611so927241276.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 06:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708697900; x=1709302700; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R19d00zAe0ESb2W1wfQWoMVwkbh2mKJoTeu+62qXKLU=;
        b=XuPCr4TrPcHQWIhn3GSw8ZzMFVfdoO1EUkG9cb04gitLCqAy5HAXeUIzUY+Xc1Mq7/
         XFsJNluA6vbArZuGSgkTZQOXLZ7aOEoO4aiGxYxg0dw9AXdlYr1Xv9+bXXbWZ3+LrLtn
         xxrkdTA8NElWWlBw1K/JRR79DsdBA9bzSXh70Wttgha50J9jEi/1VR+CwqZeMmL86aDv
         xMNHTOYouBERw7eyVIlDjns9GnUQ25m3sf48Dv7uYnGcnV5OI9LzERb0QHaQrJgq0bkQ
         A/9LF9FKvZCptgzOAH97Ito/VJrmG4LO/5pLDcwkOFxSAhktMe878k3VXW3SnpPec1kD
         P1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708697900; x=1709302700;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R19d00zAe0ESb2W1wfQWoMVwkbh2mKJoTeu+62qXKLU=;
        b=voF+FZ8Yts70Aqy+aEAfm2zyaR6XOWXDKgAReWMMuVHGfjQRJ9y52+bDgqF+RrFKnD
         +rDRuofIV/V976YUh/LuDQ0r3rJ/CxJbnifavn02lpAAZRaMm3v3ti36CQKOFFuPoHq9
         jrsylBQsU5FpR2za9A+FdMmI1CpgD9UOXvlc1MH0dFUm2OEJGL2Idis7nIqJi8cNnhZn
         c2FtwGFqQNfF47tO/4/XEu//4qdl/kZcTOQm5kvOpd76uGcOQAUysAMcbAPyqdsnByEh
         gG1fTNJoTBmjNbJn80cNbhiC5ZFHoDZEPAq0e8rFtI0tgRJy1Krogq03VtfaLOLKXWac
         iiQw==
X-Forwarded-Encrypted: i=1; AJvYcCWGCblvZatKFM9AHdYBPszjKwpCYJxcekdNr4xz3HDeKmGSaXKvmVXTSw/u6riK2ScxnGaplgloeKqp4xU1LeD2dQ1wDvhfYx3UtkcqOQ==
X-Gm-Message-State: AOJu0Yx4N3omeZgDbOuUkw8pAUa04WVIq1aovVBKaY/0my6K3XYTN7Xa
	ETuzqdYoSgZxhVs+ADMLQOBZq15mpQBlXvvnUy6SifaLtd62i5v1R1hEMV9jzgmeJB+0LfLhwSb
	Fg5ncBGb/Ii1vCGRha0nq1h+csPAUueZFZw5lPQ==
X-Google-Smtp-Source: AGHT+IF70UF5LUoWVCUdf5eKhR2KmxVP4WJANJz9muRW2tleCLa7psg2DI+FTnDe298CK4P04Z21/Fhm5EKyGZLzPvY=
X-Received: by 2002:a25:6b03:0:b0:dc7:32e5:a707 with SMTP id
 g3-20020a256b03000000b00dc732e5a707mr1990018ybc.61.1708697900641; Fri, 23 Feb
 2024 06:18:20 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
 <3c4246b6-431a-442e-8ace-3b0d0e67743f@linaro.org> <ZdiU2z8rzo542_Ih@hovoldconsulting.com>
 <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
In-Reply-To: <d4049823-ad24-4426-887b-9c66cdd96318@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 23 Feb 2024 16:18:08 +0200
Message-ID: <CAA8EJppYHdSmsWMk-u=QaAaHWqjFj8zs4CF947eeex6iV4dsYw@mail.gmail.com>
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
To: neil.armstrong@linaro.org
Cc: Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_061825_948448_8F1DBEA9 
X-CRM114-Status: GOOD (  20.94  )
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

On Fri, 23 Feb 2024 at 15:52, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 23/02/2024 13:51, Johan Hovold wrote:
> > On Fri, Feb 23, 2024 at 12:03:10PM +0100, Neil Armstrong wrote:
> >> On 23/02/2024 12:02, Neil Armstrong wrote:
> >>> Hi,
> >>>
> >>> On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
> >>>> Starting with 6.8-rc1 the internal display sometimes fails to come up on
> >>>> machines like the Lenovo ThinkPad X13s and the logs indicate that this
> >>>> is due to a regression in the DRM subsystem [1].
> >>>>
> >>>> This series fixes a race in the pmic_glink_altmode driver which was
> >>>> exposed / triggered by the transparent DRM bridges rework that went into
> >>>> 6.8-rc1 and that manifested itself as a bridge failing to attach and
> >>>> sometimes triggering a NULL-pointer dereference.
> >>>>
> >>>> [...]
> >>>
> >>> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)
> >>>
> >>> [1/6] drm/bridge: aux-hpd: fix OF node leaks
> >>>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
> >>> [2/6] drm/bridge: aux-hpd: separate allocation and registration
> >>>         (no commit info)
> >>> [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
> >>>         (no commit info)
> >>> [4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
> >>>         (no commit info)
> >>> [5/6] phy: qcom-qmp-combo: fix drm bridge registration
> >>>         (no commit info)
> >>> [6/6] phy: qcom-qmp-combo: fix type-c switch registration
> >>>         (no commit info)
> >>>
> >>
> >> To clarify, I only applied patch 1 to drm-misc-fixes
> >
> > Ok, but can you please not do that? :)
> >
> > These patches should go in through the same tree to avoid conflicts.
> >
> > I discussed this with Bjorn and Dmitry the other day and the conclusion
> > was that it was easiest to take all of these through DRM.
>
> I only applied patch 1, which is a standalone fix and goes into a separate tree,
> for the next patches it would be indeed simpler for them to go via drm-misc when
> they are properly acked.

I think PHY patches can go through a usual route (phy/next or
phy/fixes). For patches 3 and 4 I'd need an ack from Bjorn to merge
them through drm-misc-next or drm-misc-fixes.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
