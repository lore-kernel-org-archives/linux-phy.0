Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68959EB64D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 11:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfHjjkWuiUvg0Amt/hRk3R+rUQI4J1kAqOQCg7xJSwc=; b=b/ce+jJl5KGho0
	Ba6BfJ3PIWqTp8lvfec1og4iP5qL2PA+XWjvKCMeHdnMshc2jw5S6GRTjAfTjTqwZQfipFeiEVGW1
	9tr85wb/kEEhzmRdQTMf1tWTarIDzB8GDgA9T/qztJbiS+OxHgmOdYKmZgebfcTgadVQBEAw1eOow
	1gbhc8iuOOFmlJhYtL+FQoJOSrlhQWYlUdpKhZ6l0oX2vMnH/WYlnCPlBRtg46ob5x1fc3u4EG1UH
	5Jxd3oTWb/e2eEISxmpw0fhZeCCAnN7dFWRVKQQ48ivuK8BIoOK3VVgaWMAy6w6IAp8BTZPyvx6iE
	4nOW3sIaqMiemBHtcdOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHN0D-001SmT-0G;
	Thu, 06 Jul 2023 11:18:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHN0A-001Skp-1P
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 11:18:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so734210e87.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Jul 2023 04:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688642297; x=1691234297;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2TBZJkcS0xaN6VJinb4rdEWKvi8fXW3P7v3shc5NZsI=;
        b=DSeR5NUQeR5q4Eo5e/gxGQLm3LL7aJ/c3idgMIN9xXlYL+q+L6b3NLn4HQv7S5NP9d
         PfXqGLLEHb2q65RvZ/yHm4Gaxku+EUvHlaf39L+4VF4SM+nxczX2X8ItR209Tn/vJk8X
         oZhkw5i+qyskjl0UL99snaxMy46MvmNEYuOnRiOud77kYnSlpnHmRghK4O1D8Oo9TcsK
         Qkd3sAgbJGvA5xbvqQgbTY93/Cbpap2egongJZv1gaTuNOxLiYJdk9lpPpLXPSFYvURG
         6r4seG9G5+mC8yJOHp7gOUnpU6ifDg6fz19d+72CEojWgc8rFUWnrzHNWym/nnlxJNqN
         yQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688642297; x=1691234297;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2TBZJkcS0xaN6VJinb4rdEWKvi8fXW3P7v3shc5NZsI=;
        b=TvE7ZH44zlG8YGbrW2WfbteSrT89B6TFRsrW+LzWe7SMljHZ0aYTC336T28AERPSQZ
         k/mRtxU+2g7yymtsIABP0wAerVNaUGWRbYCEq9/a15AwLlYqaiaZ9ks8cPwfRl7aWD0m
         eiY6uVp7zyBiVK5s8oGkR5BnIseyCcQMcpIwE2YvYnsj0uX8TBrAeLrNXNXBA5v4VNKx
         gSu0mwTg+vMPtQJKu12eAcq5kPqE5LJVWF2OJaso3ar6p/hEZJ/KO5DHbITNxLDnA6xe
         nyq8z1uwFy/3Dz2B5ZOi42PlJb0A9kiFZj9U9aCoxNewl83kmbHo44PaI/RL1rvhGUwo
         hmkg==
X-Gm-Message-State: ABy/qLZV2Pg9gq8wyMYK+GnBFjHTsvcHNjnDtdBXvxeGwWLmwX9P0zJe
	WmoI1FzJc8+1CEcRpiVFyqp4uQ==
X-Google-Smtp-Source: APBJJlEdV0G0y1a9Ie1Ud8CkuIhX4rGYpvbYdBYmnQe3S0XJ61PAyQlUCsBvEmEzaYesJ54UzAWjpQ==
X-Received: by 2002:ac2:5e68:0:b0:4fb:845d:9e8f with SMTP id a8-20020ac25e68000000b004fb845d9e8fmr1114939lfr.53.1688642296658;
        Thu, 06 Jul 2023 04:18:16 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id er14-20020a05651248ce00b004fb844a03c7sm211188lfb.186.2023.07.06.04.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 04:18:16 -0700 (PDT)
Message-ID: <c71b5f8d-c3dc-4213-1665-43dcbca7a159@linaro.org>
Date: Thu, 6 Jul 2023 13:18:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: sa8775p-ride: enable pcie nodes
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-7-git-send-email-quic_msarkar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1688545032-17748-7-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_041822_477490_090D394B 
X-CRM114-Status: GOOD (  11.52  )
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

On 5.07.2023 10:17, Mrinmay Sarkar wrote:
> Enable pcie0, pcie1 nodes and their respective phy's.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
grep for '&[a-z0-9]\{' and please fix all missing spaces before the
opening braces.

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 68 +++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index ab767cfa51ff..4a39294259fe 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -443,6 +443,74 @@ qup_uart17_rx: qup0-uart17-rx-pins {
>  			bias-pull-down;
>  		};
>  	};
> +
> +	pcie0_default_state: pcie0-default {
> +		perst {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		clkreq {
> +			pins = "gpio1";
> +			function = "pcie0_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake {
> +			pins = "gpio0";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie1_default_state: pcie1-default {
> +		perst {
> +			pins = "gpio4";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		clkreq {
> +			pins = "gpio3";
> +			function = "pcie1_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake {
> +			pins = "gpio5";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&pcie0{
> +	status = "okay";
> +};
> +
> +&pcie1{
> +	status = "okay";
> +};
> +
> +&pcie0_phy{
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l1c>;
> +
> +	status = "okay";
> +};
> +
> +&pcie1_phy{
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l1c>;
> +
> +	status = "okay";
>  };
>  
>  &uart10 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
