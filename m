Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DEEC83F10
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 23:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q3v9JnuDlFi2Vb1Bq4QYz/wOsKVpV9om1UNoQLx2yaI=; b=3jDQH/rM1h8mmINPykbZQUTub5
	vLjqZyBgjiBJ3q9BL8cvh1Xg0XZFDMqen3G2KAzB92R9WjX4Lb2pPOFyem25iSdhAM5zfGIuISXPk
	cJi2o5qtcu4UpEOTjwGyNfd/65hsRm2zAQDTZngVX1oKtzO7e8mt2GoIILa6YyrfGLtTBfJZV2XMC
	bXAUgw2Q6sHrdu/G3zaoSW918qa2RPlxx+W82cd2kNOvV4rYr8IUKxEnktp1nV73dW2paTNtcchJe
	zmKtJn7eJWbBsoLLPo5bgLaLPNbqYySdMjsWwU9PfI//YT78N1X4U+Vvi6VyhQ/b4GvrHClOokuGV
	vaSmFvBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZeFJ-0000000AFx2-2omx;
	Wed, 09 Jul 2025 23:30:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZeFH-0000000AFwV-2g0U
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 23:30:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DEF7643B99;
	Wed,  9 Jul 2025 23:30:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9515BC4CEEF;
	Wed,  9 Jul 2025 23:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752103834;
	bh=XuaRcAgoN0AxdCzQdQl12wDD/O9qp7Ie+TcWhj5ipYw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=cirGtbSoLuEJcfpwna9P4x6JMFaId24y2UJdczDxKpWwiCg9WqZ666J9+JNccM45J
	 waVTWcURXNCjfngjTk4gERXXI/gNIRb9I/XblhDlq2fv1ZZIpe9/5cfXKX/L0RlGCy
	 +wdRWgeFANN2xogqpl89vQFMkucl4aWeOSL9eObhap39QBpWUMbjlYWJeSsOxnM/yc
	 qnyb/hE1YuFc/qQGeoB1GibvoGF+ZEiyWxbiwcuW65Hy6qCq6wCFOOEBzQzLMrY0uw
	 KnVO3f9r2kd1EXumnByvoEdjXafq0VTJXKOPWAAi+5seFWbN+swkgmT9sW4y+/8/Br
	 524ltuSgdFGtA==
Date: Wed, 09 Jul 2025 18:30:33 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, 
 jyxiong@amazon.com, devicetree@vger.kernel.org, anishkmr@amazon.com, 
 kishon@kernel.org, linux-kernel@vger.kernel.org, miguel.lopes@synopsys.com, 
 krzk+dt@kernel.org
To: Karthik Poduval <kpoduval@lab126.com>
In-Reply-To: <20250709221724.1276428-2-kpoduval@lab126.com>
References: <20250709221724.1276428-1-kpoduval@lab126.com>
 <20250709221724.1276428-2-kpoduval@lab126.com>
Message-Id: <175210383317.4144520.12202639911629037597.robh@kernel.org>
Subject: Re: [PATCH 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys MIPI
 D-PHY RX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_163035_722273_9C7B4642 
X-CRM114-Status: UNSURE (   9.22  )
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


On Wed, 09 Jul 2025 15:17:24 -0700, Karthik Poduval wrote:
> Add DT Bindings for Synopsys D-PHY RX, presently tested on version 1.2
> 
> Signed-off-by: Karthik Poduval <kpoduval@lab126.com>
> ---
>  .../bindings/phy/snps,dw-dphy-rx.yaml         | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml: ignoring, error in schema: properties: reg
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml: properties:reg: [{'minItems': 2}, {'maxItems': 2}] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml: properties:reg: [{'minItems': 2}, {'maxItems': 2}] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/phy/snps,mipi-dphy-rx.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.example.dtb: /example-0/dw-dphy@900000040: failed to match any schema with compatible: ['snps,dw-dphy-1p2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250709221724.1276428-2-kpoduval@lab126.com

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
