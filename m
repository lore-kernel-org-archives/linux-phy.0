Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0272DC61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVKAclNs42FVTPdBYwfOqVu0ZDcEzn10lSRuTALlsnw=; b=OzYBVxSTZ2v8FL
	Zo84ri2fTp4ANFpIKVqpK1dZ2YSaPCOGw+tg5neXJqedeUsXl3DxciwlS35J2CkTcpxDSx8BXTodU
	DEDVBPpZYHJx4ahX7oaWH2N6vIefnjAjXkmGDtu/aY7ywAXL5+A1NNwPq/KWeB1KzBAAG6VVJ4WCk
	HU/xDdO2n6t5pZppRfEVjmS36fy6MbU8llOqKnRqpDRwLpLN7RTE6NzWRn2D2b8ED3cHyFM928FIB
	6V85UU+vXeDPS3faAiCOviK8wMr8fyKU2dSckKbT+0Lg5Ba2U0+Q6RxSLPzVsqAPpre5lt10niP9Y
	oKIYI8RH5QWNKi6dr5Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKu-00E3tW-EQ; Mon, 06 Mar 2023 17:09:20 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKr-00E3st-FA
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:09:18 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVlRb5rGcz1S5KV
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 12:09:15 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1678122555;
	 x=1678986556; bh=VbzUDwgw8Wby0J9gvqa6EvdBS02V72CvMVhm/k21OKA=; b=
	x6F/uU+uvwTIM01PZkdVn6vBUfBjcMBctRu09dcaXIrGtSYjifsvM19STk4ewYPO
	rtxbUW2QOxebStOeR5FP2lDSTSLfGZgwkF3e6FD8nQPKpcK2i0KhbhcHMzZUItTl
	10+UEp5rLTJHGC1yogHdXNAmwk+wd42DUCC+Oqv7hlmgsv5ASleC9otIhY7mZX+G
	oKcJuZCAfU/kKwsjX8ROlFZTH23J9wheDjhycOvBkp8c7PJA9XQvkOA7RqtRZFX6
	6IBCNAgqBSI/I34Y+DOzZ3WMYfaTU0ARervgtH0hBSVUo7fJT5NH+Yo1pGlHwEHD
	3rRjZ4QlKUoKMkSMOFeiKA==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id TMwe5LGbJ1Q3 for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 12:09:15 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVlRQ0bFjz1S5Jl;
	Mon,  6 Mar 2023 12:09:05 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 5/6] dt-bindings: arm: qcom: Document xiaomi,laurel-sprout board
Date: Mon,  6 Mar 2023 14:08:15 -0300
Message-Id: <20230306170817.3806-6-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306170817.3806-1-they@mint.lgbt>
References: <20230306170817.3806-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090917_660890_51ABC20B 
X-CRM114-Status: UNSURE (   6.07  )
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

Document the Xiaomi Mi A3 (xiaomi-laurel-sprout) smartphone which is
based on the Snapdragon 665 SoC.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 27063a045bd0..4923dafb5d7a 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -793,6 +793,7 @@ properties:
       - items:
           - enum:
               - sony,pdx201
+              - xiaomi,laurel-sprout
           - const: qcom,sm6125
 
       - items:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
