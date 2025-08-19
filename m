Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51CFECA0EED
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 22:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQCr+ZYQKNt3/jv6+4ioyfy+SOoDLvfMtTIzuJnXkww=; b=5AerSEGywSg6r0
	CvguiG99BTV0l6XYJLI+Ie7LuBoDzu3jMIxDX/z/ylcKBUjBIaiAJaNibENlcRepCjDGkVdBWMz2n
	9/cO+nTaBBfaMS3ThjVG1T+dVnqnKxzVznsVi5Ofg9926Llqw2zQyYMxOMYQtzsjRmTAWG4nR6Mgh
	zWWE7A2qefGVLJNhkSzEIu6ss7QnNKfAmFkDN+m+gxUpTVCGhdeggwjd+tDJjCX01AlrWaexPpETM
	XexOJHzx9M7EGeZRgyDx3orUcvFa6Pnd87QdMvAHJMs/qexrbcQIrBSCoRLgjMXqWyJWHuy+WNMix
	445o6vY+wM2KXFKqJF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoV1m-0000000Bkb9-444i;
	Tue, 19 Aug 2025 22:42:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoSEd-0000000BS1K-2uJz
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 19:43:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D95E75C65E9;
	Tue, 19 Aug 2025 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CC32C4CEF1;
	Tue, 19 Aug 2025 19:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755632586;
	bh=hpVYCvr3sp/UhOyLy0NHGA6743GbDhSFoi4n5LnbXnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HrF+OeY3Q0Wuhu4Ib2pqKGC5IcRp5yFKCii4EknYwRyz4YLiEvJdkCIV82xLXi+Fu
	 sILJlegZSZy1J0/+EqflzewRlVo3PtEvhHQ4/VeS6FrGJsSSDLUyG/2qBAgQ1TEizm
	 jF2baLgI7n2I5LEf8eLxG4gfzrRG/9SNmRy+ETSilaVBM6+SnIvu9OVgpljMc3D6P9
	 wTnOFUSWnz7NKGoOX5lB1f1Gl6SmNpU6tkVeGnhmwWP73SzeZUj9Qm6cEo2IaM+rfY
	 stL1oVvn7RDkk/Qur0UYgCUf6VXvBx3LkyRs2sSyZ0K4NC5XQa1okQt1Jk4mPV61wB
	 qrdLlizNmEDWQ==
Date: Tue, 19 Aug 2025 14:43:05 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	konrad.dybcio@oss.qualcomm.com,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pci@vger.kernel.org,
	qiang.yu@oss.qualcomm.com,
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <175563258518.1214404.14197292755881169254.robh@kernel.org>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_124307_773368_3C2313CC 
X-CRM114-Status: GOOD (  10.79  )
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

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
