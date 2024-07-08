Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC5CC3DA47
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 22:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axPCBDEaz+Pc+vaK4K9I0SfijxjHVsuiiZojSli9MwE=; b=QmFVfcpsu7vm9/
	LhdSM10ku478irD2AnstfQ4WNo36lS5NTih5eKMNdeZBFYzMNDgeCyfScLvH0pT4mVXjR4Oq35aZ5
	F/AVMn0f0R/EENCnt4v8rfeBfb7deYRDnptOEdHMb3XCTwxnWgdfTLnVM7blM14Gto4507DSOhvFI
	otXF30n1Sp8t4c7BMcFgwW2cUvUr+bUcJzRth1bzr5WP7J8ypWJVv/EHknWwQotCag8af392k2Uoi
	KyUD14noGA7M0ki2ksb/NbRbwfPPb/Boa0Egpb966LNhkAnnmSg2tHu6+H3kPn0W1+Y88ssmhjhBG
	NoRa0/hJLBn5IVyelSzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwa6-00000005Asx-455X;
	Mon, 08 Jul 2024 22:11:34 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwa3-00000005AsU-2UfG
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 22:11:33 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-64b3655297aso43595087b3.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 15:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720476690; x=1721081490; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=akSjRnSmQJXB8QkjLs5AoCqiPkMwFsS9lxtSRUZRr8U=;
        b=ZOrpYgtZr/ToZkjWr4nNUBuYVpoHoQqK6y3t6TpIdbe3A7j1xVDBmQSCB3oH6JM2qx
         haS5ZbNDfPhdyk9wWLY29wy4oHQc0E/RDbmhKDJHuOrw6C5rGIPO3afyps6FXQrCmCY5
         Rt+G1TEK8IO9kOTJK5rRd7DGzfj30b+j+pt2x+yHIXFj2F7r7IfmUfYvi8ecJPnMIt43
         482ifWXTgMeNvJFxPPII3Woroq6DurzpsLZ0QtbAL7odlhdUTRsR1uZyGphS6VnL9x62
         RqcKLVCsOfCkod6rsoqSjCI0iPGV88xrNYBbPj7Cw2Wa0Jobxvm+Ar356qrxJ6Z8Y4lN
         cJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720476690; x=1721081490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=akSjRnSmQJXB8QkjLs5AoCqiPkMwFsS9lxtSRUZRr8U=;
        b=ssVUZbpyLFyJddUDMw+5TSpXV/WNiHbnwn1/zfCgEzr6V/adIk4cGy+8TzY09090v5
         tWd2CaOFAhxw7zYuDtq2zTT8Pbkhio1QXXpwG7ZFvzS4KIRDGuU7GIcEZSUUg2vL4faA
         8RBorsmRMddwoIJKgQStaggJP/HmK7trpZ9S7N1jj73PLHEvfyJK6bNgRTr76l/kBuOe
         jj1cC4IqPZi4oEGATY/kknAuXihXRic0XZNoK5H8CGSDpOjR3j/UWYewuTni3r9YkMTk
         sO9HU4crvW5WrcmTw4gNoX7aYMQTesa/DAgsh+rNDAX1dhNPvJD3WCkiNO6AfnCRS6GB
         6rnA==
X-Forwarded-Encrypted: i=1; AJvYcCVpuTRqmPO/4+1fwKroCydU/O+WOJfCNMyqhzmsi4pXRigB4I5Kd5/Yp6IUpHUh41LfgJfTI0lPyOfT83pwRCEOnrzbyOFHagkZ5yzU0g==
X-Gm-Message-State: AOJu0YzmdEDuk8R2K8xRWBMyNchuppdUsmoJXz9QxN7MBpxkH9KtboFE
	/b3AO/hHWamNUvtdx1Kqyc2FlcfOjqnH/gWe3KZGoZ0hRQucLmzZVCl5cB9uwh8Rl/J+Dz0+U9K
	1/DAfJLvLUvabLv8+/3umHbmMVzAGSdVWr7v/XEkKzhoWbOiFyzE=
X-Google-Smtp-Source: AGHT+IGJJD4YdSne2E2CDJPTcw+1HwH33TbgcTt5pV7mkcprUs/4t0BFrxvbt5GIFxFuNWKCvnJHBDIxbicRlCahRC4=
X-Received: by 2002:a81:6985:0:b0:64b:2a73:f050 with SMTP id
 00721157ae682-658ef2494cfmr10696077b3.23.1720476690444; Mon, 08 Jul 2024
 15:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr>
 <5lbtymde3plfiqkvnd2lrjzxhengmsw242uqapnzpvfd5jrm25@x2ik2h6vrdxm>
 <2d21db63-4371-45b4-ab24-9a725c29e09a@freebox.fr> <CAA8EJpqz1SiUdTMpx5hmnax_rBqtpVAtOZsaL8UfHnZ5vZZFHQ@mail.gmail.com>
 <c7da3acb-4456-496d-9876-b05abcc0e010@linaro.org>
In-Reply-To: <c7da3acb-4456-496d-9876-b05abcc0e010@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 Jul 2024 01:11:19 +0300
Message-ID: <CAA8EJpoD4og3eb2aFB5HkFh3vAfyhqG=smtcUbmgNeuWwaJtGg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_151131_834558_731DEE8F 
X-CRM114-Status: GOOD (  18.89  )
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

On Tue, 9 Jul 2024 at 00:27, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 8.07.2024 2:49 PM, Dmitry Baryshkov wrote:
> > On Mon, 8 Jul 2024 at 14:07, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
> >>
> >> On 05/07/2024 16:34, Dmitry Baryshkov wrote:
>
> [...]
>
> >>> I'm not going to check the math, but it looks pretty close to what we
> >>> have for msm8996.
> >>
> >> What is the consequence of this?
> >
> > That I won't check the math :-D
>
> Dmitry is trying to say that you should check whether the calculations
> are the same or almost the same as in the 8996 driver, and if so, try
> to commonize the code between the two

Not quite :-D

They are slightly different. More importantly, this is a different
version of QMP PHY. So, it's not really worth merging the code.
Earlier on I pasted the patchset to move all HDMI PHY drivers to
drivers/phy/qualcomm. I plan to integrate msm8998 support into that
patchset (this should not be delaying this patch though). But I don't
want to commonize the HDMI QMP PHY code before somebody implements
support for the third version of QMP HDMI PHYs, the one that is found
on msm8992/94.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
