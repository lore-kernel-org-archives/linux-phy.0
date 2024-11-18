Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D8CD49210
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 11:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdP4AJDtihqIsikoziBzZrhCQ5aO1QctkNsgRva2144=; b=LZZ1KhcbC10Kww
	VlO4Lm40Fs6B1fSt4VeWPZuwqFlOTP1gQB5hYcRfLEGfnVhKJOcH+Q2o9md8ZjNPhIrC6Ficbxk0h
	tDACbSV9sJ5t1ymn85XIDNI/PQWNrSwDZh8yaHmsRQ9lXXcSXllAQJSnNArk2LNHdy17ztr5UKFvF
	FsgpMR5dh1pOjf6CRVBO0/o3aFxud65eeepZMTHV9p4fEqe5jgh13SUcl8owrFrj3A0p9fJr2lhW7
	eO7ZKHA5cU15KxJmoiBGXMELDv/tvaqZHiZwVovnJiG1TP6a4o+rMcL97U8r5rz2RqCCzx1G5xhaJ
	E7+UMy3x2tm6d9o8rkXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzwp-00000009GSm-33pF;
	Mon, 18 Nov 2024 11:29:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzwo-00000009GSL-00Re
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 11:29:39 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53a007743e7so3186757e87.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Nov 2024 03:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731929376; x=1732534176; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6+F1c07+mVwAqV5uUU9D6sA4NJCxNvjYMVVxQX72lwM=;
        b=c1pqIfC8x9ZXsgZM8gmrxuBrN6m/CrarZtdECuUL8qI1IqNXnESXIro+KWxwPWm04A
         pIdnZd5beQTkQYtQbbdA9gCqbUJ/FLp/X+k4XIfw1HyHWPdcadUwatGUkP7WesYHXzzY
         CL0+fS/nXsRTQuh2PLOzRGkLhCe8jzQzefwpnKiB04BCtO4c9EWT2gL88l47IsUDD043
         z73jEsSj4ZFJu8c7gQFXHmPvwc27TVW9uZCzVNXl603A0uoX4KN/2ePHwvTISNukAHOA
         jX32tOgcKgqVs2FKVCZCq8wIbvFMZfFlYVhcIrwOkFfQkrBrLXzn0ELNClBrmUa+nNAv
         ULCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731929376; x=1732534176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+F1c07+mVwAqV5uUU9D6sA4NJCxNvjYMVVxQX72lwM=;
        b=aMKLQn9WkLIUASs14GdAF0hXCuj/95PezCPf8h8bBkcQRqlPDlqPvbUhEr2uut1ZHX
         dzGEb5l29BTALX9sioD+ZmZeOFrotpnplSPJs7ggbFqPhfVjJZAVlnCPHQGWKfmilt6d
         aIQAvLBxuP/oYEQeQCZFW3TCEddgixHhSGumnl9k2K8qgVKxAqLxkL2+cqHIVa95kJjQ
         9U1k6rCUXm4Np4+tuXIw/EZqe40ZdVK+X9hfg1VlgmucuIXGocbXnRwblFtPP+I4lGVU
         8LKDbmJIZ+14p3tg0lg/hxYrELVeSV846pX/i0FktIMH/SfRb0gNjPeXHeDU9NY0Sy70
         2iLg==
X-Forwarded-Encrypted: i=1; AJvYcCVqCEtisGTRdC8jUiZGB9emsxVeuw7OB23X589MmYtqQIHhr9bXXLKOsLT/Xe1FOqJjyoSuKLLL/Xs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4dwaczx1dVp6U1KSrszafE4xCKKH/xFsAmfySEVGaZWGrqbtH
	SlgmlkMYzKNtlsm95/+DkaKll12lew7BPgquxYuqImQpXzXBC0grtFMFliig3TU=
X-Google-Smtp-Source: AGHT+IFEZqxXgk+9U3MgdABwpoiyQ/Uhmu+oBjqI0WpVEI3t/hTC8H0NsASHj/gLT+Me6/W8C4z/KA==
X-Received: by 2002:ac2:4bc1:0:b0:539:8fcd:524 with SMTP id 2adb3069b0e04-53dab2a6af0mr4817753e87.30.1731929376123;
        Mon, 18 Nov 2024 03:29:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6531338sm1592768e87.134.2024.11.18.03.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 03:29:34 -0800 (PST)
Date: Mon, 18 Nov 2024 13:29:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qcs615: enable pcie for qcs615
Message-ID: <u6wy6w5yfchbmhyvthhibyrhdp2pmusagxyalcanxvhg7ncbfn@vq6x6iwxtn2g>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-6-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118082619.177201-6-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_032938_099228_E9A8CED2 
X-CRM114-Status: UNSURE (   8.43  )
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

On Mon, Nov 18, 2024 at 04:26:19PM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts |  42 ++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi     | 158 +++++++++++++++++++++++
>  2 files changed, 200 insertions(+)

Split into platform and SoC changes.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
