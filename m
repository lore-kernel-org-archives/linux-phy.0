Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24FA7EE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 11:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WenAlp2vlS1/K8YOMJYGI79aOqHwyGejOltlznKC0Q=; b=T7RqCga/983zcA
	zJFKbZ7JxdcdfqtDaj6tRZAbtDpeJ1CeA2yVn7N0++CYHRJa2kc9Ly9KWL3XzAM/NzS8wdC/X7NOe
	//Q3WuEod7jVG3D9ksESxIfRd2xMWcQ0rjGCA+vfo6M+VP71x/uK8u/enHWzg8UYYfgIXFqB/udcA
	orUWKh36j3LJFSuQB2O+Hfvxx9oLexhWBBF3070OsUJ2c2q6KaZlhIN9mdbRez9Nco5u9HISSq9G/
	bQQhMESHsidZ6+2zYSq8IS+LbMe14y7zkbZ7cda/ng3BmMkNp7jVXA84yYcW1PJQzeO7amb4G8CSw
	bQoPEuRH4NZJB00L4GxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPkt-00FqMV-2i;
	Tue, 22 Aug 2023 11:41:03 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPkr-00FqLL-0A
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 11:41:02 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c1f6f3884so569482066b.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 04:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704459; x=1693309259;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBng5C2dnihMAm7NsUCEA4IxSsW7kmSlLCvvdXqyKNI=;
        b=Q9/KNEeiK1MnW/VpATo99XcdowbhPp1AoE+rEsQfauE0G9EUxkPiRs/Z7io/aB2ZNs
         APR80hjLD2cGmMtZq3xh0yB1DsXvXE3eHNJ0XF+6PaPBRlC3BmveI+7lXrc6m66spXFv
         Ogt51Tu5IlZF47vZMKJKOyohUEx2LE98zqgksVPWIqowxjabI2Fz06lUbhHsGSqr9caz
         4oPISz+3/dAhhRDwFGBQK7KeL0XmZMUoMAqu5go0bzeiLceH+NK0XIo9r2Sm8b6bUAvE
         nOHlDE2m4qSX475Qz4mKaelnviavdnNjxQ2vnCGem6N1Nv1mPssJJGp/hbccyRgNTUP0
         j5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704459; x=1693309259;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nBng5C2dnihMAm7NsUCEA4IxSsW7kmSlLCvvdXqyKNI=;
        b=ff6doH6AJr0lYZ1U27O8Q2GWxjyGdpMfODteZZwzBSu7Dz1G2GQ2m0HEImZOLnOEJL
         hHoKNr25NFOARlFZc67KsYemorMreTkt6fm1Kw9C34BggL6HHkssq6VAXBFm8UoKspUf
         UVQZKu9qRoNMa/thXQOBLa5nfA7oMfexawc/WE6btgpj1Ufw+rw0RUdymx93zHufqJvP
         YSf5E4N9qN4VRl/MEgkHUX7Pd7fMk/1XQbT7vgvTnpvY9fSrXPJzqgTufNUi3JtUAAT1
         R306DXT7Bknm8GNX9nelM519CPSz+mKKGR7Mv/ckmyCquzxpbFI5r192Vfk9IZQ+j7tv
         aZdQ==
X-Gm-Message-State: AOJu0YxdSV37SavHu5tfYNkDE/tj0UlEaAyJD9UdHBN9UunUoW1tnOz7
	EF3OSHWsO/ffcjA+2+5I14jG3w==
X-Google-Smtp-Source: AGHT+IFG3rO+15qihlKOOHB8w6sqz7+J7b3+hnWU015v6n8UbWpjoVH0nhN0Oq7y6bAU+O32z7s7Iw==
X-Received: by 2002:a17:907:2722:b0:99e:16eb:32d2 with SMTP id d2-20020a170907272200b0099e16eb32d2mr6455999ejl.62.1692704459221;
        Tue, 22 Aug 2023 04:40:59 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id jp23-20020a170906f75700b00989828a42e8sm7987229ejb.154.2023.08.22.04.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:40:58 -0700 (PDT)
Message-ID: <8792cced-62bc-d887-8b14-05f967f7f4ed@linaro.org>
Date: Tue, 22 Aug 2023 13:40:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v9 2/4] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1692699472.git.quic_varada@quicinc.com>
 <556ee6c73a4235f52d071d98a344792daeadd228.1692699472.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <556ee6c73a4235f52d071d98a344792daeadd228.1692699472.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_044101_092300_00BC53CD 
X-CRM114-Status: GOOD (  19.14  )
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

On 22/08/2023 12:29, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9:
> 	usb2@8a00000 -> usb@8a00000
> 	"make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed

I asked about W=1.


> v6:
> 	Remove clock names
> 	Move the nodes to address sorted location
> v5:
> 	Use generic phy instead of usb-phy
> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom dtbs_check' passed
> 	'DT_CHECKER_FLAGS='-v -m' DT_SCHEMA_FILES=qcom dt_binding_check' passed
> v4:
> 	Change node name
> 	Remove blank line
> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
> v1:
> 	Rename phy node
> 	Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
> 	Remove 'qscratch' from phy node
> 	Fix alignment and upper-case hex no.s
> 	Add clock definition for the phy
> 	Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
> 	in dwc3/core.c takes the frequency from ref clock and calculates fladj
> 	as appropriate.
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 8bfc2db..e6baf69 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -145,6 +145,19 @@
>  		#size-cells = <1>;
>  		ranges = <0 0 0 0xffffffff>;
>  
> +		usbphy0: phy@7b000 {
> +			compatible = "qcom,ipq5332-usb-hsphy";
> +			reg = <0x0007b000 0x12c>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		qfprom: efuse@a4000 {
>  			compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>  			reg = <0x000a4000 0x721>;
> @@ -290,6 +303,48 @@
>  			status = "disabled";
>  		};
>  
> +		usb: usb@8a00000 {
> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;

Still wrong address. I pointed it last time. Please fix it instead of
just sending the same. If you do not agree, keep discussing. I could
have make a mistake, but ignoring error and not responding is not the way.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
