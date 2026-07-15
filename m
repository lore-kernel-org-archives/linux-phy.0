Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9608AC4450B
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 06:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dg6r1s3qK5IsHfD8DicJaYJy5PPJ9/S/O69Qe1njAFU=; b=paWdldXRLONtE8
	sd4joAGHPr69oHZmI97uP277qzLkLUmAzQuagOVhZbNrRnyjHnEiBss5KbFrkLAcz8lmcEI9HsMtk
	2AG33QNMIdW2UDO0QkqQzDRvB9/+NPq/Nx3CeXsudvlydiX0kn5ryhVnMbIRL9DoI7qCXp/BjQ8SO
	mfaibDu6XFO9e0/wKhyaehPGCUOkVUfPJcj8PjK31VK9DhgcSs9Zf5NGhiceFjS9VVqx1uXrDWeax
	JHqwn3HVZFcPwmacuyflhQoyIxJDoBkoFLqePTMChl4tf+JU+sLCetdVA3edjBJW5jhC0Cy8eTAF6
	EFpA3ZM7lf5LkEe6E+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGx-0000000Dv7n-0tlG;
	Wed, 15 Jul 2026 06:39:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGv-0000000Dv77-3BOc
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 06:39:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 59D4E43E96;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31535C2BCB9;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784097547;
	bh=M0RTFSLiMdB54hWo7CvBKBA6KLRs2mkAXPGv9anQlng=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qJSONXgfXbNlP07tVpFRBvOk07ykv/vCPJ6/ekZRVep77WO+WxNEodW9U4irgfAN7
	 X9j8AXEowKoJ9ewfgIA7szAJ7mbhdllqyir5kntB/6ZzKQYX8IxA2cMuVPtb7sUfGR
	 CCDEwLl7OWcsXBVqoQCfI+vpc1rSgrOn8/illHWwSvGHX0HpswaPCAW2Fh0eZY9R6H
	 cgHOdBKClxrxF41vtkDOljwwmPii6EK96hEq49bmSzSDDAOa+rKVPhCKFKE+0rQGXt
	 pNj0owRYRHIOpJSBT4NdhVOthXAitkpsGsUH23RlcXGROR3dnxtvlR/sXhisJnmmKn
	 e2QImjjB43s9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0763FC44508;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Wed, 15 Jul 2026 02:37:46 -0400
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SM8475 QMP PHY
MIME-Version: 1.0
Message-Id: <20260715-sm8475-bup-pcie-v2-1-48bd91a19abf@proton.me>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
In-Reply-To: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784097545; l=1376;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=bLFIXxi0mjZfBPT4pjXHMUjEF5YF+fmxsIeBl21k8TQ=;
 b=4S6iTuTNBIWEcmltrDDzXdRp+F20EuVr2wpwnU32oM/Ftv7u8FHqHd2YAQmX6UmIZQx81MSQF
 jTTJEIqnC48BGyWMkAONFDoQEbMSRYoiC/Y1VgRCYRhmyLeZH7nHQy5
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

SM8450 init sequence for this PHY varies significantly and can't be reused
in SM8475.
Add bindings for the PHY found in this SoC.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 108cf9dc86ea..8850d5ebac03 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -43,6 +43,7 @@ properties:
       - qcom,sm8350-qmp-gen3x2-pcie-phy
       - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-gen4x2-pcie-phy
+      - qcom,sm8475-qmp-gen3x1-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
       - qcom,sm8550-qmp-gen4x2-pcie-phy
       - qcom,sm8650-qmp-gen3x2-pcie-phy
@@ -175,6 +176,7 @@ allOf:
               - qcom,sm8350-qmp-gen3x2-pcie-phy
               - qcom,sm8450-qmp-gen3x1-pcie-phy
               - qcom,sm8450-qmp-gen3x2-pcie-phy
+              - qcom,sm8475-qmp-gen3x1-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy

-- 
2.55.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
