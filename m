Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C300C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 11:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQEp9lj+UXNMjEhND7MnSsfhqXUJ7fQ2BaczuNXLLHM=; b=aVV0ef6GqhIYNZ
	2uio2wOZzaywQnFNKUm3uD5o4MuYja7nsK6CFlp3FkrKZlq5Ea3NplPI2RCvwHgnVR8Y/LrfDM3mL
	09sFWggqNuT/Hnlx8JSSuD0qyo4z7nr5LleY+L5HoxCKJCP9iDUeSOaia31MFChC8UGQrEgLTlOyU
	wi9pNLeHa2EPVN0S/tpJr2ZYDEHjjWf0IWP4LpTeToJvG5Z5WUiOGgsRSvMuQjGsaHMuiUk5Nxval
	H/mLE5Dg6anuEF+LLD4r9xYol/HWiQeNq9sa8t7k8bwp/f0vIIP5bCtEN2igGBh/zjYZc5JYVTq13
	pnF5FRhUdDnhcbRCJ8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoRj-001I17-0C;
	Tue, 02 May 2023 11:45:27 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnMi-000y42-2J
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:36:13 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4eff055d4d3so4331145e87.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 03:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683023765; x=1685615765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R5SeO4KO3GWB1zcDZNvr4+FDiqxohtgvlKpp+R8U82o=;
        b=Idd0paRxxCY3MspEPDx6f2twKYyWsSXBHLFUFKd2iuMSK558630B+RNoQliqB1MaWP
         IIFwN2IeIyyDdFCfCBXtmdNQ06c+xrCDzYMxP7fWfVU3u9C5TD6a5XD2v0g4kkawYGBG
         IIb3QGiBRhQYymt6cOBwwM4+x0OGaer3ANx9iASGO9M0jYQ9Q21W5z12h1YIjG/nxeeh
         OFb9Dg8b75vWs6BwmEOC0ivORcwE04ajMCeytZJeVyy007Z2Lj31RHXDFfoQAScwbYvj
         ChMdvAFPO6KuqNSdEC9niYdJn6zPwa2vIKblbUGCHdf2wbWLrud/GE1qMlsnhptgfWey
         XMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683023765; x=1685615765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5SeO4KO3GWB1zcDZNvr4+FDiqxohtgvlKpp+R8U82o=;
        b=cf75aVelzbQUfz1atccBuDdy0pM5JoTLF7dXJqUWrMevDX8nc8Hnvn/P2RYCyZpI3D
         RAqcxMZp9ZP3nV/afFNczmyGNPDL3VOH7KjOkRuB2YPyRrCXTbxk7Yc+LZ7qkDJWKOhK
         vrSyhbqs0NhvMh20NfW5J9pXkoOogUDDtHu6gERIZWjqhcWdPIM0v523nrVTJUOCeqKo
         c7hzfODbsZjBYeML82bzw3RvwaoofgpkdEGO8N1dUYjtW/mHtsCaN/+CVCQYVr1ZHowH
         AT+vdmCf8JLbq4LekM6aMkshTmZ+UzmMB8nKADKeZTwtXpVdche+UDPELMl+OpoFy4SI
         kTVA==
X-Gm-Message-State: AC+VfDymgrbMxgicInAhyOJOEE++Tcn1ojvmCchmQCYrltCmEUVCeFwU
	NV5uFB3MdNHUHmXS5G13ygzC2g==
X-Google-Smtp-Source: ACHHUZ4acl68cTkDqaKwmcoX0Q2XYrrFgYMNcR1Xg03lVcffNENp+H3AqtVjDaG+/ou5CMF3D1P8Ow==
X-Received: by 2002:a05:6512:3cc:b0:4ed:cc6d:1da1 with SMTP id w12-20020a05651203cc00b004edcc6d1da1mr4555693lfp.36.1683023765640;
        Tue, 02 May 2023 03:36:05 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id j22-20020ac24556000000b004edc72be17csm5280795lfm.2.2023.05.02.03.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 03:36:05 -0700 (PDT)
Message-ID: <38b8139f-e0e3-cd1c-5f9d-49d45e4dc0dd@linaro.org>
Date: Tue, 2 May 2023 12:36:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Content-Language: en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_033612_761042_02BC9B23 
X-CRM114-Status: GOOD (  12.97  )
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



On 2.05.2023 07:35, Bhupesh Sharma wrote:
> Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index dc80f0bca767..eae3024ce003 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -222,6 +222,30 @@ &uart4 {
>  	status = "okay";
>  };
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
>  &xo_board {
>  	clock-frequency = <19200000>;
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
