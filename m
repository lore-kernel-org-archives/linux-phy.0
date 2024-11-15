Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ACF4D6DDE0
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 07:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6bhgjYqSUqZieH02IU8/Wy6QLaW61nK8pd7VUeKzq4=; b=Lqrpz1PFyDAcQX
	I//TW5lH/X+m6QHCnGmcsBQCnas2/ofvHsQEs+gSXxeFfmFh78hDS+Bg2kQ2adRCWfov3CGikAhXr
	ZCb85xFJMn1uF0K5BRCCjdCyHmUvfwra7G5fHGhY4phmN/UqFxwJnSkGX/F9RrG6MLIQoOCaqzJtx
	W+O4fO9nMvmQ/i3jQdSWMvmmb3m5jLiQK0jvCYbzZGzzYWFZjonQC/7AQvDd5uP02QR1xG8qi4m57
	WIT5ip8b943IqXpa6/oIXRt2kFecb6Cj+Mcbl4HCoUbCo2fu0Ci70csGp2pQxRxEDPDqWnn1DgB4f
	J4lDUqsOSQrlufBeCqdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqsN-00000001wFm-1h60;
	Fri, 15 Nov 2024 07:36:19 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqsK-00000001wFI-3ORR
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 07:36:18 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53d9ff92b14so1545438e87.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 23:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731656175; x=1732260975; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f/zaNJXsl01a5zNIwyl9L4dlmA9eGCe/qLUK5CKx19E=;
        b=I8LlmejIKBIA9xM1Sbny7okR5yaaAOogydzYQ3k6dfGXkWrdaN2M0LkOZTgs3aAAKM
         EOUHoYVAY5ZzJMxq9t3dVLfP3QFRGt6xCRiQPw7S49U9JNjTW5+pjRHIwlA89jxu00uE
         IEaiWob85avBPtZQW9fy51TjQPwKmY8B+AX9gpD8Cm5+oDz7pU2kotaVaqlRxZ8AK9o0
         0QtcuaqVIEkpXo4unBhVaFnBknNLYqJvFyqAbWaJJSc3GJek7U9+YX7bQZbrgjoVXTpX
         H9y7/zyyaQrK+6q38HmsPRYifyxbmW8pgOvVFlVnpEYSl0CGRYZGdUPd+YJkr1GGmkOS
         FlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731656175; x=1732260975;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/zaNJXsl01a5zNIwyl9L4dlmA9eGCe/qLUK5CKx19E=;
        b=Yakpf7YG06f8IlxrQoxiIXLPYZg9hqGc0xnLrnBIasg1elMgvXE8q+MB/1KV9IEScg
         2/R76pNM/D2CNMb4GgZKurJKMreL/ShMiUuETTMnt64wqXFSlzdJJDoG3gNzyZnHEoxo
         VGOWoq9+WYl8llnB6OVUoJseTuB/wrjuD6uHsus0BZaHmjk+R0PIM7PibSrB1Xc7fheX
         qbKbJXRHGViT+p2h1eNK9lFSQ/qYN66mP1L5UB1ktgPZNl9mAmBHfAWgZJf+agywR1Vr
         rT3AzKR1jYFGqYZuaQ9Uonwq2LgetGkrtoj5UbWQFdXp0rF0b/0TtWNQqiHinomn5J16
         hRng==
X-Forwarded-Encrypted: i=1; AJvYcCWoCb/yrsFHKBOc4M30YJkGfs37SrZzKaWAjKzzInxkI/H6D56kdWIIOFFLdHq5kXI19D5T1KuXSKs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLkYEvXUUU6nqBzPeG7cJDrOpRdUo8N0czWPILBT0CRYvR8T83
	HqSHNEZnlxJQnaWAlCgoKIAtWvEBC7FE2+l+G4dTS9QFHB2FK8bC/+Bder2w7ls=
X-Google-Smtp-Source: AGHT+IELxNr42kTGq86yNt7HpRgRuLDZHJp2+y0D3HJbNVFtEX+4EYZRDRiqgDM2tZ7bw4WDChznfA==
X-Received: by 2002:a05:6512:3b25:b0:536:554a:24c2 with SMTP id 2adb3069b0e04-53dab2a04dfmr512452e87.13.1731656174673;
        Thu, 14 Nov 2024 23:36:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6530d32sm473369e87.139.2024.11.14.23.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:36:13 -0800 (PST)
