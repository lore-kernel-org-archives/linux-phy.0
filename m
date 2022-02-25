Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88905C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n5XOnNxE3MzaI2ALiRq8eGFiSSwTnYKDeG/q3GN+gs=; b=hlmDIv2tsIL0cR
	EV9M9aY95qOdryUDxuemsO4TKfCdmV7EKOISnowrFGW8PlXxa/gtn7PJLzPlR2+y24Ngl/M0l7+XU
	8lYwNle7SloiTqHMpyJy6oRX1qfEdRkJDllmuBEGTLpVbzjc5ASHEPmej+11eXCGMDLtykD3xYz2W
	KRL9XsVPaLwuOoLoGy4no7W7evK2Q56Ebf9Nr4x6aaQayLLUUPYkmtQSneiuzDnXZejP+/Th+/s4y
	z8QyGy5K7o1PcoU8FzmchoHbluWVUOHXgSEllP1kLwWPv206/Y2PQEGyKruP15n6QrW84jVkfbCod
	aXjONrSkn54LKQjntYuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVsd-003vrm-RM; Fri, 25 Feb 2022 08:23:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVs9-003viQ-8S; Fri, 25 Feb 2022 08:22:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6C40A61BED;
 Fri, 25 Feb 2022 08:22:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02C80C340E7;
 Fri, 25 Feb 2022 08:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645777359;
 bh=h4M7TWzHmz7Q4X/YiAL28HmdTihIVjng7o6LYmmkWNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AAEL1AGWbVLcycWd0/6g8QhGPWjYxN/45/iuOlg3/zW78PTzfZK/6D1JU7InhQ31k
 nq6ws4/J1G+p4nla6VE31B74uyD96bSW44jLYvoPFMxy0Mnp4WukWRD4qMYsow77WP
 mBaxTnK27z/JhELuXVDfPsOS1O7c3ySA2yNE8n2bboODB/K15ghThfuYY2lY00FrKi
 jcWJXsR0/tNjeh7Hv3+n/YlUEc7CKM4PkSX/npOKn/pMdzsvvJKNmu+qP2/DuPcT54
 H4wNmSTeK43ZQpGeYfDj1JjSF+YbKx2Ly1TaHcDRoWNstzFqE4GBGhgFOvH6sXrRM/
 g1WN6GyaZrN9g==
Date: Fri, 25 Feb 2022 13:52:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add compatible for D1 USB PHY
Message-ID: <YhiRyq7k5jtSKlni@matsya>
References: <20220203013558.11490-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203013558.11490-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_002241_392917_949EDF6B 
X-CRM114-Status: GOOD (  15.75  )
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

On 02-02-22, 19:35, Samuel Holland wrote:
> D1 features one OTG port and one host port, like the A64 SoC, so its
> USB PHY supports the same set of properties. Add the new compatible to
> the existing binding.

Rob?

> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
> index 078af52b16ed..0fa4b32b097e 100644
> --- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
> @@ -15,7 +15,9 @@ properties:
>      const: 1
>  
>    compatible:
> -    const: allwinner,sun50i-a64-usb-phy
> +    enum:
> +      - allwinner,sun20i-d1-usb-phy
> +      - allwinner,sun50i-a64-usb-phy
>  
>    reg:
>      items:
> -- 
> 2.33.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
