Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B59C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 04:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AS/RTcABpmoXvJ/WNdK4FHf6MiKQxw9pp8WNlbSbIc=; b=Bhfv7qclZGPTGM
	v537mp1dpMxgwEcKCLAhBIKgtpZ4JC1JjFv5iajZn2yqcj5RWbkqyo5ACGP35bKZsPsio1TrV+M6J
	h6RupNcwJfjUMwiLEsWos2fTmxa5JhNdnc1soVv4n81lW38dbM+8+61K+u7msm23ZdIw2HL3cEe1q
	erVfngD2uQNbefCIAPZHGGtbbn78iEMMRNEm6yZ6hYUtqF05GqAFJFnFnWKCt0LmnZsTLBU7jwle4
	58JwSZCf8CCJQ4oKaP7uW+X4FeuXscyAe90wMq0x8JLwz91C/Zn3m0SaHTIdhJobuXIC6aAOQmlwz
	kvqY2y5/+4QysK6ROCLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwxHh-0000000EiF0-0a6r;
	Wed, 17 Apr 2024 04:52:37 +0000
Received: from outbound9.mail.transip.nl ([136.144.136.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwxHb-0000000EiDg-0XuF
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 04:52:36 +0000
Received: from submission1.mail.transip.nl (unknown [10.100.4.70])
	by outbound9.mail.transip.nl (Postfix) with ESMTP id 4VK7mp4KnRzTPNDc;
	Wed, 17 Apr 2024 06:52:10 +0200 (CEST)
Received: from herrie-desktop.. (110-31-146-85.ftth.glasoperator.nl [85.146.31.110])
	by submission1.mail.transip.nl (Postfix) with ESMTPA id 4VK7mn5xCzz1nsPv;
	Wed, 17 Apr 2024 06:52:09 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: github.com@herrie.org
Cc: andersson@kernel.org,
	benwolsieffer@gmail.com,
	chris.chapuis@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	kishon@kernel.org,
	konrad.dybcio@linaro.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	me@herrie.org,
	robh@kernel.org,
	vkoul@kernel.org
Subject: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Wed, 17 Apr 2024 06:52:07 +0200
Message-Id: <20240417045207.3594931-1-github.com@herrie.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415115603.1523974-1-github.com@herrie.org>
References: <20240415115603.1523974-1-github.com@herrie.org>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission1.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1713329530; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=ozEXOanBkuPb3pLYR7X9fOyvv86uTWm4XhOrIbW4kLU=;
 b=YnKe5vYwIKSu3CqiydaIVwZH6V+iKwQCGmyoTDaoKvamMJcSxfiYQOJ7dNPCGXU0tejJDT
 Ek2NThMe+9MV7S+niVKHseAaQzouvF02ThOuPwLPc3/+W73/rz0LNWSZikJyoLyQIwrl4D
 PYQgq6TTgq0cY2Bia09X8wQr6SiJXmRgc4k8MyJzZqfrW6m7x+aGBZ0NyE2wtWSlcgoX54
 g+USocZpS5Os23xxbgPbklOhdFxlyy8OI3bkdsKQOcpU7syKFepBfwJ4q6ogL/rZe1yxao
 /04KihqM+bpXF4WrFRwnpDwzG3fnq7x+Y3NlGU1yMePlrRC7qE/9V1ftr7B+kw==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_215232_119254_DA22AF2F 
X-CRM114-Status: UNSURE (   5.92  )
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
index f042d6af1594..ccf23170cd17 100644
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
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8916
           - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
