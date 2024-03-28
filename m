Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21666CD11DF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raYMEMc/fWPkOpKEcwyKGcIRTDaG1YjvG0IIaUoyZ0g=; b=ucGJjCk2HQI4CK
	a+WIvvfKwEqOLD0HE8ptM/R/vUBYKUn+ccGl0+CEMCqxtg+pCU4kquWkYLF+C6q+vygfDOcyxxs1w
	omZrQT/Mz8NvLggroncPajEZ2NwW3uSvnUV4Jt1z3vTBgrciMmwOmrOG9PjuKQwZzKiDVTuqjcLAj
	+wNetyzDEiaAQwHri84dK8ilQaCPNzmkaL+5pdJhgg8OgqfBIK0nS9Vp3NH3PLB1PTtpVXwe5hWZy
	Pjx/T5abx7RZGPDBixA+a7JNbUT9YSdZhDY+SLBHlih64F9+LJeE7ISflA2o/FGwu3I3onQh24w0T
	2h5tDBkWiZjnNWaqf95w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHd-0000000FLkv-2Iei;
	Thu, 28 Mar 2024 19:19:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHZ-0000000FLiu-1HMs
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 19:19:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A31A46185F;
	Thu, 28 Mar 2024 19:19:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1483AC433A6;
	Thu, 28 Mar 2024 19:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711653564;
	bh=9rSs54F7ZgwC+c2F1DSDwjt+yL3zgaczT0DclqpgzZo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IuT4GdfLZUiKXvH68hPk7+TUBzQrfhHY+0gtHedpTdYbKtogEQM5AHMDJKtpCNwtB
	 6MV0CLsyLMtagaOoK9lyqEFQgHyo9y7tyER/xdF+/q9kQsG9+KcmGN+heLlwuFVxvm
	 Ddq6HGwyjx8u9takAwnzRl8fTg+3/qj949E6Ag2IyGd0dik6UF6vX2GIVF2Pyeg9eR
	 1RGVyenx665ICMYiW2wEBcO8qCy0S2lJbYnsN6X4k2CjBro7s2+CBRFc9zELfqQFG7
	 L//UJ8VIOXYfEsqVWA90N2yoj58MHTK5fslFRNBo1I1qeQjVWChlU2PL4rQJInYXCm
	 j1n5OuNtanBAg==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
Subject: Re: [PATCH v4 0/3] phy: qcom: edp: Add support for X1E80100
Message-Id: <171165355868.152390.13304083799152803709.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 00:49:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_121925_647942_D05B522F 
X-CRM114-Status: UNSURE (   7.90  )
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


On Wed, 21 Feb 2024 00:05:20 +0200, Abel Vesa wrote:
> This patchset moves the v4 specific bits into version specific ops,
> adds the v6 specific version ops and the compatible for X1E80100.
> 
> This patchset is dependent on:
> [1] https://lore.kernel.org/all/20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org/
> 
> To: Andy Gross <agross@kernel.org>
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To: Rob Herring <robh+dt@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Abhinav Kumar <quic_abhinavk@quicinc.com>
> To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> To: Johan Hovold <johan@kernel.org>
> To: Rob Herring <robh@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      commit: 5d5607861350db4020b3d74c02837ffc008701d9
[2/3] phy: qcom: edp: Move v4 specific settings to version ops
      commit: 9eb8e3dd297f976aec24e07c5e3ca1e79629140b
[3/3] phy: qcom: edp: Add v6 specific ops and X1E80100 platform support
      commit: db83c107dc295a6d26727917dc62baa91a1bf989

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
