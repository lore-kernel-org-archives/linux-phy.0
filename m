Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF76C61DD3
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 12:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zW5Cq1AGuUN8Y9n+44FSci0xw+vuvuYXo7YGXuvvyYk=; b=prdE8scgeY2WrP
	6DMbkEnaX0JEocxxlNzXYvb2zX7OGgfmsfgFnJwRy1TaQbKoKMwEifIwXqx2uJEt8E8bKkS8OunAN
	D/oFOQnKU51zSSawZT/br5qDdLStV3UTMoLkHZLpZMBq94s7Y/xa1Azh4XC4mOPC51/oCr4iR9Vt4
	K1A0zTPDyamcBD4LavhA9esJ/9jzp6GrvjrbqNc0iSn4T6sDq0pDi/fChTZYdCe5wTlQ5sco8uOMX
	FrsCKK6gxKEy4rguT8GYQpNL9dkH4D2ITJLDCluNRys8WDJXJ8ossf9wFEf0UlrbBPIXRlckp2Y9k
	IIUqwrPP6E2NSnnUhCzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPI-00000000n9p-1MTH;
	Tue, 25 Aug 2026 12:37:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPG-00000000n7O-2qQP
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 12:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC65E44FD7;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898BFC4AF17;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661453;
	bh=7HqpnMgNEy9bMnvjfM6izpGfqJmx0bsSpY59UO9CNhE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IXGwJyLk/FZSzk0r5fnyUQvCX+FdjQ5TTlTHVDKRWaXROBYQCxUoHgICY2VTQbqTj
	 Us9RVE1S6MsmhIweRD6IHWNDGudw3Q15PtBoWUy3i0RsWA3KRZY90DNu4k39ANCSTE
	 1pkfGJK3im+fI+Gjb138YXIJHtgp2p8mJ1zM/bnZan6DVx2SR5/B3iqGsPUfFS6yTD
	 vAATFJ+Xyn6bDxKDq0TfouVXH3nYCrZhG03HUkWtejMuYgpN7DTnrIoST2zvKYykPR
	 crGV7MlHMhA/ZhVjruSFez16IfwyAJFD0f4EdERe3zFR1WGAWqxP5BA8oQbZM++B0h
	 tzOydQmnTpzoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73977C61DC2;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 25 Aug 2026 16:37:28 +0400
Subject: [PATCH v3 11/12] arm64: dts: qcom: ipq5018: Add Super-Speed UNIPHY
 to USB node
MIME-Version: 1.0
Message-Id: <20260825-ipq5018-usb3-v3-11-39be0955a6aa@outlook.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
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
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787661450; l=880;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=nVztOgvUA+UCMXgiAA8vKe6nVwfiycloNnuAVugC3Ac=;
 b=A85eEy0Q45TkeWiv8ekcGDPCXTButmyt7zaT2ZC2ASmwKckXMF16vG15NA5Lzn5L0Jbw/TfDs
 J0jBuxfN5JeDlJV9e5Bn2LeEzR8Mvrg4QbSrXL50YMl/r4119B7sv3K
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

Add the USB3 UNIPHY to the USB controller node for USB3 support.
In addition, switch to the pipe clock supplied by the USB3 UNIPHY
instead of the UTMI clock.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 7f730c2ab763..1f55b0ba5c9d 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -627,10 +627,9 @@ usb: usb@8a00000 {
 
 			resets = <&gcc GCC_USB0_BCR>;
 
-			phys = <&usbphy0>;
-			phy-names = "usb2-phy";
+			phys = <&usbphy0>, <&usbphy1>;
+			phy-names = "usb2-phy", "usb3-phy";
 
-			qcom,select-utmi-as-pipe-clk;
 			qcom,select-utmi-as-ref-clk;
 
 			tx-fifo-resize;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
