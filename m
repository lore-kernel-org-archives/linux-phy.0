Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F17C2D0CD
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 02:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEPMXrafNMfSSK56bXyikD2pv6YY29xlrNrb5RBwQg8=; b=NfSKosi3GFM4Zo
	6Kfc2pVcvtV3hyV/noR+6FYP+osu099a22NNPvcAIPnqtotEYYrUnC7dI5wIA/1WhlwJT5byyvcHG
	Gf2UyBWaaP7CBv5/1eFTS8f1fc+WKFSJuU2xD3c+j0keK+ExknXVKG45A8bn/Q/iru8igUYBlaJzr
	AEyUySAb1WyPoQSzsF6HRuPwu/Zgqn8CCVKr/dj/7a+I6SStl3Tv2oD1f2TtDg2Uecy/0ZlqcAtat
	6UlarjrWyLK4PVnYvU+K+d1hyddPxxGGdZ1IfH7r9r6mjK6ru3c7QGk1lhb507gz1QbxZUotpD91I
	XTx3YMhlpsSI/tUoGdJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHCWy-0000000BJZX-0irO;
	Tue, 20 May 2025 02:16:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHCVa-0000000BJG2-09fK
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 02:15:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EC0394ABCB;
	Tue, 20 May 2025 02:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05EB5C4CEE4;
	Tue, 20 May 2025 02:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747707308;
	bh=iZ2fwRrkKzLXPreiWheSfX+pZFO7+QVw8FqJucxprr0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I5P60Sof3VWvJ5VPmjMR0dOfvYg47miCn3UBGHF15TZ07FB982qmpz3O9yFTaQQhp
	 UKYRIYVu2gl/+FUjnxyfHPJ70kq3euqJALNxvfoOPWnx4BsNwUNy0SzS/+6FnGc0xj
	 A4fCkZ2LoLL2mKhRGCcebA+BreZs+OxA0k7NVsy384kdike0Du/idrfdsSH08h7bME
	 GQnzsbLXwcaOYcVRO9qqb07k9JREZjdk/PnlptjReEI80L8hym970eco/+qg9GcJo2
	 tfdcNCO49krC3pufJ0BiijlY+FahKsZEkH/1IbjXSNpAxXJXijtzCbUpb8XuC+I2D7
	 X3V9cwYiwqhnw==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	20250317100029.881286-1-quic_varada@quicinc.com,
	20250317100029.881286-2-quic_varada@quicinc.com,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v7 0/6] Enable IPQ5018 PCI support
Date: Mon, 19 May 2025 21:14:39 -0500
Message-ID: <174770727716.36693.13906353941989643518.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_191510_095746_EFEBDEC6 
X-CRM114-Status: UNSURE (   9.69  )
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


On Wed, 26 Mar 2025 12:10:54 +0400, George Moussalem wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018. IPQ5018 has two phys and two controllers,
> one dual-lane and one single-lane.
> 
> Last patch series (v3) submitted dates back to August 30, 2024.
> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
> continuing the efforts to add Linux kernel support.
> 
> [...]

Applied, thanks!

[5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
      commit: 18a5bf00a02ca54d51266b861518f2844c4f08d7
[6/6] arm64: dts: qcom: ipq5018: Enable PCIe
      commit: 22667f0b306f9cfa0c5be20166222f0e66272533

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
