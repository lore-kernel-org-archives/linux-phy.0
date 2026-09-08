Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF85C79FB9
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWYP7Glk3G4bBgqbpWgg71ztZbKDPl3l9QMqgEzWuKY=; b=nPiugP2xAy7pq4
	BkQZlMZ2m5VzROmFa+/pMVB8Eo0QeDoklwiQhD8vfYHNqfQRctctcGRE52CUOSfBYG7o9kNNkxV8h
	Lqa3B9vsFQfKMrZ0wHNlJ374ihyIUwbQQ010eHAgP8R2niR1lc1H7Miwfn5lhGKTMjrWuRihruhSy
	kzRzz+BzVGeIOZ71p199/59cZYz4ihxiCoghvav8pijgjDU/yVCIY3GM7tGZ5cnpv6pf9ZXob6GTf
	An8qFSWhZNdmLTHo69eAxoL8Cqxg5H4Oii6wZ23NFZDWVNSHclcdNZSdoJnHCsxVPMC4T0Nl8nQBH
	oXmQjpjW72jjAeGN4qqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sL0-00000008dv4-12Bh;
	Tue, 08 Sep 2026 09:41:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drE-3VDx
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ABBEC43C85;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C734C2BCB8;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=wjWHYMGGPiiY5KFppAP+tjkV0njxtlntuGZteZN1CqU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MWU8I6if7WrGOfNj0KWzg75xB3JadxVhOZJ8IO9ybxsqlJdw/QRqf5UR9FErLWjie
	 iy6yt1aozd45Z645UEB7mcLFS32aH4N/8JlZvC4/7trf4xvL1BG++xE0lgq3DLXAhg
	 PI8OjV29PIENrdWbbAooXZ8Y2QgNENeTKgwk06pnIxqA6GuBWXJmlqR+Fg+9cKHkoF
	 qqpQIMV47HOrnZDY0/JDQLQbjXu8+VAC/Z68K7xxY7en1jSQi34kN7dYRwYrVpdNnZ
	 XXrE6IUrUlYp7ekrh9BU3LsDoVpGoLdJyXpubVboW7yOmBlb+alDo+2/X9LXVfRQrX
	 Sdk1E+w0dO0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B093C79FA1;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:41:04 +0400
Subject: [PATCH v4 11/13] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-11-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=1434;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=I4jm4NWYfCMkGfNzx/usV/Xj+0IxIcI5RxXPlEHXCyw=;
 b=92bG5hFNoqxnQJvD9S7r7KVqQKonFMOwhrB8+3T0BhQ6xGpaEM1ImTkG3Xunqsd4ep6jd5DWY
 voG1iyJ4eFZCaMGP3b5ZbXyU7ohU3al1rSWF2dBZmvpjcnreN5YW3mx
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

From: George Moussalem <george.moussalem@outlook.com>

Add aux and lfps clocks to USB controller node for Super-Speed support.
These clocks are required for USB3 mode only and are not needed for USB2
mode.

In addition, set UTMI clock frequency to ensure it's parented correctly
and override the clock rate potentially set by the bootloader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 34d882b047bc..a6e337e137c8 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -604,11 +604,15 @@ usb: usb@8a00000 {
 			clocks = <&gcc GCC_USB0_MASTER_CLK>,
 				 <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
 				 <&gcc GCC_USB0_SLEEP_CLK>,
-				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB0_AUX_CLK>,
+				 <&gcc GCC_USB0_LFPS_CLK>;
 			clock-names = "core",
 				      "iface",
 				      "sleep",
-				      "mock_utmi";
+				      "mock_utmi",
+				      "aux",
+				      "lfps";
 			assigned-clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
 			assigned-clock-rates = <60000000>;
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
