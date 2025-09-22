Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2677ACAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 16:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaJ8xSz05vT2Wov6GQMOibJdohvX8N0XWBXCR8aDGJk=; b=NUfKn9n+6AZj0x
	FPC9AEZC9M5cWZhAD3Dv1As2x+hrHgLkacLI+PHy0Lm4E3mBxPe4bNW0qQKEevtNbb2zGiyM5QBfe
	FJtYg+upp6XkgMKbQI9ym3u06mRyWPJeKF8pc5/k8tmngu+BQjSZoEEssyWV0mEsTleg7DzrdhZjK
	qV9daxjhk9jHfccZnyEPeWbq8oN8wbYcmGGNE5QgjZrvHAoQ8/5O3i8AwhgBnMLlLxPYn5tJGylY1
	FAMz2S4E8DeXUOrAMYleeS868DUYyVpwG1E1KKmr79tZmAXBDy7ZTLzytuG2iTEMSNMp0YYyW5iCf
	eiozW+xq1azxXR9I7Kog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0j8h-0000000AwhC-3YEC;
	Mon, 22 Sep 2025 16:11:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0j8g-0000000Awgx-07Rt
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 16:11:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3FEB56020A;
	Mon, 22 Sep 2025 16:11:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C796BC4CEF0;
	Mon, 22 Sep 2025 16:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758557501;
	bh=Y4dexsKXHeZk//jfbzy1vNcOZEXCwdx3La8z6nNKwJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=svBdbWtEwjtojsDy0C1kWGJQszMlj2jH0sgM1mMyVwDa5OsQD0H33HzwybTdErCJG
	 rd6an1Ed4ucvaB5lNn3KWy8u9IMr5kTwOYDYtI8Ka1yf/BbcIlk98eyeGIfBtXx7mc
	 8I5EvQ4Go2uJ6P/JNtdiGPMpVMEk95RtIZiC0iseMd7fdJar+RWenXmTYvEOWUEXNg
	 eFevYjCvM2kz2YA4QQZx1ZqsK2y7dfV5Xbjg+5E0dwGSjBRcRQoZ2ANbVzELDC9j9N
	 fm+hN8urMOx0V79vPzer8q8havNkrk945eYN2Yuz1tOFL5oJnrLS7qHlJ6FMVtlIlM
	 yfVwRjk3XVSsQ==
Date: Mon, 22 Sep 2025 11:11:40 -0500
From: Rob Herring <robh@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v4 1/3] Document the EIC7700 SoC sata ahci
Message-ID: <20250922161140.GA150852-robh@kernel.org>
References: <20250915125902.375-1-luyulin@eswincomputing.com>
 <20250915130135.1497-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250915130135.1497-1-luyulin@eswincomputing.com>
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

On Mon, Sep 15, 2025 at 09:01:35PM +0800, Yulin Lu wrote:
> Document the SATA AHCI controller on the EIC7700 SoC platform,
> including descriptions of its hardware configurations.

Please fix the subject: "dt-bindings: ata: ..."

> 
> Retains the "ports-implemented" property in the DTS, because
> removing it and relying only on the firmware register causes
> problems. If the property is not present and we remove the
> module using `rmmod`, a reset is triggered that clears the
> register. As a result, inserting module again using `insmod`
> will lead to errors.
> 
> The detailed reasons are that the ports-implemented register is
> configured by the firmware (U-Boot on the HiFive Premier P550 board)
> before kernel entry and correctly set to 0x1. During probe,
> ahci_platform_enable_resources() -> ahci_platform_deassert_rsts() is
> called, and when the driver is removed,
> ahci_platform_disable_resources() -> ahci_platform_assert_rsts() is
> called. This reset clears the register, which is defined by the IP
> databook to reset to 0.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>  .../bindings/ata/eswin,eic7700-ahci.yaml      | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml b/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
> new file mode 100644
> index 000000000000..40c44f0705ba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/eswin,eic7700-ahci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Eswin EIC7700 SoC SATA Controller
> +
> +maintainers:
> +  - Yulin Lu <luyulin@eswincomputing.com>
> +  - Huan He <hehuan1@eswincomputing.com>
> +
> +description:
> +  AHCI SATA controller embedded into the EIC7700 SoC
> +  is based on the DWC AHCI SATA v5.00a IP core.

Wrap at 80 chars.

> +
> +select:
> +  properties:
> +    compatible:
> +      const: eswin,eic7700-ahci
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: snps,dwc-ahci-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: eswin,eic7700-ahci
> +      - const: snps,dwc-ahci
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: aclk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: arst
> +
> +  ports-implemented:
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - phys
> +  - phy-names
> +  - ports-implemented
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    sata@50420000 {
> +        compatible = "eswin,eic7700-ahci", "snps,dwc-ahci";
> +        reg = <0x50420000 0x10000>;
> +        interrupt-parent = <&plic>;
> +        interrupts = <58>;
> +        clocks = <&clock 171>, <&clock 186>;
> +        clock-names = "pclk", "aclk";
> +        phys = <&sata_phy>;
> +        phy-names = "sata-phy";
> +        ports-implemented = <0x1>;
> +        resets = <&reset 96>;
> +        reset-names = "arst";
> +    };
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
