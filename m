Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C690C3DA6F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmiRAPkzUDSK+spqcc3Ql8bAYjE8BzRJ0f+2pPNPiq0=; b=yHbHn+rh7BionN
	YdUzlrfWIPRknzqRRu+328kM77+TRSOfvAP1cOnGdd1uOxfVPMS0qeulzuoJ+UZQyDcQtJbRIadO2
	BDqnSrMFIv9FX0ghDtgNG+D1IP9BDSpAIa0+hJRy0QtU0gVRpc8jO2Vt+SEmgxWsKW3HO9eWq2qAS
	esB79s+KOqK+hhxYRKQ+KJJozTCi65Pjiwl0b25IB3RvLxaT+OZrtZh5biJOzotE5Qm+17YD5sXwV
	zIp3JkDY+0H6yK0iN27amDpJPeZ/aKIAyKfXltibBk2kbQL5hSwJWg+qm56zHuzxhPJtpF4+J90wy
	AA8mZLxDfiwZBGW+K4lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUEL-004pra-0d;
	Fri, 25 Aug 2023 10:39:53 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUEI-004pr6-2O
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 10:39:51 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99c93638322so171556666b.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Aug 2023 03:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959989; x=1693564789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T4bCjQrZ7ywE3HWQV7oP/6H4w62lITlc52ygpwYMfFI=;
        b=b/2B5kQNomuylgRRvXA3bIMXOMmpnHKBi9YGgMIqQniAJXNL347eXDGCMAp0rhbmRO
         8tqMO/CKkHgbEE6h39avWZO8CDh04lC/FXnhEengWH9W8mp+MVwM/d4voiT5PmImrwR/
         KJ4Z3izLAKR+bG5pvd2a/exarE0gImQCq1Atlaf67SB8Eji9IAERWhUX8JveT/gvLyE7
         56giynFtUCXqGUIg30/TjLxfdYU1NwT5XDTaWYcjHJhcwa/HDxVTe0UoJ0uwuPJLPfk3
         xcMeVChesfVvQBXtDrJ9U0P3o1+beJnptMamURKT8gHpWkeGeRFt/UCbxR9wk5J20BGs
         1UjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959989; x=1693564789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T4bCjQrZ7ywE3HWQV7oP/6H4w62lITlc52ygpwYMfFI=;
        b=WL34y5VsGq/Dz3nGxgfAR0wNKJPKvmSh6xjH2/VnW+ZUi+CCJa5sw4/VAUSu7WWGEY
         8wpfAlsjvlJTVSOL+BqH8ODshNAfL0lyIeP1vq3ps4s3ZNLkNH8k9y09Ix0KDRgq4lXC
         lD1hkOscxs3LCRLrlX+qjCt2O5vEhw5N47nfr41KgdNbB1xP/DYGeq18qSSsthVOQdLm
         BNk6YNliPx1dSvFaOIrtCfhwF/e5c3Zb6+aHVNKrr0AGCzxHqxPYyIe/Ym6AfCOXGHek
         y3HMCDRYQnmRR1YLmROODKrSE0wdPHwe8qFtS3jYD4/0TJl1HvogktYT2rExD8CmFSuA
         HeeQ==
X-Gm-Message-State: AOJu0YyyJk7Gyjb12SfF7Bvj14TGf4sFpvCqGDx16tMpIIt0e8yXTwpC
	4Z3au2jLl34IT/I3Qlct8LzaLA==
X-Google-Smtp-Source: AGHT+IEMrMlgr7JpaeTq/MvmU3/4a1WTA6huvdVoSFYPUJSKNZ2VXpw0Gy2tBVpvZnmyuzvs9XADfQ==
X-Received: by 2002:a17:907:2711:b0:9a1:df30:e158 with SMTP id w17-20020a170907271100b009a1df30e158mr6781455ejk.36.1692959989433;
        Fri, 25 Aug 2023 03:39:49 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id rs25-20020a170907037900b0099bd1a78ef5sm819588ejb.74.2023.08.25.03.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:39:48 -0700 (PDT)
Message-ID: <df519068-c9f0-1051-afb3-75f71ad31791@linaro.org>
Date: Fri, 25 Aug 2023 12:39:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
 quic_varada@quicinc.com, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Cc: Amandeep Singh <quic_amansing@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-5-quic_nsekar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-5-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_033950_779433_B1394B7F 
X-CRM114-Status: GOOD (  13.71  )
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

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> Add USB phy and controller nodes.
> 
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..ff477923a823 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -238,6 +238,60 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		usbphy0: phy@5b000 {
> +			compatible = "qcom,ipq5018-usb-hsphy";
> +			reg = <0x0005b000 0x120>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb: usb2@8a00000 {

Eee, where did you put these? Don't stuff things to the end of any list.
This applies to your entire code: Makefile, Kconfig, .c, .h, .dts, .dtsi
and other languages and projects as well.

Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
