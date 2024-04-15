Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CF53C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6debqS9Zr4cemtRM/2MMUVOw33cH8zzYU0y2loNPYw=; b=M+Bvzlfo/gbk+w
	kHmzxX2vpYJulNfe0pxuQejkHH36Kcg/pXe0/S7cx7kt+Q0xmqy9j4MQv9LBKVK+iuHZtf9ngAwqY
	tw5hIJYZUuIuLKeO+LITlVjmPcchO4YYcj65pEHpBok+sTtLdoWYSyiuKNlVtvq0s+Dw886hA+YSr
	TYQxWgxDYmSw0GDSLOVsW/hdTnXDVfUWFwksVPBozet3CDXHwhUAmb6l/0YmYNcO0kqd7UCNRkoAi
	fff7VsXgsYLq4f3nPLtoBCQHTpaduJOnwR8Hu1VuIcSirbWPFMyEY7hUz2+LezktpsGa3vaa6s2HZ
	b471pDp5DXo6pk7WDnHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxM-00000009QoY-3bkP;
	Mon, 15 Apr 2024 18:21:28 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxI-00000009Qjk-2Sg1
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:26 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5aa400b917dso2299285eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205282; x=1713810082; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTnP6eipSs1lQbgXBNYS3udbxY0JHas09pkOXVb4n1w=;
        b=MzIQY9NqOfJ7bm2A1+HgCnrPC967Z5F4mCru+TXnbdgKnXU4xAlytmfb48ya0fui2a
         sbIqcMacIy+Rd5ee98NjsfrnKqE1N/QMOkgmFYWZrfMOccavK78tp1AzcH8T63DmVEyP
         nst1b57wfQbBRHhm5IxccFb48Qr0nZvhAYmyzeyiJ/hCyRORTkow9AqMUzD037w2afvi
         cgiYa/G9hDOwNWRkmJPz53fu3P+f4qSoapE3v7AczyU1KIR8XpOAcNAoIqreAmLEJSUC
         W6e0vUHhe6ZsRl/0tZH+9lrKIhsR2rGLRnb3FLhMXlLYHW4KcTxRBv7yMbZByunNTSoX
         82rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205282; x=1713810082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTnP6eipSs1lQbgXBNYS3udbxY0JHas09pkOXVb4n1w=;
        b=JQIrl5ukPuVfAWGoVi1i4JdUs217Pgko589n0YYM6HRixELpJETMpBb0EAiixlu6oR
         f7EeKA21tx0yrQM8MhQqkyKqq/CarYr8o3ileBB6q0EuRIWR7CVbF16SjqGM7+/LIW8R
         lBdrO4OXUjdOuXG5JTd2Hfpubm6qxUkhTu4qETc23ztkri7FGdGhcPkIhTcDDy3HcmT2
         AJcOJhQEA3Oo2Ulicqs+VCWkxrEouJHeOMPRMicaVaJ+YQqQZCMsnLUSbl1edNseOhcT
         E99+ZCM8W3/Ayy8z5FwuObvYR1z83eOt+IF8OYXAamXuyjtgIx66g1mdx7uWICuhvnH4
         kbrA==
X-Forwarded-Encrypted: i=1; AJvYcCX+KLXHpVHJuWaqQp2P0SQrmUR3Y0ENjpDMznxDcWAg9tgzX68kJIOgZTIAEi1sY8u/4VSJWCvioazDKsBeWYHFW0bCWgSAAgNcMWPXjA==
X-Gm-Message-State: AOJu0YzJHLsyqlVITa6lHaIn2ibI1ekCmkVBxpiozfynNBvFZSZ8iOnC
	zd/Iq9+U9cmg7+o/1bWNs99Q1IkwveZx1aHiIWU3QkorL4NSlGE2
X-Google-Smtp-Source: AGHT+IHg5ugq1lohZEm0ehzMxEcdWVwoP8XQwZRTCLQ22SHdryJbt4bEX3o8wVWphYHKU7n0nCcShA==
X-Received: by 2002:a4a:1482:0:b0:5ac:c39b:3a7a with SMTP id 124-20020a4a1482000000b005acc39b3a7amr1127677ood.1.1713205282432;
        Mon, 15 Apr 2024 11:21:22 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:22 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v3 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Mon, 15 Apr 2024 13:20:50 -0500
Message-Id: <20240415182052.374494-6-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112124_849242_4BDC284B 
X-CRM114-Status: UNSURE (   8.83  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
extra clocks named "anoc" and "snoc". Document this, and add a
new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..89949f4e89db 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,19 +19,24 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
       - description: serdes
 
   clocks:
-    maxItems: 3
+    minItems: 3
+    maxItems: 5
 
   clock-names:
+    minItems: 3
     items:
       - const: aux
       - const: cfg_ahb
       - const: pipe
+      - const: anoc
+      - const: snoc
 
   resets:
     maxItems: 2
@@ -61,6 +66,35 @@ required:
   - clock-output-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          minItems: 5
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
