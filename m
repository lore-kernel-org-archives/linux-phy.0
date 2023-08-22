Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1BA0EE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 11:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVaNECpXowS4g4PADd6C4D9WSS/ShhvwqGzWlNxhgB8=; b=nCpP6i2FlasrGK
	UU0lRKT4irCmFxqZhXy82yxIptzxq2el5kY3Il7lewDCjU03U7Fn1vVDOuGtZJ4jf0zWsKBZhSpgf
	5Af8ohOixkmorUzciDio7+XDi5nF0hKtA0YtWy9mceKcabitVsX644s52bFQOCzKa7BDHI8RS9qi9
	2hPTGLrmnMWIft3GQsKoOry0J48fCfUIUqKGtk+OLJNcCQ8wsXox4d07OuF7vk4hVYiWhuGtHKXSR
	OnWVSQ42HmMEftFijjyL9qV8zGJyHUaIqJTKe4rAH2Nu17VP/IBk9ZWRtVdDHa9PDLVNXOBJMHOCO
	A1AB3che85zZFgIEL+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPj2-00FqE0-2G;
	Tue, 22 Aug 2023 11:39:08 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPiy-00FqDH-2s
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 11:39:07 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-529fb2c6583so3458310a12.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 04:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704343; x=1693309143;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=swtdZ6iWxZkwX4JLChr/7mfm4cT7UFQIrvk9nhlFwu8=;
        b=TPmTNZHvxiq7S1kpFeok1VPQ7IF3mZnrnz07IcXRQMymJ9KyKC3bkhhgxd5wKrUO5j
         F4c4ASZ7V98gFFbWL8F7KvzG3Xtfa+njT55ft2MDw4jqwAzfN2uLgOuDgm2pa+Xs4pPd
         MkGua9VAMKgXX5L7KKu6ZW/M7xoM3RlBBC6rF5inMHUWfB8xUFYHloeKugcUybmNSM4K
         v1mdqpFpT7aLeqMR7MhB0/l8v4CRQZidm+f5g0KV0v3g/x5ZvfOcG38LMP7sMD3JuQrQ
         M6NGmQ19pKFj5xrpfmKmj9lSPDe2iPjngWjXpgsi3ZkD8S8qoxpcI6K4jyMDrqrtCl7z
         AoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704343; x=1693309143;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=swtdZ6iWxZkwX4JLChr/7mfm4cT7UFQIrvk9nhlFwu8=;
        b=EanecOSWc0ZDK3xGW3OEvRBjLiFiq6GnL8CEB29jDH+QiuDIJm8GiVboKD4Q7oiYyF
         3o2MjwhxXyoWrsEXEKPizxmzbLLlxyGdxl8G8lenCteeCn3yUGRLsobk91kiBTdyApBN
         TeW1v4ACdslQvRTZ0I5Qt9S0ti3+s/F2dIbzujHA2xk5C3O/5zlOEyS78zTI3fMmVecP
         GyosEoS/mjULi1zZj4V7IiDnjVDWhYzCB48NwKul7eOVXXKWFlrhIIXzeEJQHXQVt4I4
         YOj56Pf40l2x6frDms78rGd+HaPobdrQcVsW+Vmmb1jr5tAxcxiNecmmxrxz9U6N2GXP
         mjPA==
X-Gm-Message-State: AOJu0YzlhAQV+f5lkdG0Ws0bmzBcz7jlVLlDpaOzpQLwVlLj0iVmOs8R
	AYXAIuMb0ek7vh3CfGl6B9TXKg==
X-Google-Smtp-Source: AGHT+IHUjfXRdbb5xkWxvSmHYtiXNjA44zx5N05SQQus1ESIq5Ng+XMglFSU3mnkglNjVtBmwz7itg==
X-Received: by 2002:a17:907:78d0:b0:98e:1c4b:10bb with SMTP id kv16-20020a17090778d000b0098e1c4b10bbmr7236522ejc.35.1692704342896;
        Tue, 22 Aug 2023 04:39:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id y6-20020a170906070600b0099cadcf13cesm8051872ejb.66.2023.08.22.04.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:39:02 -0700 (PDT)
Message-ID: <c534e39f-f8dc-b9eb-ef27-3ace29192cfc@linaro.org>
Date: Tue, 22 Aug 2023 13:39:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: ipq5332: Enable USB
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
 <27d6303008be83131048ddf2ecef91cec9519ee2.1692699472.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <27d6303008be83131048ddf2ecef91cec9519ee2.1692699472.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_043904_950514_30AD9A23 
X-CRM114-Status: GOOD (  12.72  )
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
> Enable USB2 in host mode.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9:
> 	regulator_fixed_5p0: s0500 -> regulator_fixed_5p0: regulator_s0500
> 	"make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v6:
> 	Add vdd-supply and corresponding regulator
> v1:
> 	Enable usb-phy node
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index f96b0c8..53696f4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -12,6 +12,15 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
>  	compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
> +
> +	regulator_fixed_5p0: regulator_s0500 {

No underscores in node names. If you look at any source code, you will
notice lack of them.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
