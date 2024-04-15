Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14368C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 11:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xs3JHuR3YKfQxNeM+BvhpKgvRESZI5P5WCQMwY2U/ls=; b=OLQAgjJ06eU2tW
	LmQmF6sObRUUfEAPJXBTHaAyMRkAXttx90vstNHuElmgQBLQ9n0KD2BL20GC4HL8qfJWcudUCrInf
	kan52aSYUZ20IaziQ+cfZBu/NH+sxmJftWaUZ5ss+h16GToZhxM+U/x/6lLWCRemtHaEezK1POqeU
	TqsCRw6h77QPLEux4Jsd6+nYUsypOG9yKQEll04NxZoLH1S1PY+jNR2tPiHp92INFLMSu69Hsn488
	wxmFo1vt2my6lV5qK1H2s/zKPr+PIHES6h2jQeQKWxWZdcOxFgmiHEUwuslexnx665/e2F3rRtKhr
	1Hr9jGt0Fp32b54FabkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwKx2-000000086UT-2p4T;
	Mon, 15 Apr 2024 11:56:44 +0000
Received: from outbound9.mail.transip.nl ([2a01:7c8:7c9:ca11:136:144:136:11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwKwy-000000086RJ-2qRF
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 11:56:43 +0000
Received: from submission4.mail.transip.nl (unknown [10.103.8.155])
	by outbound9.mail.transip.nl (Postfix) with ESMTP id 4VJ5HH0gFPzTPNkM;
	Mon, 15 Apr 2024 13:56:27 +0200 (CEST)
Received: from herrie-desktop.. (110-31-146-85.ftth.glasoperator.nl [85.146.31.110])
	by submission4.mail.transip.nl (Postfix) with ESMTPA id 4VJ5HG1N88znTZy;
	Mon, 15 Apr 2024 13:56:26 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: "Bjorn Andersson " <andersson@kernel.org>
Cc: benwolsieffer@gmail.com,
	chris.chapuis@gmail.com,
	Herman van Hazendonk <me@herrie.org>,
	Herman van Hazendonk <github.com@herrie.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Mon, 15 Apr 2024 13:56:02 +0200
Message-Id: <20240415115603.1523974-1-github.com@herrie.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <>
References: <>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission4.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1713182186; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=GCn4MctOklijAimZP/GbpYzFdmp5YzqVGKFzoeYARW0=;
 b=Vjofp4ARu7vEEvDbcNyEoCL/dQsfhTCVynR0GjMy995c1BTda0A0qwFeC6rJh5XY/EqUPl
 Y1bMvUvc42SZhIojymAIKKFqCODLHnSh5zF79tOhUmA/GVH3yfOlwQ6miFfCCvDw4GQeDm
 0DNXbVbnijWj+ZNDbbPhSdG4jEl7hacn7QmMqy/P9etW4MDxtQ03gs3VLQaAkAqbgq1MiY
 RtRewzoHiWZqOwml5n4LkhK8Xr8WF2xdG2LwJ/IrxUHGFdSCVru7f08lSfV/dxoWO14GMb
 N3F/3WKQOT7UQDcCF2tfM58QGxCEmEsjSCPMfT4AFhmCd8k1JjzAbaXsgF+x3Q==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_045641_487544_588FD013 
X-CRM114-Status: UNSURE (   5.84  )
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

From: Herman van Hazendonk <me@herrie.org>

Adds qcom,usb-hs-phy-msm8660 compatible

Used by HP Touchpad (tenderloin) for example.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index f042d6af1594..1faf1da9f583 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -15,6 +15,7 @@ if:
       contains:
         enum:
           - qcom,usb-hs-phy-apq8064
+          - qcom,usb-hs-phy-msm8660
           - qcom,usb-hs-phy-msm8960
 then:
   properties:
@@ -42,6 +43,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8660
           - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
