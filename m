Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B1EC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQY1RT1ukVHLv8jsiXkw11nXkOweinTYSBQWhuI+Zdk=; b=VI4M7UX362ohXe
	psQHpazyblq8UJz1ByJNwOALiIdc3bBH1dICNdugOYUQgfafMWlAA/v2rq2tjXVwK//V1l00b1Zdz
	/mhfGd7pqpfHrjdxBf+YamUr/qFCsS+3AqBaw0YgxMgYNtoC7XnEz0V5Na+bwzMay8dNqllhC+YUd
	x396le5lUKiQgh4b9eEWIrcCX4sMrvYOh0R0Ba+it470M8leaku9qg+DMduynXul3mfrdNtGileW/
	8lyb4j9rk5xvYP+ERvGn6j1PJAoKIoFgUSBnb2v3a5/77VMJTct7jE8y+8OKoWX3KK1VoBwjwO8zI
	5QtF+1uU/wq3L2khnyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hSj-0005K5-SV; Tue, 05 Jul 2022 12:15:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO3-00H219-UK
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cGgAT8sruouulThsP7NrDb0OEHaKSfJ/NavaIKh2iTA=; b=eX8BcdpFBjxCkq9NUI8g5sxkyo
	YmwoL4eA4PqTSgQxEOLIg/iT24++6d4uP0dIiWBcQK25FEi1LKOmDo/jKBAYRYamNEoBeVnLd44DT
	aUK8p2V5MLAgti83lRYZwYAW5K4RwpDajPd9Zbho5/JjuZ3oqYW/RfIHHltaRMyCWgY0aoA94l+Pd
	dPWeBy9rcRvAmXhW31vWdWwyNKlnRNhXSlPgKttzKdn5HA/qLGZ8g4nrspOCrn4Yt7L5o4bBkhOEB
	t6I/nHG+EK58o/LXBc6UeXPvnUaFIMmcv0Ov8Kq5aCElJdvEi6o96J14xyLO7IW10YliwiAK97SjT
	wmapoAow==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00HV7Y-2v
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 117B2B81711;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6E32C341CF;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=eIr/QiwdfHR3bGr/CfGRxxEsPkmmFmBqkyN0cb2r2go=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pLXWfSuRRmkPEShhbmW6ADTTGuRWjP+vrn8cPOlB2OXF2REy8BzB3zwPuL9dhgtZH
	 Lw/m34jJUdFEHqu3VAvK96/fZF6UEmbBs1vNDP+29wsaVMOHbIU6n8OBjKo4GTRwsO
	 gEiHzO04C3Izw9lc3iqBUijCACrJ1qF/xMDPm56g6w2C3BP0dPrG1wul6qEzcX9xuX
	 PJP6AoqpZYO3oEpKv/ayX2t8ShRloXHdp0eY3dYPxO8I9V712Mm2nw3s01i4PSmTPc
	 lmQ1tW+/5zqZ/e8KjogSSMD7seLtdrHytYjkhrrzCO019QamO5AWKEWS2Hz7hmjZ13
	 uIq8kpU7XXldA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004Yc-Qg; Tue, 05 Jul 2022 11:49:05 +0200
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
Subject: [PATCH 37/43] dt-bindings: phy: qcom,qmp-usb3-dp: deprecate USB PIPE clock name
Date: Tue,  5 Jul 2022 11:42:33 +0200
Message-Id: <20220705094239.17174-38-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104917_620313_5B966B94 
X-CRM114-Status: GOOD (  10.52  )
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

Drop the bogus "lane" suffix from the USB PHY PIPE clock name and mark
the old name as deprecated.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml  | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 86d64c61bca3..09d7708158bb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -96,8 +96,12 @@ patternProperties:
           - description: pipe clock
 
       clock-names:
-        items:
-          - const: pipe0
+        oneOf:
+          - items:
+              - const: pipe
+          - items:
+              - const: pipe0
+            deprecated: true
 
       clock-output-names:
         items:
@@ -192,7 +196,7 @@ examples:
             #clock-cells = <0>;
             #phy-cells = <0>;
             clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-            clock-names = "pipe0";
+            clock-names = "pipe";
             clock-output-names = "usb3_phy_pipe_clk_src";
         };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
