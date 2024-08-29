Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4F90C71135
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWnfa/fcIqG36FxLXehpeUH9yfXjp7mck7oAUdzv/9k=; b=j98nXTMPVlzoLQ
	sQuhEfjaUuZMxPoa+VxJSk/D638e2R89vPuS/ShVjg7zIL41QNmqp4fpFdjX71a+7HzeXPYvGbrkX
	dgjVSBTuCcTf+qfbu+6oDRvXmJUDi1tHPodtvP3H6cPxpfwZVRSrm+zieBiVGX7vmMNe+MEmKU+8J
	5bHfiCcFy3mdFHAW0lW9xGCgtRnSNo8kiW/s3TCjRdRBN6ap3tRbpST4bY6EEhMexNwx3SeqvpZWq
	GF8cjKXIjKxIHxj2GYAcGquHKRF+RzGmFNI49OijUBwqE6h15wBxrM3V+/nTB20X82qtOsSgcxFl2
	ydPqYTsGv5ceODtkFOLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbAk-00000001Imh-287m;
	Thu, 29 Aug 2024 09:10:30 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbAM-00000001Icc-0LR0
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 09:10:07 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2f4f2868621so4928521fa.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 02:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724922604; x=1725527404; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O6NBn/HAssV3X2fUR8nleuDhVgAPEyHrLktSv5/fXyE=;
        b=vhDPPHIGJrPB+MLKOS6eXVoeG9PEPwuWsFtbnFCCHQ+yfq83djmAZxKfTepVRz4Bk1
         uLG7IByGVUiGvaK/MhiEhC1gah9OnfRIvBdC1NhOK85vm3/nhkcDS2K/DSgxWXNPrk1f
         wJFeCPneeExH9Ps7Vv9Qn1fcp38V87DhQ7DOaYTyrNH7lU5V1TXZcJ89Pm/6oCUqTDwb
         2B1rx8njzGcixyjRZbGALVvSofu4R3wdYJXefdweYm6WTYsUzJOCiW+80nclJk1pjvI4
         Qz6RfpmWbZZdU6/rCb7+gjSHqGW8xCtQFaKrbwp3FFDFa0DaWwM3tfU5ZqV0peXCkSA9
         3NxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724922604; x=1725527404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6NBn/HAssV3X2fUR8nleuDhVgAPEyHrLktSv5/fXyE=;
        b=FpBnmDHunfHuFt5uuu4jhJB7ludKw+DB76W8C9tOxu7zDyEgjBnUGyV7IjuDDI0Gvs
         MgqPZYGc35DNlo00MgCQZ+F9hG050y7q33RteljA8djNRuC7XaB7HkQ9AkAIFeSpRGOi
         2rVUPFsbGFzJ8uWx87EyX2TD759Chd2Dcidw5MzhdgSimAZNo0nt4qUq4Wect4zL+sEN
         olJBdn800U089aJhDG1gbBl+lmpR9o6H9wLAQEUFlBO5Wjh9pVHDQ3gh5Xom9QJmS/Dr
         l7S4MFNWC0OzD4e8w5bCgL+B/9Sqd4PEWODCoUglsprG9tOHEoupj1oIdpg8rnwakGz6
         vB0A==
X-Forwarded-Encrypted: i=1; AJvYcCWZgAmzsCxwn8pAoYUHLY83LDBclB00XAsRnoszAwzwBo6LksXE3qFL8I0T2lWkkiLPjSATIZtZgms=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpKG7iM20cfwagGp3ltX1dhwoLfkaSMH0cnNN1cScOhwGCkHso
	eL7znPKDUFNyNa9x+A0RJQ0VT/Wk081sBKjLTpEqv7zZ0R+6gphKhmq0aFb/7zM=
X-Google-Smtp-Source: AGHT+IFvfk0TEfgAeIuX5KuN0s5sCC0/zMMfp6eawrjxG3Ca1XvBQuxc+Kts21vRxC+bjEIR5246Ww==
X-Received: by 2002:a05:6512:3d9f:b0:533:4820:275a with SMTP id 2adb3069b0e04-5353e5bf517mr1240266e87.52.1724922603591;
        Thu, 29 Aug 2024 02:10:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53540827b28sm100441e87.140.2024.08.29.02.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 02:10:03 -0700 (PDT)
Date: Thu, 29 Aug 2024 12:10:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Message-ID: <nut3ru5rdjf3k3np47gqbpuczvpsuoismx6hp55ivc5mqmdglz@zyzbra46i6iz>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-7-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-7-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_021006_145619_53CEBAC3 
X-CRM114-Status: GOOD (  13.82  )
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

On Tue, Aug 27, 2024 at 10:27:57AM GMT, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v2] Moved status as last property
> 
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index 8460b538eb6a..2b253da7f776 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -28,6 +28,15 @@ &blsp1_uart1 {
>  	status = "okay";
>  };
>  
> +&pcie1 {
> +	perst-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;

pinctrl? wake-gpios?

> +	status = "okay";
> +};
> +
> +&pcie_x2phy {
> +	status = "okay";
> +};
> +
>  &sdhc_1 {
>  	pinctrl-0 = <&sdc_default_state>;
>  	pinctrl-names = "default";
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
