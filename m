Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F30E3CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIapJL4GayMQ4jHcyoEfDtHOkZjpv/XZoVDUu/0kikk=; b=G8X79WPwJY9KMO
	sSMMi+mKuSfQz9Cyt5wiUrLnoSo65F1LFYvogFxYLa1wELiNfh0T4bJFB46lLMigiXgEV/wo9JRPv
	QXDp/DbuUhW2eWdcQHptEv5l0mYHTnJa4uOFU6Kqxp6uyjfJrxvD5qDHQMIBMIAHg8N2rFZHk7uiC
	2wwo6jLMTVe0r4u+L27phyLvzKHTPQNP2c0VZvASv/NfAvuaiEnvHCDcS8p4JiV46pWcKGimjTIjf
	enpgmi11NYXFaZ74GxYz8fgJJiBqLLjxey503lJMwcuUckKdGtzGMjuuArkqf7IZOCxV3BJ4DAA4H
	85IhIYNqh3h76edhvyDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDk-00Gwdy-9f; Tue, 05 Jul 2022 09:51:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBD-00GuXE-JI
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7FDC561929;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41659C5832B;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=Uy3ubjYoX5YJYX58mI9UPoE9fqVXua8OSCQpJb2PU1s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Azmpn8cgQxvEZAv6C7gZhDSRXXzBhLvdrM9syVpU7MwqQ0BoGarnkbKg5y3FnCCq4
	 4g0XK7pwzQ+fI2lg/WjWR1bj7NO5s1An+Z1tMzYPn6Rh4unbjEo8s20FoxQ+VPzaYM
	 TE2gt2fQWPce2XaDObPbqB5l4UyDARwGSGGtoDnLJECeueCHFjifnfMiePiCJI198W
	 kcajFc/72X/6jNI3i9kFZyQXTSGhh1qvOkfnLw6iw2VNKFe+yx9y5owL0XYH/nWB9Y
	 Rfj/5Oay1bk8hxdFiy/Wg1rLyhk8hbt9fJ7EWjC1/dDBG+/aqGJTgXKkJMTaIle963
	 rX/fgvl6zpnTg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YK-9N; Tue, 05 Jul 2022 11:49:05 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 31/43] dt-bindings: phy: qcom,qmp-usb: clean up supplies
Date: Tue,  5 Jul 2022 11:42:27 +0200
Message-Id: <20220705094239.17174-32-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024915_711147_05C2FF12 
X-CRM114-Status: UNSURE (   9.43  )
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

The USB PHY binding requires the vdda-phy and vdd-pll supplies.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-usb-phy.yaml        | 20 ++-----------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 2f7043503ca0..3404ad7fc6db 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -95,6 +95,8 @@ required:
   - clock-names
   - resets
   - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -127,9 +129,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -158,9 +157,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -190,9 +186,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -225,9 +218,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -256,9 +246,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -286,9 +273,6 @@ allOf:
           items:
             - const: phy_phy
             - const: phy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
 examples:
   - |
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
