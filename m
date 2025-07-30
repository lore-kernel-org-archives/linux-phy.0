Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3AE4C87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 14:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NHXbvRR0Ny9MkYxW4XpHUxSqAHDSUmSn6jOb4k9JjtU=; b=Hsy8rjBYTCCN7zKuFxf6LIe4wY
	5ptd7trjihQbpFLGh2UA9X8XsEl1L6CYKtZnDHqQyMxz/IimZ2fu2/vJZIcseSTzTuMTTuYJwyJ/j
	ebuytJ7Y/E58S9+H52wOc0Bdbg++EdgvkwOEFktwEKBP42QM2tWtA+HYGSXf8UmL5H3rTkrZrgtVY
	jgC5eVSr0+xr643fPs/bGsIlFuBUj65xygxX7MZSRdFyitWwf0+xGzMWqbQGmJUHZz8BudA9DaU1D
	qaJYD4j5OfVuwkaDeSwgp28D3rOv1U3jp9ORPQBPbQJKuaLzSNXxaXwjTQWw8vBFOCsu5e0D0/fuu
	A/jj/ksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh7pr-00000001kJz-1gBZ;
	Wed, 30 Jul 2025 14:31:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh7po-00000001kJQ-30PO
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 14:31:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2117F43730;
	Wed, 30 Jul 2025 14:31:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D27DDC4CEE3;
	Wed, 30 Jul 2025 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753885871;
	bh=Snch+KOVqe7Btb1kUNrEoTqutUb5jKG8E3w1pNm7imo=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=TVGZHb/A1l0YucqC2rUHutS0EqhFAxlfKKvTI2cliqg/+GY45+2JjV1JOlvSiVc/D
	 zYAC/AG+Q8tisWKqtZ8TMFZz7KJw1sMq3AuGddoFsUbEUlLwaw4k0nvgNBz4xIfK4I
	 mdd23JaSRBUjHBsCE7J1UTbSfZPOuEKxljaDQxvcN8IhbgF84iOHw3CM3osdoNNork
	 JihLPXAOI0oOtYxJs815xJaJWg+EdmEZK01/IRMDqPfYXbXygKetP9AX0rAX64/Ziw
	 WNwV/lKCqizWfTTHQE8nEsW78e8QeVZ+mXA0f9KzT1EwB792PsB4FxsoNURo1idq3l
	 PTNojLno1JosQ==
Date: Wed, 30 Jul 2025 09:31:10 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 stable@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org
To: Abel Vesa <abel.vesa@linaro.org>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-1-6f78afeadbcf@linaro.org>
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
 <20250730-phy-qcom-edp-add-missing-refclk-v1-1-6f78afeadbcf@linaro.org>
Message-Id: <175388587013.1443735.2833199363518772235.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_073112_796149_12836C86 
X-CRM114-Status: GOOD (  10.64  )
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


On Wed, 30 Jul 2025 14:46:48 +0300, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called
> refclk. Add it to the schema.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 23 +++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.example.dtb: phy@aec2a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.example.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,edp-phy.example.dtb: phy@aec2a00 (qcom,sc8180x-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250730-phy-qcom-edp-add-missing-refclk-v1-1-6f78afeadbcf@linaro.org

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
