Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B13CC282D0
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 02:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=623L/xoLvEAQ9FfTAFCtMd60qCbMRMiKVWJY4c8Jp98=; b=YnzqI+cblEV+QH
	vkfhyZXTlC/Grwx3QsTiiqCSzKnk+CQs4YNIz1+3Gi1jpsMM6ZEnv4F9o8PmiThiqMgFODMo48Bly
	gVMLxjjfDbi3SnaNuTRRVlzoIma5mqD3n19vB+cLPt9+BSknmrREm3XlTIkxoh1ElVY8SA76n5u6i
	oGa2HzsQUbjdX0I8TugQXvBB4LAPFs+9bK2MPnl/nkNQz5A7CIW0UnBAsP5gw+zj15vPjxLvcTEQf
	3A/7Df+t6wzcSg1p1+jDXhKDalVvhchrUQCLiU1dWSpxGZhQDKyrFJk8dTb6/7cE+tFR828HP2ftb
	8OXZeZogwz0i0W3xaYMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpeyx-00000006qYK-1x8m;
	Wed, 05 Mar 2025 02:59:39 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpexu-00000006qQx-3pHX
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:58:36 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5497e7bf2e0so245366e87.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741143513; x=1741748313; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lmggHW8O01EPS0gGRQXTUF3PRDZeyIapChas5mXt/4U=;
        b=lXtBcqYrQSkAk4A2xxpDi4GQUDIn6Q0+DYGUCr/P0gMX55E1UMAEo/80z133DEhq/4
         g/TNiOc95PKHbsWrYoPIp0dvHLBx1w4RnyW4AQ1yc0e5mjynwR/3W7DOiEkIVLbQwPdA
         rpeNRvBLFx16O/QGxn0lMMnpNqMukSQH1h9Uhqc0mjBtAQ7zk9rbqLa/gEApW78q7pXy
         UTRLUVmp69vb8hQCav3lAQ5ZEIuh6zYuJqOuvxPCC0r3IlhfJRGcM/iyN4kPwh/98tmv
         sBU49vXEJFwMNkTFd/CAbduNiBnJflc3JUWcK4QVnV5FtliZ7iaWnaL5D++c1um9wdBQ
         gDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741143513; x=1741748313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmggHW8O01EPS0gGRQXTUF3PRDZeyIapChas5mXt/4U=;
        b=ON7rRuYfQbty7jN6oFBlO45mYX0bSY/BTPpW3KDOrDtXoEcOZUJcjwEgwz3xG0qKmr
         A96IpLOPF8xWvXac2ZLBm4T9LCqi6tMLUzSih3nt1FpoajAWQqFZEVVzbICzYBmEYoBV
         MZRUJFvCnrmMPzEfxjQn/P1CJAlFoIJW8KmNjm+IfbrktZeT4lKn8GpljJ7aCNVCUnMR
         rx9S54O13y/31IZqHKBQPTCaRo92KyMCrMa1CpP/6k19lBfepa7nVdhBXfxSUT6LgJBy
         3r2sYySNEboKbaXDIPzufBdffjo65mAu7670FIRwKiqYK6Q1/lVkui2kOp69Tmf5pr3Z
         EbLQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8etwXhlJ+fA4HuNZOz+wdt0uTi2Pw95f2mAeJ1bWja/5h0aYoYD6EQxLy+YXG5+ToWQaG5wADAkg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRDmF3a6dKsLYcLy8L0Vi6NgIx/OWOkbsvDTT4cJ2Zw4oRCW88
	hHcM4IbnalbgmMsbUUaM09/Lk9meH9a8pC4W6uVUglLVHTJD8NG2gNYT/gbWWjM=
X-Gm-Gg: ASbGnctLLpGfo76bZl+e4WajCMARGK8hBhQ57DFDCPJEGm+kdcpjCRfU+dfcurdfYv3
	+eBrzhh/GCAgK4ul3kA4K+M0LvXV4KaN1l8pXY+G3oybX6zjafZ1cP3ftDrSzvcUjRpNdR4ht2G
	v9CMEakwi9Vb4Rr8F7d8ndAxQGj1ZyxG1scWV3WwQkHvz6WOhi1PPyIhcEzUoUBiIAIVXNF9Tac
	h+Es4C8bTSHpl4v3+I96EMG044aGVRz7MB9xxKJLmvFFhsehC3q8kRXxsm3n5IV4Hw/Jf5QChIl
	Yxv2fsENS/424/AOeXilOPj01No/fuwovPTc7aEhc33LaiGjjDahu/KAbUJJ9eIAwJfdlpk8DC/
	EGS9bv9OnDjscevBm1WDdtncU
X-Google-Smtp-Source: AGHT+IHEi7gu0pTeyCm6UNSNFzowmosNeq+ixhhTaaSaHiD2yIEwbXWQsqiTh1JFRh+rHJ1Tvh3IUw==
X-Received: by 2002:a05:6512:1156:b0:545:2544:6ae2 with SMTP id 2adb3069b0e04-5497d33624dmr555644e87.16.1741143512917;
        Tue, 04 Mar 2025 18:58:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549579424e4sm1320182e87.118.2025.03.04.18.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:58:31 -0800 (PST)
Date: Wed, 5 Mar 2025 04:58:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP and QRD platforms
Message-ID: <6msx5eontkkunldl45npigj756b5sst7xjhmomlnummbsmncif@ca3hkdvtdo44>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_185834_970594_DBB7F256 
X-CRM114-Status: GOOD (  11.46  )
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

On Tue, Mar 04, 2025 at 01:56:41PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants.  The current definition
> will start the USB controller in peripheral mode by default until
> dependencies are added, such as USB role detection.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 24 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 24 ++++++++++++++++++++++++

Nit: two separate commits please.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>  2 files changed, 48 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
