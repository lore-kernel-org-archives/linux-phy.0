Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A31C02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 07:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Je6YsVGeKNo8l/LvBArPmquvJT7ST+UcoWkhUZB7WFk=; b=FbDacBhIBScpFc
	65QFaX1vNSxC+dnl0R9ia2RgXdDAKAhDfcKRQXtwv2Sm+K5zDvutk7CDcpae3Gi8v0ggNkG43APMa
	Ckx5eZomz3wgVJYw6jTN1D0p/RTP4KHH+vGmTZe0o9+MaOHX1XHvBcLXJo0XqKlPPyw73i/8SQoZW
	8T6ck4NsgB0/V7DazB4Zy6/qToouk/p8CaoHYQEHXrJd6UM+Gd5+dyZ5pvWcjW1Al5eygInXpfUMN
	fHZijQ3m38VJFFmi4JmZAPO6d3vjG7H2ra/Ot3y1ofXpzVNYMNvi+dZQC0X73h9b6wJskGQ2+HOu3
	RBR4cyfTqKkGC2oPmw7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tas31-0000000BuyY-14ot;
	Thu, 23 Jan 2025 07:54:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tas2y-0000000BuyC-2uvB
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 07:54:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 678D95C5717;
	Thu, 23 Jan 2025 07:53:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96BB1C4CED3;
	Thu, 23 Jan 2025 07:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737618879;
	bh=OrYcjJ5hzXu+46N9Vw6qrqFKTskY2lWjkvcWkrgGb0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W+Exsl4h6DMWnWCX1BbBSg9OMibYJglDCEoGX8rFhmA1WZtT3jVtpKv5WVPCnSkiU
	 tFsgTfTWoHsKrZf0LrcTf1jGSoXAAtTEd+8zJ5NrXgGYLbeP8EdziU/5DA2XFHuEfr
	 XoUYhOFG3k0E0RRrBRT6zGEXWZGbPdEIGz6GylgKg2x/QW4zlXHAGuTp6DOl4xngxX
	 r9BamiDr88QmR76e0xVQXWvnUljatOeuS5RMbDGE5XHGHXXV6J1ljQV0y0qfNj2OGt
	 xtuHlp1CrTsOFIWFnBrWAmqhHYx4GaoQydiCmqIWrzhho8vg6vJ8CKFZRs0UVxaCA4
	 OakAcC9NnEgtA==
Date: Thu, 23 Jan 2025 08:54:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 1/7] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <20250123-analytic-pragmatic-bonobo-a0f5e1@krzk-bin>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_235440_773684_B8D01B8D 
X-CRM114-Status: UNSURE (   5.95  )
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

On Wed, Jan 22, 2025 at 12:04:05PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5332.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v7: * Add data type definition to 'num-lanes'

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
