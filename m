Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2097ED60D00
	for <linux-phy@archiver.kernel.org>; Tue, 19 Nov 2024 01:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4LMhAGf/h942ylSmcJxnpOY97dEXXE9ocWPvfnp6HXA=; b=TipFYoOdvGe1mNoad++JBZCJR3
	5aXPmLXr1LFimpENE622jSjOjl4f5ncnsb84FhZ6ZNkN9PwBGX6vP3p+tsjjTqenpsZKykrklreY/
	BHvp9DVgCF05stCse0SaLm1t/711HFDUa4mp1UVzmuQVDqrV/usapKz7X485y9WNNOFaR6EnCDylB
	v91tDr4OcpIkb+r2o2gJ9Rh4HcCaO02mDVo/Empn7lP9JfoD12eLvvqwpz9sDu+87Iz1qWGGiXRqP
	t+7t+JEMbEvvGnKrJVxhFjCK2ynGnyX/9mWRlKWV5KGyVxGVjv4Hjzooab4i9KYZvi444ijQ1y0st
	ug+oervw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDCdL-0000000B081-18LS;
	Tue, 19 Nov 2024 01:02:23 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDCdI-0000000B03Q-0XBQ
	for linux-phy@lists.infradead.org;
	Tue, 19 Nov 2024 01:02:21 +0000
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 62A2E2C035A;
	Tue, 19 Nov 2024 14:02:00 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1731978120;
	bh=nf0djNgBT2agldSCVj8orm4iStf2r+qGYtpC6iXd04Q=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=21OLLctNJKG8N8wK0diywjoSE1XqK1oFD6mNl5H6zD0f9+/8bkJCBvfM+7ZpBJMuP
	 PpE3ifAyqv0SL3pXHBHVhSTXpLqCVbEyLL6Lua/scEzJJ4CuQ7GUCkeFN36DLxnihW
	 C9PAZxugbtXQuOy9jiCp7jfT2dsAgOjqUpfcZUI6z7yYpNxIXpw6as8BYTfQ4IqcNM
	 QasTSR2VwuWO897UhIgDRBkal/rMurVWiPjglBeYe7mXPEy239sg5tJWzGjhLFcunO
	 I/LFqdzg1mqDJryfG8EqczgN4alqN2jry+pqw2XtUzuBT20And8ikUI6Yuqd4uG8Ie
	 XyPMr8aqHHgSA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B673be3880000>; Tue, 19 Nov 2024 14:02:00 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 4CDEF13EDD7;
	Tue, 19 Nov 2024 14:02:00 +1300 (NZDT)
Message-ID: <a10d5a2c-ab7a-450e-8392-ab2d3877d58c@alliedtelesis.co.nz>
Date: Tue, 19 Nov 2024 14:02:00 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
To: Markus Stockhausen <markus.stockhausen@gmx.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-2-markus.stockhausen@gmx.de>
Content-Language: en-US
In-Reply-To: <20241017162400.3881609-2-markus.stockhausen@gmx.de>
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Gam0nhXL c=1 sm=1 tr=0 ts=673be388 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=62ntRvTiAAAA:8 a=gEfo2CItAAAA:8 a=oOM_Qn3OneXYDMm14GEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pToNdpNmrtiFLRE6bQ9Z:22 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_170220_318195_D74D59C3 
X-CRM114-Status: GOOD (  22.24  )
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

Hi Markus,

On 18/10/24 05:23, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
>
> Signed-off-by: Markus Stockhausen<markus.stockhausen@gmx.de>
> ---
>
> Changes in v5
>
>   - drop nodename
>   - drop items from compatible
>
> Changes in v4
>
>   - fixed addresses in example
>   - missing firmware-name denotes "skip firmware" instead empty string
>   - fixed reg porperty
>
> Changes in v3
>
>   - renamed to realtek,rtl8380m-serdes.yaml
>   - removed parameter controlled-ports
>   - verified with make dt_binding_check
>   - recipient list according to get_maintainers
>
> Changes in v2:
>
>   - new subject
>   - removed patch command sequences
>   - renamed parameter controlled-ports to realtek,controlled-ports
> ---
>   .../bindings/phy/realtek,rtl8380m-serdes.yaml | 59 +++++++++++++++++++
>   1 file changed, 59 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..13b11c011153
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id:http://scanmail.trustwave.com/?c=20988&d=s7qR5_yfAKsmGFhxaX2pyywaUF-Iy48veN3B0KHSTQ&u=http%3a%2f%2fdevicetree%2eorg%2fschemas%2fphy%2frealtek%2crtl8380m-serdes%2eyaml%23
> +$schema:http://scanmail.trustwave.com/?c=20988&d=s7qR5_yfAKsmGFhxaX2pyywaUF-Iy48veNvAgPvQQg&u=http%3a%2f%2fdevicetree%2eorg%2fmeta-schemas%2fcore%2eyaml%23
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen<markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
> +  and RTL931x series have multiple SerDes built in. They are linked to single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
> +  the integral part of the up-to-52-port switch architecture. Although these
> +  SerDes controllers have common basics they are designed differently in the
> +  SoC families.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - realtek,rtl8380m-serdes
> +      - realtek,rtl8392m-serdes
> +      - realtek,rtl9302b-serdes

Could you add the following RTL9300 variants

- realtek,rtl9301-serdes
- realtek,rtl9302c-serdes - realtek,rtl9303-serdes

They all have subtly different serdes capabilities do it wouldn't be 
right to try and use one of the other compatibles.

> +      - realtek,rtl9311-serdes
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked
> +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> +      number is the first switch port this SerDes is working for, the fourth
> +      number is the last switch port the SerDes is working for.
> +
> +  firmware-name:
> +    maxItems: 1
> +    description:
> +      If present, name (or relative path) of the file within the firmware
> +      search path containing the firmware image to patch the SerDes.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes: phy@1b0003b0 {
> +      compatible = "realtek,rtl9302b-serdes";
> +      reg = <0x1b0003b0 0x8>;
> +      firmware-name = "zyxel-xgs1210-12-serdes.fw";
> +      #phy-cells = <4>;
> +    };

FYI some of my RTL9300 changes are now in linux-next. In particular 
5ec37be43fe7 ("mips: dts: realtek: Add syscon-reboot node") and 
c25e73d45d53 ("dt-bindings: mfd: Add Realtek RTL9300 switch 
peripherals"). I don't think it'd change this binding but eventually I'd 
like to add these serdes as children of the realtek,rtl9302c-switch.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
