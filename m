Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A19C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E08861175
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E08861175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMMk2Os4q5n0m1VNDACdri90lw0sSlVhRAlKUjilq0s=; b=iOVQorPPQJsK9Z
	BwOqK0odakQP/en/QMnJl247hgdaIQf3tPrf3lTnVKeVOXGGBqo0YxEL0n5ZKg1PtuIHp7TbRbtyb
	oANPKjQUp5rJ7JAm5sx8CUwgr9ExZZK1/LkzlvcNc93oaCpZPylb3Pm/gt7bi15g3r68yVk6ms0Bb
	G4JD/mHyHRk59lta9A4izLpftxAnr4LTf275SL7hPRsY0cn4vDagfuJ7KHiRew/Y8gKwQZ+u7mZqV
	wSRQSwFkVrnoYsxOKPwpjKifgC+8uVi1NPKt6ncU+3/UBhdGATjI6L7Ack+xGHlAeZipy4O99Chir
	SX80FRE1qWH30dDw6hPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUiZl-001Yks-0y; Mon, 27 Sep 2021 04:49:13 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUiZh-001Yjn-Da
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 04:49:11 +0000
Received: by mail-pj1-x102a.google.com with SMTP id h12so1187287pjj.1
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5Q6nf8LqPhvSki/U84FqSlnRaUL+lc1QseYK12PdV5o=;
 b=yH7ocNJoNnGbreRdSzpzAaX3MbEHhAM4lHvCdNiZ/rIgjhzwD6JQGTv6FgV/p4A+8c
 8duNd3qs3jhMGodK3rkRMxa6CdbZ5LafPySRP5endGozYT0awQKqLlHoEoCoBfrLkdLa
 xVshzimso3M1rqxe2XdU0OQd8gekKOr6yFKbYlN2eeEekS4xUzp3HkUBhsw521UHEBjZ
 a9WpSeT7TtgqiQ509ueMLjm1ER/MffOo2Yp9eXl11mT0ecu1S4C1Pre5M09BRI/FuI0M
 Gn/Vv1/StIe0NGCGnZLeXiCm1R+7DxriXDU0Ekv6aTovlu4zb6hb3IVPcILEvktSY1na
 Jwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5Q6nf8LqPhvSki/U84FqSlnRaUL+lc1QseYK12PdV5o=;
 b=ZuOcYu/QBhNT9XxFhy0tuLmKj6yYJENf8TsIgSjGvwJ7TQt1GlJuHbxe8RqIE7VNFl
 GVmhNHi4GxuHhn7Ea6VF2U0+8tkAMsn0eK+z2sbSTm+3IplW+acFQ9g8g6VjxNMry714
 dW5NwzyVwqWOe0uzvbncaF+f++T3VmH79Q26TIrkc9eKjm77kTmgsGeHdfsBnyATgE+P
 Ot9jKWr/cELJnP1eaFhvsYWMV3ynlxSJEtkbjCVUD8uQhd0ck6XVUqs73wWKoTOVScPP
 aKk/7LueOTSsUyczfufiN4NguDOTI3LcZ7MS/0lUiDd03+VAu3t732+pkleiuZl5LhaW
 8+fg==
X-Gm-Message-State: AOAM530V2/ubVsOJYAMRQc9pKdggSf/IOCCyiM73pcoODZwik6xRFrD4
 +IaXiI9ry4xXWIgqgOXa6AMWBw==
X-Google-Smtp-Source: ABdhPJwkzSU4ZWtYPxP/n0kCmKKaF1DQSnpTU9fLFUk9N7cPC2nX2IGuA4LOp1p3/jcmrw0WzdKAnQ==
X-Received: by 2002:a17:902:934c:b0:13d:c685:229b with SMTP id
 g12-20020a170902934c00b0013dc685229bmr20786774plp.25.1632718148423; 
 Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o8sm14550651pjh.19.2021.09.26.21.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Manu Gautam <mgautam@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
Date: Mon, 27 Sep 2021 12:48:22 +0800
Message-Id: <20210927044824.30246-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927044824.30246-1-shawn.guo@linaro.org>
References: <20210927044824.30246-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_214909_478389_1E150C79 
X-CRM114-Status: UNSURE (   8.29  )
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

Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
PHY digital circuit operation.  Add it for correctness and completeness.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 48ae604b2194..96e31f582fc9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -51,6 +51,10 @@ properties:
       - const: ref
       - const: iface
 
+  vdda-supply:
+    description:
+      Phandle to 0.9V regulator supply to PHY digital circuit.
+
   vdda-pll-supply:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
@@ -157,6 +161,7 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
+  - vdd-supply
   - vdda-pll-supply
   - vdda-phy-dpdm-supply
   - resets
@@ -175,6 +180,7 @@ examples:
                  <&gcc GCC_RX1_USB2_CLKREF_CLK>;
         clock-names = "cfg_ahb", "ref";
 
+        vdd-supply = <&pm8994_l28>;
         vdda-pll-supply = <&pm8994_l12>;
         vdda-phy-dpdm-supply = <&pm8994_l24>;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
