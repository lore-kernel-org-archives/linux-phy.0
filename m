Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E113109E53E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 02:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UvGPUIbfsM806dbIOjBikWaSwnQ5Bj/G4QB8W1tdKC8=; b=LLRoESAnoSabSM0x3zkqUZ3C6t
	oDiup/vSG4aWiVvljTb2FZxnSBma+ZmPG+uiDgyB7jzK1pasZvjw8yN35d5Z8sIpdKM+SgqE1ZBKd
	U1Z9SRIq3vYfDEC6jkUetLCJ4tZvpbsDXtXQD6Fq2kFtil4Tkk5IlufYfOvRhy7w1G7JoW0jCbf/P
	88najM0Csd5Z/0eu5kdVkH0rZ9MksKf+sjQmmynif8NPrcHtZvvv0NR9zIc2H+syqF0WQgyUhcZ1Z
	gxaPdHoZtZhDaH/RI+FQu7mPU80PHCuz0ZlrO2d1aiF9neVFhP61U8JCuAEzF4xWNJcfAYPf67Bz/
	ty2KTG0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5aVa-00000004aJH-2C1a;
	Thu, 26 Mar 2026 02:31:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5aVW-00000004aId-02Dn
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 02:31:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A12C40DD1;
	Thu, 26 Mar 2026 02:31:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12DEAC4CEF7;
	Thu, 26 Mar 2026 02:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774492295;
	bh=fZ5Ox8MgveDlNeJ5Qnhm8xIqwTl76EwuPnJAF739cT4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=GGETqvg9wjsKSXPq/9HNyBPXhlVBIEMLicJfeoWiWIxCTaTM6WWzLobusAN4qjWqr
	 7iaVJYBXHUyRbib0WDJml/I0NhpXvtL2WBL2kqBGrEv37M2CXJrLNexX1TlrPBtGWu
	 N45mz8Rp3H+GPl0QKpBoR9ky8DLP1aSu6r3sDh0BYS21zVEar/Iw+/lA2TAynIoLQt
	 teRm8669zag2bC5lzDDA1uCQSlzI2UVoghsyP2ymqLfmGWCGcxM4gG23SLJSWllbp8
	 1vS2kVPznvG5LfH3TllIAUz8ShWZBkLX4LLAMU5Q8wsFxzn5ZcZwBxQcMCrV/SIbuW
	 dSvnIgey+0leg==
Date: Wed, 25 Mar 2026 21:31:32 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 linux-media@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
Message-Id: <177449229278.811310.4497727247818461318.robh@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_193138_109862_64F9C049 
X-CRM114-Status: GOOD (  16.35  )
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


On Thu, 26 Mar 2026 01:04:43 +0000, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
> capture those modes as:
> 
> - PHY_QCOM_CSI2_MODE_DPHY
> - PHY_QCOM_CSI2_MODE_CPHY
> - PHY_QCOM_CSI2_MODE_SPLIT_DPHY
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
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 130 +++++++++++++++++++++
>  include/dt-bindings/phy/phy-qcom-mipi-csi2.h       |  15 +++
>  2 files changed, 145 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.example.dts:75.21-77.11: Warning (unit_address_vs_reg): /example-0/isp@acb7000: node has a unit name, but no reg or ranges property

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org

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
