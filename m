Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 983C3C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEGFFQn+QBSwPg/sQti49I61+rQFAtSTpow3SCWJppU=; b=xoK5GXdxCij8Nz
	NhoGFXC2R5QRcuKSvvRLnE2cMHhNYqjE418XtxeXi2YqPDzmIfiCYuyhGdXIaQziy6ftGC6veL+ZY
	uoqy5KwqzI9xatle2ZyUy9mTTOHbfSQ8aqo8QtRJK9e6XFwbX7ULgMs7yz9SFbnWowJ5bVfnkF6yc
	VLP+OtbsOs4SZFLI68WgQgIXxAupUrdTXzXeK//E+j8WTHyYCsxHBKp3x3XDyyA1dQb4EttzyJAjk
	bNrA+pC6FYIaPWkV+9u6KWtMS4Q77QPvQ0D3Csju1r1AQIOuuMEEMLu4sjLi260fRVMDBnivgqwlr
	e+wnTyh2l8OhVpsaR2Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MJ-0000000Fli5-1Nc2;
	Wed, 12 Aug 2026 09:34:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Fler-05pV
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A10645013;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25F3CC4AF13;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=CEJImADqksx/jnXCqycUUtZetr8Js6Q6vJkHmpvfFMY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SglLNjLYb7ZnTC1At5krlFVzjjPOcHrKdU1GWgBxXHO4Z4lOq9RlkjU1slYZrYHAM
	 6+y1KzcewjQlSZuzaDgu0gRhNElBz6AdPjqpRzVFZiUREKe7rxyuR3oJL4g6EphoRK
	 M51HNTh7JriSAMh4S8Z9ndmL+wpDwulZ02SmuQ5ZVmwu02BgGJk2KCS6faQ4oUf3ee
	 K31vg8y56QoDQNE8bVOGiwyIOcUgneRd+E70tL1Mw4T0fwIswaupatiivmGeHTxW9R
	 P91riIDYaHEwFr4RCp1wlM+kocg5IkMDoGoJgN/GD8g5wYApS+5Xwnda3mw8EL9itA
	 jRiVHL1fe9S+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FA52C5CFDB;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:46 +0400
Subject: [PATCH v2 11/14] arm64: dts: qcom: ipq5018: Add Super-Speed UNIPHY
 to USB node
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-11-8f355d7ff0ef@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=865;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=8bhPK8flz4g64F9hoc1dqcAmebxhDioRZihPcA2zzas=;
 b=iOasZLYsfLMSMhH9mM8vLaYok33PTvlCo51GrOdO8jsqdez68kqQWKaAJxpHPR/pO1sskcx58
 mnRboKr4eYSBm4XSpjZIl4xKcxLDwhOeFn4znV2GDxVVVaISZOc2vT1
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

Add the USB3 UNIPHY node to the USB controller node.
In addition, switch to the pipe clock supplied by the USB3 UNIPHY
instead of the UTMI clock.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index c98889a7c26c..01b8181ffa40 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -631,10 +631,8 @@ usb: usb@8a00000 {
 
 			resets = <&gcc GCC_USB0_BCR>;
 
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
