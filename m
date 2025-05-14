Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95B74C3ABD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 21:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsEk5VoB7A8VBC4zdbhJh2XhhHZi3kPKG9Q5JBu2C4c=; b=K4MEcdO9fpM56n
	kSRAILlwBAhg9bXz+u99oXcCFw8Tv2OJ3iRr6cnQAuzC9Sqc0n8VP64Y3CqRO74FcMI86hGBYkUt7
	CNIy+j/Bd4StnTQtQzAAeFriOEipURn0iKcOQzN5eFexpFnBpbTMqkcu1x4PRWzKb9kY/KSCEmvMt
	PY4WXXDWcIg9Vt/XaPrTDIIGICYJwToQ2moIyIbaLEqqGXWWFYuxbtipmEwPmnIKxiZwcdyIaWC1C
	BiIPw50kx/2erVHtbl5lKAF5H68u8qUtTr1y/6F47sTE14tidA16/W2GbrPAHIpml276SZ+V0phR1
	C7NV57Xg3iEv0fq9hRew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFJH3-0000000GLR1-0Kt2;
	Wed, 14 May 2025 21:04:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFJH0-0000000GLQ2-1Imb
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 21:04:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ACF0A4A9CA;
	Wed, 14 May 2025 21:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 507CDC4CEF2;
	Wed, 14 May 2025 21:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747256657;
	bh=/lDGsklcLu7DIIGn7RXN59HEYU8MZchhPb9gEng2K1k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=obdnExe/x0/f/uEMrPBCkf/WLoYTHe5yfkXs2o1pu0MLA65VtpQkyM1qzXrrBiGST
	 zpp2wkJJAaLcbii/qJxeO82e8WhPEivXvQoznbdmGdwXGc+Gi2pOVjOvWqjaUtJxrq
	 SDv4mVcLp8P5MaPPIluASb0cclZk4DgolZxXFaVWYI5KFYACid3PLTpOVagIjbkKM6
	 rvn/Xn2ZXa2LINZqZ2EKoat6tahdkxsGPh7dSumpL2JQANyjxPHUu38wYUbPV7SAkR
	 8ckpGYk/1QBlCKqDzRLacxtP11M0Q607GYT8/MbOuewWQ1Nw4hL0IVZh5MvopPF+yn
	 KbqQpHIuhH4QQ==
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	20250317100029.881286-1-quic_varada@quicinc.com,
	20250317100029.881286-2-quic_varada@quicinc.com,
	Sricharan R <quic_srichara@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v10 0/2] Enable IPQ5018 PCI support
Date: Wed, 14 May 2025 22:03:46 +0100
Message-ID: <174725663046.90041.649453939299816108.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
References: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_140418_364716_BC34F09C 
X-CRM114-Status: UNSURE (   9.84  )
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


On Wed, 14 May 2025 09:52:12 +0400, George Moussalem wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018. IPQ5018 has two phys and two controllers,
> one dual-lane and one single-lane.
> 
> Last patch series (v3) submitted by qcom dates back to August 30, 2024.
> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
> continuing the efforts to add Linux kernel support.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: ipq5018: Add PCIe related nodes
      commit: 18a5bf00a02ca54d51266b861518f2844c4f08d7
[2/2] arm64: dts: qcom: ipq5018: Enable PCIe
      commit: 22667f0b306f9cfa0c5be20166222f0e66272533

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
