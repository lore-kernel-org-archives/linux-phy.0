Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD121606A32F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 22:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3QB7MMq2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CtjPIvzc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vbMPjacUCoqzxHXX0MQ4xRThmuWxVA0DzaKwC7NsBlc=; b=3QB7MMq2icAOTehfLiP86DUNFY
	ZzVBAOTwPgyK9FfTT6hmRTwB2HGaqNprb6YqY/36ZOcEp/Gc5lJ/rTWuRd28JIG7PVBWtDjGvvDt8
	HXGlqqsnl5o8U1LUFon7cMeIXQHOPR5l8vKA9OlsNLFHvfYy9KlRnfMO0z+e1tNVMqEAeBGVLuhp6
	xjLaTWMhFuMDZyPQyfllXChx72LaU/MSRgf0YA252DYUIoJoJWEjfqaNng4tCsEZOTRZcfTPJo7y+
	gge2ponEupxM8arTzgN06hVRgdXnSt4EYL6OtGjxHlTU8ev/Q4HQL86MqKH9EpgsbkUNFerUG1xEQ
	HdL92muA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTW5-00000003Nre-2Urv;
	Mon, 26 Oct 2026 22:50:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTW4-00000003NrO-2G0U
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 22:50:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4DDFE40918;
	Mon, 26 Oct 2026 22:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31A361F01828;
	Mon, 26 Oct 2026 22:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793055008;
	bh=FuPl67ATWNuBxw9NLlKvBfFi5R/Tx8sEmX5gUZY6BF8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CtjPIvzch+/Rq5EWkM6mtFmmUwDKWTUURiesrmzrWTzXSNlw4bbfyL+C30M6VtUxo
	 SyusC+83+cveMgU10tggNW2jzKmGuy0K/h/QToF1knmxodYkT9q3KA6hGCPzNyghdS
	 1QPKn9Bkhrnco/iT/j+en1KB/g4oSWsyynOh3/+CsZ+wiesPoq+IEL5kwkcknK75St
	 9ym2KgtRCAA3tZGuE3/9bjAwCUjFCMKT+jtgtmkv3De89WXzLI7sStil39fAQZKFH7
	 YQGg152oiLq8jgglExpY1adWGarm1M8txCFAzTYyCVAGK4IP1BJIYv1WDgpcJ+0DIL
	 b/m5r59rwxzUw==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add SM8450 compatible
Date: Tue, 27 Oct 2026 00:49:51 +0200
Message-ID: <20261026224957.1115370-2-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261026224957.1115370-1-vz@kernel.org>
References: <20261026224957.1115370-1-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Qualcomm SM8450 SoC has six CSIPHY IPs, which are compatible with Hamoa
ones:

    qcom-mipi-csi2-phy acec000.phy: CSIPHY 3PH HW Version = 0x40010000

Hardware supports up to three different 0.9v level power supplies for
CSIPHY0/1, CSIPHY2/3 and CSIPHY4/5, but there is just a single 1.2v
power line VDD_A_CSI_1P2, which supplies all CSIPHY devices.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..7c9015a019f4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -19,7 +19,9 @@ properties:
     oneOf:
       - const: qcom,x1e80100-csi2-phy
       - items:
-          - const: qcom,glymur-csi2-phy
+          - enum:
+              - qcom,glymur-csi2-phy
+              - qcom,sm8450-csi2-phy
           - const: qcom,x1e80100-csi2-phy
 
   reg:
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
