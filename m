Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA19E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AJJ9SKsTPjd/8Soru+TdQmU2axy1Cq0SSGOidiGXKM=; b=i7w4z6uxsRMMI9
	/3QmsnXrPcVXG4oGiUAF/f0iY1L21vse701H1KNzY32duVSrfYuaR8/H0JY9J2FPqdTpJ2GafpVbx
	QRtWawpUG9x+HBoJluSI+EyUWrBS2+1kqIwSKcSj8oTWtPruMXnD8H15ngcQ0RUnZTD3v6UTBEqyV
	tIB7DYJRwkDzktKzFeDgwE3OJxuEDXajkYaHf80zkQ2GlVmnW2GbS+a5FmbjMXbuPyIL+6/X2FXJX
	DNMHv657wnqYMNN49wB6ejOXP4XIlaz2tStSaRwa0E8u0A9DLE72XxhllebMWh+FabIj8RDYgoiIW
	9rEtN6aUEyGupiF/3IAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5KT-0000000HKSz-2Lfa;
	Fri, 27 Dec 2024 08:04:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5KR-0000000HKSZ-1ZQR
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C998EA411FB;
	Fri, 27 Dec 2024 08:02:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63DD4C4CED0;
	Fri, 27 Dec 2024 08:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735286654;
	bh=biCHUJ5+/8TVAXXt/3zdeR+eVLD02s5dFj+qLRU/u4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P+SShp0c8wwOpMs9hwz4VL+Rx6bWq5SN7auamJKsEb/6M3CmLkyVq9DWglwgTeApb
	 DG5e1B26DiUXIebY61Zn0KaZiMz10JbSSHRoM9vrhTkaR7pR2USQT8FRV29zNzDI6q
	 3WQRqNbOCpw35FH7y4mgQyVr+xKOsD3wcenaHKDR8veBX8RQUMhGlYlyMN6A6he+uD
	 5Mt2zy9fzWiVm4UUqVkcMn6bgNKLyks6+b4rVgvERcmvbEmyfVFAgYeHt66eMebDm1
	 lKiAdAmYbUm0y/9VznQu3a1I4OqDLGr8ojZCoSYswxa2o+DodbwvJKrSn0kuB67v/V
	 rAXt/Lz9Lmq7Q==
Date: Fri, 27 Dec 2024 09:04:10 +0100
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
Message-ID: <u6jrvxkp3hmodbly7kud4uykkxjza7qehkqifrfjjztzkw37et@qnp7uueafvwu>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226102432.3193366-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_000415_488435_C137D0E8 
X-CRM114-Status: UNSURE (   6.10  )
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

You need to list and describe the items instead.

> +
> +  resets:
> +    maxItems: 3

You need to list and describe the items instead.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
