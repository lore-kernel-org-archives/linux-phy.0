Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB99DC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 20:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2pdx2fV0xYfOXqdiKuO+ibCrDZ3djhvDC9zqvDLqWY=; b=eZWHzMvRO7X23q
	sp7uD3Zlroe13KBOymcC02NVIUfUr3BrzU5+fjRPBls36afIxFvu039A8xKqp53IF69AERy3a5aVX
	/10Tc/zd49yU1tPRtmiSlkreCo/WipkLv+wH3vka2KNiJ1ncWWGkZL/HE5ZUfvpmmBbCo8gU76Qac
	vQOU078ZbfWeAnhg3Dj/SF7rLuE1dflnkMPji0yAPOlM2rtLJTbGlxALRDn4P3yGthAaW4wR24ti4
	ZXbCsVnK9qP/bdm+Y4toPTXMjw5JRg1XqkhvLSDNHjn+gAnozlbfSEfi7QHP+U2ravFlIPAkgQFQi
	W+0HpBRSBySOXqbNcDqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngYPE-000ZOs-E7; Mon, 18 Apr 2022 20:55:32 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngYPB-000ZN1-Bd
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 20:55:30 +0000
Received: by mail-pl1-x634.google.com with SMTP id c12so13306963plr.6
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 13:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D0Pjpfn2h0yHA4TyFo3s+oy60CYDgrzpwwB8+O7oCMY=;
 b=HvgHMUy3tMeM5vAlg+/qjER3cYlHYMvZqF9VwrgEXtvDAfHEKW/r6IBuA3bHr1gRel
 PqaEiBr525Rez57geXplrTu07ozMeSXXu+UtO3uj+qY2Ga4MlLr0XTjKA4UAko6YEmaM
 Y8X/wMzNJgMKkoolA0LzjTe7z8rDMzTRYDdN8p8pNGyqKlBenybP7l4ZY4U1o5ynUxos
 0lbplO8t3UgNNBBRp6BnElDw/Ejp83Ol9F+yAQPkf+GcrZJMKef96dFcEBj5weJLzNWO
 5Bd+qWwozOxL+T2F6BOTtGKTSKEa3nWbqh7xzKdWTBjCgynK+EKzw3tKO2cj3zl0fs6J
 63tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D0Pjpfn2h0yHA4TyFo3s+oy60CYDgrzpwwB8+O7oCMY=;
 b=KPFr1QjtUePW6Os4w8KuZwXIqpZsJ8gJW3/LIASWs6Kaei1+U8XPk1FCh3Vx7kkntI
 MqY0HCxJPtgmsRuTmvAPngefGKDso/T34lqecPb6O1pwk/TZ1v8GXwINhRNGgYFepW54
 UM3zy5n9Hwwn3UKNFW/lnKvpO26yZiCjQ427Jz+G40mieVKlTA+kqC13EIC4nNUsfaq3
 nJJBx0ypjsCUYBzp5zfHamdgRmkfcKjYSLmwkn+yL8Q/oHYse361LXbC1lYLM8+Mm2DX
 B3jr5bpRhC5BbMdiCKvGOnbqMBkbQg13W5EeV+Pek2OmKc7hGVSWrRAiukgy8xhTHFzS
 rrSw==
X-Gm-Message-State: AOAM533J9o6iZ5ranKLpZyxMpSqDkZXkpYjFCYx288zxi5tToiYl1fy/
 zzWYjtMrbVMfRkhwYwN8gAXM9g==
X-Google-Smtp-Source: ABdhPJwl2UU7NwRV0JPA/XtwgOxGT0J8cWxLkO0H3u0pjHgvrIEnU8T/NUk/ebucQrcnzR3lddNO3Q==
X-Received: by 2002:a17:90a:e103:b0:1cb:a0b3:805e with SMTP id
 c3-20020a17090ae10300b001cba0b3805emr20183027pjz.185.1650315328212; 
 Mon, 18 Apr 2022 13:55:28 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 q60-20020a17090a17c200b001cd567fecaesm13498859pja.26.2022.04.18.13.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Apr 2022 13:55:27 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,
 qmp: Describe 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date: Tue, 19 Apr 2022 02:25:07 +0530
Message-Id: <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_135529_430720_E2C88F99 
X-CRM114-Status: GOOD (  10.56  )
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
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c39ead81ecd7..411c79dbfa15 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -90,6 +90,14 @@ properties:
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
