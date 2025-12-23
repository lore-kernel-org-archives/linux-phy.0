Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B190E6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13HERdyROKqQODH0jcDHmUh7vjWjUT5D6RnXmJHpvz8=; b=rEFa5MYvC7TfLP
	A70wWfDa0zDin8nnWWjT4LOBowf0eeDUE2B3OjoF8Csa5fWZwYSELK4TM/TzanYQe5Q+bmft6WK4B
	9iyUaadRl437qxtztyapxrAVMGbpIzY7L9Wt1B/UK0YBSfpIBtnDOXLfStCesdoXH9ea1WTH7QtbJ
	BsObbYXB6mcQDIX6uauLKCMdsbw1v2laWlc4clL7NNTR+FciYg9Q8D0GmUjfSZ7fgd/lRx/wIrsmZ
	sfSvzaIDfm0wU/rqnRKkgJIQu3VjWSgGXjoW0wsMiS5uINDciRwlPWIZnIcwXaF4+U6+OCbtnVA2O
	b7j1+HUX4bDtd2IsXorQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6G7-0000000FpXh-3cmO;
	Tue, 23 Dec 2025 17:33:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6G6-0000000FpXW-37de
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 317336013A;
	Tue, 23 Dec 2025 17:33:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B5A6C113D0;
	Tue, 23 Dec 2025 17:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511197;
	bh=fqs90y23G3zBmdexi2Bi6AeJAn0M8WA0UXmpnEz5lNI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UiZ1WPaC6hQN2uQS6MIcVlUB36Vkf7SB+xCnROUg1wcSCBCsGscVPRaVwmAWeRav/
	 KTFo5hbzjAjnhLf+rNsWmCyVYSCPDv9Nz46cTj+bqXavafgpNz9gvPP5bc5TnqSc2h
	 2zcvoweleVnGliSxPBOB44q81UyC7/0Jgr22CVM9dz1BOumI8BuUtS3nWr4CXUB/nX
	 DxIXsBKtMwaFgkwKBsA3cxhCmOoI1aTsPnPxoonAHZlI2HAGgX4HMPpEtLOmqbsleP
	 CMVpVf1p1O4Pr9Z/I3wf2ERfcIOoADsyQMhx/NTkrFotjdILCAbJp0kWN3oixKFJuI
	 WjCOpeR7KtNvg==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
In-Reply-To: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
References: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v7 0/5] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651119188.749296.18284396701674542359.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:11 +0530
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


On Wed, 25 Jun 2025 17:25:34 +0800, Ziyue Zhang wrote:
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
