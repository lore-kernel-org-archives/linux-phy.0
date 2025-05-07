Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22426C3ABC5
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 05:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjUMXfmwNsbD/hjcNJvrX6cZW/5cL7rdrLGsEXgbvao=; b=rYf2lssecZq6lU
	oRzTzbPmfTjR3LkfTgCIvxzNXTwbNlpiHSBdiVnXYB808DF6O5mqhzPPVbPeenRLd8XlvfzCqzTwb
	kqjvqc+DLGSBAS/b//9Z5jSaDGg7hYMIqh5B6MCxQ7yrDstRFapZOPWIh6REJQI6keQejnymYMpCz
	EW4n/mFbkuS1yxlvx8Ru5lQzLd222eOaXQWPumuLDCNjBAza1YCtLEO4Tbipa4rhGwbVzcyfXGZ3s
	4SNSUfp0/nccMc0/BZSvYtTtFAp+NaVjE0FPfNdd2TKsAoFjUOZeqsLd5F/KXjdfityQdgPVBdJDz
	ZPDyKOoMThrWDTlpeBsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX9i-0000000EFUk-3ihi;
	Wed, 07 May 2025 05:17:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX9b-0000000EFSN-3k1Z
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 05:17:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0BB8A5C45A6;
	Wed,  7 May 2025 05:14:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF4DC4CEE7;
	Wed,  7 May 2025 05:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746595030;
	bh=JG4V4RAp0WdhDOtz+o//0q+asbkWJORcl/Rb+VWLtiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=seliaUvN9Z007kdddm7xTLEOgyINOOv5PHzeJ1A04mDMv9KcSGhL9W1j4CJfaVyuk
	 yIgCpXyI+jdJMIS7xS/h27FTPrwnUNtLEMxQQ7VLP7M/roZaBmzHE/MAlQKtlzAQta
	 FVuOPA11Ryf8FI2QigV31gIN9DSd4gzMD3erXFmyylYdnu76n0Ol6WwqL62FQIBqhm
	 FEh9wyGD2SEqmXPZqx2dXeBKGmlraqMWjx4aPVPeL8sThmOGR+R4xbt0M4PkCUFtCi
	 VieIIfBB6A4Yjq65pj1qXPumjar8aE84zLC8EWJ6vkBvEATFpaZisHq5AfGKuUmtE8
	 ZhD2davJROOzg==
Date: Wed, 7 May 2025 07:17:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v4 2/5] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
Message-ID: <20250507-astute-realistic-ferret-bcdfce@kuoka>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031559.4085159-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_221711_972405_95510A4F 
X-CRM114-Status: UNSURE (   8.72  )
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

On Wed, May 07, 2025 at 11:15:56AM GMT, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> Due to qcs615's clock-names do not match any of the existing
> dt-bindings, a new compatible for qcs615 is needed.

Other bindings for QCS615 were not finished, so I have doubts this is
done as well. Send your bindings once you finish them.

...

> +properties:
> +  compatible:
> +    const: qcom,qcs615-pcie
> +
> +  reg:
> +    minItems: 6
> +    maxItems: 6
> +
> +  reg-names:
> +    items:
> +      - const: parf # Qualcomm specific registers
> +      - const: dbi # DesignWare PCIe registers
> +      - const: elbi # External local bus interface registers
> +      - const: atu # ATU address space
> +      - const: config # PCIe configuration space
> +      - const: mhi # MHI registers
> +
> +  clocks:
> +    minItems: 5

Drop or use correct value - 6. I don't understand why this changed and
nothing in changelog explains this.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
