Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F8AC3271E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 12:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEWMBTD7I4GCkIztvLgNn2N2uvUDY+o18VoOn6CyZ28=; b=NiPJrsBZUMhhq6
	xJ0KrbTcvd9haVQ0Jim5WUsF7cLGiN1IBavxyAW1P8f2DZiLxKB1mlNNUcuIdzNe1W0oieHkp825S
	tGnF8p2W7ZMM/LNtl11h9g0MZAjoU12qSAvGwFpvPspUFWmOzzyZ0O+uuvOwt3eCznQ/DNtahIL2J
	nu0hWbJAyQydlnefE8szvhppA1cptHXpKgfICAehfa305ZcNT8xiVs8y250xcbEynpUaZM19jHW0p
	7l7TeSiB7mCOGB6uomXyoeac/CY6jhb37Sx1AkQT2OlFLMYBj9exXjuQC5V3x/NoUtgPRRk9KSyVv
	ZbofVloqAl5PssqAjLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQnoK-00000003qZr-30bp;
	Mon, 08 Jul 2024 12:49:40 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQnoH-00000003qZ6-1Ya6
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 12:49:38 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2c1a4192d55so2109971a91.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 05:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720442976; x=1721047776; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gwJfqVEIoVdfoTsztHNlaZf6K08VAN240cdWOXUU17s=;
        b=eXZyMZfiRMzZkezvAT6X+naqqkc6lqOR1IjDgdr02Jt5C6rtGCy2lqmEzcp+YNdvg6
         KEcwPZrzBEOZpWv8OK4mFzFkiavMglNrUdVxl4KheEaOyDfvbMXayzaosI/6eVY1jKQm
         OofJ1XGI/mfLhzUvvCsL1Hp4Qy0x0HVrx32b6mEz7z0RJwRALJzJOcjTO1VLGhKAPdwa
         +F3DYYnH8FcdTQFHmtL6vP7h60ac+5ptGSC6jM5xpHB6sbIU+JphZJpn4YP6+RtfwlFa
         8/vGOsLyu4d6by8dmWR9V1k07E/quKxiQgnEDuMk9aMwiz13eqRyIAhnIDxgvl2Lku/E
         UzdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720442976; x=1721047776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwJfqVEIoVdfoTsztHNlaZf6K08VAN240cdWOXUU17s=;
        b=q+lkDogo+wJFmZ2KwsiLizl+O5DcCwQF8ntm5wiVs3cltWsoW/4RWJyRRCJ4KQYyxZ
         CkiNGGT4iHl+Y6NNcxo5QcMZx1M/+yVW31ECFwnq6Qk6HSy1YI8hLxyRhIeBUuezG7VX
         7ahRWNpUzoJWjy/Q+PgN95fYiN5q8c3erDBY83a9e++JUcgmKgyyUHzHpjjKjAqZS1fE
         9kfb79+zQvq/OGjLaJCXN21UJIXagDi9L4hAlike3zzXD4aYIBFRs/9bQrcV6SKTAhi+
         HqAr8knqecVuVUbXhOIBHmFtAwGbTgZFxYngvufP8JxQEHAkAZCOVvW9rf8NJ4ugUILN
         veTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmwuYr+z4BWuylhE+P7Td/yKTW8AHqETYKFdCynGYb0DoDtFNuwkkDoNcR3gRT5Bnv+uHaP9q34PDghnWowaubDB55uMUTI1Ssu3NyWw==
X-Gm-Message-State: AOJu0YwykUTiMdAc3DjAqxRel1H0MSGkfUXpYXKTD3yAJeyFeWcg4kJ/
	/hrVxFaX/xmdkvNYJL5dKItefgrPzuV3j8BWKONgPr/p8ar7mvRPZIpqB5b4dMxP9jcMQ9NgC2l
	QWnR5liUFXkqcswGGijfhhXmyJEgPEhWbhBAcNA==
X-Google-Smtp-Source: AGHT+IFh+8rVNSdILFoJSTAPdcM4HawcWPM/1UUqpARio3DoOIhOeIUZ96MzfeyAZxWq+ws/d6HRKhGtmB30W5rYgpQ=
X-Received: by 2002:a17:90b:a4a:b0:2c9:6751:7539 with SMTP id
 98e67ed59e1d1-2c99c6ba8cemr6298715a91.44.1720442975629; Mon, 08 Jul 2024
 05:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr>
 <5lbtymde3plfiqkvnd2lrjzxhengmsw242uqapnzpvfd5jrm25@x2ik2h6vrdxm> <2d21db63-4371-45b4-ab24-9a725c29e09a@freebox.fr>
In-Reply-To: <2d21db63-4371-45b4-ab24-9a725c29e09a@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 8 Jul 2024 15:49:23 +0300
Message-ID: <CAA8EJpqz1SiUdTMpx5hmnax_rBqtpVAtOZsaL8UfHnZ5vZZFHQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_054937_442906_08C049FC 
X-CRM114-Status: GOOD (  26.98  )
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

On Mon, 8 Jul 2024 at 14:07, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 05/07/2024 16:34, Dmitry Baryshkov wrote:
>
> > On Thu, Jul 04, 2024 at 06:45:36PM GMT, Marc Gonzalez wrote:
> >
> >> From: Arnaud Vrac <avrac@freebox.fr>
> >>
> >> Ported from the downstream driver.
> >
> > Please write some sensible commit message.
>
> Here's an attempt at expanding the commit message:
>
> """
> This code adds support for the HDMI PHY block in the MSM8998.
> It is a copy & paste of the vendor driver downstream:
> https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/drivers/clk/msm/mdss/mdss-hdmi-pll-8998.c
> """

Add support for the HDMI PHY as present on the Qualcomm MSM8998
platform. The code is mostly c&p of the vendor code from msm-4.4,
kernel.lnx.4.4.r38-rel.

>
>
> >>  drivers/gpu/drm/msm/Makefile                   |   1 +
> >>  drivers/gpu/drm/msm/hdmi/hdmi.c                |   1 +
> >>  drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
> >>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
> >>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 789 +++++++++++++++++++++++++
> >>  drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
> >>  6 files changed, 893 insertions(+)
> >
> > - Missing changelog
>
> - Rebase onto v6.10
> - Move drivers/gpu/drm/msm/hdmi/hdmi.xml.h to drivers/gpu/drm/msm/registers/display/hdmi.xml
> - Add copyright attribution
> - Remove all dead/debug/temporary code
>
> > - Missing a pointer to bindings. Ideally bindings should come together with the driver.
>
> "qcom,hdmi-phy-8998" is defined in "HDMI TX support in msm8998" series (Acked by Rob Herring & Vinod Koul)

This (and the link to lore) ideally should be a part of the cover
letter or the comment below '---' in the patch.

>
> > I'm not going to check the math, but it looks pretty close to what we
> > have for msm8996.
>
> What is the consequence of this?

That I won't check the math :-D

>
>
> >> +static const char * const hdmi_phy_8998_reg_names[] = {
> >> +    "vdda-pll",
> >> +    "vdda-phy",
> >
> > Unless you have a strong reason to, please use vcca and vddio here, so
> > that we don't have unnecessary conditionals in schema.
>
> The vendor code uses vddio & vcca for msm8996;
> vdda-pll & vdda-phy for msm8998.
>
> Which is vcca? Which is vddio?

vddio = vdda-phy (1.8V)
vcca = vdda-pll (lower voltage)

> https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8996-mdss-pll.dtsi
> https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-mdss-pll.dtsi#L121-172

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
