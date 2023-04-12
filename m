Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6BAC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+FlCmNz3Uu5IS2S5DME17B1LYbYaFY4OtNrbP/qRBE=; b=01J3ozXBRaMAQE
	2r7KDDWh3LGzzQwFTV/H/59FUD+q7kAA9v+EYnBsuBzH7pvcHPS6iph4ugt1g+W5qKlxmrjzOso7W
	wm+JY08xMY/26Vr2rVL/9SaprOPD+Te7ymchEr+aB6UEGgDWomRjJNxkzQgchaZY0VhC0FJoLArWl
	8fg94sdgkqe27p4ns3x+N8Gb6HnKbVKuS/qc0osdOC/ozfEn9gv+fmEouCML4TVSU2sgllwO4vy1/
	/7XtN2Yku9JGsABB+IrtSm536ic6M1TsqMJtUdffXt8GK17YQfYTO/xPWhi6+BU1NfbGD1+qne9tl
	AHivrHvzgkFgixO+qPRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdDa-003nB8-2g;
	Wed, 12 Apr 2023 16:21:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdDY-003nAV-0m
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:21:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9AB76636EF;
	Wed, 12 Apr 2023 16:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88FCEC433D2;
	Wed, 12 Apr 2023 16:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681316467;
	bh=21dBoDUPAhRFz5u/I/SNMkgZ5X/vQ2e+XmdjNlj1Du8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QTmU8TEKf4jN9ncm84CyFOfQThd9BDS0h6DQ0hlWZ/7s+XTuljeLkMja1C6+MbTaz
	 +1Lr2wdMbgfevnk4lP1ZxL/sR1uTyNGm5KoHxK3ZFEL1N5IbzLOCQzgRT91DELBbyq
	 68nUz/MDpAjZ8lQpjK3mFZ8cK8RqwFdVOf9Hk2an2qLS0u3LmXsoy8JeQ+9sbT4UeP
	 j3vqoBoJYgdv4gA+39eDk96nicOOq+sGO5MOjZuyhVoD7i2Lnn8Cyse5F1AnLJ41V8
	 HwjHmSd2De+7l9eWdXASDzPGOlvPeHC52kYT2xWO2G0y1Ie6gc9lsdMZARLdtfBOdC
	 S++JQF4p30xSQ==
Date: Wed, 12 Apr 2023 21:51:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Yuti Amonkar <yamonkar@cadence.com>, Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-sierra: drop
 assigned-clocks
Message-ID: <ZDbabx/fgDjqh1qm@matsya>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_092108_325345_30C37F66 
X-CRM114-Status: GOOD (  14.33  )
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

On 04-04-23, 21:01, Krzysztof Kozlowski wrote:
> The meta schema from DT schema already defines assigned-clocks, so there
> is no need for device schema to mention it at all.  There are also no
> benefits of having it here and a board could actually need more of clock
> assignments than the schema allows.

Applied all, thanks

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/phy-cadence-sierra.yaml       | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> index 6a09472740ed..1de699fe5306 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> @@ -61,14 +61,6 @@ properties:
>        - const: pll0_refclk
>        - const: pll1_refclk
>  
> -  assigned-clocks:
> -    minItems: 1
> -    maxItems: 2
> -
> -  assigned-clock-parents:
> -    minItems: 1
> -    maxItems: 2
> -
>    cdns,autoconf:
>      type: boolean
>      description:
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
