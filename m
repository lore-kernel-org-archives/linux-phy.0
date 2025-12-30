Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A31AE92FD2
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 03:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ESz/Uqu7Vj/oPQKw6dbFYl5h9X2m1E8ikRDZlclDDtI=; b=u7av+XzJFcYJvHPofmWeQkZ1NL
	WWM2NdPdPVuTJ72I9n+AFs/JuM5ozTshuQ5oXdH3PekYnEmCZo2iaFbZri+G5p3jkC9P/1zfPxjK9
	XQNBKO6Gtea2BOA0s0y4SR15ErCEm7igzZns5lZyh/f3/PTSCuxUOBLNoOM5iChZp2m1cjQ+4equb
	PN+hyIYK14A2JaRQu7l4CCcyImjNJgYxyQtGLliyJnsejY1PTWDLnWKI5mT70wCJjcxvRB/NyVek+
	Ut/fQHtUcTbYWvilA2YRaxYaBm0NTW93uBtIwS159bE2hXo6f5zQsM8H9K2moYAFd1+lCEZse57kP
	sY1GRxuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaQcE-00000004N5z-0bV0;
	Tue, 30 Dec 2025 03:41:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaQcB-00000004N5B-1jjw;
	Tue, 30 Dec 2025 03:41:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 53EDA60018;
	Tue, 30 Dec 2025 03:41:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E36C4C113D0;
	Tue, 30 Dec 2025 03:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767066102;
	bh=vBm70uEKN6LrjBttlBHkZ4+VsRI0CjQ1k56XQhZmnH0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=JLBJMCZBYXdywuOAj7JR76nzzNKZOxzCOXXNeqAX9OTV1DmPLDRnM/RXS/3pkfDWL
	 4PoAiAWU2Subugv+N7rRVA4uPNjqBS/LX3KQ74yBRdjwkyv+yl3/C7J8bgZlm76cWD
	 IgRWDO7PuGeC8GrQBYeoPLy8DAy23SKzqzv2kFvaNV+SIzZ30vw3uTENCgtVx7KWq5
	 3ChlGv/ju9wJZ5Wk+Rrc10/iMlZl3i02mNIpdjDyw+LC2YjX2XAU4hBHUtNXWhr8tL
	 beJMBhEG+Xzh2zTpMTIXRrT9QJUAMITi/rdp7zURlqLqeMeD4tcyKFPmbr4QBUwcro
	 Nt0Ox/CXFXfAA==
Date: Mon, 29 Dec 2025 21:41:41 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-riscv@lists.infradead.org, palmer@dabbelt.com, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 gregkh@linuxfoundation.org, vkoul@kernel.org, alex@ghiti.fr, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, conor@kernel.org, 
 aou@eecs.berkeley.edu, pjw@kernel.org, neil.armstrong@linaro.org
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
In-Reply-To: <20251230023725.15966-3-jiayu.riscv@isrc.iscas.ac.cn>
References: <20251230023725.15966-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20251230023725.15966-3-jiayu.riscv@isrc.iscas.ac.cn>
Message-Id: <176706609979.3313865.8414588586918215477.robh@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: soc: canaan: Add top syscon for
 Canaan K230 SoC
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


On Tue, 30 Dec 2025 10:37:21 +0800, Jiayu Du wrote:
> The Canaan K230 SoC top system controller provides register access
> to configure related modules. It includes a USB2 PHY and eMMC/SDIO PHY.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
>  .../soc/canaan/canaan,k230-hisys-cfg.yaml     | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/canaan/canaan,k230-hisys-cfg.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/canaan/canaan,k230-hisys-cfg.yaml: Unresolvable reference: schemas/phy/canaan,k230-usb-phy.yaml#
Lexical error: Documentation/devicetree/bindings/soc/canaan/canaan,k230-hisys-cfg.example.dts:27.35-56 Unexpected 'K230_HS_USB0_AHB_GATE'
Lexical error: Documentation/devicetree/bindings/soc/canaan/canaan,k230-hisys-cfg.example.dts:34.35-56 Unexpected 'K230_HS_USB1_AHB_GATE'
FATAL ERROR: Syntax error parsing input tree
make[2]: *** [scripts/Makefile.dtbs:145: Documentation/devicetree/bindings/soc/canaan/canaan,k230-hisys-cfg.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1565: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20251230023725.15966-3-jiayu.riscv@isrc.iscas.ac.cn

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
