Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA885CF8877
	for <linux-phy@archiver.kernel.org>; Sat,  5 Oct 2024 09:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePcr5p+PY6daJ03jaKU/tFeNB/aFhVb5sAk524OsJPM=; b=th9HnrvMENNVU0
	9W8M3DVHm9LQoBoO1EL+/n+UB4VJqZFWObk9+dIIlKeteF5oCUR7p1nk9oZNCp9FX2l3k0GAJeW62
	m3VZ6ihIxJhvZiI/XZSJyozvW0UT2OYnTRFzqvI3QT3P6LX2jj2j7haEN2LBojdT2U0SeXWE7kT7x
	sjpjCyO5md2oUeuRfy6cpvZQ4N7knqsC5rJMjnJ0y9i6poBU9cDe/XOndq1lIX1z61/WhFgFG/Fc2
	mSfyneiTUGClVmr2SXeGE9Pybm9Y/kdKT33SoWDNi9bW+v1XYQrj+kPqAdrcqYWNU6uUzeEztxBUc
	GLBX7+8FT72cvB5p1MzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sx0pE-0000000F6Av-1eHX;
	Sat, 05 Oct 2024 09:11:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sx0pB-0000000F6AW-3qpQ
	for linux-phy@lists.infradead.org;
	Sat, 05 Oct 2024 09:11:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 006D0A4012A;
	Sat,  5 Oct 2024 09:11:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A7FCC4CEC2;
	Sat,  5 Oct 2024 09:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728119499;
	bh=uL9sNrdHof1Lk/I9c4HggxflficQTKGguXVR7Eu2SEI=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=BSHaxY3wixinQNdrhFcmKBg/CMecDqlNOr8rnpUDGt6aB9I02/IzK9D53DYeKo91M
	 J6eGLkMQh/1xxUKoG1Po6vBYV97ruAedO/SG8YHCqZyze2UG4F3VridWx2t4VJRS7Q
	 hnwz8TQwCQP0lRrgBjGdSvj3jvwFYCX7MXu4iZM4f8gRNNOX3hPXXYgSKoLaW6Chdi
	 ue7yOMK0/m6rbzFhprDAxFS5oiPvt1fZkwHjyrEeegRf2VR4LQ46Vv73qmIyX2K4r3
	 SfC9HkUco3zKAiVG8R7BUBKsgXsQLzcaLyOqLq6Um0ycZvDbSfJrn7IEbUkjhmvUUI
	 n57WFt6pkIkpA==
Message-ID: <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
Date: Sat, 5 Oct 2024 11:11:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree
 documentation
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
 linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-5-markus.stockhausen@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241004195712.1891488-5-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241005_021142_184835_A19A831B 
X-CRM114-Status: GOOD (  29.28  )
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

On 04/10/2024 21:56, Markus Stockhausen wrote:
> To help others to integrate the driver provide the devicetree documentation.

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

<form letter>
Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC. It might happen, that command when run on an older
kernel, gives you outdated entries. Therefore please be sure you base
your patches on recent Linux kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about `b4 prep --auto-to-cc` if you added new
patches to the patchset.

You missed at least devicetree list (maybe more), so this won't be
tested by automated tooling. Performing review on untested code might be
a waste of time.

Please kindly resend and include all necessary To/Cc entries.
</form letter>

> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 167 ++++++++++++++++++
>  1 file changed, 167 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> new file mode 100644
> index 000000000000..b6dad1089c6f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> @@ -0,0 +1,167 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#

Use compatible as filename.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description: |
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and
> +  RTL931x series have multiple SerDes built in. They are linked to different single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are the integral
> +  part of the up-to-52-port switch architecture.
> +  Although these SerDes controllers have common basics they behave differently on
> +  the SoC families and rely on heavy register magic. To keep the driver clean it can
> +  load patch sequences from devictree and execute them during the controller actions
> +  like phy_init(), ...
> +  The driver exposes the SerDes registers different from the hardware but instead
> +  gives a consistent view and programming interface. So the RTL838x series has 6 ports
> +  and 4 pages, the RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and
> +  64 pages and the RTL931x has 14 ports and 192 pages.

Wrap according to Linux coding style.

> +
> +properties:
> +  $nodename:
> +    pattern: "^serdes@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380-serdes
> +          - realtek,rtl8390-serdes
> +          - realtek,rtl9300-serdes
> +          - realtek,rtl9310-serdes
> +
> +  reg:
> +    items:
> +      - description: |

Do not need '|' unless you need to preserve formatting.

> +        The primary serdes register memory location. Other SerDes control and
> +        management registers are distributed all over the I/O memory space and
> +        identified by the driver automatically.
> +
> +  controlled-ports:
> +    description: |
> +      A bit mask defining the ports that are actively controlled by the driver. In
> +      case a bit is not set the driver will only process read operations on the
> +      SerDes. If not set the driver will run all ports in read only mode.

You have never tested it.

> +
> +  "#phy-cells":
> +    const: 4
> +    description: |
> +      The first number defines the SerDes to use. The second number a linked
> +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> +      number is the first switch port this SerDes is working for, the fourth number
> +      is the last switch port the SerDes is working for.
> +
> +  cmd-setup:
> +    description: |
> +      A field of 16 bit values that contain a patch/command sequence to run on the
> +      SerDes registers during driver setup.

None of these fields match DT. Drop all of driver related stuff.

Due to broken and untested code, that was only limited review.

> +    serdes: serdes@1b00a000 {
> +      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00a000 0x1c00>;
> +      controlled-ports = <0x3fff>;
> +      #phy-cells = <2>;
> +      cmd-setup = /bits/ 16 <
> +        /*
> +         * set clock edge bit 14 during driver setup for ports 10-11 on page 0,
> +         * register 7. Wait 128 ms. Afterwards set whole register 0 on page 10
> +         * of ports 8, 9, 12, 13 to 0x5800.
> +         */
> +        _MASK_ 0x0c00 0x00 0x07 0x4000 0x4000
> +        _WAIT_ 0x0c00 0x00 0x00 0x0080 0x0000
> +        _MASK_ 0x3300 0x0a 0x00 0x5800 0xffff
> +      >;
> +    };
> \ No newline at end of file

fix errors in your patches.
> --
> 2.44.0
> 
> 

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
