Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0207CE77187
	for <linux-phy@archiver.kernel.org>; Wed, 18 Dec 2024 11:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7unbmcEMvCavDEfs+z8EMd3v76fm6C2VtbAnqKuukUs=; b=w61umjbL9Rr8j4
	TY/SzZlz61IToSRailbftJTLKvNjZlUnOYFQrN5IMFzHXcnH0WQs2xY8ZmzTRNg03mfLu+Lkc6iLa
	bOdUWrXU5NilaCB22HT7kFwEIHodrydoCwRxSbw7sWLiLSAgA0EOtFWis7JC4b0cyfSuP5RKqBklu
	4BIiyGr11sLfy95H8mc/HglrLl02JL2Uhh9xhGb7URqR+FidRt1neYkThZtxODwfbDrIwLgsqtiwG
	xMTE541IIrHvA+EPnD7ewSLCOLgs24jxUByEkAlcBYG6rRszZWBM95JdALwuQcrAtmgZe88z0IPj7
	9fVMb6SJwiy28/5wLNWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNsPP-0000000GTok-34DL;
	Wed, 18 Dec 2024 11:40:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNrIr-0000000GGJ3-16UB
	for linux-phy@lists.infradead.org;
	Wed, 18 Dec 2024 10:29:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E82A9A42599;
	Wed, 18 Dec 2024 10:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F103C4CEDD;
	Wed, 18 Dec 2024 10:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734517756;
	bh=rVXq692XhX8/BrFOI5DCC52Q9mZNMtBW9bToWcfXw04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PM1rSXQrGhvqnFXDucTAEykU8xpJnI8LTMJDPQEFai2RxVbx5MaeCpJI7VTsXezjk
	 SL+ZPpF8KRb3vA35Uf3ylG2radHGPkByoOXEcDN6wCNauag0+t0VvAUkHsJgebL378
	 suP/Zve0BHzKV5UBBPwoiwrcPnd+eJexiHX3oRS0QZJTfgTlTXkLUNJ6sspId3Eh4r
	 yiH1hVlxyfepthR6sKmBtqjdFvijZ4vnuO5YBiXs3SiOIyzbSPrXclkuVaOFAwm2YR
	 87uq/nOB8NFwA8Ly1FPrnYpd294ygG/azLqoV3BSGF/J4qyl9qe5uJGOnvCWy4NRsM
	 mMYPO31PhgrwQ==
Date: Wed, 18 Dec 2024 11:29:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 3/5] dt-bindings: PCI: qcom: Reuse 'pcie-sdx55' reg
 bindings for ipq9574
Message-ID: <72gjhqpzaszfb36pjl4g4t5x6kyc3xclwaenbzkgrkz6wtkx5j@6dw7stv76sr3>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217100359.4017214-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_022917_362981_FCFDC282 
X-CRM114-Status: UNSURE (   6.54  )
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

On Tue, Dec 17, 2024 at 03:33:57PM +0530, Varadarajan Narayanan wrote:
> IPQ5332 PCIe is similar to IPQ9574 except for the 'reg' bindings.
> Hence use the reg bindings that could be applicable for both and
> avoid adding a new binding for IPQ5332.

My comment was about driver, not binding.

You cannot reuse bindings. Use fallbacks.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
