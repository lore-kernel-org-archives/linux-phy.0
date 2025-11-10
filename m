Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2CCDCCFA1E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 10:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xTStK8V7tJIWiLFZ3vNT0mweHAOLMSYv0TXybk1qJQ8=; b=CTJS78hfYwhKatO5Rtp+ntecDI
	19rijjyeZhiJK+/RA2Pb3xRfTZYj3PZlCllH0640cyi+8diLc6sniriCMNi3gU3pMC1bSGWxjJXEC
	+W2vyUQrxnbxs6qOL5S1UJjJohfE1a/HvbB96kEM8ddPQA0MPJ+nJoc419l9gZijiss6aGtTCnlbZ
	YI89gw0svtRYXl053sI579etgAnVdC5bMdbH85YWV0HzwkgCT2NKmkh0Dfxgil86miFT9XgoKZTkr
	7QhCl9dGiwAjcmADxWGp3mDt7c7gBl7JcnMjQSRAn1ItHo8Rtwzfh2LR+Nb34aYTTbE5DZTF2+4AY
	6Yx45PmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIP9O-00000005BO5-2Q5H;
	Mon, 10 Nov 2025 10:29:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIP9N-00000005BNz-2zVe
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 10:29:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D14CF60146;
	Mon, 10 Nov 2025 10:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56BD2C16AAE;
	Mon, 10 Nov 2025 10:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762770568;
	bh=ABWKO42uPzueqRpSjxTHFQd8ikHBkZ2+3doEw+bX6bc=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=B624bR9RdQgG/7X9fWVGi7Qunb/nIc7kWQb4hqVEmJvBF4pVhSfv9ca6O2u7FJEgS
	 a+6Luwep2t+DtOEtqFHUfOuC1PbjKJeofZD1pK38w46lyQakT9Dl+jDGHwdpDlE0Dy
	 Ms0lCxD0jtWqbkbTPZZror2jTapIExule+Eqo0HoY1CcMa17qrk6xTDFkj+CFKDY6s
	 twnAS8tfmH3R6zNu6EiLSyxxoAkFoAfuoVVxljs1d5TaCnQ+WO9FV4q1VdrOOb100h
	 sT9gE6YHj3T7+nzcnVp0vBQp7ZF/ZI2ZqceID1TZysfqsCB+CLiQVdSk21A+dbZ+1j
	 rUGdCIIcwMsMQ==
Date: Mon, 10 Nov 2025 04:29:27 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Josua Mayer <josua@solid-run.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20251110092241.1306838-16-vladimir.oltean@nxp.com>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
 <20251110092241.1306838-16-vladimir.oltean@nxp.com>
Message-Id: <176277056708.3414333.5403009680990856810.robh@kernel.org>
Subject: Re: [PATCH v4 phy 15/16] dt-bindings: phy: lynx-28g: add
 compatible strings per SerDes and instantiation
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


On Mon, 10 Nov 2025 11:22:40 +0200, Vladimir Oltean wrote:
> The 28G Lynx SerDes is instantiated 3 times in the NXP LX2160A SoC and
> twice in the NXP LX2162A. All these instances share the same register
> map, but the number of lanes and the protocols supported by each lane
> differs in a way that isn't detectable by the programming model.
> 
> Going by the generic "fsl,lynx-28g" compatible string and expecting all
> SerDes instantiations to use it was a mistake that needs to be fixed.
> 
> The two major options considered are
> (a) encode the SoC and the SerDes instance in the compatible string,
>     everything else is the responsibility of the driver to derive based
>     on this sufficient information
> (b) add sufficient device tree properties to describe the per-lane
>     differences, as well as the different lane count
> 
> Another important consideration is that any decision made here should
> be consistent with the decisions taken for the yet-to-be-introduced
> 10G Lynx SerDes (older generation for older SoCs), because of how
> similar they are.
> 
> I've seen option (b) at play in this unmerged patch set for the 10G Lynx
> here, and I didn't like it:
> https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
> 
> This is because there, we have a higher degree of variability in the
> PCCR register values that need to be written per protocol. This makes
> that approach more drawn-out and more prone to errors, compared to (a)
> which is more succinct and obviously correct.
> 
> So I've chosen option (a) through elimination, and this also reflects
> how the SoC reference manual provides different tables with protocol
> combinations for each SerDes. NXP clearly documents these as not
> identical, and refers to them as such (SerDes 1, 2, etc).
> 
> The per-SoC compatible string is prepended to the "fsl,lynx-28g" generic
> compatible, which is left there for compatibility with old kernels. An
> exception would be LX2160A SerDes #3, which at the time of writing is
> not described in fsl-lx2160a.dtsi, and is a non-networking SerDes, so
> the existing Linux driver is useless for it. So there is no practical
> reason to put the "fsl,lynx-28g" fallback for "fsl,lx2160a-serdes3".
> 
> The specific compatible strings give us the opportunity to express more
> constraints in the schema that we weren't able to express before:
> - We allow #phy-cells in the top-level SerDes node only for
>   compatibility with old kernels that don't know how to translate
>   "phys = <&serdes_1_lane_a>" to a PHY. We don't need that feature for
>   the not-yet-introduced LX2160A SerDes #3, so make the presence of
>   #phy-cells at the top level be dependent on the presence of the
>   "fsl,lynx-28g" fallback compatible.
> - The modernization of the compatible string should come together with
>   per-lane OF nodes.
> - LX2162A SerDes 1 has fewer lanes than the others, and trying to use
>   lanes 0-3 would be a mistake that could be caught by the schema.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v3->v4:
> - OF nodes per lane broken out as a separate "[PATCH v4 phy 01/16]
>   dt-bindings: phy: lynx-28g: permit lane OF PHY providers"
> - rewritten commit message
> - s|"^phy@[0-9a-f]+$"|"^phy@[0-7]$"|g in patternProperties
> - define "#address-cells" and "#size-cells" as part of common
>   properties, only leave the part which marks them required in the allOf
>   constraints area
> v2->v3:
> - re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
>   top-level "serdes" node
> - drop useless description texts
> - fix text formatting
> - schema is more lax to allow overlaying old and new required properties
> v1->v2:
> - drop the usage of "fsl,lynx-28g" as a fallback compatible
> - mark "fsl,lynx-28g" as deprecated
> - implement Josua's request for per-lane OF nodes for the new compatible
>   strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 86 +++++++++++++++++--
>  1 file changed, 79 insertions(+), 7 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/fsl,lynx-28g.example.dtb: serdes@1ea0000 (fsl,lx2160a-serdes1): '#phy-cells' does not match any of the regexes: '^phy@[0-7]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/phy/fsl,lynx-28g.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251110092241.1306838-16-vladimir.oltean@nxp.com

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
