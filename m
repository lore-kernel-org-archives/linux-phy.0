Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF32FC9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfa1t+u2fviZ0qSj9xI19b79wDQgY/lioa/0QUlvqN8=; b=fabPfUDw4HAMDH
	CQFosm/UMUka9uym18xBdnj/9Nc0A/487lRARx74lk1qKmKyYWi4kbmA2h0xGJlZtUvGaIiEOQrIC
	xhmgRg2vM7zog6tX2gRy75NKsFi5n0fv7v571m8seSTBI7Fv91bbYdPsLHqY35NlIraoT3cvXnuHU
	Vv9/oy66BfY9y+rTOakBF/YdYs3l8yD1GQobhg3LYa8yFFlZ4NrWwHKjTyKlz8pBukBPPachuE/g0
	d19PbW27mTM7gMsTyRGtjBTg2iZ32EEd84LCiCkubj3aG2cGKomU2qC3qEAxTJuC3xQsXDWsZeP1t
	xeNWRbMInclSLrkrbl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5he-0000000DPHd-2B71;
	Fri, 25 Sep 2026 13:11:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5hd-0000000DPHX-2p6O
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:11:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 23B6141570;
	Fri, 25 Sep 2026 13:11:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 404361F000FF;
	Fri, 25 Sep 2026 13:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790341861;
	bh=BB+RBucDn7drafKRirY+tsjOIqaMLesM5kPeSmCd7Ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XGDWvzUz5K7sPSuNwzw/BAgvYQUFyLAagTEKLuLXafBAuYKXiXsSVDgsFU57wslfG
	 6mHKbUEirDLfW+s/HU0+Ed92AOIsp/ezcuUvnwb5+UWWk0h3c2hG55RHLc+ZaAKUsx
	 82kXvNsvImo3Jqqg4vq8elG+OTSJU/RzHX6/hRdFF9I7exrq48mzAmw59u8T5eE+Sv
	 tDDiycX9zsJKK8AexpuXZ1/H9pVFHCyEz7NAlPGRb3qjxq8NOQmjjnzBMNjHx95Hvf
	 Fk1q7+wKkRCcjWzYMElSrJxGDHYrqHup0A7oLF1l0nFwFFVu8HOhmPUQvxusgwLI4D
	 zeVclsXl5v9BA==
Date: Fri, 25 Sep 2026 15:10:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
Message-ID: <20260925-nocturnal-voracious-lobster-3de6ea@quoll>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-1-63c5282fb0db@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-monaco_ep-v1-1-63c5282fb0db@oss.qualcomm.com>
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

On Mon, Sep 21, 2026 at 04:28:12PM +0530, Krishna Chaitanya Chundru wrote:
> The QCS8300 16 GT/s x4 QMP PCIe PHY was previously described using only
> the qcom,sa8775p-qmp-gen4x4-pcie-phy compatible, since no QCS8300-specific
> compatible existed for this PHY. This was a mistake, as it left the PHY
> undocumented as QCS8300 hardware and indistinguishable from SA8775P in
> the binding.
> 
> Correct this by documenting a dedicated
> "qcom,qcs8300-qmp-gen4x4-pcie-phy" compatible, with
> "qcom,sa8775p-qmp-gen4x4-pcie-phy" listed as its fallback compatible.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
