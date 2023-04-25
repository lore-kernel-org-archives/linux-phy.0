Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED467C77B7C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 22:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eVI/PLqoZ9C1vvYX0G9JuGUydSBooSMWo489roNFuE=; b=46uIPiXmghwSve
	hsYHndsqdXuDJCIRcMjbV4SHDLM157OSCAWcRZZgTLT+264CuZGfMtKlSfv49jy3oLA4I9WxPojmo
	r1cU1ftTqUxqPRw/qToEZ+UCLjITsMc8bBntj1/ToEj3Q1FMFrzPNKIrwpy6N7aWf0WihSwhpVpCh
	DhdwULI+fluSBFyPgtPxd+Fr+Hc6w+Qz3uK1RTedDe7r9Jp5yjLsgrk9ICdg2pXP1iomCQnomyA9C
	qMFK2pCLveHPaBURKeoz1U4DZu+vj8R0Utn5SsO6LBYJQBg5Vsqh3dcKPU6IylrZm9Zrb7lRmzbLf
	YJbFcgMK12dJlQrvk+5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prRMy-002LXg-1Q;
	Tue, 25 Apr 2023 22:42:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prRMv-002LVx-1M
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 22:42:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4FB1F6282C;
	Tue, 25 Apr 2023 22:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2744C433EF;
	Tue, 25 Apr 2023 22:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682462557;
	bh=XyM8lR5M10fiZgWRQ3U0hnMcuI8zf5/9gAQknS/eazM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cjDkm3LUgPURAvpPiWvr0FoUJ+2lumJ+dJXBuG1ubztX3/CItCq70Yyu212veYjYU
	 I+jGc3ZQGjSCkCfxS56h/JanDVYnF1G/rMacHMFcO5qipDQMMjaXnXz59xatG611+P
	 m420nhVj1e30D8i9tDq/3Of0Uatx6GzwewJMzhPgy6ljfdhHS7KxTetys1sXejuKx0
	 Ip8rSi5hd+JScSnPcjlBPWlKdI+0y979asRn/GXyhQB4Oa3HAf60bgodO7pneGKpxk
	 59MdEFL3lbm5AnMRcEZ82ypTnYBdm9yPgh2Dz7jgD+166S/y9EIJWoZFvAS1AuJG5b
	 u8tQmQ6dcBOtA==
Date: Tue, 25 Apr 2023 15:46:19 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,edp-phy: allow power-domains
Message-ID: <20230425224619.66zcpogqc2efq6nq@ripper>
References: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_154241_518966_E6A5A835 
X-CRM114-Status: GOOD (  15.00  )
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

On Sun, Apr 16, 2023 at 05:12:33PM +0200, Krzysztof Kozlowski wrote:
> At least on SC8280XP the eDP PHY is part of power domain:
> 
>   sc8280xp-crd.dtb: phy@220c2a00: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thank you.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index c4f8e6ffa5c3..6566353f1a02 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -43,6 +43,9 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  power-domains:
> +    maxItems: 1
> +
>    vdda-phy-supply: true
>    vdda-pll-supply: true
>  
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
