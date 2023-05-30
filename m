Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26C86C7EE2C
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hObS9GufmqN9y6LbYAbD4V2XjiQtM8SW/De1oir7pxk=; b=i+o6UzCiEyKvkm
	IGTutjX28nlsRwuhyRa4HkdXjgmwYKeJoxabw2l/zfs3dmkRnibiGI3Vj6yl5/AAjcVwhQTelD0eb
	qMiTkMjBV3SOSo9totLycpNR3Ug1tXHQNlytlzunD/YeqtPhIsZZPCsGKcKtyIzYnDdLCgIW9GPzA
	pHFI8dcN57hbYILrHqi+V258cS8CuV+U6OmlMIbQny4T9IYzwJpTGIMg3s+npgqSWPG/l7/NPSux/
	JH2pWJANlFoi5bDMSUWOBkJvxtDZkl2DHBKZTvxGXm41xByu1eyDpJKT5e/R5yJQWPEro8FH3UtVh
	QLMSuzZ1gZ8U8SLSj/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q402X-00EBCA-2b;
	Tue, 30 May 2023 14:09:33 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q402V-00EB9V-0N
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:09:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-30ac4e7f37bso2892982f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685455762; x=1688047762;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cOYMCp0L07cWN0lYoOOkUaK3rDnXqzBq3iFkTu/EpE0=;
        b=LeOGtkKLtPfTlTTsoG1iavtRGpS4FyMVhh2osvBdBLWF/48HT7n40bh8ysO8q7A2b3
         1Y7HvgFI/ZKaRnLkZUf7o//6WRN1xquv9rhGN+Buo7k1A+vG05aXsmZu4ApCmP2g9CTY
         nq9K36zqqjg458nr/jc2P6bQsEmw8+f2TP6eM7fP2Xwu0zGej+aeR+WTuwFmdUT1NlFG
         KljYZztHoFzkCmFhzdObd6Iat20z0yZDvZPN+/maF/S39ZP+bvo8xla3sygh8ohx0379
         VO9CiwNV3zRI405DdwOxolh8Hq5ZrpIRrQWVH3sVJWOtnWZgs9jugbM1RIyE9OXkn/ow
         vagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685455762; x=1688047762;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cOYMCp0L07cWN0lYoOOkUaK3rDnXqzBq3iFkTu/EpE0=;
        b=WuuxnoU6A7wRpnrsrKzaLztMfMh6jiBIQJqAY34zeB5IuDLv7jZM/xvxWuB2qXGUHg
         NStEHAFXGKxsuVRhz6Lmn98VqnNwfrh3ofSu40hq8DNUhDiHtissMLRxuRyMIfwZNlue
         0mcm8zIyX1bBDrZiF0tE9vJW4tEvskjhHmhE2ak47qecvp62I2QP6Ep6KqnAvYO/jENK
         hF/4BYRAvR/J33B0UvC3AT/OdQym5LwCJJ2J14IY2bIANAQQ/v7kQ1wEX70IpJBDljr5
         6PMJ/MrrE2Isdv2BldJ2AG0kp35Cx4I/awGM/tS0J8UVZzE+NiHpC/oxPy4tGIVtvP8y
         yT8A==
X-Gm-Message-State: AC+VfDwzntgTp8oF76qckX7s7wTA2aPngV3YMSPBnIEfFqzDil/czJQ6
	rWqTYItnJ7W22J56AAol0h8jrQH1ld4a3e9aJGFvew==
X-Google-Smtp-Source: ACHHUZ7OurhTqt8eEgJm6Ad0VCEpvSE4MlYPa+jOtlM6LfI7PhjrKdo45j7v0IhM+vAXx3kevWaC1g==
X-Received: by 2002:adf:fd4e:0:b0:309:303b:3dc5 with SMTP id h14-20020adffd4e000000b00309303b3dc5mr1545579wrs.7.1685455761959;
        Tue, 30 May 2023 07:09:21 -0700 (PDT)
Received: from [192.168.0.84] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id l12-20020a5d4bcc000000b003062b2c5255sm3490569wrt.40.2023.05.30.07.09.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 07:09:21 -0700 (PDT)
Message-ID: <448257f2-1b7d-5ec1-5847-94024dac6208@linaro.org>
Date: Tue, 30 May 2023 15:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
 <20230521193635.3078983-4-dmitry.baryshkov@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20230521193635.3078983-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_070931_148868_DE4C9F65 
X-CRM114-Status: GOOD (  15.13  )
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



On 21/05/2023 20:36, Dmitry Baryshkov wrote:
> The first USB PHY on the sm8150 platform is really the USB+DP combo
> PHY. Add the DP part of the PHY.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 2273fa571988..1f442e1be63a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -3399,20 +3399,19 @@ usb_2_hsphy: phy@88e3000 {
>  		};
>  
>  		usb_1_qmpphy: phy@88e9000 {
> -			compatible = "qcom,sm8150-qmp-usb3-phy";
> +			compatible = "qcom,sm8150-qmp-usb3-dp-phy";

Subnodes need to be renamed to usb3-phy and dp-phy respectively,
otherwise this fails to probe for me.

With that, for the series:

Tested-by: Caleb Connolly <caleb.connolly@linaro.org>
>  			reg = <0 0x088e9000 0 0x18c>,
> -			      <0 0x088e8000 0 0x10>;
> +			      <0 0x088e8000 0 0x38>,
> +			      <0 0x088ea000 0 0x40>;
>  			status = "disabled";
>  			#address-cells = <2>;
>  			#size-cells = <2>;
>  			ranges;
> -
>  			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
>  				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
>  			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
> -
>  			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>  				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>  			reset-names = "phy", "common";
> @@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
>  				clock-names = "pipe0";
>  				clock-output-names = "usb3_phy_pipe_clk_src";
>  			};
> +
> +			usb_1_dpphy: phy@88ea200 {
> +				reg = <0 0x088ea200 0 0x200>,
> +				      <0 0x088ea400 0 0x200>,
> +				      <0 0x088eaa00 0 0x200>,
> +				      <0 0x088ea600 0 0x200>,
> +				      <0 0x088ea800 0 0x200>;
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +			};
>  		};
>  
>  		usb_2_qmpphy: phy@88eb000 {

-- 
// Caleb (they/them)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
