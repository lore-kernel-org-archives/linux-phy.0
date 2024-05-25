Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5870C25B7A
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 20:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvobejazrfhedV2HdriR/LgzC5DMGYiMBtfqHPF/uug=; b=iTB2p7KX0SPLYs
	NVneXrLU/RnbMSzWKO9fa3OgGpy4B4wwhjXGSpETm7rtsygCLz9UFB4Tb7/fn6vG5JUKf2XW8jzJS
	MoO8KGYnlXJIo9ZcGwy3jgw0qWXwS6JlEhHQvvSNRft4BB4F0knZ+kVN8uh/vMlRiAuqWRmM9BA1W
	c8ddX4/97B0owdyA/U8Q0+sbk/asq7Ao38l16noo0KSiclU2UxEKkUzuy32XykyXd6TndCFlKwe2Z
	2SS/GBDvyl350IMH/tDM8mT66jsCjWQwyQ34pJ7At/16JeSvuD/V9MiJUNlHcYYrkb7Dd8GE/Lz3v
	WBfcnP/V1yADCdjMeKpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxok-0000000BddZ-1bZD;
	Sat, 25 May 2024 20:16:38 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxoh-0000000Bdcx-1Bpo
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 20:16:36 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2e95a883101so24340461fa.3
        for <linux-phy@lists.infradead.org>; Sat, 25 May 2024 13:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668189; x=1717272989; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ujmKICurQfEycTurigYs3rKwdMGIy8Zz163YNLLECwA=;
        b=EblnDMJfkoeQZDIXHdBnCiYdoPUCDJ3Nv3cfpbwHuCa+ChjRYregqJNCTJxvD/Zx52
         sGMcSjWkP8k0eMLKTm/T35bsthbk/1SnKpjCIwGBZdkEm3IzF52T4I7+5rQE/OmHkIGI
         STquIU80mmEs1KblkD8zqf1Be9Wzb6n2AghzutINlkaLSIAOsUgQgFEzNiX4jIq3iQ98
         A0q2oifxCGlCb6Fo/THzheQ5f5le7rgXS71q63yubgO7Ovn3lCMWWA0xyiNXEO7TD4QB
         vOlKwOCqmJTDScegW7kmOWnsMfGrEWM2xaGP/rPW7wsbZFEnBVQhUzEcGp+42YtWUDTh
         seaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668189; x=1717272989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujmKICurQfEycTurigYs3rKwdMGIy8Zz163YNLLECwA=;
        b=BahSnn6zf8E6e1EU5EjvhpHOJwZt77mljcGLipg5H+TH6Rf1GgFGig6aW1h7aa/RhB
         ECTRXZ94/Nh0bNv5hzTH5JBZs65zUt7dWYjS8hs4ghk5Ny+2tp4qoKzn2kslDiRKbnBp
         xR3HewlvmG+f/92mOZn+Ddi4Lo7zS+1dzYTK0J5ie5MTwXNZpBB8bdzTehRtf3Uq2zuv
         WLe7EDUlpuq1Xhu84xHTNjh9fW9+vtQEnSUzBXXNe1iubcvId5JurCKGQtyRb6VfIR+n
         vGS9gN0WaPluj9v2/nuwaIwyWgykt+hX4gq9bWWDLwg/A4wePkBZDX0rAsAgYchSwWyc
         jZ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGK9z4O2bX0v2U4n/4mWVRAvWW++wTC9RC20z7pb6yWnoILmIzqCYTiZAZrf5OwM/AV/e2RUM8SW37iOzGd0o2OSsCNHoR4Lar4rnLKQ==
X-Gm-Message-State: AOJu0YzUKWWl51J97GW6HzlkhP7aP1TY6A515QwRamYsMZzge/2OSlE1
	ktJoYfV3TKG6Jojog3HuObE8gIQW+tXicykLnmCayXcXhSePapqVlIEqpiL1ltM=
X-Google-Smtp-Source: AGHT+IHEX5m8aIJJV2uYylk6Oj3Cj2tv3lHqMmUdSSoL1mmdUgmPlnc46wlraEODOjaTm00dK0NeTw==
X-Received: by 2002:a2e:87c7:0:b0:2df:6fd5:1475 with SMTP id 38308e7fff4ca-2e95b0c9dd7mr31747781fa.28.1716668188971;
        Sat, 25 May 2024 13:16:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bd0dc92sm8917711fa.72.2024.05.25.13.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:16:28 -0700 (PDT)
Date: Sat, 25 May 2024 23:16:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 08/10] arm64: dts: qcom: sc8180x: Add USB MP controller
 and phys
Message-ID: <ld3kemgy6oac26fa47viwdgjaqjkx3qgysp5ughehbmtugoi4f@3bvxzmvhpdxw>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_131635_352640_919EA677 
X-CRM114-Status: GOOD (  10.04  )
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

On Sat, May 25, 2024 at 11:04:01AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X platform comes with a multiport DWC3 controller with two
> ports, each connected to a pair of HighSpeed and QMP SuperSpeed PHYs.
> 
> Describe these blocks.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 146 ++++++++++++++++++++++++++++++++++
>  1 file changed, 146 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
