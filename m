Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DAE8C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 12:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gOKyqsKK5os1URlnJzy35UuwTEqiCMnMBpU55s/v7U=; b=O/rg01jzxYCYFt
	/MLk6P47wn4JPD04raQF2ig1tT+ZdCwjhE4SD6z0vZuz5lBh2GCGQX889eO1HHHkvK+32JxObWaZs
	St27E0JcowefD4667ObR7lCZoyet5tZGkTrpgcGbGTu05dYXKxcyVtie4UknwT8W9W+aNU1rixdCe
	dBTl2O0+CWpfrYUi0DM5YCvxwaBmJxGdzlac1ZoWkaoo/p9qE3X7gMPBB7AW9sj17o8QRaJEmK0Q3
	69ZO6xbopPNrSmHjsLjsjPNn9vBf9nkDC2Z+3WkuDB3zEpqyH6rZ1XVxlEyhxgZDr1pllsSFdvrGP
	8ZhlY5aImUZXQz/Sf0pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLOAa-00Ei3Z-4l; Fri, 27 Jan 2023 12:49:28 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLNEf-00EH7T-C6
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 11:49:39 +0000
Received: by mail-wm1-x329.google.com with SMTP id fl24so3271005wmb.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 03:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IXd1Cay0PuoVNLquWy4+5A9Hje1OZ6HIZgO3KYLNKCU=;
        b=EM+BulHUseAsmgsDpFK679ddP8Z3AeuM8tLmktr0DE2abRVZJ5wKMKNsz/nK3VPE30
         OHzifBu8lcuElJLZ/r83ZfXSGbz/jju0ZVtRUuyOodRDgKYRUJVg3dmfiVfNWyqrSvpB
         Vhyu2yeRGICk4vclE5hwkNNByXgNlwuDEHwlaD+n5oYnkWqIBkDPYKPqmnW8l4vBli1y
         jRkIWbUUIFh5eIHXaIBIBByJk7zDU7ESsYtndEVGMKz8BBWorqXSuhHZq4Kysc314DI7
         wWUFay+YPLrKHhMn3KMex813AlP9Q25mxEHDb3rI11K6+kC6SuquhPHXrjKZVaHQHIfJ
         sChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IXd1Cay0PuoVNLquWy4+5A9Hje1OZ6HIZgO3KYLNKCU=;
        b=jGtnljJKD+qSs8g7DDW/qfldizkoZuhpzj+ndi2uhQdgTreuge0qm4Unjp+bXTMTKB
         C3EFNmYVrcHYv4hchM8fx0q5YrEg7xFQ0MTVBlh5OPr22GxGtnIvC+SCEu3CBxPujglM
         y49mQrYjsFRNNc/oHvjYjtagSQU5jS3P1ROtG3rWiXJ0SszSMCEOHf4fyPqsu8g4v2TC
         TqJTmHwAFCJNfIVU8oITWeW6ktrvAR0sv8M5HkjO+ReT63ejcVqEzp7ONY6Aq5Wu+CfU
         VzWebZJNQcT2i/eiC/zxRZ517ccE5bRztq+uIuDSwltYYN4bsH/eNr61N4cmcsRvUArv
         nRQQ==
X-Gm-Message-State: AFqh2kpEjFi2OHnBJYSzwQipDPHWUCUSHzXZHgxAXjk2XdRes+yZqhao
	ekf+h20WkvTTR2WYRn38YgiD5A==
X-Google-Smtp-Source: AMrXdXs1krk+6o/FfFny7AmBPlSTXvn2eo0l3icgMKTakzX2LZT41di38a+DLnWs8FhhuiSaNmhY8g==
X-Received: by 2002:a05:600c:4e16:b0:3db:15b1:fafd with SMTP id b22-20020a05600c4e1600b003db15b1fafdmr32933179wmq.24.1674820175891;
        Fri, 27 Jan 2023 03:49:35 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c2e9400b003d9862ec435sm4075479wmn.20.2023.01.27.03.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 03:49:35 -0800 (PST)
Message-ID: <9f4666db-9b0b-77d4-e02b-708c2a1ebb4e@linaro.org>
Date: Fri, 27 Jan 2023 12:49:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
 <20230126131415.1453741-8-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126131415.1453741-8-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_034937_623713_5A7A81F6 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

On 26/01/2023 14:14, Abel Vesa wrote:
> Add USB host controller and PHY nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---


(...)

> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8550-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&rpmhcc TCSR_USB3_CLKREF_EN>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "hs_phy_irq",
> +					  "ss_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "dp_hs_phy_irq";
> +
> +			power-domains = <&gcc USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;

This is not accepted, so far. Can we drop it?

Or revive:
https://lore.kernel.org/all/YXcBK7zqny0s4gd4@ripper/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
