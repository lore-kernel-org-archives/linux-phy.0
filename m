Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F91FC3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 13:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZSQXgle9GKeoJIEkpyc8GCawQk5x5doAN7671RkkMA=; b=4dtR+YhXr5q7Ze
	vXTuU23Bbq3hQOMuTyfT+KfpkI4FMPDlsLcpXxIqN4gJVQlGBaBt/GydjIWiAHs2ar9LFmwMZyeYs
	EHvDjXjUsncjHKRSFWOQWc3EwSvWwbQG68eVyhMdo53KhYRyaacmFPcM8g/vo32q+W9PYlSzPoF1i
	8O+zVcM5ylTQrWyjR5+uHUomwnTHvI/gStzBE2em/8s/gDBzMe9gHUO07f4777KNQYxSSKz9Rvxuh
	mIoP3DXaZJ3R3/YnTYBhEvR+Sh43z/9QXPleCW6VNIgyrxYaYsBOkFEOn7MX1GjmHWZADOvy/U+Nf
	ZyUzSh2QgMVWzNpbvfkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sThxq-0000000AVss-1MCQ;
	Tue, 16 Jul 2024 13:11:30 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sThxn-0000000AVsI-1s7P
	for linux-phy@lists.infradead.org;
	Tue, 16 Jul 2024 13:11:28 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-59f9f59b827so463526a12.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jul 2024 06:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721135485; x=1721740285; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cFip2GCiEAk8KKDtgvCT7PzwjlN0kRNg5YiSgCIQq4s=;
        b=yFWAYfR8HjgUpQIHSW2UTekdyIz9XaCMH0xiRaJrw+efcHHHP2cqyj432FMU5rMvWk
         7RF8mSs/hilP3CpuLUT6b8Y2zMd8TpDS4XOUPLC/KCdszaRJSlHT1Sh4bDzbvVuP3MbE
         pzYf+vyMykygpXLpYVOhbOC3qkYfYdYX/hWpytScnf/+l9YhGXoUhNqO6Ar+Gh78PwBm
         nPKklKUwA8PYotBzv/akEISQGBZfmrczDebkiRh/RZxeHV+JaV4PF+QsUyH/kGT8nTMz
         Rq+l9gxY55gEeUEukfVtbKRlavIpXJ8WM6uqOkRT7xt10A5cUGrvDD/J8W4U4PSCSYKq
         90Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721135485; x=1721740285;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFip2GCiEAk8KKDtgvCT7PzwjlN0kRNg5YiSgCIQq4s=;
        b=jQ5R0k7j+PBHJn917h4OlsAbQsyyJ7DuYC/ni0abIlYt+4n4z+MFTLxU6n4DKfgnud
         7Td17TTiBH1S/hubYGfts/HaFnzHlMqosN5fGUmLR7WXCnCJtdHjVXsMQ4r/EKo30itN
         yC0AjRfO8hUfsUHceSa8NQutt/T0BcueZqWgMao6x4G7aWEss1XJGWsR0EdnxDqO3Wn4
         GBKoMeTn1NtihkVc2j6WpKcPC9VYulPafpMmPKw2by8UDc2Cx21Oa1vpGQs9wkML1bay
         mQQXxotMzijFwXO+g8CgBjk18cawiR1mQigoQdxy0f4JbMWqUsRqvXpz8Seou89rMEXq
         e3fg==
X-Forwarded-Encrypted: i=1; AJvYcCUtL9COZoUDVM4QAEZO8xdnnAcp2O9eU2PQbyp+opdoLq+bCtQR6kz9BHjxK4cMLthiBsSaQVQbJZ/+b6nxH4uI+Av2MSGnwVMzQErs+g==
X-Gm-Message-State: AOJu0YwAvyqTTzaiiWXNM3V0c8vMhNBNMNHVB1jxzJQBVWfrUVB2az83
	TBI8F9TpsmUR0O32CzfE+43iv+5Pt+Q7y9jz6EqU7H6EsTRKledsNrYV7mPemZw=
X-Google-Smtp-Source: AGHT+IEzWOn6sHS3rp91cUs15jhwAoHUOK22fhmPlPX9enTsj5u+gucMbmfUhnROjS2gaXnYWebsxw==
X-Received: by 2002:a50:f68e:0:b0:57c:5874:4f74 with SMTP id 4fb4d7f45d1cf-59ef03bb7edmr1264244a12.28.1721135485161;
        Tue, 16 Jul 2024 06:11:25 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b25528cd4sm4890330a12.57.2024.07.16.06.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 06:11:24 -0700 (PDT)
Message-ID: <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
Date: Tue, 16 Jul 2024 15:11:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_061127_525705_91ADC944 
X-CRM114-Status: GOOD (  13.73  )
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

On 27.06.2024 5:54 PM, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Port device nodes from vendor code.
> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++-
>  1 file changed, 99 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index ba5e873f0f35f..417c12534823f 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
>  				 <&mdss_dsi0_phy 0>,
>  				 <&mdss_dsi1_phy 1>,
>  				 <&mdss_dsi1_phy 0>,
> -				 <0>,
> +				 <&hdmi_phy 0>,
>  				 <0>,
>  				 <0>,
>  				 <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
> @@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
>  							remote-endpoint = <&mdss_dsi1_in>;
>  						};
>  					};
> +
> +					port@2 {
> +						reg = <2>;
> +
> +						dpu_intf3_out: endpoint {
> +							remote-endpoint = <&hdmi_in>;
> +						};
> +					};
>  				};
>  			};
>  
> @@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
>  
>  				status = "disabled";
>  			};
> +
> +			hdmi: hdmi-tx@c9a0000 {

Please prefix the labels (hdmi: and hdmi_phy:) with mdss_

Otherwise, this looks good

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>


One thing I noticed (testing on the 8998 MTP), enabling MDSS (not necessarily
HDMI, mdss and mdp is enough) results in SMMU lockups about 30% of the time..

[    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.913412] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.930647] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
[    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.952338] msm_hdmi_phy c9a0600.hdmi-phy: supply vddio not found, using dummy regulator
[    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.967917] msm_hdmi_phy c9a0600.hdmi-phy: supply vcca not found, using dummy regulator
[    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.984122] Bluetooth: hci0: setting up wcn399x
[    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]


Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
