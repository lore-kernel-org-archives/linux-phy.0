Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD50CC7EE21
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 11:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDXT+aVIimppy7+q/qQK0KZChZflx9IGkvR9bR5giro=; b=StBDEEAqTwgat7
	o3UqXGnVtJ8XfTCuluUNE3CPbX3O6yr5u1SLsZ//Vn6nG7SpcnYwtuSKb3rerC+TvURGURIlYLcxk
	V0Gkd6QC5bzelOug6mxZIZehY+fAhnIfX7071L1S0/14CEujlLSMhXtIPdUBES/1zfm0XTw8PVaBb
	q1uWqHVsc01KE3prk4cEkhTuicr9lLXEiZoDleouulr27s07XZb/C3y0Idp/OTOZEeYmvH6C8/ZZ8
	/i7CtVcDg9q+Bit+Z4rEl7Xee1U3MWuTrK7xn4dJIY0S/Rb4oCfqG8X3d+CnFAWt6fAH/dfURdHzT
	kPUSOyNk9DQC+j1BoG8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnzf-001C9z-1r;
	Tue, 02 May 2023 11:16:27 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnzc-001C8f-2I
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 11:16:26 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f1958d3a53so35933115e9.0
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 04:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683026182; x=1685618182;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cE6mUbhDYFfRG8tqGXVnf8qPg+fy2Z5p2puw4R3ssOk=;
        b=TH8xhFv7ZWHZ/VBl19IWBaTPKVvXrGAJKnGa8Ln7E8sT8bSUaLmOvYTIMwmr+8XzP5
         bwAL6rZXk8HlT98I/66BK3Tq5+HE4aXlUL+LKTWfYQ/CJwouOCjfYukF3c4Z6VOkTcMU
         Fr6tw5GY1NrgNQNMdda+UNzQ2g74Dq/8etBHElEEvl5bBMIKXGYBSydjzMDz061cGD6U
         BeqvN5CY/jUBwDxTAGCJBwPwi8YR5qG7ciq+t+aqtD3y8IybH4pKXy1X4SYgvlEtgGkK
         gIkW/IgZbG11qfVwT7CC/NCbmUywCQFNe22RyC6NBiFOgqtVh8SM1oPRxghg7niCHT5D
         kq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683026182; x=1685618182;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cE6mUbhDYFfRG8tqGXVnf8qPg+fy2Z5p2puw4R3ssOk=;
        b=khKW9ZaPB/WFZaPMOixFdX7JaEmM5qbvvXB4Wodk2iTOEJMChIcMbY7vHpp1ocEWCC
         RU6sKSMcbFwcJGqXYKV/ExUUppWn16OYQ+krCO91ez/YsBShcKy2EnqscQ63MN2vMl9n
         hT9PBpZLHs6zezGBIbE/m+B1rowdoCOTDC1ilD0XBfARjyzbfH6meSLi2P4uiSm940am
         siq6vONpF2Wz/8uGEuoQ6e/6tn0Ohhsc0a0mXUnkG9HBBY1fFIDEkSRSvu6FCu6sS5BP
         A9C/oQsGWaFVwvDFB85375gsUGa2lnQyMr4RbB8tkZMNGwpB/La4yG9qGCoa4hBL3Mlm
         ZWTA==
X-Gm-Message-State: AC+VfDxkgFnK1ptLnFPzEDB8Q0tJXhwNDHztcya2HfZuDdLbces6MvqZ
	uTNAK7KXyLA8xj8j0FI0vGj7vA==
X-Google-Smtp-Source: ACHHUZ67YtYANxx/lxRdshton+BJH6defRMxK1t92WqMhIQim5nVbPz3E29+Dizsl21jiYk1enDqXg==
X-Received: by 2002:a7b:c856:0:b0:3f3:1fa6:d2c8 with SMTP id c22-20020a7bc856000000b003f31fa6d2c8mr10941257wml.26.1683026181996;
        Tue, 02 May 2023 04:16:21 -0700 (PDT)
Received: from [192.168.1.154] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bce09000000b003f049a42689sm35029098wmc.25.2023.05.02.04.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:16:21 -0700 (PDT)
Message-ID: <7bb978dc-aef2-e700-e5c9-dd4ee3d25e4c@linaro.org>
Date: Tue, 2 May 2023 12:16:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Content-Language: en-GB, en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
Organization: Linaro
In-Reply-To: <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_041624_878507_348F26D3 
X-CRM114-Status: GOOD (  13.34  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/2/23 06:35, Bhupesh Sharma wrote:
> Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index dc80f0bca767..eae3024ce003 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -222,6 +222,30 @@ &uart4 {
>   	status = "okay";
>   };
>   
> +&usb {
> +	status = "okay";
> +};
> +
> +&usb_dwc3 {
> +	maximum-speed = "super-speed";
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_hsphy {
> +	vdd-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +	vdda-phy-dpdm-supply = <&vreg_l15a_3p128>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +
> +	status = "okay";
> +};
> +
>   &xo_board {
>   	clock-frequency = <19200000>;
>   };

-- 
--
Kind Regards,
Caleb (they/them)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
