Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2606EC001DE
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jul 2023 05:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bb7H3xQalgEl7hKikN9VQAj67EP/EH9aAozEG8bPvwg=; b=cumcyPt/yrJdFx
	RlaXyCQMINSuTxJj6bwTTtC3EcesjTm7YMK5Inqrx10j/L94dSDAPJJmMtuIgpyB5OPmagIpBuWYC
	+f3svMie0sOf7346gRGbblaW8/dKtPzUO8L+bEh7j+j65xuGItGmYGcZ7cZ/u4W6zkAzMyDut6C8I
	F412mnya9x/sTJP0Yyc4KqjlINxqVfAPHsqZNlp+bIUN+MLbhw/kz6z4cw2xjUnCO6RJuXD6wE2Zi
	3aC1cN+S0yYwURfAvps1376auu8KjPuWXW3Lr2ZQPdg0zP1f0bwokE2dU1E726GXwCR9pW2JlqbIu
	HEGILz5Hu6CSQR8YvPfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4qH-00Fqdv-2n;
	Sat, 22 Jul 2023 05:07:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4qD-00Fqcs-1U;
	Sat, 22 Jul 2023 05:07:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BCFCC60AAD;
	Sat, 22 Jul 2023 05:07:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F81C433C8;
	Sat, 22 Jul 2023 05:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690002460;
	bh=ZSwAqBOUrBH+BHctzz0gDWSROt9O1H9rtT9Kib0tkKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fRNr4chWIau0nM6c7WDUGQlGk8sSRTBBssHYUAvDFdjLKFJEBwuUdzJIPxudDMBu2
	 sQQHLIXQCWfXh9mlGUmszF2UA4//K86xJRhqqA5N44mNxksEKI9MlJL/NUlE869h5F
	 vmgNcmUMc02AN2zgzs4MtdoeRbib0E1Nt16F9T9Nw1eF8fuloiSfCAAG4QE+4aUxjx
	 jCRyRdoonzDrDTVnkHGOmK7j9+rMMB69vQdnCOqyJpFIols3zftJMrlMM6pbb1PDDE
	 IEJ7raxZPncjPozCLmbR83sJExqLJzKb6Co8hGGyB971EhRl5MvgieEdfh/QugObkE
	 w9GnmnGGR3u+w==
Date: Fri, 21 Jul 2023 22:10:57 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, 
	neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl, 
	quic_srichara@quicinc.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <ymbcafqqhc6hgrfhpef4byehvfyjzovs5zeprmj343erdv5ti5@tj2iunu6whvi>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <131eb1694229436919ac88bb9920fb54d6808388.1689913334.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <131eb1694229436919ac88bb9920fb54d6808388.1689913334.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_220742_901324_DE7A858D 
X-CRM114-Status: GOOD (  13.46  )
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

On Fri, Jul 21, 2023 at 10:05:27AM +0530, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

As Sricharan is the first one to certify the patch's origin, it seems
likely that he's the author. Please add a Co-developed-by: Sricharan.

[..]
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> new file mode 100644
> index 0000000..e0b282b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M31 USB PHY
> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> +
> +description:
> +  USB M31 PHY (https://www.m31tech.com) found in Qualcomm
> +  IPQ5018, IPQ5332 SoCs.
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:

const?

> +      - qcom,ipq5332-usb-hsphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: cfg_ahb
> +
> +  resets:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    usbphy0: usb-phy@7b000 {

usb@

And you don't need to give the node a label in the example.

> +        compatible = "qcom,ipq5332-usb-hsphy";
> +        reg = <0x0007b000 0x12c>;
> +
> +        clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +        clock-names = "cfg_ahb";
> +

No #phy-cells?

Regards,
Bjorn

> +        resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +    };
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
