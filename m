Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5A6C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 13:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7IOE/rcxvaPDgQLKeO2c1XP8Sdu8MYu57XtY7bVln0=; b=u9gCHRgOTQdOTf
	Qwn2LM3aK7rwU3Bm77N8PDMaq6cDz3zHhUKNvOH1U01HRH9fyG7erUHxpBEDYsNwhAyZ3lb2BMG73
	8mpEkRqDey5V7l2VXyi8mPuIg4vYd42Ta/MfjqR05vbcE6s5ybcO5wiSzNPGuHv9nLtU7AfYEazPs
	8LkrLFXD//t4rio31lKsC8PWohEwEOcgHjJYiXtpkCvdIGkt1UVJEDtbBwvWK7g9i8Wz2I2ssYxMS
	PHf+67SfZ9NfPjwUkMO5l2KLntZL++F8fNuNP+StCTBGaQM39scOfWQpelKkvPW2ZA5vq4JYHtgUH
	UZiAqnyX9keZFxJc02eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zJE-00E1qZ-1M;
	Tue, 30 May 2023 13:22:44 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zJC-00E1p1-1r
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 13:22:43 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5149c51fd5bso4191280a12.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452959; x=1688044959;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/24UxPBfR0sgEFqt/O6F91wFOQpVVQfus6oLh21Y0t0=;
        b=DmIrPMnOuyRs7Z/Y5MO/vMwytCqh3Klgp3OWWvqhoHTcsmrb22wZ6jSH8ZJpiDIb4F
         YBoOWQoH4MbBZJjKE7wBFfGyp9OktLQBP5LvaqZKvz3GD8iwxAVrLEj1piYY//GU8NVX
         9Qf/yEY/7MGUvANSTn+Sit+uQGkM2weDAZq+Z8d7cfLK4qVHMb+B1jewFuS5hUHarEWD
         vF2do19OHGTWt0Om1/iy6MBEr6fQ6xhN5B6rWsZvSHKfP/go6CxxSGaahZffpDFGpQq6
         VGFPLziUXUkhcXQWfF9c/S9BT6g3sPZEatKZzH+Wrwn/L3rMFKaJfAX+Cf4oH+CUbHKZ
         U2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452959; x=1688044959;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/24UxPBfR0sgEFqt/O6F91wFOQpVVQfus6oLh21Y0t0=;
        b=X96n1ORbnAE8zZmybGrZwITlPjmPh20uLVqyW89iYh4+VMQeh1MRWzAtrPbyyqcxIO
         x36js/DzSaGQu1tEpz9JXirDf/X4u1HRarFfQB2ZxpLAiQ0KvTR2nf6nZ5oyVWe3VTqF
         DT6ZkhZNZufXg0q103vnY533cNAJUVWz5yf/fQnOfbtS9cwofshuJGQgAbE355GVzB5N
         1CiXtbxGeULiFBdo/i2eHOVVqxxiQOUeJLIk05dSp2xHExYpIsplFrlqkXuXFxfZPQ6B
         3rV/OrkkjG8szfnTAiE8Xk2nK/T38kYtWf+cjmAdVM8Tz5RiTJJdFBKgnmu3PxVu4gG3
         iy0g==
X-Gm-Message-State: AC+VfDxQ1uUINnSP1EWPJsIoxEjsoy3mUZfuu2zBsT2b9vsIKuMlQPAQ
	0gWLpn8NpsOWcnPS7SVDqo+D5g==
X-Google-Smtp-Source: ACHHUZ5XdM462+bLqkMo9j64utn6Epv2miFRV1JBcRRR1jwxLR2ZzYktlryXRxelMtBLc0cubiaRrQ==
X-Received: by 2002:a17:907:7206:b0:974:1eeb:1ab7 with SMTP id dr6-20020a170907720600b009741eeb1ab7mr1891024ejc.24.1685452958920;
        Tue, 30 May 2023 06:22:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id la11-20020a170906ad8b00b00965f5d778e3sm7380051ejb.120.2023.05.30.06.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:22:38 -0700 (PDT)
Message-ID: <20845b22-9250-c4fe-376f-d0d600679c8e@linaro.org>
Date: Tue, 30 May 2023 15:22:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/4] ARM: dts: qcom: msm8960: Add USB node
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-4-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230528001010.47868-4-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_062242_613000_3267D18C 
X-CRM114-Status: GOOD (  12.19  )
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

On 28/05/2023 02:10, Rudraksha Gupta wrote:
> Add the required nodes to support USB on the MSM8960 SoC. As it's very
> similar to the APQ8064 SoC, the nodes are almost identical
> 
> Add a label to sleep_clk for the USB node to reference
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>


> +		usb1: usb@12500000 {
> +			compatible = "qcom,ci-hdrc";
> +			reg = <0x12500000 0x200>,
> +			      <0x12500200 0x200>;
> +			interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc USB_HS1_XCVR_CLK>, <&gcc USB_HS1_H_CLK>;
> +			clock-names = "core", "iface";
> +			assigned-clocks = <&gcc USB_HS1_XCVR_CLK>;
> +			assigned-clock-rates = <60000000>;
> +			resets = <&gcc USB_HS1_RESET>;
> +			reset-names = "core";
> +			phy_type = "ulpi";
> +			ahb-burst-config = <0>;
> +			phys = <&usb_hs1_phy>;
> +			phy-names = "usb-phy";
> +			status = "disabled";

status is the last

> +			#reset-cells = <1>;
> +
> +			ulpi {
> +				usb_hs1_phy: phy {
> +					compatible = "qcom,usb-hs-phy-msm8960",
> +						     "qcom,usb-hs-phy";
> +					clocks = <&sleep_clk>, <&cxo_board>;
> +					clock-names = "sleep", "ref";
> +					resets = <&usb1 0>;
> +					reset-names = "por";
> +					#phy-cells = <0>;
> +				};
> +			};
> +		};
> +

Don't add stray blank lines.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
