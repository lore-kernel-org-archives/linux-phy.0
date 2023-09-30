Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F37E71D55
	for <linux-phy@archiver.kernel.org>; Sat, 30 Sep 2023 18:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8C18OOQ8NNzFcqAe3cYJ89/cuZ6d9kkRLPIK1H5sUI=; b=dWq9Klam2QpXIa
	HDWZspxigUXzExfUNlTsOU77NyCoa3ufDjbgMd7W+HZQUnIjb7O5nqdtlLFejaaFtWV9GqgH8VTTY
	yKmcbN5M9M41Jin7VaH0YouMpbkp5hvtl8DVkB3NmnEYIjar5r/mHNewK5zkbjXBDXZmDpYDMnO+p
	b7Sbzmofc2Ma3e6vX6BAQyo5HWkH/dK/twso3tAElNmHKeKhSIpMotQPmovJymQ1KLxM+Bi522hCl
	KXK7l3/4qDYj89oLA+IULkAdWFlcLh1G5PziUF5VZx5m8lqFUMm6Up2czqTRGcxQhpDnC4m1u4EkZ
	260YOYHG/Mf7o00FsGoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmekG-00A1Y4-15;
	Sat, 30 Sep 2023 18:31:16 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdhD-009vSC-0n
	for linux-phy@lists.infradead.org;
	Sat, 30 Sep 2023 17:24:04 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bffd6c1460so229457711fa.3
        for <linux-phy@lists.infradead.org>; Sat, 30 Sep 2023 10:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094638; x=1696699438; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MzpkS5WtBC86fJGuXY0GbjQIu9QUBdjEhDwmlgi2Kew=;
        b=wNDeaMNEEzczsjnpfeRNuEIybLhgE4jcLiShaixYXERkx6U7Fp4qcieqaAY34O1Ppo
         s9tqQdZRT7mae7CrqkqN9neihTIjpgMEFWZeD7sPy2zwGZwzL6Yc2WhaVc0dkOIqoJQL
         m5Lx5zvJqhwpgxaU73n/Vmz/ko0DdfDENK7KexUEPkVFNjQfpidGnWL13WaMkMkjC/nU
         T3LRwEoYOaBmKCb0I4xbxgiZ0J0U2WIsu8TKNtZcsxDfGubZHldRz8vRo4NCAJ8T1YU2
         S5zE7J/NkljPrOovry9NRYf2J+k2mcEl3CKW2sDEuaucaxDReFNc6n3mdwZjKHVuTjsB
         u9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094638; x=1696699438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MzpkS5WtBC86fJGuXY0GbjQIu9QUBdjEhDwmlgi2Kew=;
        b=egNZ/K2ZoiJ7mihDAlXWoS3FDlbN3VJdFLoxCvhWoobV9LFbr42fcSfsPvBnYQ8eIQ
         jq7IiaKTDPma+hR9fi2tdfbdActklsxMH2nvM0g09IvHaGIcc/AMBOnmrV/vktaB7ggx
         hrNxSDuY2WFvs8WYHfdCsfB+/ApZwfp9/ro76//5EgMCo1nAWW4KA8N7EpwUGaQnPz8K
         ScCTchs54UamC8PDTB7vgAay9aZzSDlucy/Z+aFcA7ltezS4oB2nIkzGEAf53aX4UUcX
         AxfG3r1/tPIRGzxqID894cGObtN7J3NpqMsja04N0g8iLurpM0GOV4YRsttQsQXLp3QZ
         nSFg==
X-Gm-Message-State: AOJu0YxaA1t21nC9CD3OrlBOIsLxU7jWSUXVCRzQx+96HUZZYLjgUmFA
	AlJ0NGZn2HfTxsz7GRZ+I9BNqw==
X-Google-Smtp-Source: AGHT+IGvXNt7OngCsZTWxJNJE2rVMCZJDaC/Er1JEElLoCfYx28zdY6xhS+zm33ksmi5HfdxncMRiw==
X-Received: by 2002:a05:6512:10d0:b0:503:293a:dc1b with SMTP id k16-20020a05651210d000b00503293adc1bmr7471121lfg.30.1696094638327;
        Sat, 30 Sep 2023 10:23:58 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:23:57 -0700 (PDT)
Message-ID: <c0abfa16-92f3-41e6-afb2-e542131ae67b@linaro.org>
Date: Sat, 30 Sep 2023 20:23:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] dt-bindings: usb: dwc3: Add clocks on Qualcomm
 IPQ5332
Content-Language: en-GB
To: Praveenkumar I <quic_ipkumar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com,
 u-kumar1@ti.com, peng.fan@nxp.com, quic_wcheng@quicinc.com,
 quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-5-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-5-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_102403_287840_A1C96E1F 
X-CRM114-Status: GOOD (  12.71  )
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

On 29/09/2023 11:42, Praveenkumar I wrote:
> Add aux and lfps clocks in Qualcomm IPQ5332. These clocks are required
> for USB Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   .../devicetree/bindings/usb/qcom,dwc3.yaml    | 20 ++++++++++++++++++-
>   1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 67591057f234..18af2887b984 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -149,6 +149,25 @@ allOf:
>               - const: sleep
>               - const: mock_utmi
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5332-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 6
> +        clock-names:
> +          items:
> +            - const: core
> +            - const: iface
> +            - const: sleep
> +            - const: mock_utmi
> +            - const: aux
> +            - const: lfps

Could you please also describe the lfps clock in the top-level clocks entry?

> +
>     - if:
>         properties:
>           compatible:
> @@ -238,7 +257,6 @@ allOf:
>           compatible:
>             contains:
>               enum:
> -              - qcom,ipq5332-dwc3
>                 - qcom,msm8994-dwc3
>                 - qcom,qcs404-dwc3
>       then:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
