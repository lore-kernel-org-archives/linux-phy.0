Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A74FD69109
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 13:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2M1AiNoropsW3t4ekPf6TQdZY1bdKmMYtuJAcyMmA8=; b=4DWuN/wZn53Z4M
	hC/0Bt0ZL9l5Z5GqVWKDsbmLn0hbv/Sj0vVKzi5OPW0dHKW19+cEzrgRTWOVLTUaUo/mGPHRxoad/
	+66wGgFTcANVpKYjCBtZl3oCt0+1qc1J68IFWd6impAxSO4Rd49vViZI0odNf+LRKVS0mXh8Ixkom
	IyFyhnQDptrwi02wpDoOO4M1ZXx3W9ifru2kGxf/A5IPh1V3YkL/uNLAYp4tuK4pXk2gmw+Sqi2B5
	4PI/d3nXeRhi0FL04F+2GE1teGpDrA8pLPiZfkK3huJGMwZFqhKzG37BmdlStyYtSFNLtTk8vZvdO
	wG/9SCE/Na7iXXI9peHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGeTd-0000000FcGG-2vtb;
	Thu, 28 Nov 2024 13:22:37 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGeTb-0000000FcFe-1khF
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 13:22:36 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ffdd9fc913so8674521fa.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 05:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800153; x=1733404953; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=34gZUZi5tu048lw280ahbLQ/y69l+6hlbhcpQA4G+Uk=;
        b=kbby4t2pYH7IJn0ABkvC5YRDpDvpuL+Vg3HRAKc5BejgT7wjMKmi5ajkB4rpDiHHNW
         6r8GJR6ljSXD0ew1GERD+byQ1RRtKdMfxyABME6CLDOW04XdVSvL8K5+2Kl2VgdMNkJv
         huFQS8LR9FO7zSafe2Tj/a4Iz+NgHPFp8TlT75Pz7nrMOKGi2cDMymr37PHHsAq0g77R
         YR6JEs8ok2Ou454hlry4wdZx+cYksqaZ3mXuTVIY5l42S6+N+Ja/YIResr+ebL4Q2hhf
         7SU9SE658ZQMA5ds/ecOiKjjPMwFpLLWJJybuKo8/6gh7WNvj8Hvb5Q0XK0t1mDkO33J
         wrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800153; x=1733404953;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34gZUZi5tu048lw280ahbLQ/y69l+6hlbhcpQA4G+Uk=;
        b=J2St4EiLFsvfAFH/+3Th7MVB8SkajTmxJys5MuGk2o0PqWmg+ILfQT7gXB+a+IRYwr
         gAfHbF1hEPMYkH4X9DDUekrU9a/BRivtkyzyBlktGCPPuagcMaaBe2vAK7CLcKUNBtKp
         IvSdbdJBcrT8nT9NLTpr/q6KsJHRVBClLAATPdDq+HcDnGI0wnGbjY0ivwY++dX6peQn
         5gyUNJ6Ywk5z3TSQTc2w+AEJN8XGEBLtiS1xFwN88/3yLnRiSIMcuxePChJ6D38NlkRF
         /xz4feflTdsQZISMs6FQvdw8374R/T+uI+z+MVKPzToepDV5q0P6HQJ7fGWGAHD6Dq6e
         td7g==
X-Forwarded-Encrypted: i=1; AJvYcCVX/5CmvHvjH0oToXRrukWjq1vpS3qRYlbNEQbShHIUxVp4dulTMMxrZSnlDHKHEIele25bXswQurw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxr9sGOUKYEk2CDdvvAFbIgktRLuaRhOriQp6E+koYA9dSNoYBh
	iFF/Qb3O/bxQAaspjM897dK1SiIjO4zRR7B8xrxi0mbb9yNE1YzGJMycLrX6xk0=
X-Gm-Gg: ASbGnctim8g9lpg6hy+Ghgx2EPtatXNoa3pCYWBab33eC6O5YR5OKk9jUxV7gjB9JVf
	Z9/vsVZxX6mMFS/TYMIe7kWVP3CdVEE+BouRQv+geBAmxGw+uFtwk2ei/Fia+Sxr7oYw2+9KciS
	QdeNh3Sa7CrigyiMFYrCbHqXefDL/VgmGDjpSfalnv1zvufjXWNHoU3dvvnjM8enqjAQm7Sm4BE
	OoN1GzKlQ0LXGkOt5jKuFG/MbBh1GRHwXWaNKWpGhRHU+6VW00PvJnwRM4ADEe2hxyQace8yHnO
	YeDC5fDs4t5ZuM1oouOtxuxVPfc9bQ==
X-Google-Smtp-Source: AGHT+IGvVPSZJFn7GQ36svvA57XZmhphOcMaYWe+5MpoDcJNDcG1XTTXDgvR+lt04+d/kuWcwV5Plw==
X-Received: by 2002:a2e:bc22:0:b0:2fb:5035:7e4 with SMTP id 38308e7fff4ca-2ffd5fc81e9mr42772491fa.5.1732800152993;
        Thu, 28 Nov 2024 05:22:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbe5373sm1925311fa.26.2024.11.28.05.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:22:32 -0800 (PST)
Date: Thu, 28 Nov 2024 15:22:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 platform
Message-ID: <v4s6vj25vzsywiptfy76urngwvfjxymzgrlocu3ewdzgbp5f5v@djn4f6ous7y7>
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-6-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-6-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_052235_454370_54189AAD 
X-CRM114-Status: GOOD (  14.14  )
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

On Thu, Nov 28, 2024 at 04:10:53PM +0800, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 44 ++++++++++++++++++++++-
>  1 file changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c3..7f97f771c44a 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
>  &gcc {
>  	clocks = <&rpmhcc RPMH_CXO_CLK>,
>  		 <&sleep_clk>,
> -		 <0>,
> +		 <&pcie0_phy>,

Review comment was ignored, NAK.

>  		 <0>,
>  		 <0>,
>  		 <0>,
> @@ -223,6 +223,23 @@ &gcc {
>  		 <0>;
>  };
>  
> +&pcie0 {
> +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie0_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	vdda-phy-supply = <&vreg_l6a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -247,6 +264,31 @@ &rpmhcc {
>  	clock-names = "xo";
>  };
>  
> +&tlmm {
> +	pcie0_default_state: pcie0-default-state {
> +		clkreq-pins {
> +			pins = "gpio1";
> +			function = "pcie0_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio0";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
>  &uart7 {
>  	status = "okay";
>  };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
