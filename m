Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 635D0C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 06:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCalDfUJ9Ny7uZdhfwlo5OZc2aS0AuTkgSCLcGlltNw=; b=uLPOTB8oY0qTS/
	X4eeXyvsXVC3BTbc2L4APvdjqbljxtELQZYrIINc05vuOQXjSg6ZkMVxdVUZiELoeF3TaZRj1ENod
	yp2Mw2mVxQkvNdoZ4LydQhLpLV0L0yJ3xmUm/ml+Fz1QDOzX5qlXipbuCjvirA9cVBMZfH2gd1+8P
	Hf9uvQYfYc1r994NrrkkZh8OnGC81ZGDZ1p06SAIWhIouV6PRGDE7ttvO32pB/Gv2IxeWazv5tZMs
	D3u5EgDzpiuJARANY7vwM9KtPNofYJ4NojhgNYb+DOhb6L//rF0jCkVvZv1h6QGqcmJD3BSM3xre1
	HprrQsYT9GKlcoU1+gZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8y85-006Uz7-Nr; Wed, 06 Jul 2022 06:03:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8y83-006Uti-7L
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 06:03:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 99EE3B81AF2;
	Wed,  6 Jul 2022 06:03:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF9FC341C6;
	Wed,  6 Jul 2022 06:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657087393;
	bh=p1ZUq2pNMs+JaHQv52RmH17QKMuz3XFF0vibOHT4vKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sPeRLhGHR+v2UjPV0qwKjV2xSKUJFIpEuZUu9axLWxqi2vn6rcausfFNLf4DVdknc
	 gxkmh0o7uC7vN0aC9nYaH9wTtkHBFxIZBf6A22dGqdAw16uUCzS0e9XJY5xTVHaY13
	 CpwABG6Jsqr+Xu0pVNWXmYMhLSo9hwnsTB7OQpBhVVkDsFihzpGa/6ssm3l3u5JJe0
	 /EaTFCcDOB1hwEnVsZAenuXV2055rxN4b4C7MieAs9wyvjFF7Bbk40+B4vfiuy4uaL
	 3Twt2dJDyfpMKax1t51/YhVXtNIb/9h7kY2fDBL3g2nYR9dgjXpjvw/CyYFmzLHAS2
	 y7ZZ3S8Cq/9cw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8y81-0004aa-Qv; Wed, 06 Jul 2022 08:03:13 +0200
Date: Wed, 6 Jul 2022 08:03:13 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Message-ID: <YsUlob0Cj9WmDzcF@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
 <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
 <YsQkmUVla9+CDYly@hovoldconsulting.com>
 <8d739c84-ba61-a030-ea8a-63a3f45c642c@linaro.org>
 <YsQx1SMEsMnmoQ2d@hovoldconsulting.com>
 <5b6f5e15-f3fd-badb-3ada-eb2f58053857@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b6f5e15-f3fd-badb-3ada-eb2f58053857@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_230315_450014_D080C5CA 
X-CRM114-Status: GOOD (  15.45  )
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

On Tue, Jul 05, 2022 at 08:13:55PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 14:43, Johan Hovold wrote:

> > So you suggest we keep this regulator for all PHY variants even though
> > it was probably only needed for UFS on some older SoCs?
> 
> No. I commented only that reason is not a good one. The proper reason
> could be: there is or there is no such pin in the device or the history
> tells that adding it for all variants was a mistake.

Ok, I'll include it since it was there as an optional regulator from the
start and hence implicitly made part of the binding for later PHYs even
though it likely only applies to the older MSM8996/98.

If anyone has access to the documentation they can drop it later.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
