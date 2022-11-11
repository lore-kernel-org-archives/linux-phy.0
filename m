Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 958E2C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86J4W7LqA6Dkn9sNh6n5vnaOYDkoY3XAHP88DTFWjns=; b=UmWA9jIpFvJ0Ic
	WsGojC3azNtLK66K2lUbP/Hr18LG8oOeJOltvTiiW2dZSeuBfXfwGF53lhsfhSXvSD39WjVJgD+Gd
	EWdgmj79wDTIXAHIYST5VyHEkgtUXs0w3eWuxrf+BPoiJiLZqvZ0ZPgm6Apq/lOXP5QTWnRDeaiyl
	QUDVduEInsNb1vhVenibqICBd/RgfArBSPbMHLoYl6rucuA1QFpxlR285sOz5qVf18EnUZPx8QIZK
	mFrUWZmT0213cfCRbyFYi0CdxlYMirSwgwz8mz9CMMcWOSLTrJJUVOwyfb6et9mrQkjVNBPK987Gn
	5bP4pyUN2Xl5WnD8uL1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWK-00EeTe-QX; Fri, 11 Nov 2022 09:40:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWF-00EeOt-KZ
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:40:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CFB8961F16;
	Fri, 11 Nov 2022 09:40:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37F69C433D6;
	Fri, 11 Nov 2022 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159611;
	bh=VAAWEKuCo1e53QmgMf0yNFFYiMrUPT/oqX01uL3eBHM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uYOMf9mBwZBbhzoMGhd/IP5+2FhdEyP88CEu1obynBoQyyOKBbQXgyxjkFgPgrIRw
	 QiADi82aeD1qQW4NTIWVAs1f3Foft+0UQGES3SK3+l3x2SyDXd0GtQtNQIGBNGNP7m
	 HforyS5UYvJld+GOz0Jvu5PFYXLbXrbaItQV0KY1f7ni7cjgsVJnc1a7Gd5MJ9bhKy
	 WBQBebVFHWhhRxfNQRTQGT8Lq4gDqdt1f7/XkDN0CtH+DQ06L6IjAqfgI2sWXjsEzd
	 uiUBKu2ynyv4+WR2zF2xED05NYlimf4sr64ll7gSZaFG2MmzBg4SZ/beIi1/xKVFmZ
	 LvODC0yfkwmQQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQVj-0002xh-7c; Fri, 11 Nov 2022 10:39:43 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop reference-clock source
Date: Fri, 11 Nov 2022 10:38:55 +0100
Message-Id: <20221111093857.11360-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111093857.11360-1-johan+linaro@kernel.org>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014015_728762_599D10DF 
X-CRM114-Status: GOOD (  11.08  )
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

The source clock for the reference clock is not used by the PHY directly
and should not be included in the devicetree binding.

Fixes: e8e58e29a0c9 ("dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index ef080509747a..16fce1038285 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -22,12 +22,11 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 5
+    maxItems: 4
 
   clock-names:
     items:
       - const: aux
-      - const: ref_clk_src
       - const: ref
       - const: com_aux
       - const: pipe
@@ -82,12 +81,10 @@ examples:
       reg = <0x088ef000 0x2000>;
 
       clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
-               <&rpmhcc RPMH_CXO_CLK>,
                <&gcc GCC_USB3_MP0_CLKREF_CLK>,
                <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
                <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
-      clock-names = "aux", "ref_clk_src", "ref", "com_aux",
-                    "pipe";
+      clock-names = "aux", "ref", "com_aux", "pipe";
 
       power-domains = <&gcc USB30_MP_GDSC>;
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
