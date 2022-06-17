Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4363CCA479
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 21:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NaXE4efJbHdBgQ/2zvGH0V4Nt2bo1A0BQjAFCsMgREM=; b=2tOfdLuUMHa0Gi
	AkZIAi133nD9Z7Jt81kWShdPuY9ckmAB23FjwejHEys+vHVztxNHH8US+yH8TzBt6G4gC27rItC2Z
	1rWWtOZ3GpIjagdLnaM58GXgNsZ7gxOoFNQ0wUzszPPCM/b6ISVSCZZynkOz39W6SfDVZW1Y+ljzJ
	Pjep7MnPrRWwW+swdfTuzFEIQRHV+7t9sx31chHdIFrGDlURJQk4yLGorLvj7tTvjjiAqY0L87KK0
	gfPGRySt7a7671yE1ptb5+Cm1mrVU+voL8zT90B+1MSoQibg3Cax95k4c7zgnYN1ZHlUrIwIIs34F
	e9h9elSwKgM36M489/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2JFH-0099lh-JN; Fri, 17 Jun 2022 21:11:11 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2J1d-0095PP-58
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 20:57:06 +0000
Received: by mail-ot1-x32c.google.com with SMTP id a8-20020a05683012c800b0060c027c8afdso3927743otq.10
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 13:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=vMRFR0GXyCuyzUO1zmdvO0SdG3g9jDS3szGGSmZwvdo=;
        b=EoWrsaIdWmfmOGr1BtwEg2WSZK+OU+lG3deDCXDzb74IKSuCLjUw48r/Au0ZdFbBld
         CtADV5mdsqtHPiJQnM6grFYj+RXcVZ25BiaOF+SeT3sWq4i0Z9auBAbHmX9HOV5Xn+AO
         W4/IHFd1Zk/BzdQQ1hCIwfywNaHuB2eYr/RVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=vMRFR0GXyCuyzUO1zmdvO0SdG3g9jDS3szGGSmZwvdo=;
        b=SvzMHB7ePy+k/xCDqbVJy8RK1ING+tD+Ffb8N7uBCjzJmsrRRgEu2sAmMnYjmA4fBf
         BtzQRgaZNnc1Vl7Qn3DqYUZ51PJcUWkJYx+cr6lln7e0C2Zsy75VIe8yO6BI/aW+DJVN
         u4Y/eTCm+Z50RGdZNYL3Rh8t+Jv7N4FG6O/lNJE1N4wcBSjFaJ1f4zdWZfiH0yylYu/F
         xcGRFUMp7y7x8c0n8JTZIBSl3fDwysPE+3YOVqujraSnyU87Mpdg6qN5QH4mTWtxwLE8
         nTgjthcb+fGmIoqwP4E9Cf/u0G5e5z6+kQG2T97PKlBYMO+8guStAWWdr1zwj5e/a0vr
         r+Rg==
X-Gm-Message-State: AJIora+I/DH9NOvWJkCXhiehfSlKG4h6eJ3CEpun3G1/ysCwtw8FplMb
	ltn+D9R+K2nYloZGhii2Zq30EGPo104U/SAxOezVNA==
X-Google-Smtp-Source: AGRyM1sfzKoW9WyzAhvY11tv9iFwse5ymjpHxzBQ0uh1UWvv6lmB401+6sUT+IuSWkFK2+PScwaSfV3+9PXqLXqk5Zw=
X-Received: by 2002:a9d:6484:0:b0:60b:eb0b:4054 with SMTP id
 g4-20020a9d6484000000b0060beb0b4054mr4760290otl.159.1655499423686; Fri, 17
 Jun 2022 13:57:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 17 Jun 2022 13:57:03 -0700
MIME-Version: 1.0
In-Reply-To: <20220617103608.605898-4-dmitry.baryshkov@linaro.org>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org> <20220617103608.605898-4-dmitry.baryshkov@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Fri, 17 Jun 2022 13:57:03 -0700
Message-ID: <CAE-0n50=Lbrs84oivqni0oBNk0KSY9yGvkYFXggekwVDQ80fyQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8996: add #clock-cells to the
 HDMI PHY node
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_135705_237900_DCEBC3E4 
X-CRM114-Status: UNSURE (   4.26  )
X-CRM114-Notice: Please train this message.
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

Quoting Dmitry Baryshkov (2022-06-17 03:36:08)
> Add #clock-cells property to the HDMI PHY device node to let other nodes
> resolve the hdmipll clock.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
