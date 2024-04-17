Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D466AC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 06:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODw9sYxJ79vkJZ/s3I2GfE0KzDdB9ykzS/MQKoy8Who=; b=nFW5cDESq1t1Q2
	kIwZMgMTUpZ8/pjaDnB1vlnYUMAmAbeU7wnxT9XmdbmLCtfhJ1lL3XnKiWpKSY3WHo3P1dCI8bVnQ
	i1OhlVGwAayF19TPYF25fWh185GyKs39PP3cx3fXu4i0b9VPw4+aF1xzi/hs5k3ShQdASBqMJPSpb
	qD3EKv6DMuyzuFL1WTIo5o2G7b8/QX6PNa0T3oOVQR0NqnlFJGItZ2aHIsUC+Vm9kTEfXnPbCODCU
	AApCl3o842aGWPL9FrdSx4IelfseFlMvxCABvM3Und6+/eY0qakqdYLhkSE5V61/79sAjkinPso6P
	js2EMEWKyfoZXjzWHczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzCG-0000000EvYW-1OLj;
	Wed, 17 Apr 2024 06:55:08 +0000
Received: from outbound8.mail.transip.nl ([136.144.136.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzCD-0000000EvXk-3osU
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 06:55:07 +0000
Received: from submission4.mail.transip.nl (unknown [10.103.8.155])
	by outbound8.mail.transip.nl (Postfix) with ESMTP id 4VKBVX4TpjzY75qH;
	Wed, 17 Apr 2024 08:55:00 +0200 (CEST)
Received: from herrie-desktop.. (110-31-146-85.ftth.glasoperator.nl [85.146.31.110])
	by submission4.mail.transip.nl (Postfix) with ESMTPA id 4VKBVW5l7qznTZy;
	Wed, 17 Apr 2024 08:54:59 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: github.com@herrie.org
Cc: benwolsieffer@gmail.com,
	chris.chapuis@gmail.com,
	Bjorn Andersson <andersson@kernel.org>,
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
Subject: [PATCH v3] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Wed, 17 Apr 2024 08:54:54 +0200
Message-Id: <20240417065454.3599824-1-github.com@herrie.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240417065020.3599755-1-github.com@herrie.org>
References: <20240417065020.3599755-1-github.com@herrie.org>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission4.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1713336900; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=D6JFtwlOS+AWIs+Hh5HvpbMUdPE/n8YDLeJQmQvnz18=;
 b=ZPvF+/BIPf/+uVoF/uO9Aw8JuwmI4AgXWBQGcK8Se6yLI1h7Rxof7+zTHSJcKP+Tla5crz
 HUAimAbPFQ34MASE9P8Es2h7qZoH7g2XhB31t837Hu+/4H++isT/dBh4VMvUI0bAYz4+BO
 gNsab8paxHjf+LWEFheDknSLmp+Ko8M3KYjiVhdhPmiamBQ/85DhIvHmM/98ZPOjMdAy9/
 LfMnnWCEYz2EskriHJUkJFbOzA8HjTJvhF4LjWv5elED7Qe474A829cDRBYlWUqbcWqBKO
 yHatklDkMyWU/WQm2tdstnF5JgcNM5i5IJ9AX7hkU1WNBfotYwWefQnO+MNJZQ==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_235506_107071_B193A0BA 
X-CRM114-Status: UNSURE (   6.23  )
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

Adds qcom,usb-hs-phy-msm8660 compatible

Used by HP Touchpad (tenderloin) for example.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index f042d6af1594..e03b516c698c 100644
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
@@ -41,6 +42,7 @@ properties:
       - enum:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
+          - qcom,usb-hs-phy-msm8660
           - qcom,usb-hs-phy-msm8916
           - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
