Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA51E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkTyAsVnToX0gfg7xkdGGJA7ki/6nfBSUPL9RiIeLiU=; b=mVJUg5Yw7h+UYR
	/kYSQ3su6lljMgpZX/uGDcx8dlGVqyVTCkIE44A1xBiJDg4/HaZVV5tkUf/WrAXXknhLYr6t3YfrY
	Z02nTdj4iLsMQUyd2Gd3M5CuX6vVB45TKRc5rs9ICEoPVcHp+uzyg/fYlHrlrQipKdZMSq71q2v1W
	JZ4Q6E6BB498Hy8bJlY6E0soWSlBk44CqBaVvZGwUW5CU6hrY0w9l1MG+2KKVyZY40+9OTY+Tj+kS
	BRDNORlzpRduwOcQsGB6vNxPaBJHetOCwie/9OAildwUcu5XKJvK98cQ+g7kEVKXAUsAeRUvc7kWZ
	1sXBPWZHYW9hwSX9eJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5Ln-0000000HKeF-3rda;
	Fri, 27 Dec 2024 08:05:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5Ll-0000000HKdn-1j1T
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:05:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CC376A41298;
	Fri, 27 Dec 2024 08:03:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E4B7C4CED2;
	Fri, 27 Dec 2024 08:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735286736;
	bh=zpeDIwumBH9adCAX9/ugP0JbjTLYj3GZUQ9OpTyGp5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LL0qSBjL4xJNZ0ECZqV7DyXdbvQ2pRrhuTvltL1RudTqzEOOssvsXzkEDgZyUt0CZ
	 DW9DUSaE4RmYqpgz3CrSneCUjTxXy49fLTxL389Sa0eSpKg2QHj9yVtAcU7bfOzJyS
	 lScFGfITnndDJgWpkhHiLw66GZ+hHIyRleVnloNFwUEXW4wPqTiAK3+Y2MNueA5SZt
	 CqlZxaoCnVAbPR5+JwAkx8B1L8yvc9AE7vig2jQFbGcKcBk6YN8CwKtHKCUgnsTZcQ
	 MAxbGsg5vVJEvDSvnkT3QFcrXMy99LOQeV7XSg6Xwx2jL5jgXG/IMC36nPmXxaTkii
	 tBCydMJbX7yAQ==
Date: Fri, 27 Dec 2024 09:05:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <s2tdxcpmgvxhcne6go23p5qdwra37adl3igz6w37n6espbe77s@bc25jxnwxgt6>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226102432.3193366-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_000537_513979_6B7CC549 
X-CRM114-Status: UNSURE (   5.89  )
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

On Thu, Dec 26, 2024 at 03:54:28PM +0530, Varadarajan Narayanan wrote:
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


These do not look like separate devices. Why num-lanes property cannot
be used?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
