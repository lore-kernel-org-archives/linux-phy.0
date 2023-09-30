Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E63E7737C
	for <linux-phy@archiver.kernel.org>; Sat, 30 Sep 2023 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/Ww1UUEBEg5ZU0BmDB0DVk6aNiMbCwwE8k798d4T04=; b=ZRthXQF/QEXru0
	BfnUJIbCQeH7r3etVYnCXNl2eaEZ385cnDypG9iNqslJH76IqidekTDoJ8svrtVDfEeDImIHW2CL8
	1+K1V7XEotTH0W9iTP9ORsA5AKadDkIqeRCnHGBuIYvP+/RXOkSe38VK7HJ5NAJQq2gvnc0neq8Qu
	RjvCNE74o6xNTFQyzDPI5JsoK+lyKMz5tOyu0RvQdkOHP/cXlKnXELiitHuilA7GPKlCaQezFCIh7
	p8dczVymgOH7VtIaHVcOLyL224nW/fsqDpYIAUmChPL/3a4+eHdpsf8drbPMbV9Mrhx4ryty2nYeW
	ES0dvYDaINmMzHrx3NaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdif-009vhf-1r;
	Sat, 30 Sep 2023 17:25:33 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdic-009vgC-0U
	for linux-phy@lists.infradead.org;
	Sat, 30 Sep 2023 17:25:31 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50435ad51bbso21440602e87.2
        for <linux-phy@lists.infradead.org>; Sat, 30 Sep 2023 10:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094725; x=1696699525; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K3/pQc7G9YXn5ECWFLpWUyohMguEa9gLmKEtRixcmtc=;
        b=kQNXJAyJKpaev1VDOS/0xA0Mvxrh7kFqSdBkti2dBiSxQrJhBBmk9YSrJaTG5f5ecJ
         IdYZILnkWDvarBSgqEaTpS7PgxLhiIYNDyFkNT+DLjhax5JDCev2scfoSVDr2DX6hyFO
         8fzkGn+LEySjh+NUM+N7dPA9JvlDT/OMnDn++CEcz6cCaRgFeR7QTiQpbxphlbcvSTfo
         tdX5npODSd/sq1HIxxE/6IMbteIBYNmbgIh8j98FrhlciAMKq2eelXQBK9UmQMhtkeAb
         wVO2vbn6XXwQHCuxCaLFqR5nxLPDjFeMuUAYKGkfTdFbHIjl/9MEiJOyhOg9MHiAudLw
         XBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094725; x=1696699525;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K3/pQc7G9YXn5ECWFLpWUyohMguEa9gLmKEtRixcmtc=;
        b=WZaM9/a/o7++3ZySAXe6y9PBU2aZoZN82aO+rAqMEPBIZnBzzGinN3VOQm9710Fyjv
         SliY3Oj0WccT2c9VOuMurkynGyJnRVoeNmtBfszTOw0SJtQeqFppJDtxVZE2OfvIvvJ/
         1aRtgCNlA1144A4yWKrejRVHlBI7TSizkCkiCkCL5yL/bYNjwaAo2D8bP8/FXir/A2Az
         bIWlCom4iKZQsKz7635IgKRuJz/7pXmRjf/vXLE1q92WgYF/JxjUnAFaPbpwg542Tpne
         GvWWHZCZoUBsTTmyEGmQbVfaRM1HS6BnHHbRmQAyg06fjz5FNwNa62xVSZFZCT+kCXM4
         Syqw==
X-Gm-Message-State: AOJu0YyjTknzUuA98llFLoLpUZxw4DY1JGdTiI9RbQpZyWAMPQK5P7F5
	V9WFeVMekJY7l+Sy+cVnV7Ro/Q==
X-Google-Smtp-Source: AGHT+IHk9azgmfZgCNdAFYq2Dl2bXcIZ52kyt8A/dpLS9o+udZJ2qDbPgdpuMwMxbDEVb3AxRgL35Q==
X-Received: by 2002:a05:6512:3f7:b0:503:3680:6722 with SMTP id n23-20020a05651203f700b0050336806722mr4914648lfq.46.1696094725336;
        Sat, 30 Sep 2023 10:25:25 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:25:24 -0700 (PDT)
Message-ID: <356a4f97-a483-4202-a6da-b48351d9b209@linaro.org>
Date: Sat, 30 Sep 2023 20:25:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] arm64: dts: qcom: ipq5332: Add clocks for USB
 Super-Speed
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
 <20230929084209.3033093-6-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-6-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_102530_189256_1D1288B4 
X-CRM114-Status: GOOD (  14.70  )
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
> Add aux and lfps clocks in USB node for Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index b08ffd8c094e..1813b9fa4bb5 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -336,11 +336,16 @@ usb: usb@8af8800 {
>   			clocks = <&gcc GCC_USB0_MASTER_CLK>,
>   				 <&gcc GCC_SNOC_USB_CLK>,
>   				 <&gcc GCC_USB0_SLEEP_CLK>,
> -				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_USB0_AUX_CLK>,
> +				 <&gcc GCC_USB0_LFPS_CLK>;

This looks like a strange change. Usually the DTB is considered to be 
the ABI, so older DTBs should continue to work with newer kernels. Is 
there a reason why the AUX and LFPS clocks were not a part of the 
original submission?

> +
>   			clock-names = "core",
>   				      "iface",
>   				      "sleep",
> -				      "mock_utmi";
> +				      "mock_utmi",
> +				      "aux",
> +				      "lfps";
>   
>   			resets = <&gcc GCC_USB_BCR>;
>   

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
