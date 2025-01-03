Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57749E77188
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 07:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bYWHhTc2loLAH3apeaMWhdvvTbHkh33yYWROGVukV4=; b=BPnH7mfwN8IxQZ
	1ayG2NEk0NoL4Imm0DL7+rHEi+TOs4YMPraj7uZJaAF1lmfGmT93QK+oEI8UegbeSiPQlvgCIooga
	2ldISbz4b/MXXSgvMpkmvYVEnLaAZnz5RYToKmtbBv9AwKPixA+om8Nb2cuONYqCjGqQRPbBzoEeo
	RyvQhp/rjDsk8ucNAUxOb9LQ89GEiSye7/ykz/VE66xSRotUZxPZ4GJ7rk3VP399DcZXbGbwhZbEY
	w45jVVkG3rFt0c0Wq+SFyyv1YDXgm+9sB8jk3zuyHTdKkFhEw7HEjCf63yJNq3XC4m2U+8a4zOtK8
	TGACPQMHve2jDQzrlJKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcMz-0000000COKd-0Wdo;
	Fri, 03 Jan 2025 07:45:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcMx-0000000COKC-0CEk
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 07:45:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 021FD5C6123;
	Fri,  3 Jan 2025 07:44:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D881C4CECE;
	Fri,  3 Jan 2025 07:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890318;
	bh=aMmPzVen99cj6Sv2ngxr71M0gY35RED8D5Y2iY5FFaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=el1WDEGFF6V8HbGVbRFtOWv6xz7bue4TdfvCuEmgxJwO9ZlyVOMHQ0nNyMC+ETmHo
	 vgl+LhYbltmGtC/4AoRyPcIMVte0dEmsAmBB4hvKFDFRoQnFdeSzzRdnYaPBLOJgNJ
	 PBmog2d+bwiYR8HL3TqvJtTDpTcCr1PVgKXUeg4r1qdnkTkIzohIVuLNaxX61C3mSf
	 jYCYJOPTKuQepq+B576JLvzjXjzacNbOXRLj9y7ZF7QDBG10jkR0U9yPv6wQglMzyp
	 bByJNmA4eQMPQEmsmUGvs8viMREURruV1SMFNrqlQdUPiTQKWGRWwz1TBF8Z4h8tTh
	 b0cZnnbGftWnQ==
Date: Fri, 3 Jan 2025 08:45:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 3/5] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <4hwclzotaowog6rzfejiixqvvg7iumg4udbvq3h72mmh42dbki@piphsf37vhpv>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_234519_133632_F7DEFE63 
X-CRM114-Status: GOOD (  13.96  )
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

On Thu, Jan 02, 2025 at 05:00:17PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts

What? How this is related to commit msg?

> 
> v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
>     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
>       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
>       and dt_binding_check flag errors.
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index bd87f6b49d68..9f37eca1ce0d 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -26,7 +26,6 @@ properties:
>            - qcom,pcie-ipq8064-v2
>            - qcom,pcie-ipq8074
>            - qcom,pcie-ipq8074-gen3
> -          - qcom,pcie-ipq9574

I don't understand this change at all and your commit msg explains
here nothing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
