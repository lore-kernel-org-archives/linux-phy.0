Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15461C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ5/d3uNjSJg8xmCCBE7sQBcxx6Ud39wxb2qOd4oSxw=; b=oyxCD8DrWLKuzD
	EyVSySdDbHUa6c2Gted2SjIadFUqKkFOJHdGTDiQTMWslHP6G7HIQhx8SXtUJq628KzxWIH+bV7l9
	fazHEoPEMWC/HR0h83wQWj8QOJskIAISOD+/a529LaT4pisP32Bdxyxho2tVFEJsmoNrUoQ54P09N
	2jc3I0dTpH/3qaKtSBRh9+/bQZb3FZlQpjhJUOHnKR03j3nlqTx0HdzUae8TQAxielFeHp0GBYRHH
	Aqx+1YDI6toRNrnMfooORQdupmkRPkZEztXoMXf/T0ngFCXsYgxvLHt34/z2/VaPVbtE7VvcnJLgr
	MZp7AtOhvIPqJyNb0Dgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHU9d-00F2VX-Cl; Tue, 08 Feb 2022 17:19:49 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU96-00F29h-7F
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:18 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7D8B540061
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340754;
 bh=VHcPmkTeJVNyntx2kBlzhzsUutabuRvxOsRCpNXtu84=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=eE06Fj4wsqL95Vd+feFDIykqxaN7KL2zmkLVutUvtJFuC1G/3vQiFAMOY7AuREyle
 22aMTq1RepW7dXoFMxxhYYs/rA0M424g/3puGRengNeLOvqP15OZY80NoB4a9zvvbs
 e6e8Pe/NkcuSFdigFayGrq9hFt5ui/pHH8qz1bNcbaAuP0nb/asGXMSxQpVFmoysq7
 L5vbblG1Czn5LC0/PxM13Zo/nTd0w/aP43vGIib0Baz07kVIkyoy4z4o/LFYIQe9fG
 5ZYLd7fxCIg9PiQ2P5equNqHeqe56eps8JguIYE3SovCg6XvfQIL9Dh4kSQewXJbVo
 iQx2deKWRg0zg==
Received: by mail-ej1-f69.google.com with SMTP id
 q3-20020a17090676c300b006a9453c33b0so5987661ejn.13
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VHcPmkTeJVNyntx2kBlzhzsUutabuRvxOsRCpNXtu84=;
 b=0UoEaTsIKlfGsJ1X7K5xEy0UxjoqVKOQlaHS+14sIOicg1ydKUoHTxSh+2tnH8l33d
 PhnrOexrDisQFkhe6xZzcc8CbwApq7KQkGX68k4XDCsxtwesKGFzYtdCh1aYcfxr7zgh
 iGSgeeurbGZHZAdrhA/MBeXx503gcHM+OrIiGMh6qnNh7I/9z8OY1Vf7VO1wJZ8dnB0y
 fMcRuqZWHh6ynVMA2rV7oh2XZh+7l/ejP7meODtGgP1wRVYmgcIdeDPp1YzoeyoTiXb6
 3WFmh6Mz6m97QhaNwEKGdKwvBOhmrQqzB4BTUDAHfhXxNloPI6Fym7piBGac/qSrefCg
 dmLA==
X-Gm-Message-State: AOAM5303nJKZWM/2lOK4RzHLNSl5A8+Mw8Wf2Y7bBlXAUQRTTdYRDdDf
 8JcvvAWUwe8p/tcr9ycZEuZLiqeO+YwbglVdQRqqQQCfvl9mz5jTeVRERq6JF2EASSEXIdK/+hP
 PEW3NUekb5GArcNkq1TX4ppddIAMGmMsAzwiWlvhbIJU=
X-Received: by 2002:aa7:dd88:: with SMTP id g8mr5421147edv.437.1644340753083; 
 Tue, 08 Feb 2022 09:19:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzu+cFFUCenp9+7nbzSzHf1p2aHa5gSlHKLF75wAskvl768sx1e6yjGcesa9sVQ2V3f6PILbQ==
X-Received: by 2002:aa7:dd88:: with SMTP id g8mr5421132edv.437.1644340752936; 
 Tue, 08 Feb 2022 09:19:12 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>, stable@vger.kernel.org
Subject: [PATCH 02/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5420
Date: Tue,  8 Feb 2022 18:18:15 +0100
Message-Id: <20220208171823.226211-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091916_468413_0FC6F63C 
X-CRM114-Status: GOOD (  12.45  )
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

Add required VDD supplies to HDMI block on SMDK5420.  Without them, the
HDMI driver won't probe.  Because of lack of schematics, use same
supplies as on Arndale Octa and Odroid XU3 boards (voltage matches).

Cc: <stable@vger.kernel.org> # v3.15+
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-smdk5420.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-smdk5420.dts b/arch/arm/boot/dts/exynos5420-smdk5420.dts
index 2978b5775a6d..4d7b6d9008a7 100644
--- a/arch/arm/boot/dts/exynos5420-smdk5420.dts
+++ b/arch/arm/boot/dts/exynos5420-smdk5420.dts
@@ -124,6 +124,9 @@ &hdmi {
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_hpd_irq>;
+	vdd-supply = <&ldo6_reg>;
+	vdd_osc-supply = <&ldo7_reg>;
+	vdd_pll-supply = <&ldo6_reg>;
 };
 
 &hsi2c_4 {
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
