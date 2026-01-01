Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C068DEEE25C
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 20:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piVEETYljh1r420Su09kq87KHO3lYAolk0k67Z+1qgE=; b=h7CCFbNajENeKT
	a2qZbpOrPBF4Jd5OO5M+mmWhDWDzOTJwx6RGHU1b4Sc+4Qk5wBWo4ILgXVqDcTI0vS+5GtRcx4ZKU
	XXNvtyvzxHsdb7K2nljVyt9B9FP+T1NdBHSqfTAmhGNvCH8tlhuGhHXBdD+3oaCl+zPB0juzb1WGg
	FK6Pjb31etqG/5GdmhqqV/y29xMo9Yk47kOk4CxAiqXjIMqaYMuEIZBrA5MN/pdgdX1bFxdgAEyWl
	Y0UU7LJGN3CllpUJ3pwOygR7WfwnBQimy90Cs6cvmtVZm4pzWKDyrUsXJ3UPhMsuozhg2wqRYi8Wm
	hxUXtKM0vB0oIJTjJ3cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbPSt-00000007UAF-1zKw;
	Thu, 01 Jan 2026 20:40:11 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbPSn-00000007U7K-0dQA;
	Thu, 01 Jan 2026 20:40:09 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dhzGV0g79z9t8y;
	Thu,  1 Jan 2026 21:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767300002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pNjB8JHF9vUG3sfxi9yuJYE1G0JgkXxQf7v1dbh0Nb0=;
	b=GtsHFhkFwyTyed3HUwdkdkCFdOJp067NjqohznutES7KQqNjXIjQCAGKP7wQshioJFierX
	fzfoYzPlUDRb7fKPBCBdVhNoTi9N2zGmPFfw3NvCmLVMy+5LFg4q3X1RTQMvGfp5s+o4Us
	jK5buuaB1B70PP6IFBavBAHs96Eo3hRjnb+ep5hiCkcn0VcKrYE6j0ltU8tTmUDDRTi3tF
	/hn7V8EFz2oUx/K77F5AuwM1j667d4bjR3icyJI4xPzFc8KtqO7aR48T8q7um2sxPQyNuQ
	iDYwjbdpnEC5yXTz3umxYgza4HhUvV1UnrTsVU0g3okmdY/GaYMfxe8dq6nVyQ==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767299999;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pNjB8JHF9vUG3sfxi9yuJYE1G0JgkXxQf7v1dbh0Nb0=;
	b=MBkZXBFhCw3KQJEtY0rqZGFaTgB2TlC2tphxVcxJsijmOU0EidyVZku9mOva/0YNX8gJ5t
	VuYg2tzANMgX2kS4srzb1KxUd5ZRWBmMBmgMpy4lG5YQ68IxRnXPN/xG+COYPVBFQ9wHrG
	QidP075l8UYn6YEBPBjp2RLUv5JtO2oFqh2x5Kps/+Sq+GVlRUm6j5VaXGaY75quGZ5j1z
	KMuGlIiaA5socPlqUeyBrEahKAR+PJzDZ+THjotl3YE1Ehh8LLdx8rZvbqBgZghe/28FZv
	mHy5dZVxLFvH06MZHROQRjcwdUsYas2jb0HyjrfrKecGIOBZfuvnnEouDGuX0A==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH 03/11] arm64: dts: renesas: ebisu: Enable USB 3.0 PHY
Date: Thu,  1 Jan 2026 21:35:50 +0100
Message-ID: <20260101203938.159161-4-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-ID: de85bebfd5ffb719207
X-MBO-RS-META: jad7utns9ohqf5ywq53oyczc3hbfc6e5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_124005_367104_C802C407 
X-CRM114-Status: UNSURE (   9.08  )
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

Enable and configure the USB 3.0 PHY and its matching USB3S0 input
clock on R8A77990 E3 Ebisu board.

Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: devicetree@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
---
 arch/arm64/boot/dts/renesas/ebisu.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/ebisu.dtsi b/arch/arm64/boot/dts/renesas/ebisu.dtsi
index adc4449b809ad..0b1ada18a4f74 100644
--- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
+++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
@@ -871,7 +871,17 @@ &usb2_phy0 {
 	status = "okay";
 };
 
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3s0_clk {
+	clock-frequency = <100000000>;
+};
+
 &usb3_peri0 {
+	phys = <&usb3_phy0>;
+	phy-names = "usb";
 	companion = <&xhci0>;
 	status = "okay";
 };
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
