Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 564F4C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 20:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6glFy5ByJxpp4zqoo/cKZCLynt61oBMINuR6YA6879w=; b=BCjcq27T0JY1M2
	+lzAYtnAVk70RjLE9wd5XOvp2Zjxi5zk2uAtt0jJU7xEOm1NY5S2ZAsd9oZFWAJfn8V4BD3D6RVws
	f2pMM5Ua0mH7ApTjo8XnM87qexB/qv9Lpqfl7/R3R8LYZVTkyMNdnjkGiXA4fwCs7WqaPFOaJ8ggc
	Pd1x+Ozjdy4Rg3cHwbnlAKuCCL0vctyilazSCWQ2pSN2UKSXiOXsO/ZABRYjXB5sAJm8r8EtBtvvB
	HP4wNcuxde8bNHkPYyB2qJ6hV/1EX+HL/t6m54nE9ED/L4IDIDlL1nQDVFGTnDQAz6xA2t9Bo2SST
	OA+Zkb4LpZum15iYru/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngYPI-000ZQR-Na; Mon, 18 Apr 2022 20:55:36 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngYPG-000ZPW-Nl
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 20:55:36 +0000
Received: by mail-pg1-x533.google.com with SMTP id h5so20988414pgc.7
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 13:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xw/vgMNofUgBnVmoZbEauz1tI3WPtVvKx2FohpHzj4E=;
 b=HdT/KW3ntQtQ70sw/QSrfqQEOauDt7wfRW60u38kjHx0VcbPZDEu0ErguTVWyGG8kN
 CD1fdPfvUiuuGvMO0lofZuJ4HOD+swuI0SfXUXNUpfrCRzTZ6Pql+13UUiQXgslnQ+c3
 3ZYlHgv576Gt7p+1vr6r7G0OdTaXKe/1T3of2pmEPwGHyjRkjtI6A0zqGxJN6H4vZgMY
 kMwhn7e7LxTVuVNBSL+HHB+/FEcOBZ9IDhHSNigMmsOYJHnVz5q9dLoJv52tgN+pWoZv
 7t5o9ppZ3Uf7AbnxaLqXpoUGjvAdZhqyRMrQqehkEmeekmxpal8GNJmLfa1eNVsoLHOb
 Z0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xw/vgMNofUgBnVmoZbEauz1tI3WPtVvKx2FohpHzj4E=;
 b=CBANxuhtPom26fV2Mhcy7nZT/398dxfPOQKOq+BQh6/FYfChQKXPwTNmhAUvtfjXYC
 MHXT6Z6x/J/pX6TZGaECbYItnrLMLzmTMfH77R/8Yeyf8tKC3WveJkfY8sNief2jB8db
 7POC2bqvsvinuoclS6xwtP43P7l9AEj3tCrzkIFxqlYjv5gB026p7OTHBTSuh0Q6Oobw
 p33AmaWPCS2Vc3/F2XafpEl6sHhPlyLbJMLS5pmvCrfEYKmgjZs6zFG2FHoYZLcO3VDF
 vmOVJGRj1Un30pE9wbT3kVt/SMhEjCqrd5opAYRhjxWSpK/dh/FsFG/744FgUhosukH3
 mWLA==
X-Gm-Message-State: AOAM532DC1BNGae/klDQkBTpYHGGsoSv2xaCXq5Zkh7RlYXF3lx3AOe7
 auuPzbOR4JQTnf1/MWJjdPvpoA==
X-Google-Smtp-Source: ABdhPJwkboq8ZJahmcGcPyXzVJtjEalb/XDQsZZaBJsDaW8NxYg6dqDu8lEec23LWDaVnX39NogOGg==
X-Received: by 2002:a62:a50a:0:b0:506:cef:44f5 with SMTP id
 v10-20020a62a50a000000b005060cef44f5mr14154397pfm.22.1650315333072; 
 Mon, 18 Apr 2022 13:55:33 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 q60-20020a17090a17c200b001cd567fecaesm13498859pja.26.2022.04.18.13.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Apr 2022 13:55:32 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/4] dt-bindings: phy: qcom,
 qmp: Describe phy@ subnode properly
Date: Tue, 19 Apr 2022 02:25:08 +0530
Message-Id: <20220418205509.1102109-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_135534_814196_CAF000CF 
X-CRM114-Status: UNSURE (   9.28  )
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

Currently the qcom,qmp-phy dt-binding doesn't describe
the 'reg' and '#phy-cells' properties for the phy@ subnode.

Fix the same.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 411c79dbfa15..c553c8ad0d1a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -118,6 +118,19 @@ patternProperties:
       Each device node of QMP phy is required to have as many child nodes as
       the number of lanes the PHY has.
     properties:
+      reg:
+        minItems: 1
+        maxItems: 6
+        items:
+          description: |
+            List of offset and length pairs of register sets for PHY blocks.
+            common block control registers, such as - SW_RESET, START_CTRL.
+            pcs registers, such as - PCS_STATUS, POWER_DOWN_CONTROL,
+            pcs misc registers, such as - PCS_MISC_TYPEC_CTRL.
+
+      "#phy-cells":
+        const: 0
+
       "#clock-cells":
         enum: [ 0, 1, 2 ]
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
