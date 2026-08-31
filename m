Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730FFC61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 08:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+Y8sUVhb6UTpB0ylbVrfpcYmk8D8xi58Du7WocrN14=; b=pUoV2k1DEHcFHL
	x3wl/NDIEHVJyWyrGNHjNbBzJNNZkjIt25Ob2M5sM8MpFc4JdXqLadh7aHlkRDG3ZbA+ycpfL6C85
	vy+xCunO98oWhYHVqlWlyuv/kBi3GUDA1uOob/2M+EUSJ+qA1eI2+l554YmB04iihrznMsdigL8cI
	zLdaiGpC9IgjqSEKp6g7zYudN0qbEMbrKsb9ZXWBrE2nULjgFuk7kcZuY43Z6nMJIzfOsxoAlkJiJ
	Daawp6W23m7VErlDtECyNvDXidLTakpTraDp1wnJ8u3NUOszwmHlvSQ6m85hjYaO0TNkC62VllWRc
	SAx5BhGmNti3N20gmyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xci-00000008vyK-0kqG;
	Mon, 31 Aug 2026 08:44:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xcg-00000008vy9-3ZfU
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 08:44:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5717F41204;
	Mon, 31 Aug 2026 08:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 841D31F000E9;
	Mon, 31 Aug 2026 08:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788165850;
	bh=H1RgWhyTfBxEvx3kHkEet9cSR5ERPAF0r/ewZQk2l+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mFANuf6aC7FSqHRlkgdVvsUh3kaDEzddY/ZsVk5Tp6RaLZe7k8m1+a/AUux8i0l3I
	 I6DnI5VkUJ52e5sbLk4cM2Uj5mEf2ZkKbQV9BmNNbpeZNiCCdNZLRpcRlJ0LQfKWVd
	 a1ATBEwi9xL+4Bxmflh+3ajXshthvTQ8YZ16u1DqHFpNn3AyWnCAFbjLvFUW/cl79Z
	 21Rf+y8Mn1aEysBQ/8or5Z2HUeITicCnS5QMDNgVjUv2oa58s/JmhC7xZmdobN7AOo
	 iJQlP3rsUIDg3Q3Z8DNpu//dcVlRlxWQAxJWPV3Xf+qVsfOehH226mW9UmFRFZeAXL
	 gMolx8M25djhA==
Date: Mon, 31 Aug 2026 10:44:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
Message-ID: <20260831-labrador-of-extreme-prowess-d36ceb@quoll>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-2-18bf59d19d6f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-nord-v2-2-18bf59d19d6f@oss.qualcomm.com>
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

On Fri, Aug 28, 2026 at 02:13:36PM +0530, Krishna Chaitanya Chundru wrote:
> Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
> controller binding.
> 
> The Nord PCIe controller is compatible with the SA8775P PCIe
> controller implementation and reuses the same binding definition.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
