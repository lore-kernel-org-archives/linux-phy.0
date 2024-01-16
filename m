Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71346C47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFQoJltjtA8yVXaiVLYloNaB47ha2XzjPtT9Sde/iRw=; b=ilgw3pcmX7VQJx
	7bHNmuECVLgTDJ+cF8TZ6CbUotG7rAE6aaq7zGm+b7r3gCs87eNwVs75Xs5dY2bzKF09a1D9vZST+
	0tjDWSZMHTKFY2arMZ7i+PLdGhlhSs/nsmbxKHScRMClz+9VEsTAzEtdrPSnLVObHmhlpitnOWcWL
	j0UxIJMs6++L+LLc4QvMdvjxb+YZFa8qMvGVlA7ZgiVAVdntnT2KK5H9gq3YThiqmPEj+JEzlYnH+
	+NzNwek11LyPzgscYKtlfRxCtuI+PVG6i3bXZuwUpR2RQAxXTUm23DNkXu+O+M3Mnti7KmhVFn3a/
	54HTK+6TRptA84PXtyAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi6l-00C16i-06;
	Tue, 16 Jan 2024 11:59:55 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi6i-00C14y-1K
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 11:59:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cd7ef70a3bso50805481fa.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 03:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406388; x=1706011188; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drWSEzWzgvfy014y12sEQ8J9AAejreZknCJI7GLECrw=;
        b=NIkxs3J9Qm49G99KXYUNATzrdRyxX1L1RDMKrhto+Nu6LtmzsAig5267BGgaSBOD1J
         UMHugYramwQP62citv56r8HYMcbmX4GxvYNU0YowuhKoHT4zQVpMdEeWLlVE/Tar42Ys
         gFnZ7Brr65hP+81sFu6YTS6FJAkRlEQfnbKeAb16++sX52KfGsU0BSgcKwaIfQi1Mmfe
         XYpwkPp9AQV7hMhZDat6LCsjATGn1wSSnDzYiBC080A0XJJW8W1AqBZIOuKXZndyDX98
         RJZcLrCgIafhEuvrZ5v0VV14KkzeZq8X3uwZbLM4QF0jqdP0BJ2yPenrYiipZAfnT4Hx
         yOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406388; x=1706011188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=drWSEzWzgvfy014y12sEQ8J9AAejreZknCJI7GLECrw=;
        b=KJ6Re8/z4cqp1tKksXH7nOsUfjYEUqktuZgxzrsZi6hbM0XPUWFCiRwmNs/Mdz9Q1s
         yso8pRYz77waT43X+vsXHSGmpITsp4FV1fC7UMdshTNrO8euv/CT5lgUEpQc5MpVH/ok
         DPDhMgYpHegNDth7p25HUrFfRh0654YJcGl9VwTKO4a+d+2c6us3Ucgpl2YdZHiSS+UX
         LSmPlb5wyDo32ziawgUxo/nM1Flbac2k0cAoXUdmFJ7wPdE5Ro4ZOmj5uBEWYbEs4v3G
         8J3Jev3+kjAcyPvKgjpAIEssyljT74rUKvyhvPNSLJFNkkBgwtLCtDc0M/rPY4T9KUUH
         cCLg==
X-Gm-Message-State: AOJu0Yyh6tA9cBbveUSgqw7xB0bHAW3s7qRJmc5P1Xh1TNBwArLKMFBK
	XRw6KNHdkxtMUQaKtSgvnJK6uQnaAbExjQ==
X-Google-Smtp-Source: AGHT+IHohsDkjXFPezd3KG9iae0UvIRUUnet1VhGV7TAHVwqSnsmEWYpV617yZXjuElXsJv5MQV+XQ==
X-Received: by 2002:a19:654a:0:b0:50e:74e1:2e35 with SMTP id c10-20020a19654a000000b0050e74e12e35mr4888067lfj.5.1705406387610;
        Tue, 16 Jan 2024 03:59:47 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512092300b0050e7a2be0f8sm1724362lft.191.2024.01.16.03.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 03:59:46 -0800 (PST)
Message-ID: <414ccee1-110c-4d24-ab5b-38e471dc50ef@linaro.org>
Date: Tue, 16 Jan 2024 12:59:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP register
 for USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-4-73b2da7691c5@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-4-73b2da7691c5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_035952_449614_8449CE11 
X-CRM114-Status: GOOD (  11.92  )
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



On 1/16/24 02:08, Dmitry Baryshkov wrote:
> The USB3 PHY on the MSM8998 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 026dad8f5873 ("arm64: dts: qcom: msm8998: Add USB-related nodes")
> Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index 2793cc22d381..e21e5693ba1e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -2174,6 +2174,8 @@ usb3phy: phy@c010000 {
>   			reset-names = "phy",
>   				      "phy_phy";
>   
> +			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;

This leaks outside the syscon.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
