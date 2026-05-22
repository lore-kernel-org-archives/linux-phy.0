Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB1DCD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 16:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qAXV26nw9Kjf8XEvzH/lyhmhYobWp4tNT9MfMCcQBvQ=; b=J9uAhd4PB1FRRXsqm6tsSzHkvT
	uNwPb1LMa/w7o/jA5GEdyamsfm2HGFPF0Ih93R56M5FefzQaUbdUGuc0/QYbo5i2QKYq5jnzn+TAe
	FxD/Qr1v7VeIOLnlI7V1KeeuBuhHhYn0sksgFjjWTZZPryzZDBH3tnR017rYLe5U+pFrz1LB4bLVK
	dS+UoQ3kATMd92MSqIiGjdVVXGYG6nvs8L6OqOIX5JI97hj7aZmUrTZXcEVA4hfnONbCXeh1Y1FsE
	3nTWp2wQmqMElMZVx5JeYHqg7OOO9a/ApuH6MEQdcxkxhFBDDFpBbHKudf7m8fFcJPoCA3MmYzGru
	Vv1DlRqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQT3i-0000000BT0j-0d2Y;
	Fri, 22 May 2026 16:49:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQT3g-0000000BT0X-0U90
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 16:49:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 503E460138;
	Fri, 22 May 2026 16:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE4BB1F000E9;
	Fri, 22 May 2026 16:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779468551;
	bh=ug9eZQIFNypiqZgKpBIekjie2y0vmg+wE3aUAtX412Y=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=MbZy6fAy++HVsaBlZHx0t1kgW6LLk6tuuFn08+R2GoPkUYN16f5gsaWORYACAXjaP
	 Wk9ypySt/3+LkNZ3EJjM0ikhyLL01jJuGTggrBlQm8qSDs4HPdEzhJAVp6OKFRnrXC
	 aZZkqmPfnx7jBEu0VOkLP/Aibe+2/I7JBJIsLRWhc0EhQd2nI0hzgeBpDElgx+lukJ
	 wDyhptwqtDAqUlpKYJ6vVszAw7ixUtWL3fbF3w8x0O+Jwm0UI4HDHfM+Pw2ODDjr5W
	 rl6+iCt0gOy283aT6a4z+eSXJpL0raUXO1wE37IeEP0uFAYWWQFsJuyAOY+D5Tv0iX
	 R2htSe+Vxw0ww==
Date: Fri, 22 May 2026 11:49:10 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Bryan O'Donoghue <bod@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
References: <20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org>
 <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
Message-Id: <177946855028.3571140.11988520251406266072.robh@kernel.org>
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
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


On Fri, 22 May 2026 15:45:09 +0100, Bryan O'Donoghue wrote:
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
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 208 +++++++++++++++++++++
>  1 file changed, 208 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@0: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@1: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@2: Missing additionalProperties/unevaluatedProperties constraint
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.example.dtb: csiphy@ace4000 (qcom,x1e80100-csi2-phy): ports:port@2:endpoint: Unevaluated properties are not allowed ('clock-lanes', 'data-lanes' were unexpected)
	from schema $id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org

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
