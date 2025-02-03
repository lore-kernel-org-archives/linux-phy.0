Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B87C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=lfMUOUWqtPTyKScjhT3wc9lgqObIrZh8mBEs1J9SUnc=; b=V+JCF/5hWzt6Aq
	VAakzdI9nfhJRBEv/NXYLetGfvjfStqzdSe4DKsvYVcfVAYX1qV7+uQNXJKczj9DBgubyymkI5XUW
	5DOsfB+8HEWMSLx8KrcjoALMRhpRj78cl2CSWckWULh+Ja5TP42o3yZf3VbBMiuAg+2JWovNW5ifA
	rmo4V+0yflC2LzurQuADjPnl64FbIk89t4Tz5GCPBVpWWAT6Ft2KWNxzTHLy13QYDvVHTvFmDQnQN
	jX84ZwVMCdvdYmxOmZBSPphXlGg+X/k79GBKUwD1lVCQXqqTq1DpQ1lCpFt0739PsRgxF3RYgSIMB
	Tp4NWrqsWw6/1WTYXmYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tezae-0000000G2gc-1CgD;
	Mon, 03 Feb 2025 16:46:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tezYo-0000000G2M3-2fcw
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 16:44:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8E770A4053C;
	Mon,  3 Feb 2025 16:42:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BA46C4CED2;
	Mon,  3 Feb 2025 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738601073;
	bh=BcYOm4v3nFF2x/YWxsfMCugongeIvbe3dISHErnwZvo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=cEz5s9K+Z5g3cCgQvRwYraPOumID4URRXs6EZa7g8GMeOqBTNkEtxCKQ03Sl9BAVV
	 ymqTvgHh+TtzAnIxOGyOhj1jDbjAo3+naOPwJiLmtPKyZJpCCoK7LrqgboScVxeK8B
	 6c2VKOdGqktlyKDOxDiJRrazXVDfbfGA2L/+crWQzudJgxP3YRgSDpSz77/dqonzNc
	 W6jkFEn1Nt9ZqPUIAtHRt1XwZmr1ObxDPbTean0VyQfNTQcAgcW8Wh7B8R0JCGJyR1
	 ul4F9CztfTKmxSKGG0SOjw0PEVF027h27C8y6hN9PuFFMa2cUqF4gquLisoclpQmE7
	 tMRNpK8l9d5hA==
Date: Mon, 3 Feb 2025 10:44:31 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
	quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v9 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description
 for ipq9574
Message-ID: <20250203164431.GA788454@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250128062708.573662-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_084434_739496_1B3E8F73 
X-CRM114-Status: UNSURE (   6.63  )
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

On Tue, Jan 28, 2025 at 11:57:04AM +0530, Varadarajan Narayanan wrote:
> All DT entries except "reg" is similar between ipq5332 and
> ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
> additional (i.e. sixth entry). Since this matches with the
> sdx55's "reg" definition which allows for 5 or 6 registers,
> combine ipq9574 with sdx55.
> 
> This change is to prepare ipq9574 to be used as ipq5332's
> fallback compatible.

Nit: since there are apparently other fixes coming for this series,
rewrap all the commit logs to fill 75 columns (so they fit in 80
columns even after "git log" indents them).  No point in artificially
short lines.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
