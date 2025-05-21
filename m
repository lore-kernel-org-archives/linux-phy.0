Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 607FAC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 10:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhYc7dkD4uIPXtOKOVvJuQn3dtEo9by5OEVCyZlWJSw=; b=p0f+xCgHa79Epw
	SSL0kkDbMPaOqaU4v1Zytq9C2SWX9qLFt3tsMwUpHdCPU+CL+/B07QroioD2vAV//ySHocRzyA9/w
	Qp0rg2w2/gV8T/Bh/G9r4Uk/H6QlyBuKK+ierrKEpZJp89G/ZoE6NLHIflkivuNGLzkjroWb1psVa
	OHfWvB1GstQ0eCwSt8pgNjojvwGXARqU2oP+8F0OWWST2U4r7swqTaov5s7wW+gogkqBaa92REed2
	bpqeblaAWE6J9WjY3IktLANcT/uWJaSMYy9gBmQyr085YZU/IUfenf8HaQgYe4Ur5oNHqVUCuH23r
	nVxLep3kM/U3l0gm0YRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHghe-0000000FShi-446f;
	Wed, 21 May 2025 10:29:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHfpH-0000000FKco-1zXI;
	Wed, 21 May 2025 09:33:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CE1035C48B0;
	Wed, 21 May 2025 09:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16532C4CEE4;
	Wed, 21 May 2025 09:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747820006;
	bh=LO1Ga9BqywoKA5/tkG4lU/4FfpBVnRF8ud6CdXRAeEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=limWBBwdIVKd11QilI9brElBRTvN1t8GNaQ/k6R8ky+uF0CoAvdxsuzcB3K1+yTVE
	 ZPZMhNiJ5QtsNy9lKxOQG3PsD26LeEFNG1KIDtFASu9YVtEcvjmy37Armt85fk+gBR
	 TOjBfvjURC0z9iZytH1o7eBmzEZpJ9CD+JKwfXmRjvRk5NK/+QH0Y9UHH0107SKQZR
	 bczqbsEAM95KOPNVf9iWMQbGp29Gyu3Pxhky9or877ayyRY4S3Yb45xoynnGP+BqMN
	 EcA28eLeGe0cB4fbCmJPNkV6lxOwCq/hYZss64SKRHeYD2HrY70hpBueE+OlTU30lp
	 KeLTNdYHSfqJQ==
Date: Wed, 21 May 2025 11:33:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.or, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, 
	kw@linux.com, robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, vkoul@kernel.org, 
	kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com, jh80.chung@samsung.com
Subject: Re: [PATCH 07/10] dt-bindings: phy: Add PHY bindings support for FSD
 SoC
Message-ID: <20250521-quirky-tanuki-of-tact-a79b86@kuoka>
References: <20250518193152.63476-1-shradha.t@samsung.com>
 <CGME20250518193252epcas5p3e4d1d329f1e5616e842801ceb26728b6@epcas5p3.samsung.com>
 <20250518193152.63476-8-shradha.t@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250518193152.63476-8-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_023327_550767_881AF7FB 
X-CRM114-Status: GOOD (  12.26  )
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

On Mon, May 19, 2025 at 01:01:49AM GMT, Shradha Todi wrote:
> Document PHY device tree bindings for Tesla FSD SoCs.
> 
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml  | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> index 41df8bb08ff7..3a5bff0fb82d 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> @@ -15,10 +15,14 @@ properties:
>      const: 0
>  
>    compatible:
> -    const: samsung,exynos5433-pcie-phy
> +    oneOf:

Drop, that's just enumm unless you already add here more?

> +      - enum:
> +          - samsung,exynos5433-pcie-phy
> +          - tesla,fsd-pcie-phy
>  
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

You need to list the items and constrain existing variants. I do not get
why exynos5433 gets now two MMIO ranges.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
