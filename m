Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F967C87FC6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yg13MB3KTc0ADe3zeJacRDWDpijH0s2OAhqZiRPLL1o=; b=3P0SxT1b+J+Qf9
	HIsdiIkVqWxKs4wrK67ZpgJteo8vsl2K27VuMF9KIOpThUV+7A+SqfuShI9MIDFq7BAYSt4TUp5v3
	pGDlI8GU5UUczUXCZ1rqjscb/OmT8JjrRz44qlD2bhR0Ic/z/Ht5br41sQxZY7kLu3mmZu29DcYqL
	lTZYVMGFcWxvpnlNdyYhLh+LkXBJKfC4eRO/FoZGFUg9HxZQm+rkak2m1sGBUWxzxaNG/+F70/AJz
	BOyjqitzRZX4gqv7ah8gkgvnNKka2qL5LaffX3IhPdEiq84WLBSvfDPyMixgDHoCwZ4eRgB97U+im
	1kEPnwNCXHd7tVp6eA8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5n-0000000FxSa-3lSG;
	Mon, 21 Jul 2025 02:17:27 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKi-3Kvd
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D73BBA527BF;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802EBC2BC87;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=JyF87RPkDaLpT/P1HT3Qoe8Kdjq7ScIPnxVM9dDy2FI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ogl8rMKcFjFfp4WaJ3OojUvBzj92K6pwdAcGfAiBwQ3klLiuK9XLOfHcbw/wPKt3J
	 a+FmlCIOmtcvO0n1PCFhXAItuwmkzzo40QOSWr7M8mw5oNwnSlqz6X5sdiQuFgZFwS
	 44z34NwEZQNhI48E64KR8hc425KYBbsGQE8yUUzhpPkWJgtqUkmfb40/2uL46dByk4
	 PCKxBral+oVzxrIXFzd2HKvOBPrB+oxVvc3Ps4nefXiidCGWRgGD6Xjn7RpO5XdKQe
	 Jye3nyqCUyVAYssUqrYFBTLwtwok+IN3nAm3ipRWRtKIkTKCXqzRWPa22bUrtitPV/
	 G7jPCZm8+eDZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7346EC87FC3;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:01 -0500
Subject: [PATCH v2 07/17] dt-bindings: clock: tegra124-dfll: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-7-9cb209f1edfc@gmail.com>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
In-Reply-To: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1036;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=7rvUsu8rYJf8zTq2a+g5h7mFfug/TkyFU9zjev3k0Uw=;
 b=DrQanWee+Rx+lddFQvDRapAfBnA2NR9vY/ny51dXSZ0bSOOgc1bqODjRYW1wyzQnXGTariAB/
 mAcdH679EjYCMp/HlRUV6jJmnA8G+fRhEY9jSMEENisTspEuzUuDWKR
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191721_968568_29E1D269 
X-CRM114-Status: UNSURE (   9.06  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Add Tegra210B01 support for DFLL clock.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
index f7d347385b5775ddd702ecbb9821acfc9d4b9ff2..aa7d50d4fe6f2c1c2500c53e3421355ce2b67599 100644
--- a/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
+++ b/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
@@ -13,6 +13,7 @@ Required properties:
 - compatible : should be one of:
   - "nvidia,tegra124-dfll": for Tegra124
   - "nvidia,tegra210-dfll": for Tegra210
+  - "nvidia,tegra210b01-dfll": for Tegra210B01
 - reg : Defines the following set of registers, in the order listed:
         - registers for the DFLL control logic.
         - registers for the I2C output logic.

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
