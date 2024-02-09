Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3F0C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 18:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twJpmFvKlTOw5ogMx3tpWXsZmiltpZBLxEPvmBbC2aA=; b=KISx8+c5e+CZ9L
	sLMx6l+p6CiualSORkiBqQmP4jbW5qI48xEZEXAg4VZiSvZzNb/tpB8g9mdQ4RmAOLLqxSAgtJl1J
	97G6F5KUG3M+0OcWXMWahgslFg7jzsorG3a3XVE5TIlYGQ5DWHUviBbFXGuc4LfuufVrpT3+yw+h4
	8b3DZDzyH4Iv9LsgXuXqLvJCi9Q22feTztczXQjgkl0WqOcPtR4e2SuePdpELuhMvJF++BjDSbe08
	n3QOEdLfvBBcyh/pTr5LWh3QH8XPuXX+Tuyeyh43sigSXgUKwlAK+M6L8g6I4rCt0467idXHflxzn
	qdZ2afNRgyrGeqE0P8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSa-00000000DqH-1XuO;
	Fri, 09 Feb 2024 18:18:48 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSS-00000000Dj7-36vp;
	Fri, 09 Feb 2024 18:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707502713;
	bh=WeIVl1zwKI+IWUXLWKWVFzcLpHB4iw+lJXds4NyJ6UY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XWY9HYO4btgqiR9IRipS2lfv4IjIZtUPD3yRwcavdOewzEc/uu4PV3siERB156nqw
	 CXrrlYH1HK8pbMo3eHCGCAvYMrTgH4Z0ZlhU6Q9ScPqMxh7WlWXqQvyVHlEa8LJzJu
	 c/7y2ZjRB5VmejTRAjdJp8SHFvLqs5hjyvIjWNhy2jpHMQDmWPydsCSA79vTk4b1BB
	 RyX2SxxebKvzwMDpBdcoP2gwfvvpWFH2QG9vb7vQYT+Iu8MVE93weh8vcL2ehVFtNo
	 ndWbuc9uWepwdye/yy0FnGjVp+QfHgt+GGW180Vq/jVTuU5XCWftc0Y+Ey8fzpfkjL
	 FoP1iELJV6J+Q==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A0BCD37820BB;
	Fri,  9 Feb 2024 18:18:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9EB3B4800DD; Fri,  9 Feb 2024 19:18:32 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 10/10] arm64: dts: rockchip: add lower USB3 port to rock-5b
Date: Fri,  9 Feb 2024 19:17:26 +0100
Message-ID: <20240209181831.104687-11-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209181831.104687-1-sebastian.reichel@collabora.com>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_101841_047859_3BBA3C2A 
X-CRM114-Status: UNSURE (   9.14  )
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

Enable full support (XHCI, EHCI, OHCI) for the lower USB3 port from
Radxa Rock 5 Model B. The upper one is already supported.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a0e303c3a1dc..db6f0e91f62d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -736,6 +736,14 @@ &uart2 {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -755,6 +763,14 @@ &u2phy3_host {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&usbdp_phy1_u3 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -771,6 +787,11 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host2_xhci {
 	status = "okay";
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
