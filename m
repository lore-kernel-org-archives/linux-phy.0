Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6243CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 15:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AvAMaU7LCskHGLHrDL5iyoTUj8vOvXjD7WZtL6IxmQo=; b=np3VBYmx/iDXJWC0YZ4fY6adwG
	XnNexVaOncIKOYoUoLWI4iXI7Er2AqiGiDlrC6z+80SDA+NQuQwCSyZh+nFqXh+4SHU7d689v3iln
	8aQfzJ7bq4M8WtWC1Q6Vtr71596WYZGEuDX40H7OZlQln+v/inZW8VZN1IheygUHJr7b+mAGMeADg
	3IJlgW+zfkNF8WMMIS/AqigjiG6T53xeEqokBnpdb/io77BmV915aMjCTrdgnkqBzkHYYg+Rx7uNk
	Boy6qI3t8bZgI+yVyRz95XJPXPY+dfRNmmbtialObCrT3GUnyBT2Zo7JbGUd4CGgyTwPilBIM1lt7
	BXXROWCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoOCY-0000000At02-22q3;
	Tue, 19 Aug 2025 15:24:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLVs-0000000ARas-1uQh
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 12:32:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 25009462D3;
	Tue, 19 Aug 2025 12:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAB60C4CEF1;
	Tue, 19 Aug 2025 12:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755606748;
	bh=AW3nkhwvENrqUTmWgqTETJ2cofqdIM0bMSih3AfLtY4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Ue6MIP5I7QWsWMRSgbYR7pvkld+A/Jw07jpjDEPHvPpJ8YJ09qEyTKhXa/s4dpcmL
	 awq5yrzFh6efFyKSVQrzYe68L7sxyaN47ybljYdiryvjPs1wrosHczLU2jiGuHOtYu
	 7WjEpQKRgYCbukAA0PfYU4liAH3h3kN7FVnTrtZvNQL6m2J/6enKNolPkM9HTga8lg
	 yewIi2b6oHK5nd8GuA+JaW5vIf7zs8S2QnhNzCoazTfBN5VsqohKBo3QzdboGhrDAa
	 KpKWjOKgSXAPz3d73A3HFpFKz3akDNwPDIibQYpq7VCGGT1L+0s+mq4bcC+49xYwib
	 gKAHPFG5supmw==
Date: Tue, 19 Aug 2025 07:32:27 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, konrad.dybcio@oss.qualcomm.com, 
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, qiang.yu@oss.qualcomm.com, 
 linux-kernel@vger.kernel.org
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
Message-Id: <175560674407.26155.2834845935745858066.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_053228_511523_0F538D8C 
X-CRM114-Status: GOOD (  12.37  )
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


On Tue, 19 Aug 2025 02:52:06 -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
> controller present on the X1E80100 platform. So document the PCIe
> controllers found on Glymur and use the X1E80100 compatible string as a
> fallback in the schema.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com

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
