Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AEEFC36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEHWpWU0C2nNE9U87sfPl85WXyt+S5X6w4EiK3zwDPo=; b=nTPkfrMngeV6LA
	0uireo4rzB0gqScyF1FBbpY0LTMAshdhlibSI6oOR7Kpz2BuRYjb3D5ANf3HuXtePNQavvQSjRduo
	YVyPh27z0oJN1dEXAdygYeqs1eGEMR2yZKrD97AJqcDigMOyz/n9QgwwcKDd9SBPbhO/5NPpWiXQ6
	zUbH3DEc5Pax+slkheoYfSCU+s03u+bC4zdYUqWaRj7YWk1ylN6oK+of+BCi2J6W3eeMr3g/GloLA
	24pYLFooOmOUeXv3EbfEE5p49d4rG85UfqmXfPZa4/CO8UF2EqWPGqBViJv7vHzdE0ckNOaoXOO9h
	M/zCsvhCApPaB9KJptYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twcbZ-00000002V1N-0zwP;
	Mon, 24 Mar 2025 07:52:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twcZl-00000002UqO-3sMb
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:50:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 42B5143753;
	Mon, 24 Mar 2025 07:50:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85DDCC4CEDD;
	Mon, 24 Mar 2025 07:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742802625;
	bh=mCJVEVFLift9Eye+00vD3JluUEBLGyRiq6JmsMqAy80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SgJNRZslYyer7oKuYSsTjXGy1I4wrYapQgM6QroZKKtU744GwQt2AxYm2jlybjnTe
	 9LCAAaB7pbrysnlu63ECR6CCSo9G8Xc66PUniMWfpifID6HcJYm5RD60CSGqXld6b+
	 ozBBXRnuUcKzqFcATV5sMNGeiwuYuQhxidL+y50muiese0tAckpa/id3TEcw5oLoAI
	 RprEF96GKpzUKkNpjHnJcLlVzgSe6virir95NAmgRzx8IXZMLL7kx7EuwXW8ZIDE0b
	 VQfZMa4riUf9mhUDvQtOAQHYDpn5lOPVsMEwbXjyJlajOylPCQWENskA89z5S3Md1S
	 iP2xYpDuCF8WQ==
Date: Mon, 24 Mar 2025 08:50:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Message-ID: <20250324-knowing-vagabond-grebe-fa0a00@krzk-bin>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_005025_985422_B098EC6E 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

On Fri, Mar 21, 2025 at 04:14:41PM +0400, George Moussalem wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml         | 50 ++++++++++++++++++++++
>  1 file changed, 50 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
