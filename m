Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10584C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 12:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxlFqMhnwZUdrbAmSSwe0DrYJxk6nzJVy28I7k34BhU=; b=mJ3W5bGzwBv5Ie
	lBc5QPR1bHEsZu0g+V+5BJg43c3+/h5qCBjLR+Q21BsnfjhGZOinOb2k0i4F8Jpsh+Byq2X6Kgcfv
	XFoNOCrGSYEWX0aesWpenWbhFC8kNtKmeR5w8Jiazqyq0m1lY1Wro+HYyvori5/JJH+/oYYlEhaLh
	/BngyYZ1C7uSgwZZWbxwQ7AZmeMh8UpMNaGpqJG6CfTDpxvd63gAe7eAqpV0MB65OsC9pHP5M8k+K
	hsc+4wIyXRWOAcy288pEIOwVV5S9Qn4YDZPn3ceRcZf6LoLpfE7X/0e5yTVLw6iHL2wN2hHqQ7YJY
	TmprHkHmuKIlNxX4YyJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZox-003BfP-2S;
	Wed, 12 Apr 2023 12:43:31 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZot-003BdC-0m;
	Wed, 12 Apr 2023 12:43:28 +0000
Received: by mail-wm1-x336.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so14030413wmb.3;
        Wed, 12 Apr 2023 05:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681303405; x=1683895405;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cUF7LoitQw5OkHRbbbgY1vxHPcwK0X9aUiqFfbPiOwE=;
        b=Ex9hVrKzu4VnZn/KwKympLWVqnLG00mRzfW1qoaZcqweDNRIjvzttcA6d175fMltO+
         s+44KFje1bNbbW1gDNTtg3qY1PPlw3F6d9BWgDp5ictRbUsF4ftSM4bJjPQMO6OS7krV
         WDqO6hovL/h7RbDXLeZqyLjg5Qml1ZqBKnYXAfpbj0yw6PJpcjNMTmPNNP+LuJE0Ksx4
         f2a3OtOGJpRCwm0v1TC3plUl5VKW2RjLu5fJ8uFc1o42cl7iQU1v2I1Iyp5y54YckBNf
         D0U3zJQ3MW5AoxCy1/Sr1gNtfHVX1dSBBiIJ4aSoCN9fzRfjxTDzAT7ZaF+BegoXfL2F
         Eceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681303405; x=1683895405;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cUF7LoitQw5OkHRbbbgY1vxHPcwK0X9aUiqFfbPiOwE=;
        b=cXk7NWUONHeonuHK/+Ytn4hnAV7bOvVV5xOOB9wm39+Wmv6ZEGCWWfaSNAGoLIIjfi
         ldDS2r3pBcWhoozGMW8zsK8wM0N1cWpGpwoFGDoa1kzODzFSwjhrToKTzmdDtbeVFmCb
         lZLF65Yf/1rp17IPp7mA1Cth+EcMBC+txkeLlqtMyfOG6V4B6i9vvhXqnIgz3QLU2mXe
         IUwTwWr20pcmkoAvTcy9aX+wEFzZQwlykUSwQSQjPOMLIv+S/spbhxkCWY8JrbIp1qDI
         tz1VsRGx8lxcbo2ujaVJg/qyTeJpmLv0v2MoLfIEsIszyAGWRIONRkGCrCC9nItecSbe
         3+zw==
X-Gm-Message-State: AAQBX9dH3o7n9yuBzLRo7OKNY4tchjYCwi4C5cYOudy5xgWjHTMtr/6z
	Penw+oAX+bYhpGY+C1JRCjg=
X-Google-Smtp-Source: AKy350aAVnydjEmaeKZAWvOiy1vncejnZ4Satpe9Geuus5lfYY1lSqu4hz+nbW5+onECFdEVwDSGCQ==
X-Received: by 2002:a05:600c:c1:b0:3ed:9ce3:4a39 with SMTP id u1-20020a05600c00c100b003ed9ce34a39mr9980309wmm.26.1681303405450;
        Wed, 12 Apr 2023 05:43:25 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id 6-20020a05600c028600b003ee0d191539sm2269003wmk.10.2023.04.12.05.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 05:43:24 -0700 (PDT)
Message-ID: <95aec24f-b393-e36d-b4dd-4c0a228fc619@gmail.com>
Date: Wed, 12 Apr 2023 14:43:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 20/27] arm64: dts: mediatek: mt6795: Add tertiary PWM node
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-21-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230412112739.160376-21-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_054327_282549_B4CCBCC2 
X-CRM114-Status: GOOD (  15.84  )
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



On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> The PWM at 0x11006000 is the tertiary PWM; unlike PWM0, PWM1, this is
> not display specific and can be used as a generic PWM controller.
> 
> This node is left disabled as usage is board-specific.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thanks!

> ---
>   arch/arm64/boot/dts/mediatek/mt6795.dtsi | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
> index cf45cb4ad3d2..50d9276d18c6 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
> @@ -583,6 +583,25 @@ uart3: serial@11005000 {
>   			status = "disabled";
>   		};
>   
> +		pwm2: pwm@11006000 {
> +			compatible = "mediatek,mt6795-pwm";
> +			reg = <0 0x11006000 0 0x1000>;
> +			#pwm-cells = <2>;
> +			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_PWM_SEL>,
> +				 <&pericfg CLK_PERI_PWM>,
> +				 <&pericfg CLK_PERI_PWM1>,
> +				 <&pericfg CLK_PERI_PWM2>,
> +				 <&pericfg CLK_PERI_PWM3>,
> +				 <&pericfg CLK_PERI_PWM4>,
> +				 <&pericfg CLK_PERI_PWM5>,
> +				 <&pericfg CLK_PERI_PWM6>,
> +				 <&pericfg CLK_PERI_PWM7>;
> +			clock-names = "top", "main", "pwm1", "pwm2", "pwm3",
> +				      "pwm4", "pwm5", "pwm6", "pwm7";
> +			status = "disabled";
> +		};
> +
>   		i2c0: i2c@11007000 {
>   			compatible = "mediatek,mt6795-i2c", "mediatek,mt8173-i2c";
>   			reg = <0 0x11007000 0 0x70>, <0 0x11000100 0 0x80>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
