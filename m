Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26838E6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNCRscb9NQDfK973CtU8yqeW0JQVxVQjyL1Q/LmW9qQ=; b=ABIHoDVwBnzkvt
	W6KIwMMcbgmr6l8wZ4GQeIiVKJ5t/cVA0q9ZGAn463VKrGmJXmCDwi9is+rJsi2Vuu8MufagsZNCr
	mcQCYDYdBZmxc8x8UR02XvFcl6m+KPhO+gsoUh5u5lXQXrxJwSuwqXV5GWlsiwv1sPsjCoTkxJi27
	8IQzr7oww4VHvM8GWzvXDzRQXDTeV8rcs1sj7k3SPXFsNg4rVhNihelGSJgXfUsjAAP7zCcshNxmD
	gWsh54NYWkCeau3k3QC1P9PhazUXE7yRfiLAaH0atN+Baw6gJMH7SSx3mPzxTxXgQSXqQboYfYoO7
	st/xciEYYbaE4yN9/AIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gb-0000000FpdR-3mM2;
	Tue, 23 Dec 2025 17:33:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Ga-0000000FpdD-4By9
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7282960139;
	Tue, 23 Dec 2025 17:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4219FC113D0;
	Tue, 23 Dec 2025 17:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511228;
	bh=j4KsScsG1hqXyQGukCHfOZAZLrJ9X3MMZqwShsIdJyI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=e9SlRoip9YzcvFE9Od0JKeiTvWcHKTv2tyxqTe/aBpKuDHdHAocPSidEmxIw1nZQk
	 sNQ2j8SX5Afv5buWq0KL0qfKOrbcUMw5CR+qJ7RfUfWOBigXI8Dveg0W8dQxZDl2tx
	 UHdMVj/gdFRNqNEJi6rXfmf4YzTf0YijO3g9THLoKYj8XiWb+4wv6Q2YgMdvPoU6xU
	 ONFFM2npal8IzciF/NAarx+40JjrEgcPjafExcM0Qdvhu0SPdjwofb+BZifFT9/uyV
	 tBpaKtG6t4K/dswictauUte0tnbk045G5pj4UeCAP7CUDB+LTEkkgmoemvUs5MR08B
	 0vSdGw2lurMLw==
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
In-Reply-To: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v15 0/6] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651122191.749296.15336587657057030247.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:41 +0530
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


On Fri, 28 Nov 2025 18:49:22 +0800, Ziyue Zhang wrote:
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

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
      commit: 393e132efcc5e3fc4ef2bd9bbed2a096096c9359

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
