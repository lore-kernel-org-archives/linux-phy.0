Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E12C28B2E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 11:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UB/yF94SIO0DL8Op5f6103Opg5m1dhHjmN6Y0R6DbPU=; b=QwMz6oRhUd+ImY
	9NZRQeD+TXuCf3KNwtbsjg5CAq+PpXjKNAy3jnL2MXa6wV5gF4CagBFzbNExYVWZrx0Z62tZd4zPz
	KXm9ELc87sdykq80VrudaAJ4Np/WB1YG2E0/GvcRK0FMLd+sw1mFmZmMLNJSzux4pgyoYOm+/873f
	ALoDRjI0+y7PO9pK8qUU4yyQwv/rKofLNGComSCrY1crJufP+I1/ZlLWD4ZIM0KQw/pTIoJRUA7SO
	QL4pgrNjnPa2wavS1UNhNpdzUf88F8BxzqVGzllGOrJDq7FikBysGvUKCrZVzp4cNS+vmEPj0rehs
	6+Td3Kyskbjme9Z//uxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1try6n-00000005WyA-3zjN;
	Tue, 11 Mar 2025 11:49:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1try4b-00000005Wa6-0rWg
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 11:47:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 25164A46ADF;
	Tue, 11 Mar 2025 11:41:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C368CC4CEE9;
	Tue, 11 Mar 2025 11:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741693619;
	bh=/WYDs73Nm1lb/GTeRLCUHgCKaixHsBgVcb+f13tuZ6g=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=onwm2MwlnqeJgtZJd3NdhDoXu8Lz8tXY5d6n9aeq3UyWSGx3qH/u6OfBkrUcdXTgK
	 38j94IriQR1emZT5Ouc2dFRGIgFhAFJIYTNxvcF1xeRCIUqpnFMVmcEnqG/vs5zigG
	 ++2QAq1jOSfaOf/fYDxhQAkKPxm1AxmhROmYrdimYjj1tzM86YO81eayu3XkYqY7rc
	 pwtF2LcNAixeNvQ95Aky13e65ZL5ggMatdvS1vxpwUOlpEo1XIth6yAm1Q88Oj3Qug
	 paJugIGzVftncZc0rxild65Sdkwt8b+MSDkBjHLKvo+A3Qi4xVaB6wX5p1drvCYCjg
	 MAmQrBm3kjRWw==
From: Vinod Koul <vkoul@kernel.org>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, kishon@kernel.org, andersson@kernel.org, 
 konradybcio@kernel.org, p.zabel@pengutronix.de, quic_nsekar@quicinc.com, 
 dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <20250220094251.230936-1-quic_varada@quicinc.com>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v11 0/7] Add PCIe support for Qualcomm IPQ5332
Message-Id: <174169361442.507381.5728010780608923977.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 12:46:54 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_044701_314098_9682A5E8 
X-CRM114-Status: UNSURE (   8.31  )
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


On Thu, 20 Feb 2025 15:12:44 +0530, Varadarajan Narayanan wrote:
> Patch series adds support for enabling the PCIe controller and
> UNIPHY found on Qualcomm IPQ5332 platform. PCIe0 is Gen3 X1 and
> PCIe1 is Gen3 X2 are added.
> 
> This series combines [1] and [2]. [1] introduces IPQ5018 PCIe
> support and [2] depends on [1] to introduce IPQ5332 PCIe support.
> Since the community was interested in [2] (please see [3]), tried
> to revive IPQ5332's PCIe support with v2 of this patch series.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
      commit: a2e934885c82912caf3f72b9511ef626f3619e3d
[2/7] phy: qcom: Introduce PCIe UNIPHY 28LP driver
      commit: 74badb8b0b146668cc6c03eb58e2a814f9463d02

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
