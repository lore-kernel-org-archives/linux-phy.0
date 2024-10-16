Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F42FD206A0
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 06:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39Jz90ztHxjkTn2yLS/vbwi11yAMX3TB9pZdVEc422A=; b=zzf6HAGq2VLEHS
	LnsiOdtgWQ+Vccbc8OUcrzxUYlqvlX6zl0AvXo3pyinOmpOz350aGeU+nFToKAqLdRKvYJGgeyh7Y
	TtfLPyYaBElOVq04xeizqZ1BuUndDGBHIwfRp4RBo7RpDZkwx0HQowoiBrdkXRUXdj3hhYFkwb6g6
	VdHHv1RJHNYTxhVo9+4KZAJ+VSGql2Inetj0H5B/DUMBX/Q6xPZZrjzSaHWKQCRV3le84ZYDtke0b
	gmiij7iY4DkgULhdRBFZzGfgRiS4YSQ9um55Vq9mVKEvIU/Z9Vb4vPv9D+wmHDFV6HOhIvP28iiQy
	qv8FIPEWg930Owd10LEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0y06-0000000Al8N-3R5Z;
	Wed, 16 Oct 2024 06:59:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0xrw-0000000AjYy-07jJ
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 06:50:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2DC8EA435DB;
	Wed, 16 Oct 2024 06:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2551C4CEC5;
	Wed, 16 Oct 2024 06:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729061450;
	bh=2jUrHH5GhahHmWOKm0XOR0m1uQ6CW6EzBsf+IvUUFpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DM6yX04aTezkh4TaiZKoTVCDHLuF2IATV8rQOhJZwzekuABEABuOcYiyEl80C2Mwa
	 Vyew4tlhkf3trCOnPNM12MAszCOZJutyVouwdOQqTxAwVurQw4J4uoW+IabYFiDsVK
	 9cHs4lblQideXth405sGVg9JvLeTfeNFnNoADUUnYiD7sTBykpv82uVS9VqGyrgDDO
	 QvMy11YIkmPevgmk0Dy11UWlicw/uD5imRHCMNnqgBxg7AjwmCuCdj5cUwUhNPclcT
	 sxVE+l5cZm0RxAzEzwpIIDvQgMOGHOczZjS1Bzz5/voiQRnLNI7zIE6JetXD49VOdC
	 /IAc1zBbOiNhQ==
Date: Wed, 16 Oct 2024 08:50:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <4eywdjkuei7itd2grhtms57p5e5bqlsg7qg6ifjmqzwfzj66o4@un662ws7thiy>
References: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
 <20241016054842.3435609-2-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241016054842.3435609-2-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_235052_232686_D7E2CA62 
X-CRM114-Status: GOOD (  17.11  )
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

On Wed, Oct 16, 2024 at 01:48:41AM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Changes in v4
> 

You still did not respond to my feedback from v2. I reminded you this at
v3 and you keep ignoring it.

Limited review follows because of this.

>  - fixed addresses in example
>  - missing firmware-name denotes "skip firmware" instead empty string
>  - fixed reg porperty
> 
> Changes in v3
> 
>  - renamed to realtek,rtl8380m-serdes.yaml
>  - removed parameter controlled-ports
>  - verified with make dt_binding_check
>  - recipient list according to get_maintainers
> 
> Changes in v2:
> 
>  - new subject
>  - removed patch command sequences
>  - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,rtl8380m-serdes.yaml | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..8ccb3a34b221
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
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
> +  $nodename:
> +    pattern: "^phy@[0-9a-f]+$"

Drop nodename.

> +
> +  compatible:
> +    items:

Drop items and place here enum directly.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
