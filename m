Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAB9D78797
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 17:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYiOz9J+6QvOQhyWUkC9UEuPysbnkVGRlYauUxBFqLQ=; b=OPGP7x1B821mLL
	9icGZnR1W9iAVEqy+ukDEIqySMEfTCHycZuwU6QZwf5TqyunKKcdcC0S+R4FfPpFuqIydtR07y4Ph
	WsfJIl5DiMfuvC2q05jLjLg7YCuS5lJHoLDUOml4HV9aAq/q9pt2MCASQ3nD+g9hSNzCxR/ybqG2b
	GhNI+7eHrpNAfBFwQG7Gd4bePeiH77jJv2PhiTyLrmyeU0IX/lJlANb00Inix3SlP8HSeHzsswNGB
	11Aj+3I/jEWHy8aCKb2rAr63duCuInnMMHcBo9IEnbDxN+34NA90xZF9cnYudP23hbzYsJX8bwWIE
	HeOZZtfk/dnf9143adKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEAXC-00000000V2S-0MdG;
	Thu, 21 Nov 2024 17:00:02 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEAX9-00000000V0o-3LnT
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 17:00:00 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-539e4b7409fso1229774e87.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Nov 2024 08:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732208397; x=1732813197; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4kWmOlhAyvLltjxgfGITPOMja876WfWZzWl3k645acc=;
        b=Gsu+WuPHnYBXpseyctWsGC4ty+mXJHGTXyGrgQU964CrnvVcfqoexU2M4NvUOC8ZVy
         2DGU+vrgFPrFwfwA/dHbTusxEYGUWGBKVlM/PwaDwnRypBNy5fZ6CR1FNlFpwLzYONFM
         4jvHAIGuJVjuD7KQB6j0EnbC62hQa4yileNxMj8VWKj64k+Ysy2cF3r84+RuQQph3B+2
         L7/HW7TYjPfljyWRj60X6sOsUwqJBeMsDAHnzGfomXyGokOGhrnXKYlQcmk2wiF1ZxYi
         DTqyR8MafaU4K1ydA0EUpw9G5BFglcy5E+AAxOd3uHvdejuU8ISwX4V48SnasxB2ii9W
         M4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208397; x=1732813197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4kWmOlhAyvLltjxgfGITPOMja876WfWZzWl3k645acc=;
        b=CCiW5YsQw962U7eC1/+EdWDpc8W5qB1BV9w78wZO/Q1OI5lBpOWr+Nu4gC5kyYS6gp
         AW2BFGLLww3D8gzleCv6FXjvXWoD2O9utvqdm0MTjnMrGSZ1PL+gu6qg46sAZRrERVs9
         I0xEAQ0UkH360bViLEKfTyEoqBjzETItHcuF3xrfno30K5uLOB1GnIw79VgWlyLBFk3v
         VGG5sy/7O9hkNOQOS9AxyKxjshCUfNbRbIXkZChRznAgvnOkM9wr2udQxwq98GY5yqSF
         wRBojhoPqMy4JUq8yltRz68Xm6S6K9UEh+MgIw7pLCWjFESLFaIglGUF0QMl+cVkvt7U
         msGA==
X-Forwarded-Encrypted: i=1; AJvYcCXOHGpSs6xDq/x90OTB7Q0NWCYIM7D8c99KDlV2AesRNBAEIrdi+D/z7dV5E+zPWXgL9FA342NB6JM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUYF2LtocW6Q9wqzq3rCGIOshZLMDGR/vFFV5/Xpn7gGzQsBvc
	6C9Mv/lOUNaVtkXeUTXuwa+7PRuTAy8lShLkwKwav/fp1wnxyG0z0dKLliJrAv0=
X-Gm-Gg: ASbGnctielynMgVkY+YD5xzdoWNPyxgTVpbF3Q5KPT9wZ74RAny3LDDY+uDoYNsv0FH
	lB6vfXp+DYYPwsAx+wz9AmpnFQ699AndeocgR++Gy6VBB+ryUvQzvEkVCg5yCs5WUClzCjPSLsY
	ptAD3QWtJ/m8LcpTCI0XHiPtlmOrd8uFAzZ/anvrwUZCF2zE+FLf6JZdmheS6WNsB/fbMQqqRfK
	urrU97V07SWXjqYB5JOk/RlEASWIqHFMA4WPw2cpwG/ZYlBAty251Pd6W2ZWycFYTyTLBK0LMi5
	uhsFQ7LJ/1zigWbC5alF8b4MFlrTzQ==
X-Google-Smtp-Source: AGHT+IGL3c3ho7r8sF8Xcr9a+4/C/Ler4BcrWhP6ykFH/IDRrpCDlTkssOTbniD/Y/so77ORXxYebA==
X-Received: by 2002:a05:6512:3d18:b0:53d:c861:38a3 with SMTP id 2adb3069b0e04-53dc86138f5mr1426353e87.27.1732208396862;
        Thu, 21 Nov 2024 08:59:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd245186dsm16381e87.100.2024.11.21.08.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 08:59:56 -0800 (PST)
Date: Thu, 21 Nov 2024 18:59:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <oikbuo3anhiifydvzdsjazbdwqqwt5ssi64sxopjrdiryr5r3y@igj3gzan4ks5>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-3-quic_liuxin@quicinc.com>
 <4bf9ea1f-4a45-4536-82c0-032f72b28807@kernel.org>
 <f5b40d0c-defc-4b91-9313-9e454af22fb8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5b40d0c-defc-4b91-9313-9e454af22fb8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_085959_834072_24AAEA11 
X-CRM114-Status: GOOD (  10.19  )
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

On Thu, Nov 21, 2024 at 08:41:53AM +0100, Krzysztof Kozlowski wrote:
> On 20/11/2024 17:58, Krzysztof Kozlowski wrote:
> > On 19/11/2024 03:20, Xin Liu wrote:
> >> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> >>
> >> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> >>
> >> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> >> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> >> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> > 
> > Confusing. Who is the FIRST author? Please carefully read submitting
> > patches.
> I retract my comment: It is actually correct here.

Yes, I was also confused first.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
