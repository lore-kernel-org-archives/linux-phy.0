Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA3BC1B087
	for <linux-phy@archiver.kernel.org>; Thu, 27 Feb 2025 19:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsH+RbBaHR3eIUMMyT4xWSrZf2H2LDyMiw5kMqU1eTI=; b=IWiZ4+9GQiAMq9
	9G22V2fFQ3Jfk03IMqhARXBlCABf65BGvaiJM7erQdWQkN0PxANvDiAkaRfYKhsE77p8E4A50CE0p
	ZQdWDKQR1v2XZFm/02J7Xwwg7+bWnKHKFvRkDs0P84m+QW+aA+BvJPJlJm8/JSi7Zet6w9x65W8P8
	EDrOshVx3Vb7M2XBw1UMXi28WN9Bng9x39eFos6O5t3LPvB+BbAQ2Zf92oVLZJ8fPHCiX50Af8wJ3
	B7MRpI453bZr8DUMhrIupwEezOeGquAwH45IgdVJVCE23FaIY02mWwZ2t2j2cpoK2Isxs+MxP89aY
	JC4vOQQrVWqZne0zpyPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjmR-00000008dNw-1SiL;
	Thu, 27 Feb 2025 19:42:47 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnie3-00000008KV9-2q3A
	for linux-phy@lists.infradead.org;
	Thu, 27 Feb 2025 18:30:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5461dab4bfdso1397839e87.3
        for <linux-phy@lists.infradead.org>; Thu, 27 Feb 2025 10:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740681002; x=1741285802; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HiVWALSTD//m/UIip3RqCj0OCMJzxffojcYsREWRIbE=;
        b=K+VkK7wwcqi5ig6TkxoWDtsziyluwYjBmiKqdQERhXY7/mEu+4CdkLON1580D9HQLQ
         GWUQmy4zg0mPtDSf56U8B+bkD+fvTCpryVQJIzw9eptFVJt1BuqZpVIc6PHROKsKKIGA
         RQcRBU6jfDpZYEB0YiSOCiNXkt5ahNyrQWIRJKpAvOSumJj/lv0qWs0rMZpbFRO1ZL/N
         pAAcWI1EByB3LHR+MbR2uXW0q/8Wv0TeoG661T7LsmvTc5SOJQbJup9xLfhtc/ZEo0LW
         IOJwGAHG00yitjZsCEbunpX6tcBNzO/xh+I/gY7mEvjxgRD4lxCpNWnKKNloH3HUWQkg
         +oEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740681002; x=1741285802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiVWALSTD//m/UIip3RqCj0OCMJzxffojcYsREWRIbE=;
        b=OuiU8Ew3zRHW0Ofmcw1BYuGqMD/h1I5hX/ZCF3DfxCc6Rhsp7KMOUZuBF2G4GcsJXO
         jNaGXWnhY1LkusIbJelijLMv1OzDWm2ypEDVmIRnbMWD501t7Nr9iM6Jpf2o68JvI7JH
         5n8VL2I8Dgd0VD9zhG1FOcmFBYDOpMEE/qbnhEY0/L7iqM7KJJhVJHJjNfUwWTnC4xlr
         P6pqXb7wJwcMqm93YqsVoRMJ0JMEYJaQGwDbY0YtfRCLnNmHJffrMkoshfi87ndQw8Q/
         CHTNkAn4JY0M3G+Vq3c6NbmxzlnsyqvZk5ki2iZp8Nr2nlviQ0wmJvhBkodbxV3V8Jep
         HUcg==
X-Forwarded-Encrypted: i=1; AJvYcCUxZdgQFFjhUK8I4eqio4tsMjnhnj6kSRJngS/OeWzYkzVN8aAt56M9fSTAqM7JTN5YXOQqkdE8ons=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUZFzW7pe5zk/DOqqbIUCEh1DjEphAK8VrUwk7oNOt6J9z4lE6
	gdTugvOn5mUxWRH669X3IX2uCE7Xw7BrqU5LPqRdVcIk0YeYHwFbwGEtuYXNNDo=
X-Gm-Gg: ASbGncv3HkRm5/1Ja/jDGYoxy/IixGrHXEbnrP1RBCauSt0oLes6+s+hefHmD8iS6NM
	sm30GV+dDy4fcGmBKOUaTS/WWAuOwgXrQw30V6AfoyO2V2Fn1hgKd/MTVjgl9cDo1eYMEfk/PxZ
	8qcLu3er1nii8RskGhQPGWaS3CjT1qb7V+WX9Ig3j8qF56d0m33QgY5H0hNGNEOniqGrv6NdWU6
	OcbcFVGDew4r1+h6m5qUEIZjz/luIyTuWTtljjzH5VnlR3XmtsSL+KikVbw+IornjJI7hwGfdhQ
	phQoIBcVgMjZ0WRZshsK+MPTV4Vq24JMMowFxlkd6l9YHkzIuCUsVhE83Ocoe8yCybIkNTDsNw/
	YgWmp3A==
X-Google-Smtp-Source: AGHT+IHBikfdMSK2JkSKuT0fc4cM+qKPdJZs+aMwAQcHRUzz0Xs5ze16P/SepqSYoZv2Lgzl1OHSNg==
X-Received: by 2002:a05:6512:1103:b0:545:225d:6463 with SMTP id 2adb3069b0e04-5494c36bcc8mr200018e87.42.1740681001614;
        Thu, 27 Feb 2025 10:30:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494417b66fsm224376e87.93.2025.02.27.10.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 10:30:01 -0800 (PST)
Date: Thu, 27 Feb 2025 20:29:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8750: Add USB support to SM8750
 platforms
Message-ID: <g47ac6bzxqyqbkuqsvuwm5vdc7x5wjfppv6fj4mftwyjlyuz7t@jzmw2kfa2jnp>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_103003_709434_52C678FD 
X-CRM114-Status: GOOD (  13.28  )
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

On Mon, Jan 13, 2025 at 01:52:13PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750.dtsi    | 134 ++++++++++++++++++++++++++++++++
>  3 files changed, 182 insertions(+)
> 

> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x3000>;

If I understand anything correctly, this should be 0x4000, not 0x3000.
You have missed the DP part of it.

> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
