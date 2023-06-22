Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC884EB64D8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 14:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHzFTLvLH3WAIqblh5E8/WOIlmxm9vWIpArrBV3TxlI=; b=QN6U8Ed6e9cTW0
	3S1XEkQQtqh1Au0u7YZoIBFxvUjoBgQn6zV/VxctInoe5gtCnEn3HthDFkrlP8AuBj+jgHX736wPB
	98b1B/n+3kbXpYtVYToGvr5tk0sp12OQz2/n0Ly0T5Pltb5Ytv7FT5yeGCDdtiEXexOAnTE5Hel3F
	cMZHjDtAgMC2Fv7ZB8zTh5pnkiT650GmQY2uc1QJpNHYrCgTidoHMekpJW8HGL7pSNQb3e1EFUBou
	rduVjsGp1yNubhK0cL21SWRZrraQJBakTGC2UxQxUwxHYdRi06qvjc6gnVjBvL1tQ82+gJuElM1Eq
	nFkdJEJCA4H/2cj7RIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCLZy-0012Az-1Z;
	Thu, 22 Jun 2023 14:46:34 +0000
Received: from mail-il1-f182.google.com ([209.85.166.182])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCLZw-00129o-0L;
	Thu, 22 Jun 2023 14:46:33 +0000
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-34207e81c98so33808245ab.2;
        Thu, 22 Jun 2023 07:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687445190; x=1690037190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jMBFysAIHtFf8K9nvyV9q2jbJEw4yuc6x8Rv0sjnvNI=;
        b=QCxil3byZPaz33dD853UjoQXWxkmI7Ln47swOVNwf3JghtwvJrp/OTGyPWNgjTVTLM
         L/Cgzgepp2L0HRbcModGljGm7DrJryxXd2YlNpQNlVL229Dui9e7Ts8KkVje7ap+y5B7
         Qfzg/mCD06FH46CnyIg4tc+Lg+lOT+tPaYQN0ERhf7ZxT6IiJSyuiI0oTDx5NSA2i9ub
         KF154KnDjI+y6zVWY2wTlL7WL/cTl1bXk3JMtxse9Z+JPc4PyMyvzzxh7vibOZT0StGE
         bxwxSjLLy+Tc8Zzd9uqCO/WxWm87b8i1huFTx3ZI+fIzsugttLLjAAupVxdb6xGm7qCO
         HCtg==
X-Gm-Message-State: AC+VfDwqzsXYw+5WLDvCme5RccDY6ptPp5sis56NmFo90J1S0dIjIED0
	6fiL16FzQq6AkHsoADDNug==
X-Google-Smtp-Source: ACHHUZ5T5ZwrQRIEi6+5DfyEG/ByZLrf2TzL/S8CzsTEPJIpIhLW1p4vaatqGIe+MUsMU+lOLlZ3HQ==
X-Received: by 2002:a05:6e02:5c5:b0:339:f011:77f5 with SMTP id l5-20020a056e0205c500b00339f01177f5mr18727841ils.12.1687445190529;
        Thu, 22 Jun 2023 07:46:30 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id m10-20020a92d70a000000b0034221d8a8dbsm2030492iln.71.2023.06.22.07.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:46:29 -0700 (PDT)
Received: (nullmailer pid 1678247 invoked by uid 1000);
	Thu, 22 Jun 2023 14:46:27 -0000
Date: Thu, 22 Jun 2023 08:46:27 -0600
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <20230622144627.GA1672260-robh@kernel.org>
References: <cover.1687414716.git.quic_varada@quicinc.com>
 <4f4136a91b24d3ad35fa12bd19fe14b83da9affe.1687414716.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f4136a91b24d3ad35fa12bd19fe14b83da9affe.1687414716.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_074632_147827_F9951018 
X-CRM114-Status: GOOD (  16.35  )
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

On Thu, Jun 22, 2023 at 11:52:09AM +0530, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v1:
> 	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
> 	Drop default binding "m31,usb-hsphy"
> 	Add clock
> 	Remove 'oneOf' from compatible
> 	Remove 'qscratch' region from register space as it is not needed
> 	Remove reset-names
> 	Fix the example definition
> ---
>  .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 51 ++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> new file mode 100644
> index 0000000..ab2e945
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M31 (https://www.m31tech.com) USB PHY

Put the URL in 'description'.

> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.org>

.org? It's .com everywhere else.

> +
> +description:
> +  USB M31 PHY found in Qualcomm IPQ5018, IPQ5332 SoCs.

Where's the IPQ5018 compatible?

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qcom,ipq5332-usb-hsphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    maxItems: 1
> +    contains:

'contains' is not appropriate here. Drop.
> +      items:
> +        - const: cfg_ahb

Don't need both items list and maxItems. Really, you don't need 
'clock-names' at all because there is only 1 clock.

> +
> +  resets:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    usbphy0: ipq5332-hsphy@7b000 {

Drop unused labels.

> +    	compatible = "qcom,ipq5332-usb-hsphy";
> +    	reg = <0x0007b000 0x12c>;
> +
> +    	clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +    	clock-names = "cfg_ahb";
> +
> +    	resets = <&gcc GCC_QUSB2_0_PHY_BCR>;

Whitespace errors in here.

> +    };
> +
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
