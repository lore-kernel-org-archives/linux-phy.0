Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43F1D6ACDD
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 14:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZefJXV3hmdNuG3jqFpm0XCDdOf9GFleZujXtJTV+zY=; b=O28GbAdBhYVqF8
	l60wgQczmpzSoBAuW1/lqvO1RfwbGzwswtxWeUz2lHMWm2RXaavh2Bt07olgkR0yNMMdJAUTDfOXh
	VpDNJVgriyYnv30JovPj3CDUnrN7eCzZJEoAhp74v2mY5Bae6R8KvSIF7I1qlCBlg0QA6+wwS5G/6
	Pt54CDyaNAhQCgxpL/WihxM+HRIgIrihrcV8UzzXIAkkXq0YbNAlEzJfUoXLd/a6VJIJieVDUfFsT
	VzQ7/VdKSmDlRzSxEKb5l9qHd0bAhG18KHWSmjMW0HHyKZ6afw9ChIg5xji9oNXKKtwTVcBCiFzeZ
	2bUj7DARNGYJBQnS+vXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJ14-0000000DMyp-3t5F;
	Wed, 27 Nov 2024 14:27:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJ06-0000000DMsq-1KTv;
	Wed, 27 Nov 2024 14:26:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F8125C561C;
	Wed, 27 Nov 2024 14:25:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364EFC4CECC;
	Wed, 27 Nov 2024 14:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732717601;
	bh=kqNvddmDWtm7j0n7cbl9AqMJ+Ww39KyF2qb8khHv7zI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LRLk2Hg5BpC0e6D0gRHZqBuTAPOfn5yC7hHhwuYPB0lNR1lkzn8BPdkRXQND30GiD
	 kA+REhHwzGNrRa7v6pgsRV7dxWg1QEmPT9Lj6HT+FKmcEh8/pqn4Le5Ac9EjITV+4E
	 8XyIMonYyRKGN14kythItJj9u66rhGmFmk49A5cEd1EosxgZ57DFaIj8gnAn/6kmY2
	 dWXcG6zLfbtnzOae30JpagghRoLjg5408etK/cP3/pKPBXR7tptbhgsybi8sjS37dl
	 A/IP8OjkpLkuL42MfLMib0ANQxoqkaXpKO3LJLvalJ84GkKfj4ftkURwyezrbi31T6
	 VoU36du1t828Q==
Date: Wed, 27 Nov 2024 08:26:39 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property to
 set disconnect threshold
Message-ID: <20241127142639.GA3451514-robh@kernel.org>
References: <20241126025859.29923-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241126025859.29923-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_062642_403125_2EF92FD8 
X-CRM114-Status: GOOD (  14.47  )
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

On Tue, Nov 26, 2024 at 10:58:58AM +0800, Chunfeng Yun wrote:
> Add a property to tune usb2 phy's disconnect threshold.
> And add a compatible for mt8196.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index a9e3139fd421..2e012d5e1da1 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -49,6 +49,7 @@ properties:
>        - enum:
>            - mediatek,mt3611-xsphy
>            - mediatek,mt3612-xsphy
> +          - mediatek,mt8196-xsphy
>        - const: mediatek,xsphy
>  
>    reg:
> @@ -129,6 +130,13 @@ patternProperties:
>          minimum: 1
>          maximum: 7
>  
> +      mediatek,discth:

That's not understandable. Spell it out: mediatek,disconnect-thres

> +        description:
> +          The selection of disconnect threshold (U2 phy)
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 15
> +
>        mediatek,efuse-intr:
>          description:
>            The selection of Internal Resistor (U2/U3 phy)
> -- 
> 2.46.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
