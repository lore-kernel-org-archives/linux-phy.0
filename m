Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A8CCD374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZx9sjfDPcVmIIlLtR+nF7RwS0dgAAggzrMjcbB5s8k=; b=OenA4Ae2h8fYeb
	pthW5hC2xTiB+LPeRZoOUqpayFvq1/WxLkZJocydPmY+GP8PuJ+i9k8AOvp+g9qQlvfOnlJcAm010
	nuYSRp3aVHHaK0UOlYjL0GraN9aRtZi6C95NA1PxmGJj8dQSvfHcCDAiXNtvX8kq5KuLoZCHLfjXC
	ldT8EIrzkQAs4lkHwL9nI9GTp4y22yqUqrshwoPc9jR2edjIvjLzDqGGPAHcCbyi/gBn0PYjtWHj+
	gRRS95ekXL7Rm37UfWNOnE3J/yXELwIGY5nOkWRvkLayQCb96s465SkE0XkJjK+WqO/ZingIx1gv2
	nflDsgnjSIDBY5r8rmtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZO-0000000FJTQ-2vdf;
	Thu, 17 Oct 2024 15:37:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXL-0000000FIl6-39dZ
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:35:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F2F6DA44021;
	Thu, 17 Oct 2024 15:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A01E2C4CEC3;
	Thu, 17 Oct 2024 15:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179338;
	bh=GxocGuKcbIGEx2OEDqTOLN6rngMeEtVz4a6NJzfq1zw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=R7ytg1AJbSnPVZF2ZcZEVXHNMWMEfKwvN8d6+gfd7wR7ziY2c2yGF/LxUb4L4JmQa
	 5904WhymBCu6C23yZzVOoCv3o3SE1w0ElTkQ1Lz9UASoAICWcIQhM/kk4LLEFHAFPG
	 vLTAFOo5KZf0X2keITbpuvxthhF8E3xFsH7sOulhLimsnLd8B00jFLw38zd3m/AxPq
	 4uJcsx08NQXUYmgp1gcFmlw/u2A7+XVo5HPomNNrfwlfT4bYWWhDpNcZG90HS2fD61
	 9QvozZ1Kil1SikiJCcJxDq6DcJNccP68+Wim02jJ9U5at1e+3vt9o0ws8dCBk5A5Cb
	 JH501nUIk6flA==
From: Vinod Koul <vkoul@kernel.org>
To: manivannan.sadhasivam@linaro.org, kishon@kernel.org, robh@kernel.org, 
 andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
 abel.vesa@linaro.org, quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, 
 Qiang Yu <quic_qianyu@quicinc.com>
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org, 
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-clk@vger.kernel.org, johan+linaro@kernel.org
In-Reply-To: <20241017030412.265000-1-quic_qianyu@quicinc.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
Subject: Re: (subset) [PATCH v7 0/7] Add support for PCIe3 on x1e80100
Message-Id: <172917933229.288841.5057372838921207960.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:32 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083539_893479_20943091 
X-CRM114-Status: UNSURE (   7.76  )
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


On Wed, 16 Oct 2024 20:04:05 -0700, Qiang Yu wrote:
> This series add support for PCIe3 on x1e80100.
> 
> PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
> PHY configuration compare other PCIe instances on x1e80100. Hence add
> required resource configuration and usage for PCIe3.
> 
> v6->v7:
> 1. Add Acked-by and Reviewed-by tags
> 2. Use 70574511f3f ("PCI: qcom: Add support for SC8280XP") in Fixes tag
> 3. Keep minItem of interrupt as 8 in buindings
> 4. Reword commit msg
> 5. Remove [PATCH v6 5/8] clk: qcom: gcc-x1e80100: Fix halt_check for
>    pipediv2 clocks as it was applied
> 6. Link to v6: https://lore.kernel.org/linux-pci/20241011104142.1181773-1-quic_qianyu@quicinc.com/
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x8
      commit: 26fb23ce35e2d2233f810069ab11210851acbf54
[4/7] phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3
      commit: e961ec81a39bc57119f165cf2e994fc29637fd97

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
