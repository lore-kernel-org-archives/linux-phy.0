Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1224BC67871
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 19:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJhAYlW423jew99k+4lrH1k4c1uUm+WEWI/YVz3ed70=; b=ppMRdmo2jW84lS
	+CS/gzdSNlE4knUd6oCkZYZiz0mRflNY8EevpyXfdG6ePBckxrMYCudYy6EpnYngAF0b8X8Vjksca
	r5Z4pIKDwDkJvbufN9PJgNUQYbPalfd5zlp6OulNXx3fWUhcY9lBzAWO7C214sSZOozT8keYLd1GW
	+4LrjT5OZRLfLp7eUi9X1PWdOEeTdDFZ82XsuV4n8b3n86pTz0WjyIyR2SFklNhnbhtptQjWMcq7v
	vFcZWH/MpN0WYWG/Z/qcRfjBB6DVH3SA1t11IwBMuBgAimasi61kxOmhjJSl7saWWel7LZtQIctpa
	mtBZ+B9p17SNT11pSjew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkK-00FXIn-FU; Sun, 08 Jan 2023 19:54:20 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkI-00FXG8-A1
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 19:54:19 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4NqnpB2f9Gz1S5Fb
	for <linux-phy@lists.infradead.org>; Sun,  8 Jan 2023 14:54:10 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1673207649;
	 x=1674071650; bh=caIAUgqna42litYKpC2z6cvHI/OhIg4GMMlDOgSjc00=; b=
	2iy6CRp0pE66ykXQB0Vt50Kd7qlMQU7AmGZfYwadnX4Sizb6JvmjXvvk0zMmqQud
	ZBf4RIJojcpJQqZ17QlawZ/r+pNgOzffWwQYflPBuBkOvfsFAC0kIxBrmn8QgG8X
	QZy/iJBXKuSfqb13fAbgAO6RGtBWIkrlY9pgGHSvYH9642M45ju2Tn0Xt/cUMxTM
	mh0KKS7QgUtDYrHZcerQln4ZwaOqNBShJk6CZnJYep8pflOoJpzvki4QA955pshq
	MQCohFhoyqKO7y0xD79a/z7xpQPe67aX9j7Z99Qdlxc+MOJd6IhhaRjgro/cbJrj
	EGvDIfFLXSAZCgZHghX2oQ==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id oRLHp5CzepZK for <linux-phy@lists.infradead.org>;
	Sun,  8 Jan 2023 14:54:09 -0500 (EST)
Received: from dorothy.. (unknown [186.105.5.197])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4Nqnp10c1Lz1S59v;
	Sun,  8 Jan 2023 14:54:00 -0500 (EST)
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
	Dhruva Gole <d-gole@ti.com>
Subject: [PATCH v6 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for SM6125
Date: Sun,  8 Jan 2023 16:53:32 -0300
Message-Id: <20230108195336.388349-3-they@mint.lgbt>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230108195336.388349-1-they@mint.lgbt>
References: <20230108195336.388349-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_115418_517367_08C55201 
X-CRM114-Status: UNSURE (   6.10  )
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

Document the QMP UFS PHY compatible for SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Martin Botka <martin.botka@somainline.org>
Acked-by: Dhruva Gole <d-gole@ti.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index dde86a19f792..a7af57931f32 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sm6125-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
