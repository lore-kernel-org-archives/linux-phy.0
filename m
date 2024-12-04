Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D595E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 07:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQP9eABfauJepomi1D9tJ7ECln8OTM9cIM7sqjwtgKw=; b=tbtAX9DusE4YdI
	zi2LcWKFa1mr4RrDc1ZJKK9j2bFKBxd7IcqmkhxDo85RYlGo5tvHHTiN4urcdms5lI1R2pmJVYZL7
	0vUG3LwU0/j6Rsg/1iViMbj/Hf+Da9HUt+QdtgHiNmosmiD637NVUnw5YIiAM4UfewT1g/XVEjTRc
	gJcl3OzCP+IzYZRKnHwYOJ/3SoakEI3kUZIOu+D/1SpaJ0+BtAyjBWSi3wpbcKVjjtTz/7wQnBGro
	B3AHRsHibfYkz7aUsJsNei90kiiPGTPWH0sLmEkIgki08yY85f8W/pSGM+kSQBUdN3fpr8DDwDxpV
	VXjUeFgBjm7c0KLqnfyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIk02-0000000BjqZ-33OP;
	Wed, 04 Dec 2024 07:40:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIjz1-0000000Bjja-0yav;
	Wed, 04 Dec 2024 07:39:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA7D45C60F0;
	Wed,  4 Dec 2024 07:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D646C4CED1;
	Wed,  4 Dec 2024 07:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733297978;
	bh=OZXyxFp5uWXU4+gtNDcxN94xsKibQqokm4SOMt4Xt5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lyg8RjUGEl2gykO3cMw2tW7YE9qGqj3QwcLCyiSYGF8nZakDz4PXSmeILOTBxhian
	 nTYR9rhzSDSt5uTlCPM/pP6n2XiPQMn8tB3oPMAZic+P4gyILBUzUZHMElyT9qmUUW
	 hJr8S2Twk6DORz+F+XqCe3Tf3OvXY0txcULPWNW/vANxL5EnEg/d07W2hGt3b860ID
	 VqFKGOqt+kTmlRbvkxxdBmdzlG3YNEEW72B/Rj9oU5lb5apCGLOAsLqMLZhyOiggX0
	 w050em0y8RPkWSFtU6v/tfkAD5eG2er6wPX5c5Q1agAQ7GVKYLrt951bkKGLd7WSQZ
	 3fEA8Rr7Rvpqg==
Date: Wed, 4 Dec 2024 08:39:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	sebastian.reichel@collabora.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dse@thaumatec.com, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Add Rockchip MIPI C-/D-PHY
 schema
Message-ID: <mdlcm57lway2wqwh7tp6bj6mi3nlwuaeadbsmgx3h6kcfdisq5@76ikce4yqfs4>
References: <20241203164934.1500616-1-heiko@sntech.de>
 <20241203164934.1500616-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241203164934.1500616-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_233939_311307_9D3B36B5 
X-CRM114-Status: UNSURE (   8.25  )
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

On Tue, Dec 03, 2024 at 05:49:31PM +0100, Heiko Stuebner wrote:
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-mipi-dcphy
> +      - rockchip,rk3588-mipi-dcphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      Argument is mode to operate in. Supported modes are:
> +        - PHY_TYPE_DPHY
> +        - PHY_TYPE_CPHY
> +      See include/dt-bindings/phy/phy.h for constants.


That's the only difference from version I gave review. It is approved
style of passing phy type/mode, so adding this is not valid reason to
drop my review tag and request re-review.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
