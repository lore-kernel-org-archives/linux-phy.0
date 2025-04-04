Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCA2BC36010
	for <linux-phy@archiver.kernel.org>; Fri,  4 Apr 2025 22:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PsMZcOl3q4AkaYR/RpNlUo7jer7ZE0j/csuv1lU8P0Q=; b=WCbmXhgz9UF3FuzrcFWKvVh5P1
	qgk+sor0u8guaLKgbo7L82cW3jzpi2YsyaM3/66Iwivok20981ptfCmjZpwZPIGTNWc6v+/wN7vWG
	YQWZMhgH/i3UVQUYFwXlCvYcHnM5oCuAHnPvLILYl77HY9FSxZRvK1VU/Dg5seJT0Up4Vo4C+Aen0
	hCaW25b1yhJmMXC1kYZ0qNWlqivQaocW0Noft5/pYSS7wmqJgt+mZhELMlE8gBhvOgx26qZQP27xs
	8d20lpZA9CKQS10Or25ESQ2sxjX2pb+exQHP6djdQ6Kyws+K5Qn+pww7EuUHXdhtcpggOlj48yubI
	k1tvK2Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0pRQ-0000000Cyjg-1yNG;
	Fri, 04 Apr 2025 22:23:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0pPf-0000000CyVN-3PnV;
	Fri, 04 Apr 2025 22:21:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DD69844304;
	Fri,  4 Apr 2025 22:21:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0186BC4CEDD;
	Fri,  4 Apr 2025 22:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743805283;
	bh=7eTq/+/tHSezJmCcxzOUrQ0fGNRkpQ2yL3p6VtTrj6c=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=XxmXfRxInqmGGSMNGeAHqvZZOI/7yWE4UCk8el82OuOx+QVhlTipB7wXF3A3TRuXl
	 TA0fMRRLqDdQCSSK9IoYn/7BEk8ta4ECParWhZNOeIRjMwj6XJYGHULi5sWTDwnPfL
	 4cHhOaXNG9gz6UAb6D/9sJXhw4Xg2QYnxEpTBX3d7h9FAlCCVpM55uHWoHWn03dU9I
	 7R5eqLYOZwsQ6h1EsZvYcD0EXN2E7CW3eBXiHgXN8MWNVthHcbZquuZKOnipdSp/Qy
	 pAu5rSbpNjQtgA9OoQCkkyhDbLyQsWPk0OQ6XmT1dKlMnqjb4/l2HuoOShAfRULQyR
	 dMmPdAVVi32cA==
Date: Fri, 04 Apr 2025 17:21:21 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Frank Wang <frank.wang@rock-chips.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-rockchip@lists.infradead.org
To: "Rob Herring (Arm)" <robh@kernel.org>
In-Reply-To: <20250404213958.400852-1-robh@kernel.org>
References: <20250404213958.400852-1-robh@kernel.org>
Message-Id: <174380528188.571034.1832542310029442555.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: rockchip: Add missing "phy-supply"
 property
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_152123_868752_CB3DE49C 
X-CRM114-Status: UNSURE (   9.93  )
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


On Fri, 04 Apr 2025 16:39:57 -0500, Rob Herring (Arm) wrote:
> Several Rockchip PHYs use the "phy-supply" property, but don't
> document it. Add it to the current known users.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml   | 3 +++
>  Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml  | 3 +++
>  Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml  | 3 +++
>  3 files changed, 9 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml: properties:phy-supply: 'maxItems' is not one of ['description', 'deprecated']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: properties:phy-supply: 'maxItems' is not one of ['description', 'deprecated']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml: properties:phy-supply: 'maxItems' is not one of ['description', 'deprecated']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250404213958.400852-1-robh@kernel.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
