Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B6E9C47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 14:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYizXCyBPU3VH1Gt98LvBRwaofa/TIs9NKWTP6Z27Ck=; b=D3/Ksrp2Rjv5k7
	iniNwhPOFMqA4AivHqDXqMbNDgvQHYl8NEeiIFbhbhbN1Yepj5w22fbe57U2Rdywq3dW2Ugd7bF8o
	LAqO+S7JmBWDEZI41TBkQETpth/DxhqciWWeNbSbsDl/5AIMkNxpLQOHRaXORk8z36CFTafLMp2wM
	yJvKOo1C3EyHa9DgiSKPj+URCIVUb3eNEOb+nlxu4HGvVt1HP2ZzshoMnrA7X38nCOqXmIUFADDqC
	3fvDjYWVeAdGz/NKzBIh4M/uqycKKe1phWdzHuVaybkspRbUoCq7JhYMjHPcfXl2OsWCv0ieC7dUt
	PhXykLKYVXZoFR+7qr8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHea-00Gn2n-00;
	Tue, 23 Jan 2024 14:21:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHeQ-00GmyC-2t
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 14:21:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 59A5F618B8;
	Tue, 23 Jan 2024 14:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364C1C433A6;
	Tue, 23 Jan 2024 14:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706019648;
	bh=JfMOziD33YQXKM5eSTRAheY0W73PRQugEPem6NQck3w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bd0JGNtnUeJB5K87umzGFU1gzvLsWx7U8m680hRmhl5JBMCWnhM7R/7fW2ortE9kb
	 0k8txzBnNqMx6pZfyqBXW0ZRveDQJ7BIR7eTVKzoh73IcaUvWGBMsdf+FQyXjHUU69
	 cxNT/bAo6KBFpvSheJRbE2INgIobJ7bT7S5jJIy6DF9UAK5d4oDdt7OheesgCRhDKr
	 7Fv6oojcc6+rVFigWBZFjvonn91piMEl44U3C5GgDTywi/aha0YKGY0USjxAjtbZMD
	 wetn/Yqzb6fDL1KxS6O1x3HNalvgEpEUNmMGmpLUglmYFTEf8edTm/kckY1OUsnqTo
	 dLKqfQWPMEoeg==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org, David Wronek <davidwronek@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Joe Mason <buddyjojo06@outlook.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
Subject: Re: (subset) [PATCH v4 0/8] Add UFS support for SC7180/SM7125
Message-Id: <170601964084.371263.15660253192211463921.b4-ty@kernel.org>
Date: Tue, 23 Jan 2024 19:50:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_062118_982710_32E8E572 
X-CRM114-Status: UNSURE (   7.82  )
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


On Sun, 21 Jan 2024 17:57:40 +0100, David Wronek wrote:
> This patchset introduces UFS support for SC7180 and SM7125, as well as
> support for the Xiaomi Redmi Note 9S.
> 
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Herbert Xu <herbert@gondor.apana.org.au>
> To: David S. Miller <davem@davemloft.net>
> To: Rob Herring <robh+dt@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> To: Alim Akhtar <alim.akhtar@samsung.com>
> To: Avri Altman <avri.altman@wdc.com>
> To: Bart Van Assche <bvanassche@acm.org>
> To: Andy Gross <agross@kernel.org>
> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To:  <cros-qcom-dts-watchers@chromium.org>
> Cc:  <linux-arm-msm@vger.kernel.org>
> Cc:  <linux-crypto@vger.kernel.org>
> Cc:  <devicetree@vger.kernel.org>
> Cc:  <linux-kernel@vger.kernel.org>
> Cc:  <linux-scsi@vger.kernel.org>
> Cc:  <linux-phy@lists.infradead.org>
> CC:  <~postmarketos/upstreaming@lists.sr.ht>
> 
> [...]

Applied, thanks!

[3/8] dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
      commit: 1cf2bf8ffadf2f0ab9ad10a1e0f65b3a0a10d402
[5/8] phy: qcom: qmp-ufs: Add SC7180 support
      commit: 7551d945cb9ad8e8cfa4888c6b7be19855754baf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
