Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18566FA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOQI0K81imN7A2YqwqhQ9uqW440DESIOVrsZ7veVwGs=; b=sQyW8MZNm481hQ
	rukZ5m6iverADqslSaJgvRYmGb5jKJJyLAvM3FCFO6cEkGoTGQCDH7Mpp0auw5vPCq/0WhHtTKdmv
	huDFSnGigsRT8hDxojuRC71nDnrjZx4T6+iENjGGqFrFf53q5n8h/HXynoonXB0PZDuB1KAdohaVl
	sriQv2aNVg4Jbi16+dupo6iUvwmsJ10+YJgo2mGXT2P1TzpZtjQRg7o5RbAJ5ww1MC23EAOYD7v34
	oNi1zth58BPc1i5UixL7LEm1VmyHyeQpN95MT8hoxdDV0i14jRTjgsGoH3R+hsjm91ojtJ1sXpRjQ
	tb9vehEvStzK1okIFxtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyGm-001sbw-D2; Mon, 24 Oct 2022 14:17:36 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyGV-001sVP-G4; Mon, 24 Oct 2022 14:17:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FCA61515;
	Mon, 24 Oct 2022 07:17:24 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D63D3F792;
	Mon, 24 Oct 2022 07:17:16 -0700 (PDT)
Date: Mon, 24 Oct 2022 15:17:14 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, soc@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 09/10] dt-binding: arm: sunxi: add compatible strings
 for PopStick v1.1
Message-ID: <20221024151714.59968916@donnerap.cambridge.arm.com>
In-Reply-To: <20221012055602.1544944-10-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	<20221012055602.1544944-10-uwu@icenowy.me>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_071719_670008_AB577939 
X-CRM114-Status: GOOD (  16.09  )
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

On Wed, 12 Oct 2022 13:56:01 +0800
Icenowy Zheng <uwu@icenowy.me> wrote:

Hi Icenowy,

> SourceParts PopStick is a F1C200s-based stick-shaped SBC.
> 
> Add a compatible string list for its v1.1 version (the first public
> one).

If v1.0 (or anything prior) never made it to the outside world, I don't
think we need to mention that in the public bindings.
In general Linux seems to discourage support for unreleased hardware, so I
think you can just drop the "sourceparts,popstick-v1.1" name.

Cheers,
Andre

> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> New patch introduced in v2.
> 
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 3ad1cd50e3fe..c6e0ad7f461d 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -807,6 +807,13 @@ properties:
>            - const: sinlinx,sina33
>            - const: allwinner,sun8i-a33
>  
> +      - description: SourceParts PopStick v1.1
> +        items:
> +          - const: sourceparts,popstick-v1.1
> +          - const: sourceparts,popstick
> +          - const: allwinner,suniv-f1c200s
> +          - const: allwinner,suniv-f1c100s
> +
>        - description: SL631 Action Camera with IMX179
>          items:
>            - const: allwinner,sl631-imx179


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
