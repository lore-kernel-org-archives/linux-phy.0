Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13ED7C3ABA2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 08:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=98XyVJ364mNGbvYYRpmblFf3a8DNdW6hKDvh6YQQLv8=; b=Bqy5KXHtZfmAca
	i0961cKSnZI2mNum7hM6WRabkocF45WehILwF009lmvfORCaE19Yyv19cfG0a9sRJPZ2+8D021rhK
	ywm2r50oX5lAw6z+uhAnA2BNlJbuPG+fcHUdxjtTYBYvoJlH8CCEFTwj5HCZYLFTz/g15OdsmOphP
	JdQeit9TeNWze7cMF4vxFU7htIxyi97BrF/ithqBbznQ/bNjwja2a0yFFWyJ5sOP8dbGy02FtmHrL
	no5G84fxPSUj+Vyi05F+J3zEt/DoFO4MAjnzfbGiVdaKUqksV0kaIC0PQ/1txD48V22p0oGMseryI
	TOb6H016K8KAmOTO8O+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq72C-00000003Q3a-2WLs;
	Mon, 16 Sep 2024 08:24:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq729-00000003Q2O-2kgR
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 08:24:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D710D5C5937;
	Mon, 16 Sep 2024 08:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC39AC4AF09;
	Mon, 16 Sep 2024 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726475071;
	bh=cxhgpWNOyuKwrIpr58atn4L2gpkUAY2dJI/Y4679Rl4=;
	h=From:To:Cc:Subject:Date:From;
	b=mxz+o6WSu7U60dV1Gjo+46yCYWJY6SyNPsM0Yr7DiddJAJnsFC3iGECs689au61R+
	 VycBqrQmNEHMPFKLIiGxRZk3MjY+VHlUCPzW/uyiskBeVv8mOwkP2Z1VwOhciQ0eEH
	 5wVmj3F+SH0zS5mfWJwPaj6k+I5zsTC9YbVOjH5eec/bB8otMwA9mpoKzXeJLGHFtv
	 5KnFj1YzS+nVYbDwfZ8mUCJIk4Ffp+inDlc+hBaAJlXEzDqAI8pEYrG2rR1LtdnFy4
	 6G+K9UBrTfgWCoNVHDXLLLwkDZ0O11J6mjBTWA092zAXOQw3GksomUh/XcAR0ivyeE
	 Mh+oJwQDgayWg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1sq72O-000000007hE-37eK;
	Mon, 16 Sep 2024 10:24:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] arm64: dts: qcom: x1e80100: fix missing PCIe PHY clocks
Date: Mon, 16 Sep 2024 10:23:04 +0200
Message-ID: <20240916082307.29393-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_012433_777952_688DC6A9 
X-CRM114-Status: UNSURE (   6.73  )
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

Add the missing clkref enable and pipediv2 clocks to the x1e80100 PCIe
PHYs as needed for functional PCIe (e.g. without relying on boot
firmware to have left these on).

Johan


Johan Hovold (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: add missing x1e80100
    pipediv2 clocks
  arm64: dts: qcom: x1e80100: fix PCIe4 and PCIe6a PHY clocks
  arm64: dts: qcom: x1e80100: fix PCIe5 PHY clocks

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  4 ++--
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 24 ++++++++++++-------
 2 files changed, 17 insertions(+), 11 deletions(-)

-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
