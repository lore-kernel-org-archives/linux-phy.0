Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A3BCC4320A
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:10:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCA4960E52
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:10:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CCA4960E52
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoG77/Brk++XZtctGZPRt50IJ+reTYNdH+xoSxJ+5gU=; b=jN8fkpduh7+79G
	TJ5MH76w6VNN87PcjkuXWw/GFrFLOIIExZInHAeMd5qEDi6HYAtFWqsbiHK6YijAdN69HEWgXjMjP
	GIDkWLu2bjBalmIy6Kc/SgyKJsX2chrVezrHA5Ew/LoXmHmvtSoQmsOiGYw3edPZ3K4M02kuDsrAr
	+rXj7V72WVc3hdrBNrt+9RSRF8QFqF1KvzSyjt9i4S/Mi47OIuW+1K393dchXdj3tuQMmAjfSMOFD
	ErlgEppbHL3ZwZaeMRPdqC7wS79WkLnimuYU491p80WyeKf3IQpd/YXBBXlVoihZ/7y2U9xi/a9hN
	eeAOwvKdQhJisQIYme0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHat-006L1a-53; Wed, 04 Aug 2021 14:10:03 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHXR-006Iko-Ef; Wed, 04 Aug 2021 14:06:34 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id E4DB3440EB0;
 Wed,  4 Aug 2021 17:06:04 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: Baruch Siach <baruch@tkos.co.il>, Kathiravan T <kathirav@codeaurora.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Jack Pham <jackp@codeaurora.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 3/6] dt-bindings: usb: dwc3: add reference clock period
Date: Wed,  4 Aug 2021 17:05:07 +0300
Message-Id: <22f62c59471e128b681a731997a9416ab2e91acf.1628085910.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_070629_835278_199DEAC3 
X-CRM114-Status: GOOD (  10.04  )
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

Document the snps,ref-clock-period property that describes reference
clock period when it deviates from the default set value.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
index 41416fbd92aa..c8027d2852cd 100644
--- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
@@ -252,6 +252,15 @@ properties:
     minimum: 0
     maximum: 0x3f
 
+  snps,ref-clock-period:
+    description:
+      Value for REFCLKPER field of GUCTL register for post-silicon reference
+      clock period in nanoseconds, when the hardware set default does not match
+      the actual clock.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 0x3ff
+
   snps,rx-thr-num-pkt-prd:
     description:
       Periodic ESS RX packet threshold count (host mode only). Set this and
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
