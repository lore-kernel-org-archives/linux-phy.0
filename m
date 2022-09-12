Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3761ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 11:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuTXw6/PZfX2Nfwjeea4bBzE0fuv/C57yib38RHUD+Y=; b=jhWt9X4cydtnQv
	/s0cKPezBXsjii5R6d8qSKV3E84SJytpU0qc74N50iflVhEhB/vqzTAGoR73OW1sZTcXeGkFbrzwK
	hUdtywEosgVAzn4foXxLdiyhuF40efAGZ2Ick/4UWp78XgxOImbzVMGA3RnEe5UOCkN/Gmfh+BZi2
	y3wqMQ1xq2vO8iIg5Cpd4Y0lqMdhxMFsx1R8edxzg68jrsH3UM05P51jI1UQVngagmcmu1gcJUuk2
	SxDj195Mz//d0bI3sWTg7pA1hbMm7ja2c/p//yjF6+aO8cOx8nGKqrMbJ6I4b5Vl8TMdifCZX+75d
	thtfuGWgKALSdtmuSsHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhJx-009AQx-Hs; Mon, 12 Sep 2022 11:09:45 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhBS-0095sK-MU
	for linux-phy@lists.infradead.org; Mon, 12 Sep 2022 11:01:01 +0000
Received: by mail-lj1-x229.google.com with SMTP id bn9so10074370ljb.6
        for <linux-phy@lists.infradead.org>; Mon, 12 Sep 2022 04:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VNRLB5dMr8KxcMuJauPpZNtGEDYIcFeLhKYuKfQ2WK4=;
        b=Wr271pDa4rYLOMj1WYVJWc+MhXbFaiyoYNkavxMyqSK0firTu7PnHjPX39Rgx7kg6O
         stiKUajPEgJzCGa8pAk3WO8Qc91CsGQGrOY8LJ9j52EVVd1MgNPN3WaVUuEJnJN11u4b
         Qpg5WIoDM7DlRIOn4EJIs4ZEtbl9xc8upENfntB+G01YNTtdBEv/YwlO25SJuNNc/nL6
         a3+S9EEJWQBLPyv5sAJ4LR/Wj54TYjrFhtt0kPua0B2frGbW9lGlwZ1V6Oqz7i7sx03d
         yGtQxThRzGLvFRlb8Np9yms1PBoIZPkKtHK6nE3JHQPr1W9wN+R147UYGbkNUD7oxVWm
         S0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VNRLB5dMr8KxcMuJauPpZNtGEDYIcFeLhKYuKfQ2WK4=;
        b=XxqNN3D9vXlNSKAa/x1wRTb+sgI1NKSLsoVeeNlU/zjzaj+/mEGmYGTlelhp+Fm2U5
         kXPlNe90KC2qbaXX1ziV/IyTDFQom4hajVFWf4adJ1XmgorUW0v9ae0AoCn7OzCOJBr9
         KHVCkP+eZOhUvWCU+qxE5e+ZpM4+7vtrC66PwRwn8bmEAM+4SoVTVsVYcgRJQ0cMwXpY
         IloBdy8Fea4FN+ntRg9qdnkg9jgdQUywQ3YXTgBt3Xm4ochzWphCmvB+XiJNpS6C9Dma
         c2gtd5m0rWLkzJweFN/GIn7ITQO+mCGDQDU4y3SN1zAl/2q72HMRRwCmaz/M02KhDvw4
         4Yyg==
X-Gm-Message-State: ACgBeo3psWiffj0Htj1ZkLJanMlzEwyxUDjktSv3Taumin70rS/nRg/s
	QnLUXS2hhBGmj6JkhAXEMnVsKg==
X-Google-Smtp-Source: AA6agR5qUmM2ZmB3u+ceQgLmGH1b3qt0oNh2whK2G3kPo3FfMoZ57icsO07DBG7SNBSMhG5XpY/UNg==
X-Received: by 2002:a2e:9801:0:b0:25e:45ed:edc5 with SMTP id a1-20020a2e9801000000b0025e45ededc5mr7229723ljj.467.1662980454897;
        Mon, 12 Sep 2022 04:00:54 -0700 (PDT)
Received: from [10.129.96.84] ([109.232.243.34])
        by smtp.gmail.com with ESMTPSA id v6-20020a197406000000b004979df1c1fasm1010823lfe.61.2022.09.12.04.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 04:00:54 -0700 (PDT)
Message-ID: <15b65ac4-6656-dec5-80fd-e3c29b226a25@linaro.org>
Date: Mon, 12 Sep 2022 13:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 6/7] arm64: dts: allwinner: h616: OrangePi Zero 2: Add USB
 nodes
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>,
 Icenowy Zheng <icenowy@aosc.io>
References: <20220911235945.6635-1-andre.przywara@arm.com>
 <20220911235945.6635-7-andre.przywara@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220911235945.6635-7-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_040058_797021_CD908749 
X-CRM114-Status: GOOD (  14.98  )
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

On 12/09/2022 01:59, Andre Przywara wrote:
> The OrangePi Zero 2 has one USB-A host port, VBUS is provided by
> a GPIO controlled regulator.
> The USB-C port is meant to power the board, but is also connected to
> the USB 0 port, which we configure as an MUSB peripheral.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../allwinner/sun50i-h616-orangepi-zero2.dts  | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
> index 02893f3ac99d..3197dc43397b 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
> @@ -49,8 +49,25 @@ reg_vcc5v: vcc5v {
>  		regulator-max-microvolt = <5000000>;
>  		regulator-always-on;
>  	};
> +
> +	reg_usb1_vbus: usb1-vbus {

Generic node names, so at least generic prefix/suffix (regulator-usb1-vbus)

> +		compatible = "regulator-fixed";
> +		regulator-name = "usb1-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&reg_vcc5v>;
> +		enable-active-high;
> +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>; /* PC16 */
> +		status = "okay";

No need for status.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