Date: Fri, 15 Nov 2024 09:36:10 +0200
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
Message-ID: <273fm6dpwt3xzdm5khzipdqiqzpo7zy5jsc4iesd3dt72ldhdw@wd2urfqyt6fn>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
 <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
 <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
 <cp2g6j43zlx2njou5qz5tmwsnnzahqtk2hsxkj2ftrzbcmy742@ysca5ica4mvr>
 <bb6ae010-5dbf-455c-a53c-6c0e688f0ebc@quicinc.com>
 <nr4xt5pefd3jngml6bkbgrfhsuxmre44v3qs6uyxz7qp5dzqad@6dss6lwhb35n>
 <af6ca3d2-54da-49bb-940a-69855ab2a7b0@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af6ca3d2-54da-49bb-940a-69855ab2a7b0@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_233616_861399_3A9E9789 
X-CRM114-Status: GOOD (  36.03  )
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

On Fri, Nov 15, 2024 at 03:16:29PM +0800, Tingwei Zhang wrote:
> On 11/15/2024 3:03 PM, Dmitry Baryshkov wrote:
> > On Fri, Nov 15, 2024 at 02:42:47PM +0800, Tingwei Zhang wrote:
> > > On 11/15/2024 2:26 PM, Dmitry Baryshkov wrote:
> > > > On Fri, Nov 15, 2024 at 12:59:12PM +0800, Tingwei Zhang wrote:
> > > > > On 11/14/2024 9:03 PM, Konrad Dybcio wrote:
> > > > > > On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
> > > > > > > On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
> > > > > > > > Add configurations in devicetree for PCIe0, including registers, clocks,
> > > > > > > > interrupts and phy setting sequence.
> > > > > > > > 
> > > > > > > > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > > > > > > > ---
> > > > > > > >     arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
> > > > > > > >     arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
> > > > > > > >     2 files changed, 219 insertions(+), 1 deletion(-)
> > > > > > > > 
> > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > > > index 7eed19a694c3..9d7c8555ed38 100644
> > > > > > > > --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > > > +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > > > > > @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
> > > > > > > >     &gcc {
> > > > > > > 
> > > > > > > The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
> > > > > > > any reason to have the clocks property in the board data file?
> > > > > > 
> > > > > > Definitely not. Ziyue, please move that change to the soc dtsi
> > > > > 
> > > > > Gcc node is updated in board device tree due to sleep_clk is defined in
> > > > > board device tree. Sleep_clk is from PMIC instead SoC so we were requested
> > > > > to move sleep_clk to board device tree in previous review [1].
> > > > 
> > > > Note, the review doesn't talk about sleep_clk at all. The recent
> > > > examples (sm8650, x1e80100, sa8775p) still pull the clocks into the SoC
> > > > dtsi, but without the freq.
> > > > 
> > > It's begining of the discussion of the PMIC clock for SoC. Sleep clock
> > > specific discussion is here [2].
> > > [2]https://lore.kernel.org/all/be8b573c-db4e-4eec-a9a6-3cd83d04156d@kernel.org/
> > 
> > Please note how the recent platforms describe those clocks: the node in
> > the SoC dtsi, the frequency in the board dtsi. X1E80100 is a step
> > backwards, the clock are completely defined in the x1e80100.dtsi. There
> > seems to be no strict rule on how to handle board clocks. I've sent an
> > RFC patchset, trying to move them to a single logical location. Let's
> > see what kind of response it will get. We probably need to define and
> > follow a common rule for all Qualcomm platforms. Please give it a couple
> > of days for the dust to settle. However, I think there should be no
> > reason to keep GCC's clock definitions in the board DTS.
> > 
> Thanks for the clean up patch and make it consistent.
> 
> Is it reasonable for GCC's clock definition to refer xo_clk/sleep_clk in
> board device tree? Theoretically, can we have another board has different
> xo_clk say xo1_clk defined in board device tree?

That's a question for that series. I'd say, no. Some older platforms had
separate CXO and PXO clocks, newer platforms have single CXO.

> > > > > 
> > > > > [1]https://lore.kernel.org/all/10914199-1e86-4a2e-aec8-2a48cc49ef14@kernel.org/
> > > > > > 
> > > > > > Konrad
> > > > > 
> > > > > 
> > > > > -- 
> > > > > Thanks,
> > > > > Tingwei
> > > > > 
> > > > > -- 
> > > > > linux-phy mailing list
> > > > > linux-phy@lists.infradead.org
> > > > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > > > 
> > > 
> > > 
> > > -- 
> > > Thanks,
> > > Tingwei
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
