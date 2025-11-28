Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2344CFD376
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 12:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cak4ZRDvJr/l85Nvg7X2hSVnmfsJPufHAiF60BZ+G8U=; b=keBZ/B/euhiPQovn9rkEqX19Xr
	A3NrGVGSuMABtYNw4ViMFZiaCiOW2/Ww2v8lfmhBwQou9X1fbuxaJXqxBoE4iI8D+E50N1qnkEVTw
	UMTEml1AGxYeF00pat/qAZFKiFBZ3SI4GfYhQE45upnj1gF10UJ3/SXijhDh8ShliJlckXdVROOsJ
	jVtVVaq0Lvzv/BEYsqpSRcQSi4HciXzRJF653mSUzZnJn1y33QfCmCdxXIPuAFFngU5EJLAtdxsY3
	7NLpThRreDH8sRPgUA/0w0IAlPzz1YoUGXoK1zj0kRTMDOmMq35dOgI+jqnBqaOxdX6LjVPI+H4rf
	iSZVnEfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxR8-00000000Q8d-1OZy;
	Fri, 28 Nov 2025 12:18:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxR6-00000000Q8V-3rUc
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 12:18:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0500C60154;
	Fri, 28 Nov 2025 12:18:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A5BEC4CEF1;
	Fri, 28 Nov 2025 12:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764332331;
	bh=gwDTvuVEHdwL5CUTLbeq4biMUroLNJCpGrbaPQOlfCw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=PoU05y5ysXu2aV9aWhr1Z4El4WoOUqFX1MQqkEQWpgWfHFWJOqq/slmGgmMeUnH6j
	 nLOwi8Q9sRIvjV9BuIIQY/74a4ck2fWuhC5G/cgHrnTYUTJoWA84N1T1HdiTFH4481
	 MMUZSWc1h1l1hqzjsyW6KoBZhPVa3versw2HZIYdXV9q+q3kOILLH0xp4sqnAI91J4
	 KTdwcjQj1yWfeR3v43Unr5iw64TJCy3JIRsCFw5LpP/Pxn2HZ4KjB6SB5X+jtHfyRr
	 1ullpmvw84BUX9JhGzj4KuFEOsyWlMtYER5gJHW5O4+FdXwg5n+p+oJzgUnc1+i+sW
	 I9BoXVDAngGeA==
Date: Fri, 28 Nov 2025 06:18:49 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, andersson@kernel.org, 
 devicetree@vger.kernel.org, abel.vesa@linaro.org, 
 linux-arm-msm@vger.kernel.org, quic_krichai@quicinc.com, 
 qiang.yu@oss.qualcomm.com, bhelgaas@google.com, kishon@kernel.org, 
 mani@kernel.org, quic_vbadigan@quicinc.com, johan+linaro@kernel.org, 
 kwilczynski@kernel.org, jingoohan1@gmail.com, krzk+dt@kernel.org, 
 neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, 
 lpieralisi@kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, konradybcio@kernel.org, kw@linux.com
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20251128104928.4070050-2-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
 <20251128104928.4070050-2-ziyue.zhang@oss.qualcomm.com>
Message-Id: <176433232993.1873037.5014618389839995125.robh@kernel.org>
Subject: Re: [PATCH v15 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
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


On Fri, 28 Nov 2025 18:49:23 +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.
> 
> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 17 ++---------------
>  1 file changed, 2 insertions(+), 15 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251128104928.4070050-2-ziyue.zhang@oss.qualcomm.com

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
