Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32688C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A577613DB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0A577613DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aDuEDGS2Dt6YR6JNlDySL+C9EoXRbvry2y2n6c8+PU=; b=R2tfCF0A57pKEP
	1Yh3x5L86mIrr+WQt87l3ufHIZGlagiIqZa4SB/3a+X4mw5vV2OPgkq8TL7wqARn6ZNUzAC5UKsFv
	xUTHU/kZRKTg/Ek/sJnbpdobqwi4iA/jkGTESe1OIRPbwJc9PErFSxP0JmBpEPG/LMDtf7+qePTP6
	6tnbS/yDyY5SUYs2+twSdd5YUF+LybAZHuc951RQuGNh5RN+tehTHDDzcCdcgRmBC/X8wtxpYX/q1
	aGou51so9rw+u+J/JltwL55fucVmdGWnp6xLoRsh306lY+yooCWt0gqVogYiYJCVrGVot9MWJYOWR
	AyH97L5tNkhXcMEZ7GYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQVK-009q77-JE; Wed, 29 Sep 2021 03:43:34 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQVI-009q5Z-5b
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:33 +0000
Received: by mail-pg1-x533.google.com with SMTP id n18so1275394pgm.12
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FYXdO9hJvhFltLYbg/A8prSsur4Hc5VN104uh+rlA1o=;
 b=VOBqEd74mVR9Y+lhOSmIztFfoJmPWTu7mP445QOv9cgjUnontrVnGc+EfpbzmbuB05
 W/k4Lj/fd6Olb4muOd06V6Si8QV0Ft1iYCxM46WvEbRfccp9NrMHLrxiUKvqxoZuJdpS
 HPjCSv3b/L3WCgEPsYxci0743LdgOAmyge42cN8S0WNixC6Fy/P9saTORPTNh0kDe5KA
 WvTc4SPsXEtYjlBW/W2v0dumVL+vKuwGY91go5qPATPPPGSGDP6ypU7CmMMw2O0rCT/+
 XSJcBs3u++amTRYkUvXAYGNyX9eSjRZ9ZchdMFLcZNNlRNRvx6BIiitP4OgfjYMp0cd6
 IRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FYXdO9hJvhFltLYbg/A8prSsur4Hc5VN104uh+rlA1o=;
 b=sr4iZwWeXmV5co+QG9+xvZ5QmFmvyPcYRplEq3JrXjAkpDwwMrOxAXyQ/leq3DAOwx
 LPoP61AJTGm+kuXlDFo6mEMKKruprfF0Aqk9M7tsm7LpK9wd6CTxrv/TkjHJzLvygpVD
 Epw46iUzU3A4fpaluNShH6ZkoTSeBAj7XQSSPR7jq2bfjmYNgCYYBxV7qVG7jzk//E1p
 nCc5Yf2BBbNYMWMwxLMB0TbzUAnHsnaoe48ti3uXwm/58UNnMNOOy739NPLo/M91NUhS
 OpJHrGhy1lP2tDQGbDHqQyNBPO1uHqXQlc8KUuJzQ7ElRv9qZxsKYqz8deIDOlNnoqcF
 faOA==
X-Gm-Message-State: AOAM533epiNYhH3vFoAE79LZJBTmYro/XrtmBzAdl81PUigKb0pLwI/K
 YYkoN1X9EUd0lF4BEUwrtu1N5g==
X-Google-Smtp-Source: ABdhPJxDn6uBmUa9SlWbpmR7EUFl7Ur07P+cgOttjL5zAM5eauFC2MUQEDyDL2Ou3akJ0ia+q/zMrA==
X-Received: by 2002:a62:84d7:0:b0:438:af8:87ac with SMTP id
 k206-20020a6284d7000000b004380af887acmr9255549pfd.56.1632887009510; 
 Tue, 28 Sep 2021 20:43:29 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:29 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 10/10] ARM: dts: qcom: sdx55: Drop '#clock-cells' from QMP PHY
 node
Date: Wed, 29 Sep 2021 11:42:53 +0800
Message-Id: <20210929034253.24570-11-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204332_230688_89D1317D 
X-CRM114-Status: GOOD (  10.36  )
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

'#clock-cells' is a required property of QMP PHY child node, not itself.
Drop it to fix the dtbs_check warnings below.

qcom-sdx55-t55.dt.yaml: phy@ff6000: '#clock-cells' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
qcom-sdx55-mtp.dt.yaml: phy@ff6000: '#clock-cells' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
qcom-sdx55-telit-fn980-tlb.dt.yaml: phy@ff6000: '#clock-cells' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 1e6ce035f76a..44526ad9d210 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -228,7 +228,6 @@
 			compatible = "qcom,sdx55-qmp-usb3-uni-phy";
 			reg = <0x00ff6000 0x1c0>;
 			status = "disabled";
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
