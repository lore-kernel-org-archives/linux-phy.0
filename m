Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B443C77B62
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 19:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hdBKV6hytBXiq4lG3wW6y9Nnr9BBcha/Fx3kVBwPfk=; b=QTUQ4kilYx4q4o
	SLeobYWCFau1wkAJdB4H8J6/qyTMeNuylU2ukMngsRE2euuRV8XDiESXolU4rZAHXCjuo+Kf3HVNN
	3MD9T8MlmSEIMchuokWjrbVvRFPe9U4TUzOyFyA7Lbx/CHriLtVckgTWziBJ8TG/dxSh4N+mFFM5w
	BKKPitkrsityGopRBOYfsEK5enK91CcSlx3+EX8NK8v8LxO4seBdJJKQz5aJZN06l/Nj2gkepwjwh
	zeSKZ4KXQNw0skeiUR/Q3kbInJmn89r7h22FFhpP9a0FRRXBIR+IoZo8a+MeRLkCE0Kb8nTJOWyZS
	GCSOinxfyY2Lqevj1zgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluL-002Z4E-0o;
	Tue, 04 Apr 2023 19:01:29 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluI-002Z0V-1I
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 19:01:27 +0000
Received: by mail-ed1-x533.google.com with SMTP id er13so93681032edb.9
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 12:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHE/rBbww83tJZiQz3167wNvDjgskvsYq0IYxB/AOR4=;
        b=zPYLj9QkXCUFrb232mzqMKckOcIXMdGh67Jxx52nBaKxag/jlB8aJKsduacGDVmoeM
         MY/WNxq+mj8lGeDWSl5PJHP+YHexcHu5dC+ZtOTJ+oc6mpxEnWuaYgsWsDxrmqlFmjdl
         GtCWw00Or/ECfxUdr4tKiW7gPtcCNOWC3GFHWp97bA4nRBU4U1ahISB2bxz0etsYgPsy
         tatSMpfVcapW5/r7mb8tFdaYgJv06NNrTysilysgn+PgGQWfWU341a+Mrliad0pNXwFw
         IyjCoocRc9MbwtDw99xRdJ6efKZnhP8tHZwHwr6tLbclQFfbpoZrSvlagotRH5rJPi4v
         ZfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VHE/rBbww83tJZiQz3167wNvDjgskvsYq0IYxB/AOR4=;
        b=hS4P9lqr9WaN89Pi4InO6ISdJf7/8dZR+ec17G3QZX058nM/dDRUMVK1tLLZ/mGR77
         SAvR6X59b9evQGt8FumIf5avwM8hnhy1xKd96NpuM/kfmg2BvFlb7kMJBZJfG6Fv0uA2
         f36bgjDrK2GmtL1gt83OYV34kI+F1aiJkhYQ9Wj/yWpzeAuTcvB6TyDmEbjiYQvkJ1Du
         mozzgchanNGBrL7YFuFuASviULE6h7BEN41c4DHlNgGKzy8u7wRA+lIKiEFKgS1Q66TA
         MBIb90gGi+2vEXGX1xpejsXsIbBPtFGErZQ4HBZIZ3qjqnETCLsN6cgSpdrdIp2EuzoM
         auAQ==
X-Gm-Message-State: AAQBX9fORpXIZjYvBG/X8nBhYxXe3kvMhJWWuXfJBv6CJr2w9OF1mMeG
	1DmEtm3agl7cAD8YFGt95pO0Gw==
X-Google-Smtp-Source: AKy350b2+sG8vxa+S9kO9UBfoIkxY8Nw5+1joCziMKEUVv4LhML9JMZc9XN4M+q0gTUfxHaykEfTJw==
X-Received: by 2002:a17:906:3e96:b0:93b:2d0b:b60e with SMTP id a22-20020a1709063e9600b0093b2d0bb60emr466105ejj.74.1680634882724;
        Tue, 04 Apr 2023 12:01:22 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Yuti Amonkar <yamonkar@cadence.com>,
	Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] dt-bindings: phy: ti,phy-j721e-wiz: drop assigned-clocks
Date: Tue,  4 Apr 2023 21:01:14 +0200
Message-Id: <20230404190115.546973-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120126_447027_349FBF99 
X-CRM114-Status: UNSURE (   8.68  )
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

The meta schema from DT schema already defines assigned-clocks, so there
is no need for device schema to mention it at all.  There are also no
benefits of having it here and a board could actually need more of clock
assignments than the schema allows.

Keep however the assigned-clocks in children nodes, as apparently their
proper parenting is required.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml    | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index c54b36c104ab..4f3841e6a307 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -54,18 +54,6 @@ properties:
 
   ranges: true
 
-  assigned-clocks:
-    minItems: 1
-    maxItems: 2
-
-  assigned-clock-parents:
-    minItems: 1
-    maxItems: 2
-
-  assigned-clock-rates:
-    minItems: 1
-    maxItems: 2
-
   typec-dir-gpios:
     maxItems: 1
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
