Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2571C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwde9jMTSh0em6h3f/8X0kIRhNfM3iYJ3bzG5A1i988=; b=Fd5MFbRgT+DJea
	3aG+JH9u6FdGatZVBawUE6QzemqOP47HqzTZd8jdY93tkxSZQwj3PxBNtBpg/eEbVV/VPtt6/SBXJ
	kSAxLl3ytXxkfiwH6tDEa1ufsTXBdj21+ERc05NjpjqKuHjsRJbNzzS0gODh7pFzxYop1D4VcgkUd
	JlbvNfmZ8y0wMlT15uEOv6O0koDJ7ifC9O8aVf+D5E8n7nHDDkgliYvIVjY8JUngaPKvInpldDrrU
	3tkO44Kx5tRPZG0E34CIlx6pTauirx+rh5mUz3n4fi2hwfkxCwfmr8ILb4RzGIssO1u8M6ibnKJeV
	f495z4mGx09cFWwKYZ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BRI-00FmYe-0x;
	Wed, 31 May 2023 02:19:52 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BRD-00FmXP-2L
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:19:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f3a873476bso5829063e87.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685499578; x=1688091578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fN9aqmrxQ0R29i8ZMSEVgAodlzY7fIN8k4E+hWiYua4=;
        b=Yu0k7DfaF+CjbbjAsgIoAWRJUsJDn3fYOqPHRomQc5bGpNbledbio/ovuAEo4JVbTa
         GR9mIwZ2qP6cpoQeqCxLm5yhb8Yt4HgycM8v19w1DcpqLdGeyPVz+F0D7V6TomgwHGsB
         v+h4ppVOFnnsvonChJvBlypZpany7u3EUxxZxRGtKgeep6u6wt2uhp253OW9sibVL5+3
         pb6xwelvD30CEDf6XPmBPAlhaBN8h4LkOQXACPoTr1Nz5/Q5hUxIyZiBv+8D1Tbf0Ng3
         GitWgm+DkbAsbfUCqg0S+5+8TOF+PSGLwPZV8Piw15G0r7D7ZK5OS7YemTGJqz5PCbnL
         6VDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685499578; x=1688091578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fN9aqmrxQ0R29i8ZMSEVgAodlzY7fIN8k4E+hWiYua4=;
        b=BiccbPXX/NCWP4xRZrSPqrT4W7Pwf8K1Kj2+w9qv0yrg+QDOXeZvz2hNJSjQv4dPT7
         NuXqt1DKnl17tlSWFwc+OR0Kbz5m2ZItWsB6NT3iIbKCBelReRrcARgTChN7H/2Rf5hO
         k0C3WGXNTCactpRfg8A50lAHgfvJVvugRCbBHa0mGYPc0R/0Op+Nm/E0q8EYDuz01HtH
         6tYoCIR0tP71YXya6HUVJKyzQtesrdoe5vkWpoR0PRqdjFZuJ46ELb7e6lSrW0S068Fh
         CLWrW+k0DlxVUaWikXfhSI0DL9dmo74z5SR9rmgR6hx9t5ynoiR5smrXUdMOFfakCHMZ
         FesQ==
X-Gm-Message-State: AC+VfDziffAPyY4nCr3siCtcYoIBbgVKxrM7xRfVXLPWNz+jDrqpcsKS
	hB8oF/FpYG8b7fFVkv+GJUWXXw==
X-Google-Smtp-Source: ACHHUZ6qT/NkJ1Uux+udyXNWeciXyj/LGACl8oPC99tdXdFvmrqUM2rf6r66WUWjYOiG3bgKOrM5Kg==
X-Received: by 2002:a05:6512:509:b0:4ea:e60a:2f5d with SMTP id o9-20020a056512050900b004eae60a2f5dmr1606834lfb.40.1685499578593;
        Tue, 30 May 2023 19:19:38 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id d13-20020ac25ecd000000b004ecad67a925sm524437lfq.66.2023.05.30.19.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 19:19:38 -0700 (PDT)
Message-ID: <6c3e150e-5d61-a73c-03a7-a53f1c12ec22@linaro.org>
Date: Wed, 31 May 2023 05:19:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-GB
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
 <20230521193635.3078983-4-dmitry.baryshkov@linaro.org>
 <448257f2-1b7d-5ec1-5847-94024dac6208@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <448257f2-1b7d-5ec1-5847-94024dac6208@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_191947_856046_40F137E9 
X-CRM114-Status: GOOD (  16.24  )
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

On 30/05/2023 17:09, Caleb Connolly wrote:
> 
> 
> On 21/05/2023 20:36, Dmitry Baryshkov wrote:
>> The first USB PHY on the sm8150 platform is really the USB+DP combo
>> PHY. Add the DP part of the PHY.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
>>   1 file changed, 13 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
>> index 2273fa571988..1f442e1be63a 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
>> @@ -3399,20 +3399,19 @@ usb_2_hsphy: phy@88e3000 {
>>   		};
>>   
>>   		usb_1_qmpphy: phy@88e9000 {
>> -			compatible = "qcom,sm8150-qmp-usb3-phy";
>> +			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
> 
> Subnodes need to be renamed to usb3-phy and dp-phy respectively,
> otherwise this fails to probe for me.

Thanks for the test! I'll fix it in v3.

> 
> With that, for the series:
> 
> Tested-by: Caleb Connolly <caleb.connolly@linaro.org>
>>   			reg = <0 0x088e9000 0 0x18c>,
>> -			      <0 0x088e8000 0 0x10>;
>> +			      <0 0x088e8000 0 0x38>,
>> +			      <0 0x088ea000 0 0x40>;
>>   			status = "disabled";
>>   			#address-cells = <2>;
>>   			#size-cells = <2>;
>>   			ranges;
>> -
>>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>>   				 <&rpmhcc RPMH_CXO_CLK>,
>>   				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
>>   				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
>>   			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
>> -
>>   			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>>   				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>>   			reset-names = "phy", "common";
>> @@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
>>   				clock-names = "pipe0";
>>   				clock-output-names = "usb3_phy_pipe_clk_src";
>>   			};
>> +
>> +			usb_1_dpphy: phy@88ea200 {
>> +				reg = <0 0x088ea200 0 0x200>,
>> +				      <0 0x088ea400 0 0x200>,
>> +				      <0 0x088eaa00 0 0x200>,
>> +				      <0 0x088ea600 0 0x200>,
>> +				      <0 0x088ea800 0 0x200>;
>> +				#clock-cells = <1>;
>> +				#phy-cells = <0>;
>> +			};
>>   		};
>>   
>>   		usb_2_qmpphy: phy@88eb000 {
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
