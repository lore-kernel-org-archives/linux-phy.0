Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32B60C25B7A
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G6nZxA9iy6SPNNYrAsoM3TDSxvuy08/QZIIZp2aEY4=; b=XgJgdFOxaDWVP9
	mBKTBaxB7qkQKvowbYDo3GnDkPLgdPpL7XrLN0jWqginD20HUpaT2ZSSA5XjRMvJquPS7FUKEJD8H
	MveqPaI5n6o+aHzDXMZjqwMpncHUmCphu8fcxo5skRDLsq/Emag7+AI+GobNc7vjmxHpz3sSdBERZ
	mEdXzw9R6VTjQgd2IcteIjwYl/IHWV5jSQaSsTBG0V/g8/a5+8B5JML9sdEACEBuMzStDWKE6sH3M
	LojrU1bLaq9ID3QKGfjeL450RuyjQS0paFqwUPE0z6h/0OyZxHxAino7SaYqGSNDcvbIQxrXWj0qA
	xXPlM2DhY4oOilFWHH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxpc-0000000BdpG-2CPy;
	Sat, 25 May 2024 20:17:32 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxpZ-0000000Bdmd-10Bq
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 20:17:30 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2e964acff1aso13141981fa.0
        for <linux-phy@lists.infradead.org>; Sat, 25 May 2024 13:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668245; x=1717273045; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eqkkaAhB5zodAiahm8ADezWoNphieJvlbxZ1nCfU3mY=;
        b=E2oatGTwr96E5JMLEvpXgmGjpn8pk5dwBRpHKKX0AD3yliy0PV5606ZZWDqluFioTz
         C9M1dehbd/W2oYFP/8DPSiDpAi66pSKVwzkH14fM5ZvwAtwwuj+kbm8dcu4beDiIq3z5
         pk5i99QKxchMVXPCJGuy0VDOOQGA4+BxwZxm5XzsjgGJK4VHo3Lp3jv5Qo4gTVkneZGf
         pYYdDGezFPs/O5GxA4IkJcrIlMnR85m7wRMI0wmFnfNGbYF8z4XjvuO07fGZdk361Q4K
         TeLuK7TVv+lmhMOqwGNGQQ3VQmFRFV0vUpvlqG7inxbjiBTMQSeKzeGQW82qDWw8snry
         s0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668245; x=1717273045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eqkkaAhB5zodAiahm8ADezWoNphieJvlbxZ1nCfU3mY=;
        b=udhT13jyW2hhEOcOLRVSZ+389ZTxJEAVkx1nkb6cIsSQqrv4+w1QAjO26DUvsntKmr
         Yqixz0gz610WhDCp5CbDLgTRiZhNcAk0KfIeyvqNaeplpr9fWqLSXeen4pEKci6cHwXm
         C5cQr9TvStTsGNwdJvVsw8E7LRROCSJ+csB+fUsXnQuyG+0OOhytkdO4FA2gyLi/ejMi
         MDwdvtivU2exaT8v4tQtlqEXkh2Pfdu+n1m6tO85/Uebq+RVYdVlal24pqL1rZbsA0ha
         A1SV1RexA5Msi+XGRrfJeWaxRrNAMa+7mqSBkIcqFP1Fb06y3IyVi9s3NeCg4NrK6AEm
         tnAA==
X-Forwarded-Encrypted: i=1; AJvYcCXeimMuu0rPvWcf9kt8chiv/MVCkRMVfdBo0Iaf9S4VkWyUq3OZyuhQW2rBVD6JRyV3f6e1J4GlYaC3bDDOta0RnBoW4gKNld8VxNhyxA==
X-Gm-Message-State: AOJu0YwTxQENKmQzvDlu3JQI30WlCYnMs95pr3HuX/G00NP3aCu/anUx
	82gW0VLdhpKc+hqhP2QcaNiLZHzEsIWr18tCTRzzYIPbp/jE+QSU7wRcMJiVzxw=
X-Google-Smtp-Source: AGHT+IHXljxuGalAvmyjvzrcNfI1wbojmx0iYFgMUe8hBfLdt+A/BD1AGKqWABqy13mTAz406l/ehQ==
X-Received: by 2002:a2e:a178:0:b0:2e2:1a8b:e2f with SMTP id 38308e7fff4ca-2e95b0bcf29mr34404251fa.2.1716668245179;
        Sat, 25 May 2024 13:17:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcf4bdfsm8686871fa.63.2024.05.25.13.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:17:24 -0700 (PDT)
Date: Sat, 25 May 2024 23:17:23 +0300
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
Subject: Re: [PATCH 10/10] arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable
 USB multiport controller
Message-ID: <dazmvgycbywpsbgtrnhi4hv3jgi6lt7dpws4gn2du7z4q4ygr2@ph44udnljkhr>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_131729_298503_E6D630AD 
X-CRM114-Status: UNSURE (   9.75  )
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

On Sat, May 25, 2024 at 11:04:03AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The Lenovo Flex 5G has a camera attached to the multiport USB
> controller, enable the controller and the four phys to enable this.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
