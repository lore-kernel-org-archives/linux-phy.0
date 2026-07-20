Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31340C44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1B9M3We3SWljVhPREaITo7Cy6GLtCv7fRylsCrqjTP0=; b=NtfRpU7Egu3KfZ
	i3pQAh13I76hmUUuo7WZIOvia3jvpCFCIAII2ZFkwxMWSM5XEtwoJ0FzRe//e83hEfuI0Q8vojHoU
	iCYjIDfODXspryiIL9CglVkBnT9lfvMXDsM0eDax6iFovB2Q7PTVrgeg7rtFHg0ffJePLqs07PeKt
	ef8qjyYJV88MsAnOgXRitScXBnvjcy+h1RbV/CUx6eiRxnj++XcR7M4Ya/1kUs3wiqBxjR3647bl6
	FNvDg3vu1Wt2D/lgyAYg3grYg69WDJ/y0+TCXDk8G2e/Q6lhP6AwCu544D4Ex4Fg8L9Z6NXbCzsMu
	xtfPc2AjwgajZNz7EgYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmP2-00000006cvD-2Zde;
	Mon, 20 Jul 2026 11:43:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmP1-00000006cuj-1TlW
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:43:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 514FD412F0;
	Mon, 20 Jul 2026 11:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6A921F00A3A;
	Mon, 20 Jul 2026 11:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547798;
	bh=IwbTmGPKkSmwUNAoJKDpbszDISUrVaoIYCDL4XOp0Wc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=BH/R7/rgj1uJg16QxlPlswjF87TH/1ns2rIHuke2Z6aaeXtPoFZniBV9j3lWErfzo
	 rPAbtqR1HLgskNsM1XHl11Lz5/3sKkxvyyd6Hfp2iGxcxXvYyENPFhuLeVK8CbRks7
	 h/lrqecFZgKqmp1x6HbKoSeLATp3fTYndD4EFcafSi69UNplzUH/clVFSy5cWmv0EJ
	 BPQ0fVFcafmcjrUyrMKi4Xq038TGO2Z6rxej1HnFygEsjM6juusQgyYE6Bj3BCZlDt
	 TqbNXxDOwvvftOsTClqpJBADCZzdtOhF7RDPJDR9j5IaD3j4WRft2u0X531r9QJKkw
	 L7N1UyH3j5rPQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/4] phy: qcom: qmp-pcie: Add PCIe PHY support for
 Hawi
Message-Id: <178454779443.1388616.1697222144323108998.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:13:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 07 Jul 2026 20:32:45 +0000, Matthew Leung wrote:
> This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
> platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.
> 
> The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
> v10.60 register definitions.
> 
> The series adds:
> - device tree bindings
> - v10 register offset headers
> - v10.60 register offset headers
> - driver support with PHY initialization tables for both configurations
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
      commit: d15224492d1aef8b28508f23b889ee0394b07b83
[2/4] phy: qcom-qmp: Add v10 register offsets
      commit: 0696cc735dc7ff53297ad2ee649ceed3b1f93d07
[3/4] phy: qcom-qmp: Add v10.60 register offsets
      commit: fdfe6417e2e699890f51bcc0b772734a0431e5d2
[4/4] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi
      commit: 9ef4e520912e4966081e276beda628b69aac85dd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
