Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E2EC54EBE
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 19:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWwhS1yt/9kk5Iqe2Y5+iy1+eoMBuOObe1d+jCPI0Ac=; b=UzFGtpir0v8SEy
	skJCSaPDddQbeK8nu9DIWKW7hOExoWMU8JhdQ/c6QvfU9Xez0BxBtBYLrzU5QSt+X00EF9l9Wp3Gs
	1M2WfdZBIAnKyijVeL6yrX5ktaBFYWshdR9P2lwmdspbjOlvs53N315xjpHbbqkjqOpFEOOF+WHjQ
	zTfrS0vQFbDWrqh9cAx0V9KEs2N/Raar+nFtorSM00PCcuwbMSJVSIkmjuG9CC9KvaPVEv/xDh2iq
	5zoHhzxcHPJrq5IApeDOmnUXqFiydnxarsYFJbOLu2kSZbhrBUynw3/RbRUnFZOXsTyvnLnavOFSy
	nIDrcWSl3PtY6kPGXHOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkc-00FXO1-Ja; Sun, 08 Jan 2023 19:54:38 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkZ-00FXNK-S7
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 19:54:37 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4Nqnpf4QZmz1S5Fg
	for <linux-phy@lists.infradead.org>; Sun,  8 Jan 2023 14:54:34 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1673207674;
	 x=1674071675; bh=c9nSCJYScyOro/xinJ2YenD7cEvhmRGGKbJnrYkvv/s=; b=
	y9WbH04/l1m0GmjahpAvh4aeC4VTODycgrzMOG3Wxc1r4Iy7VZSm0/kxBD64L+xV
	n9su0ZDN8bRHhcSx13g2/4IW563+7mANsjVKAE5bnYfnnQElMf8n/+QVG+gnVIQq
	KK8xUHCiXg+/XITvKdQhv4Fhdn4vEVMVeDkkGy97JJ6fEuZ/YwtE1mwmQQGtDh0u
	kqqM5VqTLKDQyAlZIRfLC+oIyLPWnxVJdj4WXLxqaj99FSTFXAETWc+yWlaql+3u
	u4jApqLSzkB/kC67He1jdfsd/tZbWQIS74JnOhJn4unxNMJafSRW+KADvKCZa1nO
	boToB8qw4r4cBpIE4LB9Cg==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id JTe4NmAJyH1Y for <linux-phy@lists.infradead.org>;
	Sun,  8 Jan 2023 14:54:34 -0500 (EST)
Received: from dorothy.. (unknown [186.105.5.197])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4NqnpT2ghtz1S56d;
	Sun,  8 Jan 2023 14:54:25 -0500 (EST)
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
Subject: [PATCH v6 5/6] dt-bindings: arm: qcom: Document xiaomi,laurel-sprout board
Date: Sun,  8 Jan 2023 16:53:35 -0300
Message-Id: <20230108195336.388349-6-they@mint.lgbt>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230108195336.388349-1-they@mint.lgbt>
References: <20230108195336.388349-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_115436_058512_49990673 
X-CRM114-Status: UNSURE (   6.49  )
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
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
