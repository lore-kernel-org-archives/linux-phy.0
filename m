Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C71E6C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh5FBYkiPrFaS/Zq2sRyEBOLUgTI3kce0ygF/RrK3ts=; b=qojI6vjDMKKuCo
	w+d+3V8EbPcSGy+hAqmxzHKUDSvENXVX/HP4+QqRQ55rAfYEvmfmYAFJvs9K0BfVoD2aUd8cB2sKn
	XlBAbmQoV99pSGGZdsYfX8ZBMd0GooECfrTqLWVmbigNA1G9mx9xow6tfHJwLIvFsUIYO8HgxlufA
	dXuDW+up8L6DvfvxexZMxSczQ9wheSJj/a8HagRwkw73Hlv9oWGJoS3iyEJWCoNpE7E3r3i74orQd
	PYPqyKLhcipu7RrZ/NnkIMe4EiXtHpX6P8mywtLym36wqttk+jb0qeu+MU7LqkIY6UjKaiJQgOeA/
	j9+aq53fKXDgd0c9x1eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Qdf-00000005xfW-1ulu;
	Tue, 15 Sep 2026 10:43:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdV-00000005xW6-3uoU
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=czoOrQkTCM70VZKBNhJxXyCegI+z86opj24pXPk8LIQ=; b=F3wC0/xExy6ai4nOksEEZp0eu7
	h1G90/3Xrs9sSt/h0Sq2B42GI35njzp8WqDMwkU1or6MTfGpMZzg9lboqR8LAfztE+Bb2g9+/2zMu
	4v8Vci/xwSEPzCZIlsiuAtxyrTg5LMS+TnrkjzLEIxfr8wZjmoma4JSbUwjTHGNuWju+u7MlFMyZD
	0m/tPvRvyD/sPX3Qq7WMZWpK5FQqU0EIT4ZW+KYqY2zFfkVdMODvaJgZK4CCPYVj8uM+QJhkK1JHb
	v8wsIhxMfnfQ5ec71MTPbhoTdpeuB2d0I0CdhMpfnORVeP1x+azEPDSRRZZl9Vm4dvRXNjvjzPB6f
	eVinyVNA==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdR-00000006Ziy-3fGY
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:36 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d1ca5b0d6so790365e9.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469013; x=1790073813; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=czoOrQkTCM70VZKBNhJxXyCegI+z86opj24pXPk8LIQ=;
        b=qxj3kn4wumonhncF1hRXNHyhCZm9nCvLFRvJQC8nawfQzu/Ol3umXqStgsJCqYfn3/
         E4FuK3n0WYTN9jieXKzBO1FXKJjs2JESFcb70rbtHhDIeYNbdZwttdwc+r3E4DN75Oe+
         lpM/AHXeRGIqJxzU1hcMFApi4g1rWLkHE0y5wy4QX8BRZpaDZv+AmqGrnkyhF0HEwCMm
         pH1sUtBZ256Nud0108lwA6MFZxa8+7z48jpLJTgyw6FUHwRayn3kHXbKF7HLuUEgIkdz
         AkT5veFLuEza6+UuVHyYI4+we0qkPdPLJYm/7Tjh/t3NRfVQKjTZcrSTlAOaYGBvKTGg
         cDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469013; x=1790073813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=czoOrQkTCM70VZKBNhJxXyCegI+z86opj24pXPk8LIQ=;
        b=h2ZazaryZIL5wmigNdMoNL8D3KG/AS/hQLHCvTig+KoJTBpx7TLhScYDrnJx70+cjR
         2FPlm8Zz6GGd43jyyy691TlvHsHzQkceS/sLnK4uv1TozSMznuPbTORp4HfN923EV//o
         32br0cI6W7lWt6/XeLor5J6j3PNmCqkTojdHri9xbs4sJ9MObaDFeYjJtJscaSXC0jLJ
         YyhHpWuCBFOZ+V82Qj1r9T6imgXbhUxDD0PFl4CPthe+bZM5gwgJlVZGM0j971z3OZNH
         /3bfTSrMIxcOfZRYOqQsAgZPWiKFxl6s2aNaqwR3PhrwJrLnJ/4jXP7eoxq1NS4C3Ytp
         L88A==
X-Forwarded-Encrypted: i=1; AKwUvBw2oxhEYBikjE95FZKdfizkNATbHc0NK9Y8/oSavpaABGxRW2rR/wNo3+mdxmMe33hIAorD8+p/UD0=@lists.infradead.org
X-Gm-Message-State: AFuF++lWfEEP1aV2mTm9Fyawu+G7pAMG7jP35kNost4+6dMypMUPFM45
	RqffavVgnZy1M7atlW4PsSkBp3r+amw8fgnb/5dHrzPgmDy3wzyrAKP1
