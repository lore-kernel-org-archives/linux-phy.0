Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBDA0CD6137
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 21:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O1pYdtsZXjwovPr7ph0NpFWj+aLPxrbdEsqzeSW9NE=; b=XWfU3yEkl9MzS1
	R47GkgJy1rakVgfeYmGjm/5IMcM/1J1lmmZ5Od38TkpLM0ywqJOPaLod6kmaB+8Ra5oLz9jVvoj+p
	2SFFlJd0b1AMMziYAID3LlawWjZSAgMTZXr0VuiJ5et8F20X+e8M+aeO4VRtqPuUtsaQJQTu899ff
	BY4p2C+LkqEJP6MTDMF6BIVp+aANzwXeepwxAVy03o+idba91N1xWcBi/2SvwU3CqrhQqkN7YhaxG
	m04gJDCGyiWHJW9edubXg6shqD01Jd632g3Iz0hor3TzFHAXZM5BnKx47V7d5eT+Qy/1F2t0RogZh
	+Ca+v3NQES6loTucCQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxbm-00BdQy-1V;
	Mon, 09 Oct 2023 21:16:10 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxbj-00BdQY-1b
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 21:16:08 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c131ddfeb8so56718121fa.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Oct 2023 14:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696886164; x=1697490964; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QJllRkKfyLXLeIPvgYtOO8kIRJqQX9SQuociu6Txv4=;
        b=xmdXiIlQ1wAncj10Peh8iGGG+e0JL8rW8oAX7wABB2HO4gF5wmbE5iufiN27Pl4soC
         dViJDtVH/u+Qc53V7XIoncCceOO8upmyef/sjq3VoLRTpgNwfBbdS4utMjVziNjpoc3n
         dsMZx+DQydSO/0oUX6UvjC2KGClBb+lGgRZO/rXzW1HZJWevy6IYlWNBRIE7QcCh7nTk
         rZybpQMEBAMHg3SkJ9wYwohCxBUIH8yrzF63raC5PP40XQsAmSIKlt2MCLzQYFkZHwKQ
         1CqSvqIAT2gyjKWZavtAv8SWbug2j/coY999/FHrBblFORj5c4rmfS3RHILUmIPHM1Pb
         jASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696886164; x=1697490964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1QJllRkKfyLXLeIPvgYtOO8kIRJqQX9SQuociu6Txv4=;
        b=mL859wWtO6ZwSsUS/bwv81DsL6IpgL0e18eNLmLJtzeR+PKkVA5uAfzBi26A23iqRr
         GQLcjfI58+nG4G8ZGNA7PO9F2LQK9XoacG6BOc96miUJE2NG+gLlfb7qOXjqso9P/ttt
         nDkczgWIIC/iDUVhm+FUwfuMETalGJ0WHV6xse8H1TDPeVbqPlcLgADX4u0zw5V2/g9c
         42zXdODh1nizBOSnHTSLPQ0nVgcL538Mk1X7WeXEoeIsU4o9Z0hHgaunVVvEsEO0ZVQT
         Dr26O+tGL9t5v3cCrBPtaFp2nb5QqF8Bbnb0jefC1uoCoDsRdKqs/2mwYcW+iGVuMhMc
         Du1g==
X-Gm-Message-State: AOJu0YyZm6RhYNsFtyjv3odT/EOZ0YFvJI1VLtP9S386C2O9Ya5ehxYB
	H3XOL7HzFKl02ZzK7M5QgNK84Q==
X-Google-Smtp-Source: AGHT+IFI+Nis6dD7nYVGj7SaBgIGgfknIUViG8EGepXxTPbJSHP5l8mwxp1h9hfC4Uz41QB9vPjQjQ==
X-Received: by 2002:a2e:9794:0:b0:2b9:e1dd:5756 with SMTP id y20-20020a2e9794000000b002b9e1dd5756mr14413302lji.45.1696886164263;
        Mon, 09 Oct 2023 14:16:04 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n10-20020a2e86ca000000b002c029a4b681sm2175771ljj.15.2023.10.09.14.16.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:16:03 -0700 (PDT)
Message-ID: <c72cb819-ffdb-4f6a-8567-3f5bf3368a05@linaro.org>
Date: Mon, 9 Oct 2023 23:16:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: Add support for Xiaomi Redmi Note
 9S
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 hexdump0815@googlemail.com, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231007140053.1731245-1-davidwronek@gmail.com>
 <20231007140053.1731245-8-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231007140053.1731245-8-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_141607_555324_3BEE64C3 
X-CRM114-Status: GOOD (  15.02  )
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



On 10/7/23 15:58, David Wronek wrote:
> From: Joe Mason <buddyjojo06@outlook.com>
> 
> Add a device tree for the Xiaomi Redmi Note 9S (curtana) phone, based on
> sm7125-xiaomi-common.dtsi.
> 
> Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile                |  1 +
>   .../boot/dts/qcom/sm7125-xiaomi-curtana.dts      | 16 ++++++++++++++++
>   2 files changed, 17 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index d6cb840b7050..57974fb0c580 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -207,6 +207,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-sony-xperia-seine-pdx201.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-xiaomi-laurel-sprout.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm6350-sony-xperia-lena-pdx213.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm6375-sony-xperia-murray-pdx225.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-curtana.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-joyeuse.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm7225-fairphone-fp4.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-hdk.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts
> new file mode 100644
> index 000000000000..12f517a8492c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0
I have no idea if you can just include a bunch of bsd3 source and slap 
gpl2 atop your changes.. Somebody else could probably chime in

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
