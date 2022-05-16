Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E440C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 06:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6d8smQnUOwDBlHydPBm7ImxNHaUshyPlDOe8TV2IRI=; b=eNm23auR5g7DvO
	kv7HVGPAKNfWHr33RJXSK3CUxmNukeo67PmtbNhcBwE4e930HkQCm6MdLZH66vwXbKNP1pCZORfD2
	DhvcaVeg/7HcDqbzP7rzows4F34Qq9NQJvpm6uZt6jxiyF0BG45Dv1CD16mzkosI3Ad+hVso/x6/H
	4d/148AjCZ7SDOqAX0Vxbk5kBLQrc1UZBPzyVoPmuuR7iI2b+lxh5g1rTIxmMrA73bw8SJ53U90AM
	uK+AzKcSYJ0dLckBZFNoBb1oJ3/UB9NpNyo6Po2cIcY8Nabk8r3om02gFwLjYVWSeGq4I6a4v6HvD
	SlpdlWoPuPpp+NMMm1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUHB-006CoB-Iw; Mon, 16 May 2022 06:32:17 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUH9-006Cmv-AE
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 06:32:16 +0000
Received: by mail-pf1-x431.google.com with SMTP id c14so13200668pfn.2
 for <linux-phy@lists.infradead.org>; Sun, 15 May 2022 23:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BKuEdgC6cXyYmX22Bawlaq+lxNFeROynSrx/FPpZN2U=;
 b=yyRQJNFN3bheE/7sJQmOi2/U7LkTDZgn11qd5B8F7C3RUduRmNCpQFKnBRicWBQYgE
 54Q7IoSIuLalehwp/NBc3OYqoZxzC62YKARj1o9B0Ah/+5zyAP/8Y55FOCmnGosUqyZz
 Xygp1oEkZtV1pgATydDV16MLY18jF3Ts/W/Aj0lKBJLql+yoKb7bhAM7GwI48ythZHNi
 bqzsrQz3QbZj9GmGRwyjjBrbWRys4wED29qnMzz+w4s9tRWGaQ5XeO7S9BvF99hEZ1Go
 ap9dBAoct/rNjxt0uTJxlIFjG7JDHlOGOHNz41SHfJ8WPHyKv7gTaxZT2zL3e9X7ISU8
 lIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BKuEdgC6cXyYmX22Bawlaq+lxNFeROynSrx/FPpZN2U=;
 b=l1ZcQYZQF8JkDQTbx5XsfWW+01PSr5S87W575MVsEnEx7Qtmvv4ZoJvav93NcanmEB
 ogQGKjo7WrK90yvsSQOhHYGnoS8FlfE3Lb0tvBUjKIaHTjLCNYOpWkeqqe/Eum0N+PEJ
 H3Ivg6n8krIRisHj8l+iflBhdkBOc7ui8U08Buu0K8M4uPu8q+c356bVDqlvq1POx+uz
 Q6VKz+jt3/bnHZ9pFPTw5ckPWCzb+XgsmQcWnfxPWGuC0i6DB4mq5l4ryyNLSJPeQX9a
 DqIXY3Wic1UD9SXZzF4N0nmM4qza4N5oN3ulbGj9L0wKzWAomgBgp6jP95GOczuzknlr
 VVHg==
X-Gm-Message-State: AOAM532fAl1afKzxA+RtzWoj087Chvuf2QXzF9fexe1kU2Ih7//fOYwU
 Ne2Ff8+HLqtiOdSM2kXyp2rQEw==
X-Google-Smtp-Source: ABdhPJylXrsnGYYOIsSy3nL9TLYTDxgzeFreC7InjnzrowQmv5f7yCP4WAAR0UUE/P4Ioe8gBkkSWA==
X-Received: by 2002:a65:6d15:0:b0:382:4e6d:dd0d with SMTP id
 bf21-20020a656d15000000b003824e6ddd0dmr13758141pgb.333.1652682733250; 
 Sun, 15 May 2022 23:32:13 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:931c:dd30:fa99:963:d0be])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1709027fc900b0015e8d4eb1e2sm6053647plb.44.2022.05.15.23.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 23:32:13 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org,
 konrad.dybcio@somainline.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/4] dt-bindings: phy: qcom,
 qmp: Shift '#clock-cells' property to phy (child) node
Date: Mon, 16 May 2022 12:01:52 +0530
Message-Id: <20220516063155.1332683-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
References: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_233215_392226_F2F9D4D8 
X-CRM114-Status: GOOD (  10.50  )
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

Since the clock comes out of the phy (child) node,
so clocks are actually not provided by the parent device.
The qmp-phy dt-bindings specify the same incorrectly at
present. Fix the same.

This change helps fix the following 'make dtbs_check' warning(s):

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
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
