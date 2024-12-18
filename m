Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD91E77187
	for <linux-phy@archiver.kernel.org>; Wed, 18 Dec 2024 10:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBe4W9lo72MunrgSrstCF3SXhqBPKx2PaaMiwGzymIY=; b=AN50vrRWjyNUp6
	E3ydV1ewyMbwXyZp84T12nVUzSVGzFU8vfqWyddNQS6c0055lsHu5PUHkwCvVMOamQ99vjd6+uAmU
	9YoMjADPVocs2pPxFfMDSwP+ODypqAp/O6b5g3seh5GjWGxytz9oG1/gihktZfBFErsFiUdEE3QXj
	1f8fleUYEME3a8vTAKVHg1YR2qXTnLpnrh7EcBm6hhUuAC9BbcFDucRHwqhuuj/oRTsr97FaRRti3
	8xLvLXQwr2W08pKedC78dLp5YQ1G2FjfWHbCUhblA8r8EOwfs9FD4G5Z/9OR3GAwU2CVmuMg0SvLG
	pd0CZ3S/JKeP9wrh5KvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNrI3-0000000GGAM-3Upp;
	Wed, 18 Dec 2024 10:28:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNrI2-0000000GGA8-45Wc
	for linux-phy@bombadil.infradead.org;
	Wed, 18 Dec 2024 10:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=hD3zywQMQ7JdY8V2JnK0a4J9xe+mYdsRUqbUFNKf1o0=; b=BXGOHumezl+8x2v3psYVDt8Y/C
	MJKMd2PIiYLz4PC1dKvVSvjwMuK1uc6SHmMIB+y5Fi9j+pSXEFLFkpKOeyLZ/56sMeDFbtJ+SFhzs
	828EeM7RIL2ADNRri8F/UVzQfg3RqqPZLWExWgqd1cvPqDf1pE4sz9ox8zqNPgDSncksLlvQ/KaYh
	LrFFNYHpOFozy9sdkKy40CoMjWFhFeqfkF8PFfBjIqoRTa9WM3JPdKPCZjGtYYizXqGss7R4JF3dm
	yMg1Xgnr35IYdxtss3mSUamgOSNczjbciNrGzvXUZK9HIkM/FG2vKNpkB6cBSqdAyK/+fBCQVT4nb
	PtzBGRpg==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNrHz-00000005EsO-3HqZ
	for linux-phy@lists.infradead.org;
	Wed, 18 Dec 2024 10:28:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9A226A42586;
	Wed, 18 Dec 2024 10:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45A7EC4CEDE;
	Wed, 18 Dec 2024 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734517700;
	bh=ZyNEU8QU2txiWxFgL+CfpQh+6WZpOy7/8BMkAj3HqDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YgycJBKNg4T2v+Y4Htiiso4uOPnn6obIjcqs4DxZAqjeuxZS6JdfZcyOE0NN7KKyj
	 Ni3+dJ/MdOe7KK/t4WRmATJ6RGShXbclE8erM2+AmqwrdSrAM/S2VKJIQ1bf/yblwd
	 J+HdEEVq5gUIncG6CFklUGzHVHfthQ4vUiMekuNhmuHdRWQOFeTCOKCpO7ksO2kxDv
	 RtSU4xsUId6tCiTdmrOxdEXqf2PFf3SAvjnbt2XyoEFJZs1J2F9vT6W8Nk58ZfL/4f
	 eTEiWs1h7AY94CeLmCwvmCJSX/AK/4d3Exn/fON3PLNKzNcg3M45LJ+QZDgYUhGL1g
	 lzSs4DAQh3DOQ==
Date: Wed, 18 Dec 2024 11:28:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <nhzbr4knneo5k3zxvjy2ozx6ciqg2hivwyr2qxdld2x63vlzeb@mjrlqeqiykzp>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217100359.4017214-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_102824_090912_6B61BDC4 
X-CRM114-Status: GOOD (  18.07  )
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

On Tue, Dec 17, 2024 at 03:33:55PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5332.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Fix compatible string to be similar to other phys and rename file accordingly
>     Fix clocks minItems -> maxItems

I think there was just one clock, so you increased it to two.

>     Change one of the maintainer from Sricharan to Varadarajan
> 
> v2: Rename the file to match the compatible
>     Drop 'driver' from title
>     Dropped 'clock-names'
>     Fixed 'reset-names'
> --
>  .../phy/qcom,ipq5332-uniphy-pcie-phy.yaml     | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
> new file mode 100644
> index 000000000000..0634d4fb85d1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-uniphy-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm UNIPHY PCIe 28LP PHY
> +
> +maintainers:
> +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> +
> +description:
> +  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5332-uniphy-gen3x1-pcie-phy
> +      - qcom,ipq5332-uniphy-gen3x2-pcie-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2

I should have been more specific last time, but I assumed you will take
other bindings as example.  well, so now proper review: you need to list
tiems.

> +
> +  resets:
> +    minItems: 2
> +    maxItems: 3

No answer to my previous question. Question stands.

> +
> +  reset-names:
> +    minItems: 2
> +    items:
> +      - const: phy
> +      - const: phy_ahb
> +      - const: phy_cfg
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - reset-names
> +  - clocks

Keep the same order as in properties block.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
