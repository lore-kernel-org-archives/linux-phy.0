Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 465D1C79FBB
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+z64uGLqDKC0//U6a89BnFnyJmOqG+2lNf0HK7SW9Xo=; b=VvdJKKHvZ0mGax
	gjUjxlYaqAnUzj8sNR3IiXdzkjrRjmT/lJfkvue0d++GJfbLgoV0YDezhrjdRdRRBVYekaSLUD7LO
	xvFYYhVKsGGI29HK0itjjIty3q90gdLJtmntnC9mcRJrt8wrFzidOI1+sDbp+JpMc+9ORT+CAlgHI
	h1fdIhLeKBvt35Oc3sSUJ5gHh0oNFcVbq4QTcCiIzpcoS/rXiWd4KhRnlgIyAVJ/LJAWejBiSngdI
	+0gFNLaXRcOJWJVi5ZuE0w3V5BLvOgHEavGO6eVF4Sz/pCAaUo1uds0FBP1aDUSUWcf0ZFqjarJzb
	wzSxXT1WNmNwnTqZf0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z6g-0000000DcLg-42s0;
	Thu, 10 Sep 2026 07:22:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z6f-0000000DcLL-2tys
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:22:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 15F4343507;
	Thu, 10 Sep 2026 07:22:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE35E1F000FF;
	Thu, 10 Sep 2026 07:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789024921;
	bh=DnBf1HbHap733x3IxD/CH2nO9ibXQfvh68wZr7MEKEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ntfdPzs92az/FrLSRYER+tJYZDlutnj9QoDzY9V2qeYvL2ELW/vV1dxE0r7LEwK5h
	 kJ5s6/ImHs4zEb+CQWb909C5ho1vb1Zf9Tj6eSJyASwjXBgQ4vYKeX1tAja7nA3DtG
	 7N+VsJ///2QkQIzPUaJ++4beVOH49qsHCIOiq0bRjWwrHgMSaboYXHRQVxsZ//Ua4U
	 zGecndOkvpscBFJ8oRUvNfSy1J6N8CtQL5xBM+yDfzZaQE6ejx6uvy2MCOPKfShe2m
	 j2WYpl4/s7YfrkFsywIBz68FUcC1SLiNnINIquxng+mopALmxcrrJNZxNz78kYNWcV
	 Tp72FsNJSwKGA==
Date: Thu, 10 Sep 2026 09:21:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
Message-ID: <20260910-enlightened-charming-antelope-a812da@quoll>
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
 <20260903-x1e-csi2-phy-v17-1-26606fa9a039@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-x1e-csi2-phy-v17-1-26606fa9a039@linaro.org>
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

On Thu, Sep 03, 2026 at 09:44:33PM +0100, Bryan O'Donoghue wrote:
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  minimum: 1
> +                  maximum: 4
> +                description:
> +                  Data lane positions following this endpoint's clock
> +                  lane. Positions are a per-port logical numbering, not
> +                  package pad or ball positions.
> +
> +            required:
> +              - data-lanes
> +              - remote-endpoint
> +
> +        allOf:
> +          - if:
> +              required:
> +                - endpoint@1
> +            then:
> +              properties:
> +                endpoint@0:
> +                  properties:
> +                    clock-lanes:
> +                      const: 0
> +                    data-lanes:
> +                      maxItems: 2
> +                endpoint@1:
> +                  properties:
> +                    clock-lanes:
> +                      const: 3
> +                    data-lanes:
> +                      items:
> +                        - const: 4
> +              required:
> +                - endpoint@0
> +            else:
> +              patternProperties:
> +                "^endpoint(@0)?$":
> +                  properties:
> +                    clock-lanes:
> +                      const: 0

So endpoint@0 has a fixed clock-lanes? Then the property is redundant
and you can completely drop it.

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output to the CAMSS CSID controller.
> +
> +    required:
> +      - port@0
> +      - port@1

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
