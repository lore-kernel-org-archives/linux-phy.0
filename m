Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D2DAC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 10:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HD+gpcGkif68PZ5BdSC8UPrd20LEn9OuiW999uzPz54=; b=lW8ezgpd0zE0Nm
	enDMiF2fFhwvi+Gt7qGthq+9sJepdiaumqwv87zbeM8deJZvbw0kAipB33qe0RCr5+L2iCQ+MtJIx
	2BJKbnLqUVknlW3r5KN8pch1l+FRlMgqjaZlaZeHU2rRVUumDywuOQEMZnlorCU77LfDs/ipGvrBB
	2dpy6Z5AMl2U0xbwTDKlLXdHCuXzRUvSgq1IZECv5uhOzVvofXtuusBG5JQw/mbj1F0XMBfFmTlDx
	EKeAAJmlN+hAHw9lHIxUkgrPytWBstIIreRm0I5Mj4/K+paraY+6DSlXDk826uxmsPehXmMXmw3CV
	G1oimfVIJdBa57xVsnjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3bl-00000001BgW-2twA;
	Wed, 30 Jul 2025 10:00:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3XL-00000001B4G-2IMu
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:55:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 52C4A4442B;
	Wed, 30 Jul 2025 09:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ABB0C4CEF5;
	Wed, 30 Jul 2025 09:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753869349;
	bh=FqV1olhUgft990I/oyZdVydA0AezeH5ltbHMVflBEyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VqjE9TQ0NooUsJykjVTLtlDpM2IjROOWmoZQeKXPI2UDXExgyqqZ37HESjkbJcp7j
	 XGX9xNfsJSfgsp+8c2hiVm3L6U+TRqizMEvf3rfBAZd/p6axkEBkt5gGFMkAedxrzU
	 v/xFtq5fLgRwLHOPdZ2Lf3Y1RwclrR5J4xkgC25w3owQGvFCuu25IKG6LnHoyAmnq0
	 bsJ7TA4QmeInt+0k90dNCkVg/XyJlzlAWMMfXzwNzkYPStpWjgUa7yJQLXfXOISryn
	 Arn5MIaGRb+N+RcXy5Ywc+ztAn0PHTIEjQHzD8U5YoqRskFvhRdK++1k7gtrQ64zC1
	 KiDwDcg+GGHSA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3XJ-000000006JN-3FwZ;
	Wed, 30 Jul 2025 11:55:49 +0200
Date: Wed, 30 Jul 2025 11:55:49 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v9 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aInsJbZSqgRYkB5x@hovoldconsulting.com>
References: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
 <20250725104037.4054070-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725104037.4054070-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_025551_606725_C875DBDB 
X-CRM114-Status: GOOD (  14.79  )
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

On Fri, Jul 25, 2025 at 06:40:33PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.
> 
> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml  | 15 +--------------
>  1 file changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index b6f140bf5b3b..e04d5940a498 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -65,7 +65,6 @@ properties:
>        - enum: [rchng, refgen]
>        - const: pipe
>        - const: pipediv2
> -      - const: phy_aux

Just realised that you forgot to update clocks: maxItems above, with
that fixed you can add my:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
