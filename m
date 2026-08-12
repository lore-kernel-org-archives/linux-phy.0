Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF78C5DF64
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/V57QP3nn5cJ9hZx6Qu97AmO/moemfKw6WFfiClUbOU=; b=1cwc9nMe4qaar9
	pEzWzLEZpO3V3Oa22ybmjbhLjrAjgJizNMNqvC48Tlh32WE29tPJpxL91sEO+xbQHr5NmnH/XEt2e
	NdK9rVeeJ+Yb8zemgysP07c+Z/0WHoaLsCjs/Nl01hWLPJbHTZEh1COta4o4W/negw1iGLJMzXKAA
	jy5e7kNIZ+eSkXMcW6y+103+reDQjwIeOU84GaqtkklxElH6uVDUqICsLk7qnTe+w16Ww1xMvZrmn
	3Kd4qF6iqz9pZZfcH2O7NeSMAXBjcH30HIOKzzifcK388H3ZTvdRQPsAjP0teklpoKw/N4KjB6DGM
	oyWMFnPVSHTF3rjiytkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ML-0000000Fljs-15u6;
	Wed, 12 Aug 2026 09:34:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Flf8-199r
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B00A4501C;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 161C2C4AF0F;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=lPWoL23l+8iQd44dS0Bo1JaT1Zz2Qstnv2s1Mec3s+8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=PrEiQf9Q2MEH4HgPCGa1H2FSY8ThQN+oSr7VprdHt+ejtJvlwvZlZXNBLIa797h23
	 xiF3KISCOYEUiF+S3hrS2m6AnuFpdDqcS+/g/KibT/AJQUfX3DAUznnHWDr/8lT70q
	 QWLG3RhHPQCy1+afG9FtaqKvsauzaJrVcDJuXz5YUdEgqKfr9aUi2hslRcKwJ7+tyd
	 LtOFKNWcUgYDQVNpu3CLlTNq4q2jJ9IBkaIc44tkXxLE1vMAmBKP8VAKWVG43N01Qg
	 wLMbtDyUZu9aajfuDVjUULoowNNK84u/OM5hhOwyGAOurCM18kNROzxML61G3lhnEa
	 BC2yleAnuJxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01CB4C5AD5A;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:45 +0400
Subject: [PATCH v2 10/14] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY
 to USB node
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-10-8f355d7ff0ef@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=985;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=rAa8xnID9wmdueBQ/cZWnFq7q+M1tI3cAzU0GkmPT8o=;
 b=P0a3iZfEx04ciMLlDTrFS0/R6gKS905M4fKM5nH6/RFXWzZeQUUnR3kSL9kkVYSKMTcpf5TJf
 Xq8q8ZGTzGuCW+Fga3yqhOYtaz9zv0CxTAnJ3+yrUvWoMvoefa08B63
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

Add the USB3 UNIPHY node to the USB controller node.
In addition, switch to the pipe clock supplied by the USB3 UNIPHY
instead of the UTMI clock.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 664586979ec4..6253443c8d7f 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -523,10 +523,8 @@ usb: usb@8a00000 {
 					<&gcc MASTER_SNOC_USB &gcc SLAVE_SNOC_USB>;
 			interconnect-names = "usb-ddr", "apps-usb";
 
-			phys = <&usbphy0>;
-			phy-names = "usb2-phy";
-
-			qcom,select-utmi-as-pipe-clk;
+			phys = <&usbphy0>, <&usbphy1>;
+			phy-names = "usb2-phy", "usb3-phy";
 
 			tx-fifo-resize;
 			snps,is-utmi-l1-suspend;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
