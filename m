Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FB35D6DDDA
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 07:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xb2ysyEKGcfvfsIx/9kLsYf+679CNvAqZUUy2UWKTI=; b=v6ppjRHrYb2s/0
	iMlr7Zt3uvqZxlf9b44bJ/wfDBT9DYJKY8G5YXEGshQsoqE5kjOLC4LA1u3ijgfL+pgpJFujvMnFr
	2EOTwjlJnGjTOdBpy+f7AZSI0XLgMHWoA58J7f7bVQB7FZZwHUPnIwnh29gUPeGYPX4euHm7xJgCf
	hE0W8kv1OcIjdUzWnAK2d7EVutTFxgHRbE/moxk1gtO69o6ZKczZgaA7b2iCdi1LDp4Ru3dlhuTjw
	3WkdRpH210k4bxY54wwD8/U1e9LviyfPTMsuVHJmphFjJg1WGXqnEHimnvpEQvG/twp61CfBeIMGH
	6mBOKS72pTJ5algNtEgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqMu-00000001sBG-0GgL;
	Fri, 15 Nov 2024 07:03:48 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqMg-00000001s9h-1ClK
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 07:03:35 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53da4fd084dso1462260e87.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 23:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731654212; x=1732259012; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q+XXpl77AsqnMSW/X4uwuxdnVb5E7QETWZtbP20KJGw=;
        b=k02sd9/e3jZ1w4ZQ0iH+MifA37l6/MLsam07+pk7tfZ1O5ggXy1pulpG619yQcHpAg
         ruLdgHRufRYUmo1F3dv6wuQ9P3Q6WYxbhFHMGldvMWhDMVaxfuvXDBYMKkVRlf5yKm3d
         WF/6vyNiTe7KHMPUkdokWtgfrAi0LCrKlps4BGKnhSv+jzxhHNH5/LebTcHI5MSTJ/1a
         KlS+1BqZ6DtrJ5v0weaX2pAs0KpB4q5SWzdNpJx33WbpdRNAMSyC8Qm5afz2mOCJVZCX
         CO6AROFOz8vutyKPPx/W4bgHnOzEMqW1BzpmKCNwkGCmqEVX0IsuaeYT2xborVvclZy4
         xRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731654212; x=1732259012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+XXpl77AsqnMSW/X4uwuxdnVb5E7QETWZtbP20KJGw=;
        b=VCBNp2ABU3RelkcoOPVIBYhOVqWvHwA6mlrHK4CNKoyPv1QhQK6X1pdpE1Yyfj97k0
         b33rnRlsx32aZ9Rbx+CPJZ1betkCUfhhNMV0eLq9kkizXft+AvyCiG+q9uYS5PKtVKKS
         xRX3/YGw/+04w9LG3glM/0WnFyQ6fKX+LMzQzFCqyBsH5X/mkOqnlYum8SeLzz83rRbA
         xAirk2x5B6ssvT4qNU+JaBnlawBZlf2yKyDcZiFbgv91DSlrB5zOBcgbuW07LwuFUuvK
         R2lbaNmJjP8ejgB3P4mv4NlQ00hBzyCTABpYzTKdF0NGAbaPz84IK7RT1cHRavxOMAFA
         G6NA==
X-Forwarded-Encrypted: i=1; AJvYcCUighbuBK58T03EXhnBtPtVjn7WsjoZE14sdyEVhxuY2YTvxFf0EJs5s2myuBiE/wi7ZxVloZl677c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQQk/x/KonrR7sxMTTWPp2oYKm0zMyT5+AuUFFZTTwQdv4SH+U
	0z8IwcXz40CHR9y/pPQ2ILuLnIPXmhUQFbxpQS2D1p9iG+nuLmzELZk6qR4JOJ8=
X-Google-Smtp-Source: AGHT+IHM3zGQ1oqt1miJAq+kPUmZOKc2Lgbol5o9QIqKe1inLvN5UGopKJienSpRrvOBH9LrMKG0Iw==
X-Received: by 2002:a05:6512:3b12:b0:53d:a895:7fb9 with SMTP id 2adb3069b0e04-53dab03f96emr531496e87.26.1731654212135;
        Thu, 14 Nov 2024 23:03:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da653125asm452597e87.154.2024.11.14.23.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:03:30 -0800 (PST)
Date: Fri, 15 Nov 2024 09:03:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingwei Zhang <quic_tingweiz@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_aiquny@quicinc.com, 
	kernel@quicinc.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
Message-ID: <nr4xt5pefd3jngml6bkbgrfhsuxmre44v3qs6uyxz7qp5dzqad@6dss6lwhb35n>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
 <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
 <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
 <cp2g6j43zlx2njou5qz5tmwsnnzahqtk2hsxkj2ftrzbcmy742@ysca5ica4mvr>
 <bb6ae010-5dbf-455c-a53c-6c0e688f0ebc@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb6ae010-5dbf-455c-a53c-6c0e688f0ebc@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_230334_355147_60AD754E 
X-CRM114-Status: GOOD (  28.90  )
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

On Fri, Nov 15, 2024 at 02:42:47PM +0800, Tingwei Zhang wrote:
> On 11/15/2024 2:26 PM, Dmitry Baryshkov wrote:
> > On Fri, Nov 15, 2024 at 12:59:12PM +0800, Tingwei Zhang wrote:
> > > On 11/14/2024 9:03 PM, Konrad Dybcio wrote:
> > > > On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
> > > > > On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
> > > > > > Add configurations in devicetree for PCIe0, including registers, clocks,
> > > > > > interrupts and phy setting sequence.
> > > > > > 
> > > > > > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > > > > > ---
> > > > > >    arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
> > > > > >    arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
> > > > > >    2 files changed, 219 insertions(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > index 7eed19a694c3..9d7c8555ed38 100644
> > > > > > --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
> > > > > >    &gcc {
> > > > > 
> > > > > The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
> > > > > any reason to have the clocks property in the board data file?
> > > > 
> > > > Definitely not. Ziyue, please move that change to the soc dtsi
> > > 
> > > Gcc node is updated in board device tree due to sleep_clk is defined in
> > > board device tree. Sleep_clk is from PMIC instead SoC so we were requested
> > > to move sleep_clk to board device tree in previous review [1].
> > 
> > Note, the review doesn't talk about sleep_clk at all. The recent
> > examples (sm8650, x1e80100, sa8775p) still pull the clocks into the SoC
> > dtsi, but without the freq.
> > 
> It's begining of the discussion of the PMIC clock for SoC. Sleep clock
> specific discussion is here [2].
> [2]https://lore.kernel.org/all/be8b573c-db4e-4eec-a9a6-3cd83d04156d@kernel.org/

Please note how the recent platforms describe those clocks: the node in
the SoC dtsi, the frequency in the board dtsi. X1E80100 is a step
backwards, the clock are completely defined in the x1e80100.dtsi. There
seems to be no strict rule on how to handle board clocks. I've sent an
RFC patchset, trying to move them to a single logical location. Let's
see what kind of response it will get. We probably need to define and
follow a common rule for all Qualcomm platforms. Please give it a couple
of days for the dust to settle. However, I think there should be no
reason to keep GCC's clock definitions in the board DTS.

> > > 
> > > [1]https://lore.kernel.org/all/10914199-1e86-4a2e-aec8-2a48cc49ef14@kernel.org/
> > > > 
> > > > Konrad
> > > 
> > > 
> > > -- 
> > > Thanks,
> > > Tingwei
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
> 
> 
> -- 
> Thanks,
> Tingwei

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
