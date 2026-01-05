Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CBCBC79FB3
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 19:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDKe/UJvsmGz0MZ0RXdHBqE6e7Rvp4+k1jk9A3EKWQo=; b=MGlFLIsVBrml/y
	B+e7ny4pZKh8MLrcBaP28RP6n14H9beFX2yX6nru/B7re0Il6ln+YJfebPkwjqBsNGDbUs16CNX7Y
	Gg49gZvxjloo/ETwzbazlpeGpamL/pv+paIN2I/xFaS1HhwD6FEh1UDAIxJujsrynqoAHhuA6Gq4b
	a+1C/5UUMQJZA855SDd8YaLIkPhgf5Na9CN6lWpChKyuiueghLrZTHu6DO1to+nA5Eazh2uqNsm3m
	ws4SPfxGBOXf6pCw8SgALIRP/5709tB/YD2VWD6cTbDaE+pI4Zxhmn2PxtO2jPfegEQq6/jCYjgI5
	xMdUayn8iVvHI4ms8D1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4U-0000000Bxv4-3DH7;
	Mon, 05 Jan 2026 19:16:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4R-0000000Bxum-42Hk
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 19:16:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A2354092F;
	Mon,  5 Jan 2026 19:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B088C116D0;
	Mon,  5 Jan 2026 19:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767640611;
	bh=lJsAlyKWGPK9NeKozns1vIwE/xw06yTTTCaW1jO7B+g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lGRFtQj70gQmDnVa+VY6r6e4KSgjOBNGNp0yF4W5v0Btif8RXOkXu368UK7II6aaM
	 lMNjihxYqji82EEDrE9PioYlLoCL/33TIe9X2POs2gCt+FwqW31+/0MMjZya2d3IGT
	 v9C9ZupLKWi+KClRN47Rb3V/Vm2sWjl8qLpbShvrQwKSlNL6ZexGnCqRdIvP9we6ez
	 a/E2hb+OgVBOeP8ufDPg45xhu8SRey8ZP611t3AGkgNbJ8tWrOSRL5ekbRnbsbUFmd
	 O5UirIyaRL3G7/T6653BpnzLl+wxLp7J3gkkaxj7gMs23CCSLIaiS8iCBtu6/QhE/r
	 9AjZPoT6B0prw==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	Abel Vesa <abelvesa@kernel.org>,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v15 0/6] pci: qcom: Add QCS8300 PCIe support
Date: Mon,  5 Jan 2026 13:16:29 -0600
Message-ID: <176764058427.2961867.4488819001760832428.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111652_022068_7136FCA4 
X-CRM114-Status: UNSURE (   8.07  )
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

[2/6] arm64: dts: qcom: qcs8300: enable pcie0
      commit: 46a7c01e7e9d296ba09bad579ae0277cfb558b24
[3/6] arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
      commit: 33967eadb2153d92ea1de6e9c9ac8ade21c74d86
[4/6] arm64: dts: qcom: qcs8300: enable pcie1
      commit: 7565ec0170201aca07c9e1c3b5b6f213c5024599
[5/6] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
      commit: cdb613a84527197f88f8bff3c5ee015e611a8373
[6/6] arm64: dts: qcom: monaco-evk: Enable PCIe0 and PCIe1.
      commit: 41e2424651f7c679382bb9e32225d3b541d4aa8d

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
