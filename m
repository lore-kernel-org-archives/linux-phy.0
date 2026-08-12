Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D1D3C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2BsR/+95XKUcOwrSEeFMxGLkXGRDmFFmTLuWYY7vE4=; b=Mpw3HQ6Mba71ez
	fo0OrKKvDGA33f+lYnWdAvoATmraj+zQhDp+xCOQJK4r5MuJU2BPKT5HFSuUvyxQ4VVd7zGWBasUq
	1KIaGqNUFRNOOMajcqn+hbatazsdDWkB+3RIjfvBtVOL1eCeWWpNsDUzQ9oEW4p8Ym2Akewg8ngQW
	3DkCYVKVJ0ViK/+qQUqKBz8kYOB0ncGiDNkD0NJubhQlfGCTKe+WsDhzB8Vx4ikp8nsLZkXcLmrGs
	3wEYDHSa1eno7/vOX4cGj8g9Lvo6E6APrbL3xZAD3SiapMz5RXVmEltyFvoDItFkIpTk1hEmaBs4d
	1fGKvW1FPsG8v711PcHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MO-0000000Flm8-0mp6;
	Wed, 12 Aug 2026 09:34:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Flev-1rIg
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 950FB618A2;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33941C2BCFD;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=1LiBzRWxvUcNljnnFnCp4vUdyAocy4/M2Upks6IqAE8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=pbksAYl+69M8oASp+ZhaKqTKgWDvbGZLz/ovX6amnatOVG82BpZX4rrTFWNn0p6kb
	 a1TVH3BKWZuWhg+R5PLoDFeF1KNZxnvCY/87obFJkenLSYs1X2o5A6IP2NpJbtLwTx
	 0oyb6GR1gLs1Gsk4XJtp/plVS6ZYl5zK/VeAiZwfaJHI0ffkNjYuFtwj9HhlMLeIJ2
	 1JjeimcX1CYILKc71IJk8zx2W8zMuUlvTaL/oaF1628E9h9Z/ctROEe6yajIWVfv1h
	 KOx0WyiFYqRZs8KdxgGS47FHV3NZOiDFHuzLunA8cFw+d+i9uzu1BeMa8l6A9Vrfuu
	 zrliEOzIGWMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E8AAC5B56A;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:47 +0400
Subject: [PATCH v2 12/14] arm64: dts: qcom: ipq5332: Enable USB Super-Speed
 PHY
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-12-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=1218;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=4QodOwLvZBFpQJh/rbVs7oulaifWDwERoBYMxDOywh0=;
 b=Or4wpv3uHdshJMeNMhiS6sXik5KdX92OhBUuazDrm9R/jcwgLPY3HZleHKz8IeA5LRLeojaFu
 VS/ybAQtauRAZF9bPyyZUdF/Ff+wsR4u0faB7W9jM25vJ3Od2w/Z6jO
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Enable USB Super-Speed PHY support. The PCIe and USB3 PHYs share the
same MMIO address space, so override the compatible string to use the
USB3 PHY driver instead of the PCIe PHY driver and set the required
properties accordingly.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
index 25a70cd884c0..164f9a9a6c75 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
@@ -100,3 +100,22 @@ &usbphy0 {
 
 	status = "okay";
 };
+
+/* this combo PHY supports PCIe and USB3 */
+&pcie0_phy {
+	compatible = "qcom,ipq5018-uniphy-usb-ss-phy";
+
+	clocks = <&gcc GCC_PCIE3X1_PHY_AHB_CLK>,
+		 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+		 <&gcc GCC_USB0_PIPE_CLK>;
+
+	resets =  <&gcc GCC_USB0_PHY_BCR>;
+
+	qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
+
+	vdd-supply = <&regulator_fixed_5p0>;
+
+	/delete-property/ num-lanes;
+
+	status = "okay";
+};

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
