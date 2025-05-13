Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB488C3ABCC
	for <linux-phy@archiver.kernel.org>; Tue, 13 May 2025 15:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fxRJSSaL+NxDZo6D9GSc8fSTacr0KVtiFbzPNVmq91w=; b=Eh6gFaawVHLSERdUQHQ8XeZWFJ
	SnI+gVfbPQwLVF4XmAs5hsmuuZwElM2mEwMGBOu6qqY1bZ9OrnDzUJCOMnAdXVpqlXI7Nh72ef58a
	47GA1wUKfz2F7fsdTGDjBG1+N8PbS7wAUEeRkuNfAiczztXTV+H8NtKF9tGdi023ciUPNT/3H2cr8
	KDNFEbk6JrAiKYVJRDxnaibYrPOIppQkgD7+CeNTl6IuW538L82mypukQxeV8C6An+vzv3pkfUSo3
	LrZiYM7a5xQrHyhr09EPnoucKZZuHVQkX6AWac0XV4duINnJeW52Xm2lW2+Z9buVoy+J/eT4YUrv9
	4r2r+aZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uErbI-0000000CnIV-0x1f;
	Tue, 13 May 2025 15:31:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uErbF-0000000CnH8-39Ri
	for linux-phy@lists.infradead.org;
	Tue, 13 May 2025 15:31:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DE20BA4D60F;
	Tue, 13 May 2025 15:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B79CC4CEE4;
	Tue, 13 May 2025 15:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747150280;
	bh=JvaQO1aEn0SuAa1MUUg80d1Woxc3lQHL6iBYOlkywxY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=KwJ4JLIWrB60eZr9Y1IZ/jzp0OBZFHgwtKERN3ZBTS5sj8UF2h0mAMB+OZY77v1td
	 v7QLszk2Ex+P6EheO3ECVFNWzXdBfGSDOc5sjSbT9D579MjuxMdL1uuzOCNWjkE+px
	 YRoBb2H1sbtLTowbKcIYNheglMc1VaQ9MaO3vcpAiG4oyXvpH3AF5hD8sKVncdLL3f
	 PWZzRumJDexEH9gEINR16sgqV4rW/dy+kQiGBcEaBXFl/lGvuogMJsPwV3MaoL0kp3
	 9w3eLsbtZh8GdLesM/iSmLyhfgHiSPy3Wan5jiQ4LnY+c7vy6k7ZIhep6fOi1K6OYj
	 bONSOsGvEIakg==
Date: Tue, 13 May 2025 10:31:18 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hans.verkuil@cisco.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Todor Tomov <todor.too@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
Message-Id: <174715027856.2438585.14868581800831556773.robh@kernel.org>
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY
 schema for CSIPHY IPs
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_083121_856914_865543A7 
X-CRM114-Status: UNSURE (   9.44  )
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


On Tue, 13 May 2025 17:39:18 +0300, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml: port: Missing additionalProperties/unevaluatedProperties constraint

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org

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
