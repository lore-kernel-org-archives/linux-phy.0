Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15837C7115B
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGJoUJXZi0sRhTW3JKT6jUl37RXOEdMmYRYxRUMaA/E=; b=sUwmUD9hTzNdTb
	AAEBU78oOtl74abPf1qMRF//59m8pqcuSBZZF7NAQAUPmO7qSTyheEGZSUvJFWBZjNSjvcRAohdQ6
	u2ycfPhUK9bvecqEADz5oZnSgG0H6KC0CzOYr/1H+C8GElsj1x/fqAhCd2lZxu0PbSLIpzDxtc4dB
	bvz2oKkKxCeoZYGlIOsYZMocbni/mONUGLOki45PUJxQGDWr1atcdTm+T4Hc2SmBSh7Z9lfvKxZ99
	+5/XzDiw9/mdNBg11QKGaAJp4ApuGUhsOCallPYbnYJAaVDlhnIjpIbXW3IxIzxyCo6MHBkvvl40I
	TfRAH7321O8w1IXKQfQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZrs-000000080mI-1XPq;
	Tue, 17 Jun 2025 17:13:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZNe-00000007uCG-3Fjc
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 16:41:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 90A775C6662;
	Tue, 17 Jun 2025 16:39:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64392C4CEE3;
	Tue, 17 Jun 2025 16:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750178509;
	bh=3deT+Pse1UsDb9IBGWHRo7tZxOhm4Ao/X+bA5Ha+pfY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MGZ62YGHhakSEeW9wUJDW+ExY36reNAOY++1Q1A/gs5PKurpoNP8K3kB6J+g2OfvC
	 yfCvnN049RM/C0jwyolm5JK7owV37sWKSZjQHtVIiFRZVffVFQHNeMZpMbTTAmvOqM
	 HfV8vtRwX7OqkXj5kff9ilr8PFuM+qUc3SzhbZ50FllluclqM3pnMm/qWy8ZMp9fU/
	 gaQqez5yR7te87q1BPS/zkHHXrpDV4guZflICuOBr5/5WsZM/Yf1kI5NUsQifyyuUD
	 sMMyfn+dkr3c/kh/kf0vgjzgY5DodC0tWHNml0DLLWwJBsr+/yFv0fA7J0BcKjzFnS
	 hp0LNZ6Fm4Xng==
From: Manivannan Sadhasivam <mani@kernel.org>
To: lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
 bhelgaas@google.com, krzk+dt@kernel.org, neil.armstrong@linaro.org, 
 abel.vesa@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, 
 kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
In-Reply-To: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v6 0/6] pci: qcom: Add QCS8300 PCIe support
Message-Id: <175017850194.43806.878167709542899652.b4-ty@kernel.org>
Date: Tue, 17 Jun 2025 22:11:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_094150_859567_B7A4D6E6 
X-CRM114-Status: UNSURE (   7.98  )
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


On Thu, 29 May 2025 11:56:29 +0800, Ziyue Zhang wrote:
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

[2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
      commit: be84da3e19666da5c43c5c4ad86eff456510bd77

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
