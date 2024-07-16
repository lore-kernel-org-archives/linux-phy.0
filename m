Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B3F0C3DA59
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 14:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBEDbhwL7ARTIwiMlansV1nskmSvHiD90NbjWeQo4WE=; b=b/36sC8RB7/nqx
	e33ej9f/DLznn2IffDDspmVTBUivZcF70UZBQPscBtQn6dCz96A8UAtb5KYtb/fy+Imd/DqzMJu7P
	D5dYsqGMvmNBxNArcrJ5gNi/Q9krDGmlKg1HMBU0JWJ5ZEWQUXr3jpz79xMqY3emJTSmuu3GBmcf5
	/FIk2UA8x73eFm2Ija1WMYKL7s7hUXZGpJJay2CjaCzxJ/lfUPlbRaJ3tUodzz9K1kO0uSh5ysBgg
	Q+DcscY7Bh7jsy6oWEfS2+agWS4tNGtO2yiAs7ob8GBP350DtnloHZysM5HdidjcDvhdKW5cPSRLr
	0H3PjSFhZdAZ6Mo8MiBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTjG0-0000000AkSG-030u;
	Tue, 16 Jul 2024 14:34:20 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTjFv-0000000AkQV-3p83
	for linux-phy@lists.infradead.org;
	Tue, 16 Jul 2024 14:34:18 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3678f36f154so3384740f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Jul 2024 07:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721140453; x=1721745253; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BAVkx3EkWzVPbDhyx+broZi2jeHwnQ+TpjnD/Y0qoIw=;
        b=BQqnagvMFMP/fPU4lDBQqWAyODzdWt9cKE6liGML1RbAe3ZNBshom54P4U9OAujebx
         OecY2cWjGMvBd2zW6j74YQgaVOLgfBRNQP7ikqHZeoHDllirLpwCR4TxV0Fecn8a4/i+
         N/hJACipqU3EHEGGwJ2YGPUoovIkCccfcEIkzrdlPX55xvMZ8Gr26Eol0oytPxgc0a1w
         ZAR9VhV7ertAF79fwo9tQUVDeyFiuKvzwFi2qnV/1/OvmzhhvLFZgQehBF/Ewyai13ZA
         mCAgWQnHD1HwAcxwKktms1H/UlvHkUlCJq6EtRycX5vxwQQQkFL/3B0TikSqZaIMvroq
         k00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721140453; x=1721745253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BAVkx3EkWzVPbDhyx+broZi2jeHwnQ+TpjnD/Y0qoIw=;
        b=XIKWMXENKXMaQz1YWRh2zEX3ZghnNHeokU8Mffmu7xRBECP5BZGPmr807h0nJK2AGa
         oErAa8vpAcuYPQFEbCFqXQ6Yet7ePRsxSFk5nAky5lRpYkeGHAiTWO4bgcprfEwkUC2m
         7mpDws8b+JpFmaZUtPsFQg7sEkraosZhqfbcwYJoJa1MzBTTpUORf6oXbCg1pr+ViKhT
         nz/zWU6Gy5hBKY4+rlsTIMmdC1WDmGFpgzDHH5TAca9bqnd8OUyZHkNOPE2EAejEn3dW
         Q7Bs4Q3Wa4xTMok13VGU8Gp6EaLU5W5PGLa/adEWKcDe5W2dzovwlrV8xlmwbMshRpZF
         K2wg==
X-Forwarded-Encrypted: i=1; AJvYcCUUJEwgtukifRivfbisjb6qbb1A/Ta7TT0FfrKtug/QaBCV8vi8TgFGpO+HGKuglF6uVs9btpLtnT99+Y0B3bhNX+tGtAGzSTMCpvtd7w==
X-Gm-Message-State: AOJu0YwgrCSn739Ugf2d2lXQoTcyc12R7Ugwx/TMdzwvQBZ542qsP2Pp
	MxVFlU7o6X7YDpPUPBLzQHXDxJGdxvetKrAy/QWFvJVUc9qCt/LX7LxIpUwMzV4=
X-Google-Smtp-Source: AGHT+IEbL3+rGfLtHK1BYT56NOm8qHwhQGVKOUnQvEVJuXEUOqXILPQU0WPNo6DwBmoJFxBi5izxOw==
X-Received: by 2002:adf:e8c6:0:b0:367:96b5:7852 with SMTP id ffacd0b85a97d-36826314363mr1600419f8f.55.1721140453270;
        Tue, 16 Jul 2024 07:34:13 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccb7bsm9198261f8f.55.2024.07.16.07.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 07:34:13 -0700 (PDT)
Message-ID: <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
Date: Tue, 16 Jul 2024 16:34:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
 <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_073416_086635_0770733F 
X-CRM114-Status: GOOD (  14.97  )
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

On 16/07/2024 15:11, Konrad Dybcio wrote:

> On 27.06.2024 5:54 PM, Marc Gonzalez wrote:
>
>>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++-
>>  1 file changed, 99 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> index ba5e873f0f35f..417c12534823f 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> @@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
>>  				 <&mdss_dsi0_phy 0>,
>>  				 <&mdss_dsi1_phy 1>,
>>  				 <&mdss_dsi1_phy 0>,
>> -				 <0>,
>> +				 <&hdmi_phy 0>,
>>  				 <0>,
>>  				 <0>,
>>  				 <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
>> @@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
>>  							remote-endpoint = <&mdss_dsi1_in>;
>>  						};
>>  					};
>> +
>> +					port@2 {
>> +						reg = <2>;
>> +
>> +						dpu_intf3_out: endpoint {
>> +							remote-endpoint = <&hdmi_in>;
>> +						};
>> +					};
>>  				};
>>  			};
>>  
>> @@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
>>  
>>  				status = "disabled";
>>  			};
>> +
>> +			hdmi: hdmi-tx@c9a0000 {
> 
> Please prefix the labels (hdmi: and hdmi_phy:) with mdss_
> 
> Otherwise, this looks good
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> 
> One thing I noticed (testing on the 8998 MTP), enabling MDSS (not necessarily
> HDMI, mdss and mdp is enough) results in SMMU lockups about 30% of the time..
> 
> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.913412] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.930647] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.952338] msm_hdmi_phy c9a0600.hdmi-phy: supply vddio not found, using dummy regulator
> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.967917] msm_hdmi_phy c9a0600.hdmi-phy: supply vcca not found, using dummy regulator
> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.984122] Bluetooth: hci0: setting up wcn399x
> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]

Interesting. I don't think I've noticed any lock-ups
across multiple reboots.

FWIW, I get similar warnings about "Fixed dependency cycle(s)" on my custom DT.

[    0.055349] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
[    0.055525] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
[    0.055584] platform 1da7000.phy: Fixed dependency cycle(s) with /soc@0/ufshc@1da4000
[    0.060279] platform c8c0000.clock-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-phy@c9a0600
[    0.060494] platform c900000.display-subsystem: Fixed dependency cycle(s) with /soc@0/clock-controller@c8c0000
[    0.062432] platform hdmi-out: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
...
[   18.534346] adreno 5000000.gpu: Adding to iommu group 2
[   18.540215] msm-mdss c900000.display-subsystem: Adding to iommu group 3
[   18.544695] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.551239] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.562685] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
[   18.574122] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
[   18.617640] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
[   18.618885] i2c 2-005e: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.627768] tdp158-bridge 2-005e: supply vcc not found, using dummy regulator
[   18.636853] tdp158-bridge 2-005e: supply vdd not found, using dummy regulator

It looks like some of these warnings were pre-existing,
but some might have been added by my patches?

Do they need looking into?
I'm slightly confused.

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