X-Gm-Gg: AYBFou1/05VDZ5vwxvHKOSutRIl6UymtJxtP90/UElPJydwZ512+oTwjXH0xNACD16/
	EwzHi/OwZIiPTUTn79lrShhiN8hd6PnynULN97voWg0R/g20CL61l22q4frZ1jOgmiSKQt6YMxP
	gHiOIX0Q9FLA5k2GKNSn8HJ0t3lanKkGPSjbNOVey9BMYcerHvmURK2sZg+RWCw6A/qTnfEIh3G
	1MF8Ptja9Fc2a0z8LHjJA7FUcLoyrtz2vdwOpJs3mmbNxAwA0UzBm9OEABrfqsmB/RZik3LXRVv
	Mb5bY4+Q6noMXDh8W+lmVKeGfLsHxjfcLMw246fd6Y9fDvQpIsoFsGoW65aJxHIwcVbrlDVyLxG
	z8rmZkP+5iPOy8E/vFSt7gGSoS5uUjjTLUCMHGFjuicT7S64CEw0eG+bQFl/zptkOUhWPyPVo14
	Kr6kkqpSe4Kuh2H1u38FCEwadyg55Y3NulRLsgtFDbyYvheqMWDRxMiftJWUkDNdATImoKer/uF
	hfdTOmrDBdGE8hMkTIfYsRr4sofzKI1lLm380Iru0wOIufQZp8FWCwobq/x0AuzVTqdJPYjVoca
	2A==
X-Received: by 2002:a05:600c:3548:b0:49e:6ac4:b76e with SMTP id 5b1f17b1804b1-49e822a6d43mr7233625e9.30.1789469012386;
        Tue, 15 Sep 2026 03:43:32 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:32 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:49 +0200
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add csi dphy nodes to rk3576
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-4-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=2044;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=bGK8ht4ZsYBRwxHCHXvcjD3xAuJ63yHglUCiy5arzTU=;
 b=yeWXeDtjlbYXnbnHo+rBAMifURbyetkigWkciYlnmz2Njk1RBaH1wo4bBYUGlJC6lwRWoDU9b
 tW+D2K+PqmFCxhdXa68gYb5iLmkYhzprkayLva/21NsCifePTjlEZH3
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114334_045756_11725FCE 
X-CRM114-Status: UNSURE (   9.99  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs. Add the device
tree nodes for them.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 34 ++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..b7a527614243 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -973,11 +973,21 @@ sdgmac_grf: syscon@26038000 {
 			reg = <0x0 0x26038000 0x0 0x1000>;
 		};
 
+		csidphy0_grf: syscon@2603a000 {
+			compatible = "rockchip,rk3576-csidphy-grf", "syscon";
+			reg = <0x0 0x2603a000 0x0 0x2000>;
+		};
+
 		ioc_grf: syscon@26040000 {
 			compatible = "rockchip,rk3576-ioc-grf", "syscon", "simple-mfd";
 			reg = <0x0 0x26040000 0x0 0xc000>;
 		};
 
+		csidphy1_grf: syscon@2604c000 {
+			compatible = "rockchip,rk3576-csidphy-grf", "syscon";
+			reg = <0x0 0x2604c000 0x0 0x2000>;
+		};
+
 		cru: clock-controller@27200000 {
 			compatible = "rockchip,rk3576-cru";
 			reg = <0x0 0x27200000 0x0 0x50000>;
@@ -2848,6 +2858,30 @@ hdptxphy: hdmiphy@2b000000 {
 			status = "disabled";
 		};
 
+		csi_dphy0: phy@2b030000 {
+			compatible = "rockchip,rk3576-csi-dphy";
+			reg = <0x0 0x2b030000 0x0 0x10000>;
+			clocks = <&cru PCLK_CSIDPHY>;
+			clock-names = "pclk";
+			#phy-cells = <0>;
+			resets = <&cru SRST_P_CSIPHY>;
+			reset-names = "apb";
+			rockchip,grf = <&csidphy0_grf>;
+			status = "disabled";
+		};
+
+		csi_dphy1: phy@2b070000 {
+			compatible = "rockchip,rk3576-csi-dphy";
+			reg = <0x0 0x2b070000 0x0 0x10000>;
+			clocks = <&cru PCLK_CSIDPHY1>;
+			clock-names = "pclk";
+			#phy-cells = <0>;
+			resets = <&cru SRST_P_CSIDPHY1>;
+			reset-names = "apb";
+			rockchip,grf = <&csidphy1_grf>;
+			status = "disabled";
+		};
+
 		sram: sram@3ff88000 {
 			compatible = "mmio-sram";
 			reg = <0x0 0x3ff88000 0x0 0x78000>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
