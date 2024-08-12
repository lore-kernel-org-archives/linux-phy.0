Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64FAC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 14:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=otbpi2F/1vkFD1RYYw2XuHCgp1+cFhXyr0OeAyZGHyA=; b=IPuPJawTjpFPMS8pix8LTKumiq
	pUa+tJWglSV64Mj0sNVfGYXw507rt1oFSm9sZwn0/p+PCeHbxta2Db4/LgTUo4O/1RJczrFSW4Gj2
	Oaa5V4G6X14vN+LbxsB/RIctGusd9f5FbCHbNZZNrr+9WjxOZL4TIrM3G5OamUjQjvRmqTa6+rObe
	/8gEHqBqpPVAl835yET7QUyMqvNLqiowHAt+PxaQlBo9dPK3UBkWAj7ZlZKbGaKiQNFksHseBoASE
	YuwCV0rWNUp9TpxDCCwpkDLUhp7L9+G06tPbjdL1FK5st8d8bVfBTwk5wUlL9aj/BX+gI5zs5ZwoV
	9OsnOt4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWIY-00000000dEC-0U5t;
	Mon, 12 Aug 2024 14:45:26 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVBh-00000000R3d-2gF5;
	Mon, 12 Aug 2024 13:34:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 104BECE0E7A;
	Mon, 12 Aug 2024 13:34:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D98A2C32782;
	Mon, 12 Aug 2024 13:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723469654;
	bh=JL8XYXMlmVgvqed30UCj2bKK2g4QBnMop/kHWgz0fEk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QARKBhkyAN/eafKtlB6M6qiuFUFApRL1r8zWesXVem0VfWgOANHT0y5OWLPfQ7XVy
	 iKSd26sXRNVLGSDVc9ggq6Txbk5pSwe5sTANAE8XoIfHhqeVN2uzLqQDw4Jm/rP8aU
	 kLigtPlx5kj5mLwI1MAvWSDtsdMG+vKjApCGqgYBxn4boPOYjFuRrKKw7L+wbHTirL
	 uoov6jSd7w+Bz4tgKfg8M2COsjaQVvdHGpLM9b8Uy/PV27LvyvrsjE+Bjx1L+2oJbW
	 /hqBTFd6BnfPWnVS2W+mU5wL8KUeb/2D+hvtKsP1Tc/jDlG97v6vJ5Vf6RNOOLz2gb
	 9u3+o4q7U6zdQ==
Date: Mon, 12 Aug 2024 07:34:12 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: kishon@kernel.org, fabrice.gasnier@foss.st.com, 
 linux-stm32@st-md-mailman.stormreply.com, alexandre.torgue@foss.st.com, 
 p.zabel@pengutronix.de, vkoul@kernel.org, devicetree@vger.kernel.org, 
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, mcoquelin.stm32@gmail.com, 
 linux-phy@lists.infradead.org
In-Reply-To: <20240812120529.3564390-3-christian.bruel@foss.st.com>
References: <20240812120529.3564390-1-christian.bruel@foss.st.com>
 <20240812120529.3564390-3-christian.bruel@foss.st.com>
Message-Id: <172346965242.493337.13574697496053856.robh@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_063417_906542_C4D40D9F 
X-CRM114-Status: GOOD (  11.65  )
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


On Mon, 12 Aug 2024 14:05:26 +0200, Christian Bruel wrote:
> Document the bindings for STM32 COMBOPHY interface, used to support
> the PCIe and USB3 stm32mp25 drivers.
> Following entries can be used to tune caracterisation parameters
>  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> to tune the impedance and voltage swing using discrete simulation results
>  - st, phy_rx0_eq register to set the internal rx equalizer filter value.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/phy/st,stm32-combophy.yaml       | 178 ++++++++++++++++++
>  1 file changed, 178 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml: access-controllers: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240812120529.3564390-3-christian.bruel@foss.st.com

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
