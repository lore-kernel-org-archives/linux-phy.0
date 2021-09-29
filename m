Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00CBCC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE0E9613D0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BE0E9613D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8lBZ4HhXGwRNZB+5CiKR9Lb4PARvTvx+WRNn+Mvj2Q=; b=c1n+lRry7ilv8/
	35HtokoOYSCOztVW/lCYIj3T2wkjqHWcbYq8SGHPilNcSDGaIxstLDvYDkvhO9AuQLoEjShLwg05/
	fcwqnyRSlKAGerWLwDwNI3CLm+GPXcGDIdkdjIMg96GyR5OTq8nWrLaW6SClXvZqyHA9/fW+c9tJX
	wBFsvLCbJf/Lz9hkXQ7W3viB+5LAfg+t4UJnUXxYHXlueHf0y5M9c2/SxLxbs+gVjbd9n4IIUGPvx
	7Arrpi2beOJJDsyjqWAmKgoGGkLHZjnvEVfLpYNlLofhAC48SI8jxXXF3sh7pm6tiKYv1ODR6Bkgl
	qC9M2QKNvQqbMWXrgb6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQVH-009q5s-BN; Wed, 29 Sep 2021 03:43:31 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQVD-009q4p-KG
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:28 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 oa12-20020a17090b1bcc00b0019f2d30c08fso856265pjb.0
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UOOcJZV6gj22BRd0bEA+ZluqkkhZsRM/yGjJb6jNii8=;
 b=nZ0GLUYtczh9yl8f041gAKYaiilhRGXWN5A2duArMR1h0EKOF1xaUvSlqBJ+PGlr4c
 rYyUrPEoXI2/E1NvNsvBNfb70Rreitk/pKTbfqxJPxgV7YuePkwDv2e643cDyP4EsjUi
 nEF/aBU6+ZMS/ZX914DM9VNroP5tmYEx00oGtBewXPQauaKb9rv+c4khkKyOjU9lQ44m
 PdvmvbBlhxaupvSflY9nJHAcuEz0P55rWMJ18Ggi6TaIrfLAKqOr+yNvTEy7quAXvCDm
 m/gdYeacnv0vYCTs5t3xynX/b6O3TEkmXVs08xb06ugcH4jNQejTr25WyYBYSntmf5rm
 bGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UOOcJZV6gj22BRd0bEA+ZluqkkhZsRM/yGjJb6jNii8=;
 b=KDBW6ZUeY7VdrLPYzYaEnbXkyuBHjxzPDgdMuvckMuPBnw7EYGDAh54kSd0X5fLRN6
 dlB7un2e1jGNaWBfvATqVuK2mK1WRtvg03wMU0bA5QJlOr15e4eG3x0Y8O0AgfxubIsS
 ycIbeWUAzhzh0mfSOLGvE2K5Gux0QKHbysK0LuHLPTVTEfjIyMNUH33nJSX4pPU8i20q
 mrn4dHdx+ZjGNEn4qwo8dSYxE++f+ijpBiYQRHfocAj/VAAZ2O/WI+03+TOdYmOZ5uB6
 2w7T79RPpq0WWttsQ65oxUQedt5X5/a9GCjDZbuQLbfmSL5iUWgjab9NCZg0pf8MEwGk
 dekw==
X-Gm-Message-State: AOAM533q4Uz+03NFIK1XnUT183Tkk7gg5HflVynH9pD+hKF5RMtjYm1X
 lpoMu1oOmWOSsaCWem+OwZjkbg==
X-Google-Smtp-Source: ABdhPJwOmW1xXVQTKFzcANawDyvW7PxTPcC/EOfu0SikxfCQs49KtBTqf7yGEhqldXzGJE1UJL7jWA==
X-Received: by 2002:a17:90a:5ac2:: with SMTP id
 n60mr3793208pji.184.1632887007063; 
 Tue, 28 Sep 2021 20:43:27 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:26 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 09/10] arm64: dts: qcom: ipq8074-hk01: Add dummy supply for
 QMP USB3 PHY
Date: Wed, 29 Sep 2021 11:42:52 +0800
Message-Id: <20210929034253.24570-10-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204327_682591_526D37C4 
X-CRM114-Status: UNSURE (   9.60  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Per QMP PHY bindings schema, 'vdda-phy-supply' and 'vdda-phy-supply' are
required for IPQ8074 QMP USB3 PHY.  Since supplies are not added in DTS
for this platform, add a dummy regulator as the supply to QMP USB3 PHY,
so that dtbs_check stops complaining the missing supplies.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074-hk01.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts b/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
index cc08dc4eb56a..b5e1eaa367bf 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
+++ b/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
@@ -24,6 +24,8 @@
 		device_type = "memory";
 		reg = <0x0 0x40000000 0x0 0x20000000>;
 	};
+
+	vreg_dummy: regulator-dummy { };
 };
 
 &blsp1_i2c2 {
@@ -97,10 +99,14 @@
 
 &ssphy_0 {
 	status = "okay";
+	vdda-phy-supply = <&vreg_dummy>;
+	vdda-pll-supply = <&vreg_dummy>;
 };
 
 &ssphy_1 {
 	status = "okay";
+	vdda-phy-supply = <&vreg_dummy>;
+	vdda-pll-supply = <&vreg_dummy>;
 };
 
 &usb_0 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
