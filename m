Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7197DC369B2
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 00:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yTCh4hWS4AOz2C2a7MIT0PiKBmk3qMeKg5gismPAnaE=; b=cYDGTPNkC2CrQpcWbvpVbdyoA/
	R2al9RDK3d0mbOeYSF4WW40+fSOzWBdLIpr7cikxV9X9R42j/I/mplhrTQTUJdu6cEJx6XQwpbgom
	tx7fDpFu/EF+uCez83OSKH4K9/17CstGWIytPLcrF3BjDE35dLh0TSvi8qfgWctf+cOaypHar0lYU
	87/CiLRhvTIXeCBAWjUUhyUFz8hD408zdRNT1VfITjmFxBTpUFcx3cN+ugXShSOcyTn4RZriTcwO7
	f/0lxvvOGgyMRIC5MNYCKJqXVOLhin8WEujRBxzbz1mY2pvghGaOXe/l/Zua0jdHBiKRJ1VfQcc4d
	ghZd/bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4UDl-00000004197-4BBX;
	Tue, 15 Apr 2025 00:32:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4UBh-000000040Wv-1HcK;
	Tue, 15 Apr 2025 00:30:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D93F64A5C2;
	Tue, 15 Apr 2025 00:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 941DEC4CEED;
	Tue, 15 Apr 2025 00:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744677003;
	bh=I813wV1g/WIA6BY+EHdHQRWe4RgiC2zmO2F7GmKy+nE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=LMKbyZl7mEsiaIPEtIdqbWP4H1Ipny5a/CZFjuYKI7RI1ix3URXs43Bu0GZIvXiLW
	 ZhI6WPM+sjPJQrWYke2oGagT3ChhzR5KaGiPVCLa8QxQsIx9lvb5I5LTywPAAjQY/l
	 lZTLq2bB5Xhw1Ju+MPLs216vXWhIi+JgGjuR/5JlRsKTnNf6V1ppSshQY4tzuQOp3O
	 CyOGIAMRSuG9pnw3Ktade0T1nR2t08CAPcajYvp515BxHHUQqXY58AxxLVee6XTqcU
	 kNzOPiyADnnpCGYqPhBvmhMImfG9HEQvf4C1/rD72XOR+J4EWWR6iXTYVZ72Y6r2W7
	 Qj69ckNJtBt/Q==
Date: Mon, 14 Apr 2025 19:30:01 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
In-Reply-To: <20250414225311.1913480-1-robh@kernel.org>
References: <20250414225311.1913480-1-robh@kernel.org>
Message-Id: <174467700194.2177524.2394978588221841695.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: rockchip: Convert RK3399 PCIe PHY to
 schema
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_173005_364071_62E8826B 
X-CRM114-Status: GOOD (  11.07  )
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


On Mon, 14 Apr 2025 17:53:09 -0500, Rob Herring (Arm) wrote:
> Convert the Rockchip RK3399 PCIe PHY to DT schema format. Move the
> example to the GRF binding as that has the complete block.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/phy/rockchip-pcie-phy.txt        | 36 -------------------
>  .../devicetree/bindings/soc/rockchip/grf.yaml | 13 +++++--
>  2 files changed, 11 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/rockchip/grf.example.dtb: syscon@ff770000 (rockchip,rk3399-grf): pcie-phy: False schema does not allow {'compatible': ['rockchip,rk3399-pcie-phy'], '#phy-cells': 1, 'clocks': [[4294967295, 138]], 'clock-names': ['refclk'], 'resets': [[4294967295, 135]], 'reset-names': ['phy']}
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/rockchip/grf.example.dtb: syscon@ff770000 (rockchip,rk3399-grf): pcie-phy: Unevaluated properties are not allowed ('#phy-cells', 'clock-names', 'clocks', 'compatible', 'reset-names', 'resets' were unexpected)
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
Documentation/devicetree/bindings/soc/rockchip/grf.example.dtb: /example-0/syscon@ff770000/pcie-phy: failed to match any schema with compatible: ['rockchip,rk3399-pcie-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250414225311.1913480-1-robh@kernel.org

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
