Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7ADAE6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XM9hLxgyAHs5uWWHXIIS4v6dvhqJVQi6WJCk3mDYtQY=; b=F4EaGTXWWAU65X
	PhCmc2KcT1M+o4Ha8EQ5KYqMrcHFhlDjx1exQZrupD96lUUlX8zv63mWVCuVm1JvB3T+0e/ilv3FH
	imB6SyalVwT0b4GV9qgOSUaPX0tZF2w7J/S/yLN0ehCG+iq/x0hWqjGGrY45KdfiGe7pwr5oaxQT4
	/QA3xuMtqMe99TXLoS3LraQ0dGSF2guEyjRuYLxe1T/Xqabn5XHIj4RSYyOn3zWMJWy2u5gVhmPle
	vUFid1XkLbYFNevddWAdDtqidsmhFaW+1B0D7vR8lAwf3bJPp64laghvYjCouV72QkS0E80Ymvd6+
	gkh8752rdhHO9cnc43Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GF-0000000FpYn-0RDr;
	Tue, 23 Dec 2025 17:33:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GD-0000000FpYR-28f3
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A969660139;
	Tue, 23 Dec 2025 17:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75AE5C113D0;
	Tue, 23 Dec 2025 17:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511204;
	bh=deTOv7XWoeuDUPt33bGc//lPbnOioqRsasUYpJIf5pE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BUZ3po7QvFj1iRZJ6vcG78nShtB30uzeWmluFduwouRNP9Zp+15iJH1pgj1GeDEXe
	 hKrl8itN2PvIW++a+zaLsUG2JnWfxjdH03iJwiMCSrMM4B2DtG407YXFvB5wdrDb97
	 mMaBTk5GjeMZWKwHxDBPlJaR8BfOSRpECOdd6lfhu8PWZR9wZ+YRYIHFubcRnoR8Ef
	 GxzWWCq8D/V1fTSv/XR5XJySaz5tkxImvT31+mVWKHiPSC8cYUjQo1kYR4g5zsVk7b
	 Ev+dzIC6FjB+wFaSglIpTmsr7Uzr0/4YjJe4YvD+V761BVs0mOhOBNfNREvnXYeqWq
	 p9hlMBUWcWlNw==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
References: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v8 0/5] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651119812.749296.11219098556381324671.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:18 +0530
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


On Mon, 14 Jul 2025 16:15:24 +0800, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250529035416.4159963-1-quic_ziyuzhan@quicinc.com/
> 
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
> 
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
      commit: 393e132efcc5e3fc4ef2bd9bbed2a096096c9359

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
