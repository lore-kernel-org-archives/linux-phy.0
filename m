Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665D5C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 20:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtqYPzt0fqbQXDHdgEB4Stut7eVSHmlVC9c8YZggKxQ=; b=OE/4ekH1vXTub9
	Vyn5Bvi7dkUCSxT3SzVUiQzkC2/EoW0FzkdbGs42SOvkeONXFf5s0vpkqKB/ha8mQ3fYlaPrinael
	tlLXdW4EHD/8j37f5mZb7pT+Jzf9VZFUPZuKOLBkm8CpMyqUfEv6s3dOsA635XVA1UtZjFWjn+fYT
	DKkD8j40CDJdTbcGRjEplKM1aBD7dp6nRedAWf8kELBNxC/I0FoUlU1nYwsBER2me+ziykyDbvFOU
	82TmpAZd3zQfnYrZhqByZ297d/FsOuydDScJg9FdvV6kfybZfbS/xeeHnVu7lZDRZrHauIRiZGyGc
	O+UGZe9O92Fm2bfRzorQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngYPN-000ZS4-R0; Mon, 18 Apr 2022 20:55:41 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngYPL-000ZQr-AD
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 20:55:40 +0000
Received: by mail-pg1-x536.google.com with SMTP id t13so21002692pgn.8
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 13:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5lGqMUBSdh+IsaWIFm9V2j3b3mWZ6jlDPDrC88fnn8=;
 b=hiE5I/10WBJRaFjNB6D/rRDZwXT/xuzJ2mj/Av1hWwh/BVRDmp1J0lAnKOcKKQPx9w
 UTmzlIqdsx1fJILGPHYKP0DquFNZbHnpRp/YbBhsAE0yJEK4vpsvzPyO7V8yil8s7pNU
 TYMDFqWOE05ZLRriNXZJ2jZB3O/5poojPUspgV8VYgWVlExnPm0VQ3F4YoimVaGlYn7l
 rJseCXn2+iETxSxUVtsx+nlGqHn1TNOzitqBya4KU1V3DklWGBaLEUnCNjbt8zwVB1tP
 qth61vRmVDVBPf4XjSG26Qt393j5w3aMQfTAvEQaDlpGH0GBRAEyCDYg4uLbEGh34Lde
 yLzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5lGqMUBSdh+IsaWIFm9V2j3b3mWZ6jlDPDrC88fnn8=;
 b=PEJRa/EIMNzaRZBiI0xfM9L0V8ZByflfC3Zb6iEz6i1GVPmegTmU8NCdNzTU4cGj+N
 Rhyh/muq3HjUI9yxWQK7xuTAnX/4eOmIs7mQBRMsIdndJWCFOxqSMi6SvXcJfpLa+COk
 sGXmtOzZKceMrwaUgVfl47cRleRBcIKw4GJ8gXF/YJCGRfRjkpGRMa+bTIU3kdQarI3U
 tzTANcliGqp5OPZVdW197dXIhnIQ7vngTIO1MwtMLg2KhrywxjeqKlBv/OSEIqDyotgs
 wejIrUcZbON1YPEoX8DsB3PD8uNl0m7hSfry3HgdF8ijzgjan6/vr53QSkGY8d3tctOr
 3QpA==
X-Gm-Message-State: AOAM530CY+Dfbw83ShnwUv/sDUCmm08OgIscsHgcfWXA11b4Bm73xUiD
 8ldzuOzoET5e0Do2TS3AmEjYpb/tyR4NPg==
X-Google-Smtp-Source: ABdhPJz0GZ8rmXR8DQp/WwKaRGivzMhug8KVXDar9yqo3iYmc/+XHEC2EuSLHiOZul7woMMVqAgFIQ==
X-Received: by 2002:aa7:8049:0:b0:4fd:bfde:45eb with SMTP id
 y9-20020aa78049000000b004fdbfde45ebmr14262857pfm.76.1650315337740; 
 Mon, 18 Apr 2022 13:55:37 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 q60-20020a17090a17c200b001cd567fecaesm13498859pja.26.2022.04.18.13.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Apr 2022 13:55:37 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm8450: Fix qmp phy node (use phy@
 instead of lanes@)
Date: Tue, 19 Apr 2022 02:25:09 +0530
Message-Id: <20220418205509.1102109-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_135539_389173_973A1C03 
X-CRM114-Status: GOOD (  10.64  )
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

Fix the following 'make dtbs_check' warning(s) by
using phy@ instead of lanes@:
arch/arm64/boot/dts/qcom/sm8450-hdk.dtb: phy@1c0f000: 'lanes@1c0e000'
  does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 2cfc67b75259..721bd9495eb6 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -851,7 +851,7 @@ pcie0_phy: phy@1c06000 {
 
 			status = "disabled";
 
-			pcie0_lane: lanes@1c06200 {
+			pcie0_lane: phy@1c06200 {
 				reg = <0 0x1c06e00 0 0x200>, /* tx */
 				      <0 0x1c07000 0 0x200>, /* rx */
 				      <0 0x1c06200 0 0x200>, /* pcs */
@@ -958,7 +958,7 @@ pcie1_phy: phy@1c0f000 {
 
 			status = "disabled";
 
-			pcie1_lane: lanes@1c0e000 {
+			pcie1_lane: phy@1c0e000 {
 				reg = <0 0x1c0e000 0 0x200>, /* tx */
 				      <0 0x1c0e200 0 0x300>, /* rx */
 				      <0 0x1c0f200 0 0x200>, /* pcs */
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
