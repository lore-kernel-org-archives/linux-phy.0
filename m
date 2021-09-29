Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96EEC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 851DA613DB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 851DA613DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGWJKBL/NkddHrJjIGgFv5VQaT7hMbrNg4PPxHVwI7E=; b=TQJz7hHA/f2NyW
	/+YZZBZ3iG57V4CUUnBHq85ltWDmobBDPN/4tqcHlWh6fvD7ocE6glwERXfubVtPNdRPpCGn6K2Ox
	uchI/U88O8APWbYRI2P7Nve9M2TZDmQMyZ1E+x98aa9OrQ09cAJgm9IFDLqOPUF8b2NvcGAXlH6/U
	RN3iP4Y844ulFdBAeNmct33/9mZRkGHk1sqjT9C3/pJyugXY2H0hV8CN+FAMApCXoBGknH0mryKVk
	jd2TIMe3IKz9YpTzVT2BMU7ww/w2daZbSvcfIqaHnfkesj+eapVGDlMnq5nJtlZf1wVSrMVQATihT
	q7XH8EzR29wql1KhVOyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQVA-009q3P-4L; Wed, 29 Sep 2021 03:43:24 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQV6-009q2F-ON
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:22 +0000
Received: by mail-pl1-x633.google.com with SMTP id l6so572059plh.9
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OGr1UhBmzv1ZbRN4Jw2f9I0cji4GhDLktnzGXnOfSCw=;
 b=lojz6FLPpIyl/A59txe+JHKvs0tCb0UDRptBdBrDrIrrWgrcokj/x1HSe4Hhp50GYs
 U8XmdWwKpC+k+MPz7KBY1yZHubAPNbDt7Tdewt3igCI4axF5G3kxktfW2I/52ctLAm3x
 gN7JAhAuyFMi3HXqIdRBNTpz0BUJi0q4mM8jTzZO4kk4l1fZ6soZgXhvBEJ1Ew1liuam
 chGBsDQGCbKP7wl5fYYfkIRCb2kLudDdbwVhZNN0PcvlnsR9NXxjF1UQoZhES9G0fwyb
 3d2xdnGW6IDDlRABDOMrF87uTfdMdCmbqv4da/f2gfFWVN+UrGXvc1GHxoqFJWG7g8ho
 GSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OGr1UhBmzv1ZbRN4Jw2f9I0cji4GhDLktnzGXnOfSCw=;
 b=bnlDxg5bFhfJKu+/D1XfgQ6h1vsgufhRwhwcR3JerBt66ptFoRLcla4XkRrCHL+ZKd
 7KKdIJW3f3G0fIPBXhxOqWzxZP7WrCiacQUrIdKu+9b/d1Sqg0a1CGmIYlhnDQTKnk9C
 Bp1S1/u28byDRwdfRJCMZ6OYD+2fLsUW8uzIfkpM2Ab263qX0+1CfMFoBjIx/nZEekFI
 7pyoT4o8S0IDIT0UMreru/az8+FdLOi1mVXrYtJBoy0TvxFQoz+C5FYnFePoCDUHIWm8
 OO+Er6ojGKLetGwPSbjeeCoz2W4tTH/Y9J7mTtZDIBczlmbKZwnAKkpZtXf72mHfTV3B
 Zr8g==
X-Gm-Message-State: AOAM531s2Bm5xJ9pRGlKXhNw4bSvhaW/3tQ0wZQ4r418iGTI13Q5fzDT
 EM49AvEMIyruwgoCwqrzCj/Scg==
X-Google-Smtp-Source: ABdhPJz/CbZ/RVuQyXsLtfbfTUh9HP70UcEOYZ/Z9mDXIxeGLpabjuICfiiIaLeetmoAaxOHYEUvjw==
X-Received: by 2002:a17:90b:1b06:: with SMTP id
 nu6mr3884145pjb.15.1632886999671; 
 Tue, 28 Sep 2021 20:43:19 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:19 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 06/10] arm64: dts: qcom: Drop reg-names from QMP PHY nodes
Date: Wed, 29 Sep 2021 11:42:49 +0800
Message-Id: <20210929034253.24570-7-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204320_818649_A25EE493 
X-CRM114-Status: GOOD (  10.26  )
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

The 'reg-names' is not a supported/used property.  Drop it from QMP PHY
nodes to fix dtbs_check warnings like below.

phy-wrapper@88e9000: 'reg-names' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
        arch/arm64/boot/dts/qcom/sm8350-hdk.dt.yaml
        arch/arm64/boot/dts/qcom/sm8350-mtp.dt.yaml

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index ac775189a2e4..216d703f3e55 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3678,7 +3678,6 @@
 			compatible = "qcom,sdm845-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x18c>,
 			      <0 0x088e8000 0 0x10>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4e943e4a93c4..99cd54c69956 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2994,7 +2994,6 @@
 			compatible = "qcom,sm8150-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x18c>,
 			      <0 0x088e8000 0 0x10>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index b19a3619e56b..dcda4fac46b1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1202,7 +1202,6 @@
 			compatible = "qcom,sm8350-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x200>,
 			      <0 0x088e8000 0 0x20>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
