Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE02CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yga42YRTQ33dPk8uShnXSgoRvh4fAMayrlb9Oyd8RZQ=; b=ZHs0We8Ia0l62RvXFL3y8uWUW3
	NICl7ruYMTg3+cSmQ2i152nder9mw+CKZONVcIlDQbhrmZaisPpcToDMDUB4DgKiK3KQ3H9XBzol6
	DBizFd5lnn+BAtThpprs1HIFErPH3+m9NfpegaEljXeuVCGfgaN2jMvKWjBnDg4nyLcwwytcvSxa3
	1Sdo5cOXzmHVqexCVdhY2AX3ujz0sWpuM79HdcQnqB4vqohydz6r8niJGCj266Zb9v3TbAiSmz30G
	bFG1xFZKlBKMpVegWdvkH0jieNzG7qtWFXac3Ce4MS7rScBCKPztJU9+yjK1NdXXyMN9/raT8xrjq
	TaAO3UKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ57s-00000008HF4-3CeM;
	Thu, 21 May 2026 15:15:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ57r-00000008HEN-1Xdz
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:15:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 63256601F3;
	Thu, 21 May 2026 15:15:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EED471F00A3B;
	Thu, 21 May 2026 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779376554;
	bh=6+hPFg766OszpUSn1xTNsvl7vipNukyxXO874O2maWg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=WH2q71/J6y0dFUjb7NBabK7U82iWvGQixkAmY0LxWgp3ltpqlgBBhXJD6QrjiWCvC
	 WDicWNNAvjRQ5HZhFPtlEqzBdgCRJeunIr5v99a38F7faeQwSM7j6qrEABeVtQn76A
	 aD04TSH7GhElThcrlErG3k+X8otgHzK836QoyPjDk6aWOnDTRGr4ePnTTMng4uw21/
	 GW9JPDLS0wod1oo3RwrSdRgI8e83q/hFjpLftRNkmZBjsu8i1sBPSr2IexAQqomzsM
	 nUhBuAhrJLZDE9v3Vgu/dYBHIU9vNwh9+HRY8WFKqT30AnEuf/8aEJ/SsB1Bg5Seky
	 bDnXphfoTyTHw==
Date: Thu, 21 May 2026 10:15:53 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bryan O'Donoghue <bod@kernel.org>, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
References: <20260521-x1e-csi2-phy-v6-0-9d73d9bd7d20@linaro.org>
 <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
Message-Id: <177937655318.1947776.1539787576186189902.robh@kernel.org>
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
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


On Thu, 21 May 2026 13:20:08 +0100, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
> 
> The schema here defines three ports:
> 
> port@0:
>     The first input port where a sensor is always required.
> 
> port@1:
>     A second optional input port which if present implies DPHY split-mode.
> 
> port@2:
>     A third always required output port which connects to the controller.
> 
> The CSIPHY devices have their own pinouts on the SoC as well as their own
> individual voltage rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 205 +++++++++++++++++++++
>  1 file changed, 205 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@0: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@1: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@2: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.example.dtb: csiphy@ace4000 (qcom,x1e80100-csi2-phy): ports:port@0:endpoint: 'data-lanes' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.example.dtb: csiphy@ace4000 (qcom,x1e80100-csi2-phy): ports:port@0:endpoint: 'clock-lanes' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org

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
