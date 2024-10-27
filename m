Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0063D13585
	for <linux-phy@archiver.kernel.org>; Sun, 27 Oct 2024 20:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/tIkMwYxNBCY+YLyUgO6PdKn1ynK4PwZKrYcsBL7SM=; b=tSSM6k3kT43n0J
	ZpbyiePy6TqizYXbwvqD83O4ma8FNEua/fxKe6AclEKL1E14hbqJP6hJvy6QxDxYG1JRqpoqQv9ER
	VpoQhSliVUsNmIH4hWOAHwLVDXAW3rhu+CNe5vRWzyxb32VWQwc0UZHWk0zFHhm9XwsmiXMVisoeF
	H0t97JbkCh5mV9BD9d4IugPgJVszCTG56/riYvADjNp+JVfhg8+c8uCWMS6d4ysJInnyWNbdgmfln
	eJNr/JwDvrrsbq9sCLVZLff3xIMABQfn7cqqEQCdBus/mU3pBd2Ag8wfCNtJt2P4IZ3mxkCVXh7NX
	Km7MBFqeobqPdisUM6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5ADY-00000008sqJ-2hME;
	Sun, 27 Oct 2024 20:50:32 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5AAr-00000008sXr-1XHD;
	Sun, 27 Oct 2024 20:47:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5C418A41381;
	Sun, 27 Oct 2024 20:45:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85284C4CEE4;
	Sun, 27 Oct 2024 20:47:43 +0000 (UTC)
Date: Sun, 27 Oct 2024 21:47:41 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Cody Eksal <masterr3c0rd@epochal.quest>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, Andre Przywara <andre.przywara@arm.com>, 
	Parthiban <parthiban@linumiz.com>, Yangtao Li <frank@allwinnertech.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Vinod Koul <vkoul@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Thierry Reding <treding@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH 11/13] dt-bindings: opp: h6: Add A100 operating points
Message-ID: <7dybkf3zveidwapwfivvq3jk6qxntuqgycndff3ajjl2owhjhn@khqgycnzh76j>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
 <20241024170540.2721307-12-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024170540.2721307-12-masterr3c0rd@epochal.quest>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_134745_486532_BD90AAA0 
X-CRM114-Status: GOOD (  16.19  )
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

On Thu, Oct 24, 2024 at 02:05:29PM -0300, Cody Eksal wrote:
> The A100, similar to the H6 and H616, use an NVMEM value to determine
> speed binnings. The method used is similar to that of the H6. However,
> the information is stored at a slightly different bit offset.
> 
> Add a new compatible for the A100.
> 
> Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
> ---
>  .../bindings/opp/allwinner,sun50i-h6-operating-points.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
> index ec5e424bb3c8..603c6c88d080 100644
> --- a/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
> +++ b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
> @@ -23,6 +23,7 @@ properties:
>    compatible:
>      enum:
>        - allwinner,sun50i-h6-operating-points
> +      - allwinner,sun50i-a100-operating-points
>        - allwinner,sun50i-h616-operating-points

I have no clue why a100 is between h6 and h616. :/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
