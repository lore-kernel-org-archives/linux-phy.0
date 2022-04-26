Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED70C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 26 Apr 2022 13:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7VpEbiF6HHMkC4piE9X/eVKWuf2gaqCKWwlEm1A3ds=; b=i5txG+4IQgfBKi
	0jUVMKEJ1pa2eHZPsKQARcATn4cmU7ktMD3djHe60sx1bKDmZmi2VwZTDvJ5aagVCCbFYKXRY4tQ5
	GCcOBTnTmT4vkdRQ9yyKx7AN0xq6T31vMlPSLjsm6ilkZv8oyfb6134Cu1nu7NkUSZtAEUdJT68aG
	2fmK5w+0qnqD/O9flSupxnD143jh0wUbInSF6yPtPCpbor8YLPkm6LwqHb0U2DebjcDdEAvHu8e6k
	+aoRNCBXNx3gUukkJRiGvUffoy7q0uRuOMvRQwcjQzVMSlr/BR2H7OfavL8MsUj8GYzj7xyaLYicA
	+ArKZPKphum+opPNUkew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLBH-00EZ9k-Ie; Tue, 26 Apr 2022 13:24:39 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8m-00EXlJ-2Q; Tue, 26 Apr 2022 13:22:06 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout1.routing.net (Postfix) with ESMTP id C3F1640086;
 Tue, 26 Apr 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979319;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VkhfJuS+AVJ54XXqipwOxShV0AElnk6uavmHbdNOYrU=;
 b=Ewcjje+8u5iJv67p1qepyIOYbaQF9i8p30gX68cIU97FuGB/Eo8e2N9J2b3O5cc7tTWEaG
 hsOWJRhjzFvN82YKZQ9iRvZmJmOkUvTJHPp4oZXREmt6/s8LppEzdbPjhXky20d4kamXG+
 0clo/XwwliOl0ITw0TowSyzrkDelvjA=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id CEDAB401C9;
 Tue, 26 Apr 2022 13:21:58 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC/RFT v2 05/11] dt-bindings: pci: add bifurcation option to
 Rockchip DesignWare binding
Date: Tue, 26 Apr 2022 15:21:33 +0200
Message-Id: <20220426132139.26761-6-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: ba17d6cd-eb1b-40e3-8ace-397898f043a2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062204_297145_D171F65C 
X-CRM114-Status: UNSURE (   8.03  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add bifurcation property for splitting PCIe lanes.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index bc0a9d1db750..a992970e8b85 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -74,6 +74,8 @@ properties:
   reset-names:
     const: pipe
 
+  bifurcation: true
+
   vpcie3v3-supply: true
 
 required:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
