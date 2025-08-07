Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B957C87FD2
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 07:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyzAYGvD8IppaaQsFby9qkWuoepnwQFMVZDARcanzC8=; b=l8jbgQyPT3Lrb2
	MKKIkkBhwfWmcQZNLLIhNptsyzuUWZYR797onWjPuPmKzP/2beNie71RcLB2UUC3duyuRUHHSkAEH
	FhPekbVhPtDK+uNbYt2V0dMOmygtjKOFvqr93AVeg/fzjeiOgqj4Bv0X3b6w85EarkVeTwKIXKzET
	vDRDCq65t5dr7pXikg88fzTSzDjhQ/oUkcM+QGGBC0MbGvgolmDGscl1G25Q72fOwwfC07h6LlI3g
	J2QjVZpxbE48gNPNdJOxh+WiPMh9v9sF8jbU4irl/pmpBG4MimXmh7zRG0/ltBR3zVo07X/IwoLWF
	e/doWjjDkmghMIfjlhHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvIw-0000000HUx3-3O1y;
	Thu, 07 Aug 2025 07:44:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvGO-0000000HUbM-33K9;
	Thu, 07 Aug 2025 07:42:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3F4AE5C63A3;
	Thu,  7 Aug 2025 07:42:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F1C7C4CEEB;
	Thu,  7 Aug 2025 07:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754552531;
	bh=837mQHXOHMq1NakvNPj7uXsEJJUJV1kK1b2YQLagO/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KRRjPl7KUmf+n7lotlGsrBKmvZzqt937kebxj2Cl95QtuzsnwiwW4il4ULH9hFRiu
	 pd31xCi7/Whq7M99ma/GXUUi1DG9YpCLLPTcTcDfQrjvw5eQ6JxqH/gR3PIl3GbGB/
	 oRuf+QVMHfi3LfVsgsuQO51mmVH61uajU5pVVF4YBPRA310dWEM8SMPXmu+azNU2pn
	 IgHrESr4SFeNczYmiyY7nOjw535GmxaYItRyQMBWeitBK5TWUMhffZhcaoxUREsUk1
	 Fg4ggog+8LZREaZ3SDzevERfXvP+605UbAZwTHRHMRJwVs0jg4jUBx9YXj43tpzWV6
	 kBGIHq48LDoAw==
Date: Thu, 7 Aug 2025 09:42:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, 
	alberto.dassatti@heig-vd.ch, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: rockchip,pcie3-phy: add
 optional differential phy clocks
Message-ID: <20250807-amphibian-fanatic-muskrat-b1365b@kuoka>
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
 <20250806133824.525871-2-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806133824.525871-2-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_004212_807052_63CABB67 
X-CRM114-Status: GOOD (  11.53  )
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

On Wed, Aug 06, 2025 at 03:38:21PM +0200, Rick Wertenbroek wrote:
> Both PHYs can use an alternate reference differential clock, add the clocks

I do not see any changes in rockchip,rk3588-pcie3-phy, so your "both" is
either incorrect or ambiguous.

...

> to the DT bindings
> 
  
>    data-lanes:
>      description: which lanes (by position) should be mapped to which
> @@ -82,10 +82,15 @@ allOf:
>      then:
>        properties:
>          clocks:
> -          maxItems: 1
> +          minItems: 1
> +          maxItems: 5
>          clock-names:
>            items:
>              - const: pclk
> +            - const: phy0_ref_alt_p
> +            - const: phy0_ref_alt_m
> +            - const: phy1_ref_alt_p
> +            - const: phy1_ref_alt_m

These are different clock inputs?

>      else:
>        properties:
>          clocks:

You need to update the example as well.

> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
