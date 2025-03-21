Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1313BC35FFF
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 10:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bRgKDS5dpotOc5o51wzrF64wIGSRTqqm5VOvdXkmssQ=; b=LnB7xLqBF+deEHhWJbyWzlHC7T
	D1wVJ9SeaANz6c5bliiTMH7c0xD4ZTTVi3EN6VPGpS1qff7ImZtXrV1zmT2vferKDpsJZWqdOzlbb
	HmSz5OoUj0pLlWI0Jav5s4h2v4qYFam2Ga81hBCFwdSUqJYpsnWQ1b+PPnYPoFqtOjIQog90L7bq+
	U1qSQySsoY3hSIeNm72/Xayg6/KZFAEHgHXXWktCEgKmGBQjgKsEEBo/G9RdxPeEzvlr098Tef1HX
	N33RA7yDG+TIDtcg0ZDzO4MuywGPOp2TmH2NGz03SAUz123ENEQboxnkl4dzqTXMPW9BX19dT6m4X
	5/Rx8Btg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZq9-0000000EYve-2sxm;
	Fri, 21 Mar 2025 10:43:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZis-0000000EXXM-4B8q
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 10:35:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 96C4A434C7;
	Fri, 21 Mar 2025 10:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C97DC4CEE3;
	Fri, 21 Mar 2025 10:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742553329;
	bh=M38TozFdZmDwbMggCWzdf6+Uy65GEd34MS0QwbTZJZc=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=P2E3Xc0i0Sk5jGWUFUfaZDF8yPFrugsZoR5m5uFXw6JGMB1qT4FrSCUZimP44PjQB
	 5w/7CM/cM0+OQut8Y1qrXPPeKJhpn9SjLCqsbVezuGmHyR2aBI4LyLAAn6yujp7Z1p
	 w/MyIX5Q2rKSvoM/d/UNj+0dV0EV/bKQejOfFT+lf5kR+bKSvYmNAKH40kgBg7os4K
	 5eZQLBH4msUkmXQs502Cou46mS1ZMJVhHftYe71iSiwR/VB3N1xWdJEXka0cIHoNQp
	 Zx7PBP17DLctq3mFU1oBeTkPAnZ+3SWhiESFDyrG2aZUStBW4CUcR8WCoQqZAVh4l9
	 jomkRFy0kUHIA==
Date: Fri, 21 Mar 2025 05:35:28 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-arm-msm@vger.kernel.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
To: George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <20250321-ipq5018-pcie-v5-1-aae2caa1f418@outlook.com>
References: <20250321-ipq5018-pcie-v5-0-aae2caa1f418@outlook.com>
 <20250321-ipq5018-pcie-v5-1-aae2caa1f418@outlook.com>
Message-Id: <174255332861.2810991.11878697286839237760.robh@kernel.org>
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add
 ipq5018 compatible
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_033531_072755_BFD1A0D0 
X-CRM114-Status: GOOD (  10.50  )
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


On Fri, 21 Mar 2025 13:09:50 +0400, George Moussalem wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> The IPQ5018 SoC contains a Gen2 1 and 2-lane PCIe UNIPHY which is the
> same as the one found in IPQ5332. As such, add IPQ5018 compatible.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml | 57 +++++++++++++++++++---
>  1 file changed, 49 insertions(+), 8 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:0:then:properties:clocks: {'minItems': 1, 'maxItems': 1, 'items': [{'description': 'pcie pipe clock'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:0:then:properties:clocks: 'oneOf' conditional failed, one must be fixed:
	[{'description': 'pcie pipe clock'}] is too short
	False schema does not allow 1
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:0:then:properties:resets: {'minItems': 2, 'maxItems': 2, 'items': [{'description': 'phy reset'}, {'description': 'cfg reset'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:0:then:properties:resets: 'oneOf' conditional failed, one must be fixed:
	[{'description': 'phy reset'}, {'description': 'cfg reset'}] is too long
	[{'description': 'phy reset'}, {'description': 'cfg reset'}] is too short
	False schema does not allow 2
	1 was expected
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:1:then:properties:clocks: {'minItems': 2, 'maxItems': 2, 'items': [{'description': 'pcie pipe clock'}, {'description': 'pcie ahb clock'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:1:then:properties:clocks: 'oneOf' conditional failed, one must be fixed:
	[{'description': 'pcie pipe clock'}, {'description': 'pcie ahb clock'}] is too long
	[{'description': 'pcie pipe clock'}, {'description': 'pcie ahb clock'}] is too short
	False schema does not allow 2
	1 was expected
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:1:then:properties:resets: {'minItems': 3, 'maxItems': 3, 'items': [{'description': 'phy reset'}, {'description': 'ahb reset'}, {'description': 'cfg reset'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml: allOf:1:then:properties:resets: 'oneOf' conditional failed, one must be fixed:
	[{'description': 'phy reset'}, {'description': 'ahb reset'}, {'description': 'cfg reset'}] is too long
	[{'description': 'phy reset'}, {'description': 'ahb reset'}, {'description': 'cfg reset'}] is too short
	False schema does not allow 3
	1 was expected
	3 is greater than the maximum of 2
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250321-ipq5018-pcie-v5-1-aae2caa1f418@outlook.com

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
