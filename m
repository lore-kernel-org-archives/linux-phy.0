Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C652CEF14D
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypGK/ptyHhfbHtKqEVA84e0G1nrZV98gqmm14NVYfEY=; b=rL+BEko5AmObzh
	ozfBiVP9wApIBLvYtbA4U8ChhUWrwEYpmq+92lT+cB3XaoLaA6cO7sa9z4oZ38kGENd2Y8vv0i2iJ
	MEBESBoE+O9/v3xfT21Btyj4Q5qa2WeEOKmGIWXvIodDHV8X4dyfQZ17subppPnE1+GJxF5vG8cmr
	NwbdeipRTYe/9gtantM+zByX4ofHNsQbcXa86/xyY5WbeQDcIFLVvkvkCSwyMmMOec4ce7qhAqyBp
	CAkOjBfjfkJ7d9bYrVvjjyDh/pkayawDeeom7QMZj5cTF8l/QN6LcEB3WqAj3gnxbHqJerFtd7It4
	epd683iS0tqkNkNeLgBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7av-00000005TkX-02fo;
	Tue, 08 Oct 2024 10:37:33 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7UU-00000005Sr5-2Ddo
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 10:30:56 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e3ba403b57so3232885b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Oct 2024 03:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728383453; x=1728988253; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RaHMxhDG9Q5VfYwqCidMK07jWJtcWPqFxkIOCBw9G7M=;
        b=UaaWEqzba3BCM6RAIEE9bJceejmgAgTQ67xokwNdEZHCumLQ8sJ4xVdNCK6yX294l3
         7zmVO2+1hOESXhi6olxVrrMfJTSXAnTzJds2YLRixhS0L5VczKd0eJcUF/A8Jb1FUqck
         JlaDTmwzg7RUS+AAf72xSvGQoMeZ3w9ZvFfLjjtkITmpyl1IjSji0QtLxzOhtE8Ibf5f
         icEFB33zIF2hb4dZ/k4G7oNQpfJ46Lu7io1Ic7QDRCWuEcgpy6yCB8ab1ozudZkaAslI
         ikCLdWjiZvnT5nkUYepaREHCyokxk3Dym8EwV7ckcqB6XpCQMKyBrBCihM3wjPyw31ga
         o0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728383453; x=1728988253;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RaHMxhDG9Q5VfYwqCidMK07jWJtcWPqFxkIOCBw9G7M=;
        b=rsdv/QlB6HQhhR3xnc5vN36/TvWis7w6jVUYjiPokznz7qm/Hwx5v5d0mRY2nAVtQX
         egnlwtf1/KsQaH3NDjNYoUlwHh77Z6EGLxH27v0tW6Wrfh5ty773fphxb3LpuSeX5Xf3
         y4jDxmy3X2KSRCvV7tX5AU5OA4jaNxTnK1qOKEbutg9cv9YKVeajTpnfDgPkcBU4O5S+
         4+P3jZ7oaBqoTmMbLd1KEo2Jv1BV236EOJOZyH1TUGB2ummD2CIB3N8ojrWkwoV9C00G
         sm7UTLtTXNQXpIYeYhprgVLQTqKrS65Idjs0LONK65IspWvW6VmEqKppwUmAxMfcAOoi
         2+oA==
X-Forwarded-Encrypted: i=1; AJvYcCXH02DPTKoyR4Oq61fIJJEJGoisVuoVBCd5q+GOEM4EiAcGDapCs+zeBkvUTUjCSw4FK/Ok4ucK338=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWR8fFA1Yt36buGLXBBx1itisytiB4Eo42orxNQ9uzxXwwX7+/
	LQyHSCEMjXs0CNa6v6T+YTHnWPzf0DJnzHD4Two1SXgPhmF3p4g07x33u1CoYEr2Tre4V4ZoxoT
	IWUfQ3ztPfWQW8FTuFi2kq4z0y3C4YKWvXeXFfw==
X-Google-Smtp-Source: AGHT+IECvbGsHbDZVwRBHFdZOxOBV8fzhLQbc98HH+KbY0vj5cIu1DHOWiwPL1MGN/TExuJHK09aKSFF/Y+e5zkJckg=
X-Received: by 2002:a05:6808:1927:b0:3e0:49c6:d580 with SMTP id
 5614622812f47-3e3c177c251mr9658210b6e.33.1728383451979; Tue, 08 Oct 2024
 03:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
 <20241002201555.3332138-2-peter.griffin@linaro.org> <ZwN/d8l7Mk6x2GHP@vaman>
In-Reply-To: <ZwN/d8l7Mk6x2GHP@vaman>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 8 Oct 2024 11:30:41 +0100
Message-ID: <CADrjBPrRrwEyg0p+6kfVoZGbPdvW6K3fa9paUoLyg_bHHScgHg@mail.gmail.com>
Subject: Re: [PATCH 1/3] phy: Add UFS phy hibernate modes
To: Vinod Koul <vkoul@kernel.org>
Cc: kishon@kernel.org, krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, kernel-team@android.com, 
	willmcvicker@google.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_033054_851873_852273BA 
X-CRM114-Status: GOOD (  25.85  )
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

Hi Vinod,

Thanks for your review.

On Mon, 7 Oct 2024 at 07:28, Vinod Koul <vkoul@kernel.org> wrote:
>
> Hi Peter,
>
> On 02-10-24, 21:15, Peter Griffin wrote:
> > Some UFS phys need to write hibernation specific values
> > when entering and exiting hibernate state.
> >
> > Add two new UFS phy modes to the phy framework so that this
> > is possible. One such platform that requires this is Pixel 6
> > which uses the gs101 SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  include/linux/phy/phy.h | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index 03cd5bae92d3..1874e55e2bb9 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -42,7 +42,9 @@ enum phy_mode {
> >       PHY_MODE_MIPI_DPHY,
> >       PHY_MODE_SATA,
> >       PHY_MODE_LVDS,
> > -     PHY_MODE_DP
> > +     PHY_MODE_DP,
> > +     PHY_MODE_UFS_HIBERN8_ENTER,
> > +     PHY_MODE_UFS_HIBERN8_EXIT,
>
> I am not sure I like this. why should this be the model? Phy drivers
> should listen to pm events and handle this in pm_suspend/resume calls,
> why do we need this special mode here...

There are a couple of reasons I added it here:

1) Whilst link hibern8 mode can be used as part of runtime PM and
system PM, it is also used outside of those contexts by ufshcd.c. The
host controller can enable UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (which
will be the case for gs101 / Pixel 6) and the UFS clocks are gated and
link put into hibern8 mode for periods of inactivity. When that
happens the rest of the system isn't entering any sort of sleep state.

2) From looking at the existing code upstream ufs-qcom.c and
phy-qcom-qmp-ufs.c look to have similar requirements in that it needs
to program a set of specific register values depending on the UFS
gear. To achieve that they added PHY_MODE_UFS_HS_B and
PHY_MODE_UFS_HS_A modes here and then use phy_set_mode_ext() API in
ufs_qcom_power_up_sequence() to signal to the phy driver the UFS gear,
which is then used to choose which set of values to program to the
phy.

The two new UFS phy modes added here for hibern8 are for a very
similar purpose (to choose a bunch of register values to program), so
I considered it consistent with what was already being done upstream
to signal between UFS host drivers and UFS phy drivers. Arguably I
guess we could have one "mode" PHY_MODE_UFS_HIBERN8 and use the
submode parameter to indicate whether we are entering (1) or exiting
(0) from it. I wasn't really sure what the rules/guidelines for the
submode parameter were though.

Thanks,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
