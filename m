Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5823CCA481
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJjXsa1Ya539JARM/sE21bd+XuKKHuxTmASIaxVVjA8=; b=J//xFz3Ieo10ta
	bUSKcxv4VAaKp+F98KD5ed7Ogjbj18PsPoGqRvJqBJFnfCnJosqL/glxpnIJ6dhZQoOdzL934wgf4
	Wmkl4oDj1u/jOHN/dUDSefKaLumBpPceh/LhizHdgcZ5UoSlu/hCxR+PqoBt1/7rK/88IAniiUsow
	clX9SyaL7SPlzaQaqB9f4arNSkb/V/0a/FR1t7jx0KMeT835poPqylbfe4E8B6jpD2WWodtRzC4oE
	9nk6L8kW+r0ZWN28PgcSOi14kTFuvB2z2rtFVBCvHEwXvLOJXKZLwBzr1jHwrF4SvbnXJv1AAjX4n
	GKGeZNBuK8IQXER9A/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDa-00GwTg-SK; Tue, 05 Jul 2022 09:51:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB6-00GuVm-Up
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B3EB6194C;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE74FC341CD;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=+lRInMhIruR0OwlIKudAUTFxtNBmuvC62exzVnl3McY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dpg6vMEnC5XGbzAdFslHv9GqI4rkDpB9t9km9Sq15c3FAi22kc8bD8J5WOPZs2eD7
	 sVzOiun8ja3vYhhjRiSi3d6I7FQF/0qnAckrFK11OxWk7uBWeUIKFDFO/oQvEZdam8
	 m65k1M7th3K3pvepFmu8ow+4a0rfN/hqf3LVWMx88cg2AL/KWPPwTNQAhnftstVGGI
	 xszRwIkiFd8mC88JbnHDqxWKvBMmPDL7thrtPBw9fFihdCYW5lhcAJiPEPunVROXjT
	 sQOhyCv9HI4HXo7s/VQh1JOFT94V5GleFBV/StkbZ1bOR0pkDWFKfLuhMfwXDGjdbB
	 bQMBE6LHBsuXw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XW-Ry; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 15/43] dt-bindings: phy: qcom,qmp-pcie: clean up reset constraints
Date: Tue,  5 Jul 2022 11:42:11 +0200
Message-Id: <20220705094239.17174-16-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024909_171602_E108185E 
X-CRM114-Status: GOOD (  11.03  )
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

The PCIe PHY binding requires one or two resets.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 0486b2b48d72..557cccc8f4dd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -52,11 +52,11 @@ properties:
 
   resets:
     minItems: 1
-    maxItems: 3
+    maxItems: 2
 
   reset-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 2
 
   vdda-phy-supply:
     description:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
