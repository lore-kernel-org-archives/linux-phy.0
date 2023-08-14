Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE753EB64DD
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faHckXff7Cv1vBExLTx0jBQnSYcRhadup6WQDjzGu94=; b=uU1vK343S5/k1P
	SnV6js1GTYUeyzZVt4t4nHde16gY0d7ztDafKLNao3+6EZo5b0kYUE7d3BoeVgz2lrx+GC0/NOMmE
	7AIgrEfk/lznFiWvuS9ezIV4uStcQMwpS8N/Eh7ZLrdAxoIACDrknRsdAQgPX2SWkWPQHDnbUo/ef
	mCApuIUkg8V0TPWBsVt9EwHLKZnZR0JOyz4GhH1+hXt+ICeeYzqNJfRrhptYX0+ZmXrVv+kPWi68m
	G/3A+/PxDV8SNiTRVeKE96rmzBzXpokcyQ8px0ruVipH41JqW9TaNYGYHb3zVXefao4ThaP8OiO3l
	v4VwtV5z41Y11lj2MAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUOu-00GfQO-2F;
	Mon, 14 Aug 2023 10:02:16 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUOl-00GfO2-0N
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 10:02:08 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so5453832a12.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Aug 2023 03:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692007323; x=1692612123;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ik4gXzePMNDVXoA4qrXdz513andF8ufeDJrefrHPgs=;
        b=v9A7Fyc4fgYhcmsIrSU4+EMEYcBYHT4PV23+X6QAWju7xRKv6KCspzwy5IEi3/O+cA
         HZhWZsggviIEhYnj63kpo+FXGFxhRZ8jhrZPxfyOJUKgc0gFGg55h88OaZpSOoZRw+Jp
         /OT4KckbAvu/hkzbJ7kjPFAzfPDkITbuwAmqoUghYkWfUAoW4AnagH1MvQqBvrXCI1wr
         5KrD67vVZY8gKMyxdlr8sAJpU50BMATcN0S6otYoh8Df6E/o9ROFYQiv7ZVcbYpboCL1
         R3R9lGQpAE8PulpXqaMxFF4zopWX4ayQICU2IyehGoJnALxSU/MNjoaLOGeg9Hw4nvDN
         kBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692007323; x=1692612123;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ik4gXzePMNDVXoA4qrXdz513andF8ufeDJrefrHPgs=;
        b=iEk9exx6uvai51tO5/jcFq8ANS0u4+WXUoQiBmqOMVn2fkI1Qa9MMyY33i48gWa7V7
         eaJSHk8ljqRwV00+RHmAh4B6ngLh0wtZtNpBYNwxYFpdJmN5zdwvTvIGdyHGO2263CJC
         Szq0vIVCdBB2M8U+Qp1nsxajSo7guroeDXelOn/hwZKGCW0JeDfrb9EwzllYNqfXHyiW
         oFgJZvqtnoxGbd05Ve5C9k1K4Azm9vEnuHB25rOuQAT87DWYVOq0klQkbLHXtGMjYZRS
         T9D1WcPdkdx/RdrTvVVodEWIWwTE5r+ybdkwouyo8ZYIZUwTIicuduj8RTs1hfMRPO15
         6dVQ==
X-Gm-Message-State: AOJu0YxF4miQcKUYzvjrFfVm54mrQzOqxMdmhCngJeEaefYQVekqWqAx
	d8pD7HccOk92W1SkQH+wHqHT4w==
X-Google-Smtp-Source: AGHT+IGLzRRf7XnAWVvQR/vfWi0vMp1OCBzNr5Xn0bY7guPVzQfzodJcNpciW9fx89Nxo1T/CwxBrA==
X-Received: by 2002:aa7:c557:0:b0:522:cef7:83c3 with SMTP id s23-20020aa7c557000000b00522cef783c3mr7646463edr.8.1692007323433;
        Mon, 14 Aug 2023 03:02:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id y18-20020aa7ccd2000000b005227e53cec2sm5403411edt.50.2023.08.14.03.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 03:02:03 -0700 (PDT)
Message-ID: <7c05f889-acee-4ef7-7fce-c30baa760138@linaro.org>
Date: Mon, 14 Aug 2023 12:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 3/5] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <066299506138ffcf1a3135b6f1a4609eee46ddf9.1691660905.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <066299506138ffcf1a3135b6f1a4609eee46ddf9.1691660905.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_030207_156403_E48D3697 
X-CRM114-Status: GOOD (  17.50  )
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

On 10/08/2023 11:56, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
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
> index 8bfc2db..c45d9d4 100644
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
> +		usb: usb2@8a00000 {

usb@

Node names must be generic.

> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;

OK, so this was not really checked for any warnings.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
