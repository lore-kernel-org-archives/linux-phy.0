Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A265C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 12:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpdyDuXTBZUNiKpdwYlmwzhylJzxnKF4YqnWVJ7MnWI=; b=KYmBFw8h2xOqFx
	rlBuB7OeuSslTiwnZPnUYy9khoCv4xqwOUUkD5da0JzCl3t2X4zh7VBYNqVDqeSj3OFR8rNAQlUom
	VLWNSsdfRu6kEcFOshlUvEETbsEKZyVPkZu6lzzG6ak2aH3KqDv0vahZ4rINRrzny7IMdx2G+hqYh
	deccvs7r5MmL0fleMYnxRkBEh5uB2S4/+Ny1LVDzXZUQ3I7SeXSenBTF5UvbJdGCVyMzYiCgywN0F
	WsvTWFS4V3xNNw973Xns9hctr4tP+iZ69T567diDeB62GbsBvk6evNJ71mlJLWBrS4Jgt10njDDb3
	iE1qZfarwd86cV8rVIBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNDJK-000huK-RT; Thu, 24 Feb 2022 12:33:30 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNDJ2-000hnW-KG
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 12:33:14 +0000
Received: by mail-pl1-x62d.google.com with SMTP id q11so1557749pln.11
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 04:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ndo93wIjxvP8kHvXABnHYUiq6F07JiSbtJBf2BQ08oo=;
 b=BZYuyaV4jmz2dR1NyMZzPD4ZhoiPdfWB/5CClaaUzQhwZw5M9ufL/dcF+OSHfN9XJY
 RKYvoovcWx6cpD3AlhbbuVtZuhNbUTyZhq07db/1IzRc9cD/z0jZJ6xYKQOe9zEBGwh1
 Yo9nW0v1PFDweGcEAna9EOkTPhCqtY/9hyxJvjonbISFD2KLQjNQiazEW+9JlvbBwGYH
 /bY3MLIh2Gueb7RHuQH7k7nSf1OmiRJfiQuKWHg3zTIrns7Ko3UZrxeRsjGxHIDeFvYH
 SQdfE19sEozOwunVDfo1gHFgR1hJ0TYRPkuJqx/zbnfmOai9I9VYjO0f1jzfFszSnhBt
 FIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ndo93wIjxvP8kHvXABnHYUiq6F07JiSbtJBf2BQ08oo=;
 b=tTjQ8ha4KrG/oaD2p93lk9JTsQ7PWMPNKO5akZXKDc07f4pq4Pu08iY6aP1GIrCakp
 IorNuwxmv7wGjOu2n5mnxOumlVge/2BrvHzkHowQBnj7UxyKwoejNflXrooDmHvMXka8
 xHZuy+lwzRAbwmTSW0fwmoyK1vLvolWr9mUJvgNL3mtAfUXjPYUspS+XZLLFIz+dA4tO
 XiDvi3r6yQm7CVLcxWQ0TN++nXUUyhQB2cg9LTE31mR7rsqzOFi+z0JZ1UXQ79snxfg0
 wXiuLYMw9bDum+KthqZ890oMPHBTWvssmVSjgUA/bLTV0J+cpJuMwJCm1txDZh0UCeih
 GWlw==
X-Gm-Message-State: AOAM531JUtfK5YOAn52AgGpK+c8Yrq2h10KgOGLc4Pwf4I9wPxfY/ysQ
 Hy5BNq73JeSSYKypoU+U9PtqPhegIimsxw==
X-Google-Smtp-Source: ABdhPJx3F0jqYy8AAvIIkDv1/khHxroXYxJdxMJUxEBDrXj1JojYslfhxmsN58K8sPwmvtaZBZNJkg==
X-Received: by 2002:a17:902:f647:b0:14f:c37d:34ec with SMTP id
 m7-20020a170902f64700b0014fc37d34ecmr2350409plg.6.1645705991469; 
 Thu, 24 Feb 2022 04:33:11 -0800 (PST)
Received: from localhost.localdomain ([223.179.129.209])
 by smtp.gmail.com with ESMTPSA id
 ep5-20020a17090ae64500b001bc56af507dsm6237567pjb.47.2022.02.24.04.33.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 04:33:11 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] dt-bindings: phy: qcom,
 qmp: Describe 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date: Thu, 24 Feb 2022 18:02:48 +0530
Message-Id: <20220224123248.67073-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_043312_683254_06975CA9 
X-CRM114-Status: GOOD (  10.25  )
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

Since a few boards based on QCoM qmp phy use the
'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
describe the ufs phy nodes, add them to the dt-bindings doc as well.

This fixes the following '$ make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
   the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 746a929c63bb..a481442c897a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -92,6 +92,14 @@ properties:
     minItems: 1
     maxItems: 3
 
+  vdda-max-microamp:
+    description:
+      Specifies max. load that can be drawn from phy supply.
+
+  vdda-pll-max-microamp:
+    description:
+      Specifies max. load that can be drawn from pll supply.
+
   vdda-phy-supply:
     description:
       Phandle to a regulator supply to PHY core block.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
