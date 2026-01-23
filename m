Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1649AD7234A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 08:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E92UkkbnxWmnyWH/m8PoyrEX24RGphFD+8h9vQBl/1E=; b=zPCHFKyr4ohNkO
	z2ea+tacwVHaCe36+eSC4sCuUmVaJjRC7Eb8wjMA9HyRnNJ+wT3fi69B5TN0emL931Z+GTiWLvYf5
	R+jRL6ihe1nTjft1xAQY75bc881SRGy+4DTrekx3RWkkYTf6So0uqiMLiUdHnRCIj9AIxLiXlHEPV
	uv3WBx78a6cYbuSyVD+zKN1J0K8bTbNvDITBQn1DyKkI+RDqlMupzibl+pbfv16rd7EBQtnCKhG+y
	UEbFXpLS90NgPfaMqoAKfiq8RGs2qo4Ka0DgK7WmBzzsNQBadQ11jYk8s/Z8MbsJDnQCHi0n09ehg
	tBDZzGQeRTJ1s315d40Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCNG-00000008S07-3Q0B;
	Fri, 23 Jan 2026 08:18:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCNE-00000008Ryu-319H
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 08:18:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 18C25436BB;
	Fri, 23 Jan 2026 08:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F26C116D0;
	Fri, 23 Jan 2026 08:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769156310;
	bh=+y8AGNIIHzHrt7WpGcWS9I/hAHRjyxzk3d7N2WLe8hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PnW4rwCyM5RBADoRptzsPYfRTybn/TRTez25NwBwtOsQr6E7scZ9i9YnFwG3y8Iet
	 PCiFF6tdBUuI6Hzqt5I/+Jt7Em9aJLswe+pZ26gA5pUC7Pi4w8xSQcY6B9z744tfbY
	 muBKGJTo7uL7qTq4zz2ThBklFl98hfv6ajwqGsDfww7iQvTp4mgELzGzzsSj++spvH
	 ShW5dKUDGk6JRN7We+WUTbjoBZkgg/aqdGyRSORA99bCaJfKgCDn/oYN3iwbWhfcFB
	 3YWU4hRJllq3iD0LZ6HIA1cV06hwo+4LwXtdgswnCWBgptj+6Rv6lNc5SDpNlm7wni
	 cK6vcW9Gs7+mw==
Date: Fri, 23 Jan 2026 09:18:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, fenglin@eswincomputing.com
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
Message-ID: <20260123-quantum-beneficial-rat-acb17a@quoll>
References: <20260123024823.1612-1-luyulin@eswincomputing.com>
 <20260123024936.386-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260123024936.386-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_001832_800747_B8B19302 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
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

On Fri, Jan 23, 2026 at 10:49:36AM +0800, Yulin Lu wrote:
> +  eswin,tx-amplitude-tuning:
> +    description: This adjusts the transmitter amplitude signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0

I think defaults should be specified like this:
https://elixir.bootlin.com/linux/v6.19-rc5/source/Documentation/devicetree/bindings/sound/adi,adau7118.yaml#L54

> +
> +  eswin,tx-preemph-tuning:
> +    description: This adjusts the transmitter de-emphasis signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0

Same here

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
