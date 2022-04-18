Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA260C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 20:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tzUT2l7yDNkVMhOJtQwE2B7HIOwKEPZq0G6lLp4ILg=; b=Cv6Bsb4f4Hpkx4
	TaSzs9t9R3iRAwzmD4B5E6JOMewmwJFPbTnceK/7McZ1CwYs7nQuGQP6pBVuaSTs700FBXoK+fU+t
	0UFStjUxigcEXvQf/h47Gg3wySRyH1hVlmwY8+Eqwdpvj7x54zd6sRn+cAhxZeePsdh/DjlpnPua+
	D+wx7nzEufFssiq9Jm89Dyh9HVCQoPdK8BjPcVwwWVGeeAQurWhn6Jlx8t/+d3TpcXoBIkvKHBDac
	vgj05kCyJi1jsEhZBn3KuE19HtIhrLu0wxWdqcf+RSD1PRuO3sFTAd4DANcx5EhsWvryAzvLj7kXe
	GX5KVKf2IMgGMg4KUkSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngYPC-000ZNh-Bd; Mon, 18 Apr 2022 20:55:30 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngYP9-000ZMH-Bz
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 20:55:28 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 e62-20020a17090a6fc400b001d2cd8e9b0aso260652pjk.5
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 13:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JoIn1027OXzmCOA2cCIKja8ksqjeKwGtO2KGzYKS9Ks=;
 b=sFoUtadypX7gqBjas8UAvAivDUUHJ3TkJ/7D7V3FS7IidpuxNkl4+GnnY+T3HKSvCp
 9IBVuxpeTza06vtoznlZWV7zu5d+yj7uueGiZdOoFqdSlDxPYA/bFH9Pw8h7KUuDPeHa
 BYnA+pPQbi7Xqwa1r/WvifijgtO7RkTqck03FcrEdONmeCkB4AIB/QKT16U2v9BdumXa
 +XhSrs7Q5rQRNldzVYtpTeGhW+VZrnXhk/QgYIq2g29edpPA+xS68aULSj8Htqlfrdkh
 i6azEtVU1NyL6F9XcKbHAMoqhKZqHQCTwAVVDg7tPY9pTq3J71uhUkfIPRJpaY14Jc0O
 o6cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JoIn1027OXzmCOA2cCIKja8ksqjeKwGtO2KGzYKS9Ks=;
 b=lFvVoGxpIOUojqNPru5SLz7Ldo5laC/7DGy4+717Hu2ObUPTYunkF0ojeQ3DpiYOm6
 qTZxXhgUUp8HEWck77BNibrPASWRd7iG0PLp1+GXPw9j4HJnPMfgdi0WNpeuTc7ssaLQ
 0G1va1x/UNqtomJrTkdHnzHBnFMaTCB9iQ3/wdom53SLPQfJD9kvphh1HSkiphz6EETA
 w6eRChYYDxDxsFLIZ3zsrs5iXMo5KpEE/T8aXf+G4BPZF4fghjGVeMW6J31yMj7+gnx/
 +MKChz1IZj7nApIASInyXzKLgMfdb9iy3I3dr4HrDsUNAgGkV2bfXHTKDf3o0uLSQ9yM
 R2Ng==
X-Gm-Message-State: AOAM532v8wJdNLVoLITfdygB9qFqs3a2TbQI44wGrYug3QJ+3M3zbUSZ
 Il8qV3NseCsU4vHLc3mThAtJ2Q==
X-Google-Smtp-Source: ABdhPJya8fFGhzAYTYuKY4DalPfaHk5aNAbffZoalJqGmb12zkn+RpS27NCCDphkFcei7WJjWEBecw==
X-Received: by 2002:a17:90b:1b52:b0:1d2:8d55:ad6d with SMTP id
 nv18-20020a17090b1b5200b001d28d55ad6dmr8382779pjb.223.1650315323758; 
 Mon, 18 Apr 2022 13:55:23 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 q60-20020a17090a17c200b001cd567fecaesm13498859pja.26.2022.04.18.13.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Apr 2022 13:55:23 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,
 qmp: Mark '#clock-cells' as a 'optional' property
Date: Tue, 19 Apr 2022 02:25:06 +0530
Message-Id: <20220418205509.1102109-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_135527_443189_CE9A032A 
X-CRM114-Status: GOOD (  11.49  )
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

'#clock-cells' is not a required property for qmp-phy(s) in the
'/' node, but it should be is used in 'phy@' subnode (where it is
actually a 'required' property). Fix the same.

This also fixes the following 'make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  '#clock-cells' is a required property

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..c39ead81ecd7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -66,9 +66,6 @@ properties:
       - description: Address and length of PHY's common serdes block.
       - description: Address and length of PHY's DP_COM control block.
 
-  "#clock-cells":
-    enum: [ 1, 2 ]
-
   "#address-cells":
     enum: [ 1, 2 ]
 
@@ -112,11 +109,13 @@ patternProperties:
     description:
       Each device node of QMP phy is required to have as many child nodes as
       the number of lanes the PHY has.
+    properties:
+      "#clock-cells":
+        enum: [ 0, 1, 2 ]
 
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
@@ -468,7 +467,6 @@ examples:
     usb_2_qmpphy: phy-wrapper@88eb000 {
         compatible = "qcom,sdm845-qmp-usb3-uni-phy";
         reg = <0x088eb000 0x18c>;
-        #clock-cells = <1>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x088eb000 0x2000>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
