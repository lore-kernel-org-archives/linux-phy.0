Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AB89C0502C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcmxkkGUjdAWYf7zvQOWnFdqOVtd+TZhev5LcU4ptWE=; b=SFPU4Xha0DlrGY
	pqmXQIGNBzYBPGjpxv1Uz1+81YbuthnjvXD/5irJKt8dhANZQm9g2XlbHkJ2M2+nK+q/yTwVH271G
	WV0x7e432X98d/l0Cswk2s9gH4f534h4Wo5+T5ezziNcqjgsJor5U/04hLfDmdMO7lA+kT+mvBEpS
	sgYeTZFLNQ4KgA2M3juz8outUdV9hCYPDU1hPQEA0iyzxZqbFs5JSfFYwuzErRyiLBC9SXE/lTUFh
	gybrIwU3pbaZKPxdAe/nlaw1Th9pgWuq95anAZs2Jp8TLMGZbiTxLWDVIjW1JbCqtl6bVVWadTElu
	IG3RChl52e5KaEvZZSZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRj-00GZha-GI; Tue, 30 Aug 2022 11:30:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRV-00GZWn-3M
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5E9D26157D;
	Tue, 30 Aug 2022 11:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A856C4FF17;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=q7516nLGJqvL48u1D0OTxXEREQ4QbqQWdVf6bIh8Ods=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ncQ2umLD75ttmTCG7Qvyb/R3ca19EXfTC4tkDd1Z1gYDq7BI1DtyTzHlNbwe08w1a
	 mtMYaRZpJVLBt4Uhg0a+yresA1ZgrVRJmnRZnEtxjVwDkF9A33tmZ9iuPfmumgGVZE
	 c0CFTX07XIZON4ErIn6AMu4Xoi9e93M9PXMnlfYDxxkLJ+e2+isekCKH2ac+D0KS8z
	 1B0Ze9FI2IMxyJ7r+zW5quR/eeXBSerio2fgDwN9L322aFUmu1QxS25XDkF/NIZRk0
	 IUox0hA628+IWBdQLPce191gEUnJoAe1HDNnhAd8Qzvge3EDTVH4Gimctmr+p5Cv9u
	 0NYfQKk06Wmxw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRO-00010d-An; Tue, 30 Aug 2022 13:29:58 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 17/30] dt-bindings: phy: qcom,qmp-ufs: add missing SM8150 power domain
Date: Tue, 30 Aug 2022 13:29:10 +0200
Message-Id: <20220830112923.3725-18-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043005_344682_71075DBC 
X-CRM114-Status: UNSURE (   9.52  )
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

Add the missing optional power-domains property used by the SM8150 UFS
QMP PHY to the binding.

Fixes: fe75b0c4a691 ("arm64: dts: qcom: sm8150: Add ufs power-domain entries")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 7a1f80e2cf23..0e76256e5636 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -48,6 +48,9 @@ properties:
     minItems: 1
     maxItems: 3
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
