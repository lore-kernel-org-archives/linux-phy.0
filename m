Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 520BCCC6B0E
	for <linux-phy@archiver.kernel.org>; Thu,  2 Apr 2026 07:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oICz3tCj0L7C6FF+1STiepoTOANPuFW3sTMoN8ZERIY=; b=LGWLSaC817UDcK
	QRCx60pVlli5jDFZ7H1htMb7X0LCIbKh3EU2RpQ6grj2bvS+9e0pPJE97JqZ4mvb+K+cSaqQuq7rF
	l6qebEEph2zyXd7kB4Zrm2ILsDpDqzesfowIBaOt/l0BdUxd9hWcXO2aURbZ1Vdrb/LGmX9JbdKH/
	Jn9YlhD0MBGyVTQ8Gfoc1+Khd0uZ/WEtVp1+nsl6WM2I/vXcNjclkr9umBw+RYrmNUYdO5yDRCBeB
	Jm+gu/9C+K6Ma1kEKBioZ5tqCOg7Lp4grnM15TGN3D57+ii1tbfP18b6D91YT47HFuWJtFgWKwCfg
	M+n3BgT/FNiDiodBeDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CT2-0000000H589-33yr;
	Thu, 02 Apr 2026 07:27:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CT0-0000000H56k-452Z;
	Thu, 02 Apr 2026 07:27:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2D95961855;
	Thu,  2 Apr 2026 07:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 538C8C19423;
	Thu,  2 Apr 2026 07:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775114869;
	bh=5bRmQu9RvXClAs1iQSBeDGNT17zARgjIP+fvVutZf3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a9ShTm8PDRbfUkdE2e8mHA6CENFhMOiZjJlaUOV+LDDB35fjc6k2zilgX/TrwmJal
	 FOvXn6YWtFw6qmigqe/nFB5W4OO1pXv9HA8amyqLS2mBan2o+6JxuTRqjpiO5M34UY
	 XsJwXuhBkdWUJCf3/7AGcEcabFjA38M7h1FIJkqsfnjXvq0JQYy487pRkXambMbyfT
	 53Qes3UBdJe6dc2+jQgoYs9wQ08TNJHATIUcv5ZlRipcllGLi+6rMEJvAS8QciMttb
	 V/SIkpejAErs+Dhn1ezID1cClJMBXtByHDUfF8N5jsbhGNrsVIrIIyLeHyxhv7ELU1
	 8iYezR9Y+rHvw==
Date: Thu, 2 Apr 2026 09:27:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: ti: phy-gmii-sel: Add
 ti,j722s-phy-gmii-sel compatible
Message-ID: <20260402-curly-heavy-bustard-bd8c63@quoll>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
 <5ac1c52827a1a246584dddb62335f9ce4715eceb.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ac1c52827a1a246584dddb62335f9ce4715eceb.1775045279.git.nora.schiffer@ew.tq-group.com>
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

On Wed, Apr 01, 2026 at 02:25:22PM +0200, Nora Schiffer wrote:
> The J722S gmii-sel is mostly identical to the AM64's, but additionally
> supports SGMII. The AM64 compatible ti,am654-phy-gmii-sel is used as a
> fallback.
> 
> Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index be41b4547ec6d..6e12a75100eb8 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -47,15 +47,21 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - ti,am3352-phy-gmii-sel
> -      - ti,dra7xx-phy-gmii-sel
> -      - ti,am43xx-phy-gmii-sel
> -      - ti,dm814-phy-gmii-sel
> -      - ti,am654-phy-gmii-sel
> -      - ti,j7200-cpsw5g-phy-gmii-sel
> -      - ti,j721e-cpsw9g-phy-gmii-sel
> -      - ti,j784s4-cpsw9g-phy-gmii-sel
> +    oneOf:
> +      - items:

Same comments.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
