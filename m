Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACC95C9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8HYyPHhk/qveH3a448i09+Jp8Uakx/jvJx7ax/cIlI=; b=Swe15nAEhqnWTs
	jBLfJN3rtpjuhaPGXK+GU3ylZLmx6yy2iReSiu7vnArKbaJCWAw3QNDfhoz+k62sTHOgKxn5B09o3
	fcgmlXHKZT3+Cf6imJOi60XQkYxmTi4Kkp/jWpHIjTcMX+hJDisaB9FsF31aCloQBhJ3XMWhJshqW
	unccGUypv9WkaOiUtWtjzwLK88gDHcLLqlIbrW3CiqhBJ2ppq2iFNKBhsSG1HE1ojvNrKuv4xLTAV
	3zuDPHY+cLgxD/GhDhihLVLHTp3Cw2yEJzgWyzYn8D5sMhBBnKGWbZNove3HAzFia6Sg5a7X7xPua
	E7uOZpgDFuvwR83hCLEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5mi-0000000DPYR-1Xhh;
	Fri, 25 Sep 2026 13:16:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5mg-0000000DPY8-0dkZ
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:16:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6F92D60230;
	Fri, 25 Sep 2026 13:16:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29C601F00893;
	Fri, 25 Sep 2026 13:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790342173;
	bh=ZFewOo4+btBAk/SPPiDXihf8TjRThF1b6LAoGvmnSa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bPo8/T1wjVNsUZ7GVFtAQVrq3rFuFCgfmjkdxiFUc4G1hI7azTA0LmEJBQbT8q1/Q
	 Tj77zizFq4+xCAHSvFNelJRlc6ygL7WqH4SYEUNehJWYyUQqLZ1ufT2QLdi87w6XqW
	 ezj2B0aMF+hZRQ1oH6IIk2xMcZwCgooDO5xqRG90EVvi//mfcj8Xv+x5bYbhoWjyvI
	 aAZKo+4ZZSo3qrcq4CJ6/5OhDcOxZz0qjTd2iNMXgs5EVQvXOw/pwIBPhWcA1t0uAL
	 FrekanlSuto0sAAUFl2hGYG1q/+t8NVEK+7eUl8fZxyfMBaAZ+a1Sy7RpxD6JcO7cr
	 AqNLL+G1xyo4w==
Date: Fri, 25 Sep 2026 15:16:09 +0200
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
Subject: Re: [PATCH 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
Message-ID: <20260925-lavender-cicada-of-vitality-1784de@quoll>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-2-63c5282fb0db@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-monaco_ep-v1-2-63c5282fb0db@oss.qualcomm.com>
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

On Mon, Sep 21, 2026 at 04:28:13PM +0530, Krishna Chaitanya Chundru wrote:
> The QCS8300 PCIe Endpoint controller is compatible with the SA8775P
> PCIe Endpoint controller and uses the same programming model. Document
> the QCS8300 compatible string and its fallback to the SA8775P
> compatible.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index bed9a40b186b..7f9a0bc958d1 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -13,10 +13,15 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,qcs8300-pcie-ep

Drop, cannot be both compatible and incompatible.

>            - qcom,sa8775p-pcie-ep
>            - qcom,sar2130p-pcie-ep
>            - qcom,sdx55-pcie-ep
>            - qcom,sm8450-pcie-ep
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-pcie-ep
> +          - const: qcom,sa8775p-pcie-ep

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
