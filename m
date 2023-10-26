Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFAD7C25B6E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 20:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpY9WVW07u1c3WB1T+jq+ZrlRwWYhKYusaj/rCFObWA=; b=UKhAPgk2SgzPMG
	BzxQp1YbWQoVmMXKCPdSjVMSEeMQrnZ4kk5pir8KVE2JTWbycIfYClhVEKwopR51Ja+e3iaC3h6xC
	v+R4i86L7k7AKAYQPcfduYzQC5UEUWMFZthB37w1ekmAmuke2oQTl34DjX9cIVwDSvBwJZsscoCm4
	Q32kDDNYBrvh5ljP1i3H2ZAboReX49hf8PSAB4Lz2zKFnjuL3YiIKEFMEiVLlMsO/cfrhDEq1TdMr
	c4+yn+JFdFNH0+wxkcZ25yfJAy2DSEo0hCNQsA4aA4o1lSJpQVgZfSoM0wD+xAWbHoASB3kCq6AcU
	7A2vck6NjfUkBQu5qIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Fi-00F8aE-27;
	Thu, 26 Oct 2023 20:46:50 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Ff-00F8Zh-16
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 20:46:48 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6ce2c71c61fso881432a34.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 13:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698353205; x=1698958005; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I/G02VsxhYJWjx+P8kMFTWWV+s1yYYgHb9RgEPb8krc=;
        b=h9UTIYpnlsmemPpTDaf2az/9A1Gm0sB1h6R5W4MEWZzXz+BPFRLYDKKgwcAiS9sjid
         eus2V6CFe/j56Q9J7vK9t8q3+HFzAJ7sHw/uqLu+VDhwQtVFjLu85rc2sfDeTuxWYCWG
         qaZr/T4P/hPEhhw32iWtkPrRkNyvyXaAGubc0wQ66c7+AI5bnd+xFJDHUoUo8Ep0npGY
         Wmkd79AUBIAWJHBUWvXo3g2UWh1vLTlVh2ytDO2W6gZRIVE8hkFdwePcbV6FRm8iNMd+
         zYRZn43Amfc0uh6njxDZqkp98IGcDJAFla4kQgkpI12GTOhk+E5h4oGiPTncUa5iARi2
         InAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698353205; x=1698958005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/G02VsxhYJWjx+P8kMFTWWV+s1yYYgHb9RgEPb8krc=;
        b=hVG3dGPHP1tb+sC+3lFLUQVJM1yfccfeo/qTiFx1XRHcnON2971Aw39n0/Lo5U8zkU
         O6+itn73ocF8lxyoL+NpX6jKMVlNK4VtPt8Di6ovHtyKUehdAR3SDUpNTB+7ArylYZZ5
         qAK61TQ3/5EscUlQfNCSUCzzinLnyDa1fCR3/HiToOD5b74hs0JvT1JPEYPDcAyuonk3
         BiOknyz6PkwbCk87puDXgrMrlmoWnI+///MS0x9Lqq/JDTDhyrlNNzo6GbOf8KOA5o7n
         lZiOF42JD6kBslHbftpT83vy03W2HwXCjG7lON07njL9xvF68dZBqL450DgQR6xPrj+2
         omhw==
X-Gm-Message-State: AOJu0Yynea2rtcbdH1nFeCxIgselfzxO+UZKPenrEaTpNMwJIwMfKBP3
	Tmo3YuupujUSXD+XwCbeDq+qFXExdNK26td5A7o/Eg==
X-Google-Smtp-Source: AGHT+IFVa6fJL5TjjQrb46JjIVUSocFW+PYDsLYQl5v/O4exSYbtWF5+eYNBjXmSZw79pzDpYDJn2OV8FuRMoqSfUoo=
X-Received: by 2002:a9d:66ce:0:b0:6c5:233:fc28 with SMTP id
 t14-20020a9d66ce000000b006c50233fc28mr664232otm.33.1698353205417; Thu, 26 Oct
 2023 13:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-14-dmitry.baryshkov@linaro.org> <36d6379b-66e6-4781-b08d-ef90f6e47828@linaro.org>
In-Reply-To: <36d6379b-66e6-4781-b08d-ef90f6e47828@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Oct 2023 23:46:34 +0300
Message-ID: <CAA8EJppa8-M8Uah+=GBhG4bHvdGUwqgh0aj8o9rLfEdZq=JUKA@mail.gmail.com>
Subject: Re: [PATCH v3 13/15] drm/msm/hdmi: pair msm_hdmi_phy_powerup with msm_hdmi_phy_powerdown
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd <swboyd@chromium.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_134647_411692_773F493B 
X-CRM114-Status: GOOD (  11.38  )
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

On Thu, 26 Oct 2023 at 22:54, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 9/28/23 13:16, Dmitry Baryshkov wrote:
> > In preparation to converting MSM HDMI driver to use PHY framework, which
> > requires phy_power_on() calls to be paired with phy_power_off(), add a
> > conditional call to msm_hdmi_phy_powerdown() before the call to
> > msm_hdmi_phy_powerup().
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Is this a conversion artifact that will be undone, or does the
> framework actually expect that refcounting may not be enough and
> phy resetting will have to take place?

I don't remember why I did it this way. Let me check, most likely this
patch can be completely dropped as the enable / disable operations are
paired by the DRM core.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
