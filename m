Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FD8C02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkiT1a4mZraPlvfMymwBlNXx1w3tV8LJZhj4MMJqONk=; b=Ihl10vgrF1Uzev
	yVBMmhB9ITjbTwV6/3NrQJLr2uF/KQ8vTTKo2GX4ibDYsyHjo5dnVVQRGNWAAxf8qzBGVk6WW4jUZ
	3TGT2GtNKK2+omGhXaZifGaUwx0L1gm1ax54Mz20aWoP070O5GSvWRQGQbH37gXPeKHuv1ujRisH7
	vztWRGjGGZX0ISdvIe8h0MEd/MXIRhP/VA40JKfByf3vsNTxUsxfcd4vwt0S0WuG7G8Gde0woAV8d
	bF6ETaMHLY9mOJLwbbg2rqGewp6tAehYr0hyLPbrjZt35wI2wfaZ/7BlUdKTDlR10YogSKZ+FXL87
	7KqH9wTehSvbDFFhJQmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tas4n-0000000BvCG-0y48;
	Thu, 23 Jan 2025 07:56:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tas3Y-0000000Bv4F-2EkX
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 07:55:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 862D15C5694;
	Thu, 23 Jan 2025 07:54:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE8DFC4CEE0;
	Thu, 23 Jan 2025 07:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737618915;
	bh=xKMGVhtVXJCt5/79wNfkPhu18XGqd/fBNpa0SKw3Z1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pqg1MpIzA1wVo/F5TLflpCwD2Z/r47gJt64813owDEgHHjeGakI2DAL8QqWNgHN+y
	 PMh4oKo56MOtD1lyVD3FZ7Fqz3BVxELMOsv6GWziMnBZcmJ+ofxT/uWgOpyKQkK6zI
	 q+Jp3XgEtsAAp4ZdbFGKETmLH9SK9CRQdWtZCPRt7vECR3j82YPmUl3KbZmuB2C3W6
	 yo4CeIz/0VS9hFEU5RwjnVq3TdIopbMbhhn6Y5gFA2SyWxHinl9M9wViJlCCFUqFFJ
	 Ih/hz4VQ3ZBQAyzqtgFJvnkD6U5srsYKLIJOi76S9q829JPu8gsEKu8Zkogt1ExNdT
	 DjhPntJGkkwaA==
Date: Thu, 23 Jan 2025 08:55:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description
 for ipq9574
Message-ID: <20250123-talented-inventive-caiman-a2f29f@krzk-bin>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_235516_615641_3B55742C 
X-CRM114-Status: UNSURE (   7.58  )
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

On Wed, Jan 22, 2025 at 12:04:07PM +0530, Varadarajan Narayanan wrote:
> All DT entries except "reg" is similar between ipq5332 and
> ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
> additional (i.e. sixth entry). Since this matches with the
> sdx55's "reg" definition which allows for 5 or 6 registers,
> combine ipq9574 with sdx55.
> 
> This change is to prepare ipq9574 to be used as ipq5332's
> fallback compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
