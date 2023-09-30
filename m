Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86592E7737B
	for <linux-phy@archiver.kernel.org>; Sat, 30 Sep 2023 17:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RfqiyqlltCWIn15TeuKR12YkUQQPQTRRHJrDYem57w=; b=pSD0WiBRWslo6M
	UqD6vXfoOz+Y9Hwm99Aa1jo9w5Qeav6NouoaD6wU/8bk01UvAnqS4BJAw8C5X9hmuaKCSWas/2a2I
	GwnCJ85ZIv4D68y6LSmRdUNhm1bZbQLmHCaOwmIgJ0JjSH3R0jfpBtUKBX5ciUwrDEXwwWD9wg9LE
	/dkF9nRHsfr1GuSFYRgbE4YbuVNcMlvwrkghF9iGStddpS9Tj1e2o69kGeIrC8IdOUwVfkDLMPQwl
	X+bIr4DbdKX8YUjWLOC6WQ/OLfd+VG6aHES9MqliCz0vyHXhj0TmEcJwdaZyPPJPPoi8AQpb6swNk
	QgUNyxkael3SWQU3zDbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdkj-009vxA-0q;
	Sat, 30 Sep 2023 17:27:41 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdkh-009vw5-1k
	for linux-phy@lists.infradead.org;
	Sat, 30 Sep 2023 17:27:40 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50444e756deso19694390e87.0
        for <linux-phy@lists.infradead.org>; Sat, 30 Sep 2023 10:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094857; x=1696699657; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1esDqgq5T+kok5ueaCGLW9C7Tb/ZQUvYJBezpRqqynU=;
        b=BfoeBs7LNiieo9FHZdDFcq+J4wTIKhVwaEKL52SBKYRaCSYhU93+K3WDDtCA5F5djh
         Uv4I78uCKLJGE7h9ktU4Sbf6OGsBpfdRsp3sQUvaDe8mt2pRBsCff38gryJEzxmEt5WM
         hrYhV31i/xt/7o0hf2KwKNaVy3xLm1RvaaX+1ULIzz4WvmMD7Nvmh6dx1gfenAyPSsPz
         y6FcjLteSWtvhPBFpFrnqu1gcQOgCrEoXT4mDJgi10Lz5ieCJ2yUY91Oh2yLByhMRMnt
         M8mIxuvqeml3q1eYOiqN77pAG82lwYr7cYONPvsHkUaVUngO9uu3aSDrj90lZGTyAfRM
         hY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094857; x=1696699657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1esDqgq5T+kok5ueaCGLW9C7Tb/ZQUvYJBezpRqqynU=;
        b=tEY39xTb/xDIdnQG8H/zouo2F2vUEdJ/gQJyXHgTGGb4/VCBvkyYYyFZYIOwVPAEQ7
         6izXlOjpDuQ+EF0TL35c9YT+B7mRcNP9gsSILfCDlWja2p/cwkDggRPXqFb+PQEAXgjJ
         itKPxlv2WGgeDXEZu2gWW4VAEPCXdiOawRAVZRWWE/VCnR2nNtX/BnvzUuNrsQ2eIweR
         IV3hgVACUHCcN6LZsZ+LDv8szORR+klPLNWpL+g5dFi7Fb1rDGg3YtxLhRKulKzV0IB0
         bA4VeOJbD/STSyRwMX3p+4Dd417cgRBZEvk/X2EsxeVXFNa2UbcsU2AfEwdBBq/eOFny
         3qtg==
X-Gm-Message-State: AOJu0Yyu764dlcFcRFxwJzzlgKtLCbTU491bwvb2GIhVRXixdNnABazN
	93Et35e5KIplfn6rV/0jJVhjdg==
X-Google-Smtp-Source: AGHT+IGW8pBqaaoPrjB/MmYzrMfiR0lUdFnOEoGcH/Kv0byQNThkUo9CXJPl8eHVnzwlIQ2tH11BeA==
X-Received: by 2002:a05:6512:3902:b0:505:7113:1d12 with SMTP id a2-20020a056512390200b0050571131d12mr3223204lfu.3.1696094857086;
        Sat, 30 Sep 2023 10:27:37 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:27:36 -0700 (PDT)
Message-ID: <cc6e2145-ee6f-4872-9c47-8f618b47dc27@linaro.org>
Date: Sat, 30 Sep 2023 20:27:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in
 USB node
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
 <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_102739_577087_4AB6B247 
X-CRM114-Status: GOOD (  13.86  )
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
> Add UNIPHY node in USB to support Super-speed. As the SS PHY has
> pipe clock, removed "qcom,select-utmi-as-pipe-clk" flag.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 1813b9fa4bb5..8fe4e45bfc18 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -349,8 +349,6 @@ usb: usb@8af8800 {
>   
>   			resets = <&gcc GCC_USB_BCR>;
>   
> -			qcom,select-utmi-as-pipe-clk;
> -
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			ranges;
> @@ -363,8 +361,8 @@ usb_dwc: usb@8a00000 {
>   				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>   				clock-names = "ref";
>   				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> -				phy-names = "usb2-phy";
> -				phys = <&usbphy0>;
> +				phy-names = "usb2-phy", "usb3-phy";
> +				phys = <&usbphy0>, <&usbphy1>;

Ah, I see now. Maybe usbphy_ss_0 or something like that would be a 
better label for this PHY. I'd expect usbphy1 to be used for other host 
than usbphy0.

>   				tx-fifo-resize;
>   				snps,is-utmi-l1-suspend;
>   				snps,hird-threshold = /bits/ 8 <0x0>;

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
