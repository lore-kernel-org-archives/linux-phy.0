Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57282C3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 16:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNIokrE2bGlmf1pa5Kti6X0OXAEpBMPBttsHdDMA3Ik=; b=TkgoXkm71oIaPN
	9VmPOnPOQVXHZftq8hHpgFlLHRUZ+ctUBeL2BJhe9aAwYeBolYNC2NTXZNCiAJ7M1TrB7hDhayahQ
	cMRHWfVExO+Jv026w4oS7jgaHiN1N41jG2+gPVDaKmIrOwu6xrSxJStkeG43ngFXAgDW3M9TI+yKM
	pbUspzgIPa380vozPx0LpBf0OoNULus9B8KpyXuOk1ZMppJcNk6L82/nPlZS8/ZAFLqpPKqQ6q7fO
	qNw9JbTqC6tf+SLAYZcN4xjaOIT0GNeX53H73qyV8RfG3yqLn6Bn3phNUJiLB2hSfB3HQWH/4nYYb
	JAhTM4IaawXm0LuIBcJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTOeU-00000007kfi-1ZSI;
	Mon, 15 Jul 2024 16:34:14 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTOeS-00000007kez-1L08
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 16:34:13 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-e05a4d6e443so2038217276.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 09:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721061251; x=1721666051; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O37L9qZJLQGQMz18TDRSIA7wom9SyLF5AajKEOhKC40=;
        b=bXxeuUPRJmNvU2Wn+Vl7H8N7n2wE5VT06X0kdfFNPZA24tlmBZfLVMz99V6mD2Sqs0
         4VBX3h6WfR9ym5Urk/Owu0TwFdVPygr27w+vaB6LUGqAGiG0eDW4uWC2WAF0ZIV1Hanq
         wr+ited0au6OxvPD8rSnevVhdnDBZEiRudZxlJPF4Nj6G9pgDXnfGhu6rZVo2S6I4chV
         ZbE1bpv1iCRuhZwJtbrZhREnUvAEtWAZGNLop7lg/p4pJcu6EQ5YMESVQVRk5Ga0/jgJ
         4b3YEas3V84JKlOYryN7XW/vaHpue10HGMOEp1u4mJ6OrmeChU1TZS9AyoCzTZz49jgq
         SZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721061251; x=1721666051;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O37L9qZJLQGQMz18TDRSIA7wom9SyLF5AajKEOhKC40=;
        b=llB5NmAuXnGe2d5pm8JYi/uBio2Aa2Mwu5Jw9W4eyvo5RI3kV/cDrgtfBR7xal4Upi
         XiA6ZUzFdUkxjJlctd/qEKugWCghY55UwiJDRTkRXzc98PULy3n7Nw1m6nckX1cVAaK1
         fEbvj0+ut7ptxVrMv1OfDGJFVn8yol7uvXYyy61jm3GG45TjroxWe6Ux/1X16+DCAJM2
         iZwbF8g0gK3D9SbaJ0/mYkIS4/MssRA4XjX45HGRreIvUDCsjD39CTapGNg6mEz8C62Z
         wIhLeBqrJEmX6/J2aBrw9JxJCxYvWxLB2yaAHLlb/bG3Twe59WP/0Zy+5I6Zm1ffif4g
         XNjw==
X-Forwarded-Encrypted: i=1; AJvYcCWFmECU3QxwPfqxovuIpoO9zvYR1aJ913B7kCLiO0cS5IY6+jpZ1BjFcWeA8gqd0dAKqi6qnoNV415Il8rnyGQmXSUbBXETt9KQvH9SYQ==
X-Gm-Message-State: AOJu0Yx9Nub0LBnOjwboZ6VMyaDokAPe0q1urbdBDeK3uSh955iOTtYA
	jdNgxfila6db+ppSKPeLlIgzbDPHfU1YCruhFnN8Bvj1S6/+OVoA+3T2WTE9TfiGvT17Cppttxk
	6WoctKP95X+PKyEI24NItxyK9nO7Tl2NuGXPunQ==
X-Google-Smtp-Source: AGHT+IHbhMbVEZKppzrWbxx+94NB44o9QwSREBMBZsGgAxNmoI/3j+IILkQ8RwefrybDTMBJhqnTa4iV4f6MMeBnuLs=
X-Received: by 2002:a5b:b02:0:b0:e05:acec:fefd with SMTP id
 3f1490d57ef6-e05d3bbdc7dmr99465276.48.1721061250693; Mon, 15 Jul 2024
 09:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr> <20240715-trickery-spongy-c9d8e246b4cc@spud>
 <20240715-stable-popsicle-7c6e2fa76644@spud>
In-Reply-To: <20240715-stable-popsicle-7c6e2fa76644@spud>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 19:33:59 +0300
Message-ID: <CAA8EJppYJuKpsUBhy3qwa684dWdZbp3qZtd6OdCz4YBU1DjYMA@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
To: Conor Dooley <conor@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_093412_513880_8472A18B 
X-CRM114-Status: GOOD (  22.92  )
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

On Mon, 15 Jul 2024 at 18:28, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Jul 15, 2024 at 04:26:12PM +0100, Conor Dooley wrote:
> > On Mon, Jul 15, 2024 at 02:21:16PM +0200, Marc Gonzalez wrote:
> > > Current driver already supports the msm8998 HDMI TX.
> > > We just need to add the compatible string.
> >
> > Why is this required when the driver change suggests that this device is
> > compatible with the existing 8974?
>
> (I know I reviewed the binding already, just noticing this which
> suggests a fallback would be appropriate, despite the differing clocks
> etc)

Yes and no. All supported MMS HDMI controllers are backwards
compatible at least back to msm8960. However as we were not using
fallbacks before, does it really make sense to introduce them now?
It's highly likely that there will be no new HDMI controllers
(Qualcomm has stopped using them with MSM8998 at 2018).

>
> >
> > >
> > > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > > ---
> > >  drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > index 24abcb7254cc4..0bfee41c2e71a 100644
> > > --- a/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > +++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
> > > @@ -549,6 +549,7 @@ static void msm_hdmi_dev_remove(struct platform_device *pdev)
> > >  }
> > >
> > >  static const struct of_device_id msm_hdmi_dt_match[] = {
> > > +   { .compatible = "qcom,hdmi-tx-8998", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8996", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8994", .data = &hdmi_tx_8974_config },
> > >     { .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8974_config },
> > >
> > > --
> > > 2.34.1
> > >
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
