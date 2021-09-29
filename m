Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3AE4C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A729F613E6
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A729F613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pwvhW2JpmmG0c9v/DVXWpmR4CCwg20kDIKYDExZeW8=; b=pCEPamqm2KVYXr
	g2XeljJI9pHo/LDRZSfWsynBDlRgd8jwZpsdaGCxfJqqqwj7xHJpdC78qtGjIeDNi38b7PL/n39NX
	+T4KsJDw0sX8cvZnQ/TSCsnYTThFBNSGywMZpOrHRP5jLSwEHa1PZf8xzFvx5YAYwF01/DP+nZ/83
	bE1EeMIVOcaU4fl8B1a2xHCAJVaqqpuI8dGGvG/m+kz0Ue6fk87b9JwDi7FTsVSc7W2+kAdXTOC1s
	50zEzX9lCOOaRA84RiZ1zIqUDVbX+wCiwg9UfYjiTVDUfRXnR7/Ud6qV5Gv0jmPOanLUygW/MGyc8
	HpoeNjR5rc1EFmExxIPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQVE-009q52-6g; Wed, 29 Sep 2021 03:43:28 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQVA-009q3B-Qc
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:26 +0000
Received: by mail-pj1-x102b.google.com with SMTP id
 rm6-20020a17090b3ec600b0019ece2bdd20so830900pjb.1
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xq2NpHe6ad7cANQsELmFsUViShl/aGN1rmvD/DyXUH8=;
 b=LW2pGsbB5Y1jeLWAHAJoqfVzVLuFZHpQMqraDf4KywmgxHbM4aU4Unq3+KlTvi7F05
 o30P5YFTH/1/bmXEFN5RuXCD9YfPT8lq1j0F2fHs8LRhszrw49SA3/c259MZjaUsa9V7
 E4afw3BXqd0YxlEb++eR+m6Cjc/KHH4115qajxRtWx+do3seR+VZbYem0ah4PPhQJjfg
 LSWP9a3rPPaDeqG1elW/2uQa4h+nEowl97YKgZw2KsFUnjSJBUvx7FaJIG68x6jDdMdr
 Sdl0xePKkwh41w0kHlVR2ctMZgdgfuyJr2VR7KjGCO3NHGQ9yPv//iKYRoqGhZdoqj1j
 2AoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xq2NpHe6ad7cANQsELmFsUViShl/aGN1rmvD/DyXUH8=;
 b=w1Abthx9G5VbAcYHBC77SKUuh/zMerv0NvT5xiunDkLJ1rUF1GxUvsjXItGqnoL+ms
 3gNA6ePfx6u3GXwX8gEikT468jA3EpTW9fX8fPIgnIgaXJtU6abjChZuy+5IGzUHhGPl
 bNSW1m/fj2QPKzp7kD4gjKqdDAMbVt/SERw9sZTfsjwVM5RWdtIEcaMTTSZdU3MeEuwk
 mqe9CqXj6SacwLARY8+HdOj95Fan5Jj6qUqNGQBfEiNaIHDRH8acj28i4FkjaI6FBBqZ
 2FCF6Fku4/20fqlq+ZmniccZ03fKttJz9rqxGrJ7ObsBMvjCMl7Ps/pYNW/yUc9zjwsh
 B1+A==
X-Gm-Message-State: AOAM5312lLFV2uickYdjZC9xZFM21zlwnSfIkIGY1VEQwKnISzAMo6Ze
 bVZvRrzPkA+w7dGcveszztmtz7/+xyRfjw==
X-Google-Smtp-Source: ABdhPJw8885kvnEY9UOdwpXr8PgeVGll+IZ6ScxU8x3GlT19uRgBYRyOIPb3DMNa6mMroToiMLpIbQ==
X-Received: by 2002:a17:902:650c:b0:13d:baac:1da5 with SMTP id
 b12-20020a170902650c00b0013dbaac1da5mr8316566plk.20.1632887002101; 
 Tue, 28 Sep 2021 20:43:22 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:21 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 07/10] arm64: dts: qcom: msm8998-clamshell: Add missing vdda
 supplies
Date: Wed, 29 Sep 2021 11:42:50 +0800
Message-Id: <20210929034253.24570-8-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204324_883413_2EFFB2FB 
X-CRM114-Status: UNSURE (   9.94  )
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

'vdda-phy-supply' and 'vdda-pll-supply' are required properties.  Add
them to fix the dtbs_check warnings below.

phy@1da7000: 'vdda-phy-supply' is a required property
        arch/arm64/boot/dts/qcom/msm8998-asus-novago-tp370ql.dt.yaml
        arch/arm64/boot/dts/qcom/msm8998-hp-envy-x2.dt.yaml
        arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dt.yaml

phy@1da7000: 'vdda-pll-supply' is a required property
        arch/arm64/boot/dts/qcom/msm8998-asus-novago-tp370ql.dt.yaml
        arch/arm64/boot/dts/qcom/msm8998-hp-envy-x2.dt.yaml
        arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dt.yaml

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi b/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
index 125d7923d713..3f60575a351c 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
@@ -313,6 +313,8 @@
 
 &ufsphy {
 	status = "okay";
+	vdda-phy-supply = <&vreg_l1a_0p875>;
+	vdda-pll-supply = <&vreg_l2a_1p2>;
 };
 
 &usb3 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
