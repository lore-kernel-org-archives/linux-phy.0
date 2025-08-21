Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD448CA0EFC
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 00:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebfobPy4CFeoxdpoM8exIFXPk5632hCwdndl7s5Qd7E=; b=UvtR6CKMt2wtXz
	jubNT4ic0angoVzn/EhescUuocATVKm2NurSQqKi7cYR0xW+OQqQ3K9MB5MglnRBGUj8SFB+Y4/K/
	ApmHeLG0D7gg7YC4VRmLu5u297h+rJCLfxS8t3YcbU27yHfuCJeUE3gNf56sknp4FXYirFB8aY3Bk
	zW8X5wL1mXanJnceLvvhIMGN8KUzwQPtZhCf5TFrSNdED6FR8MyReUl/Y5+CxwY/z0od94btEAeBB
	Sz2v/UhZtytQQ9Z5isJabPqUx3V1Kz+Ddr6uYP1mxpahxhYuubeL+6bv6Dvez1kCiANY8SAJJdbK3
	xmxc8znBJmzoOAqvNURA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upFcS-000000011Uw-2IQy;
	Fri, 22 Aug 2025 00:27:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBH9-00000000LO3-3OrN
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 19:48:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 53EEA5C658B;
	Thu, 21 Aug 2025 19:48:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDAD8C4CEEB;
	Thu, 21 Aug 2025 19:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755805723;
	bh=WEIIKeLrop4poqHTNKV2qrFN5V55F44pNdz+Gf7fIfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GEsgulqWjTPKiElNvYm/ryWR1n55vykIkBV3hLHpuxBVOngtQxXjss1YX/9CQZTuR
	 +NVgjS5P4U5z54A1h8AkASFKymPTRoj2CjUtTsZmCrhhn2vc62qMpoIfKMoWNlIb6a
	 iaaXgfRtEFV5QY+Cov9+IrBB8Ytovl0sMjLXfHRJuX9hnG56c0QENCQ+o5diIvFqyQ
	 AsPU9swFD6+Z9o1TNIMEoVH9wo+mdLGg3S06B7yXscu/CJa/ak1dvT4oPePcqEk6MN
	 EjFZoyHnWrHFEGqGReqPn1ynU5B5g2uBqwY0vnnouffpn/z3wtysM7C8B+VfRYjd/q
	 pVWtM/QF0OHgQ==
Date: Thu, 21 Aug 2025 14:48:42 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, qiang.yu@oss.qualcomm.com
Subject: Re: [PATCH v2 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <175580571576.471370.10486560769596957109.robh@kernel.org>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-2-cd516784ef20@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-2-cd516784ef20@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_124843_885887_005CF3E1 
X-CRM114-Status: GOOD (  13.34  )
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


On Thu, 21 Aug 2025 02:44:29 -0700, Wenbin Yao wrote:
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


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Rob Herring (Arm) <robh@kernel.org>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
