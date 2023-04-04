Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61816C77B60
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 19:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tH1aV0PWUhAPfkClTcna4eq3uzk3+6XwNV2oUAxMM1o=; b=pvPAGIE5ABGUzc
	Aa/C7UhLz5LF7IgRNiGbp4NDQr1jN3s4e2XB2sRxSWOqNWRCcvuoalbM7wPmy/M0R4CKyk1RtWHqO
	nBMO6PoHpXZaM5kpF6cJMoWH0EjvUWpvPwFZkOvQwlMFH16OkMp5y1FBq5Eoi9d+Pxd+/Fj+q2CAx
	vSEPRkooeG7pFdZj3pYCcXpqha75ipGPyOJ695cTSxIShm1X08HhQSy1CDcNuffaOb+K53ObFqqd5
	pKnhXe6ds3wUPGPkAs+eryjBUWXnjcxUx9UxlO6vW9h5nFMSXNAc1VP9YQe2USpfsjGVTZlp+BQx8
	5Lk9OpdpAkP5t/3zqfQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluG-002Z0z-00;
	Tue, 04 Apr 2023 19:01:24 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluD-002YzH-0b
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 19:01:22 +0000
Received: by mail-ed1-x52c.google.com with SMTP id t10so134515103edd.12
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 12:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xdmeU1LWxBpvWwDDQiFchlMca3RtpapWdUf3ChV5Tv4=;
        b=Xm+aZzF4PoD6L8vXoGfT6+59/BgtaxEiUSF+MZRATCfE7PHQphjbbBA0pQJH6a+6UZ
         Lql9f8x3xRNBtKLk52YXwj7tIKSKZRqAc3j8XQozv+4a9FvhVRogi46E2HtZZFv/oO02
         NmBv2ifbigXafZCbmZ5IAzRqWzCSE67/VgCoLtsjUIQHb+JgoBfPZG53JMlwB4s2KVHT
         7R76U+ZpF98zpoTzZgSiEYF4KMsGY1vTxa8j7JkyIMVUZ0pbrcGuEUkm/xdhQ/2ATlmT
         cIbBAq7tw+ggBE9iM2fBaGF0sgwUftx1o5Ge35A8KBqxAveKdNtQMG5WjdwR2snCUY3E
         7YUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xdmeU1LWxBpvWwDDQiFchlMca3RtpapWdUf3ChV5Tv4=;
        b=W70TJzW7UDQCwrcCMKZN06k3ViFVyacXkjxxMB+vPkKrFAj3gr/NA3YcGrnN3eJ3wa
         AAEsd9xMAYqG98zPbvW/OC+gOOEGxJED0wESrNlIEa5w+JcgDPzo028wyT8eMiPshkpp
         A9GFrw1754fj7mnzIEYZ+LLqvtjI89kNdsOVw+172BVjBoQHHqT0ft4hfN3FTcOUGzg9
         pAyV0PfhhxMcQrwE0kGmxpygK+Q9cF+oWW140zygv5Lz+IdJ1yACVUb+Mo3CXu9CifLh
         9Tbsp2hFrvN1xl/Ea7AY55RPAzTU+l/wCavF7BBxH7sE2IObbeAKU4LISvJsIQUEB1xn
         +bLg==
X-Gm-Message-State: AAQBX9fKhcd9IAyMKi/hKmMvb2Jh7gZUw2fF/mdga5zuIRfmik8G/xuK
	Snd198I0YN02vhN/PUMv8zj2vw==
X-Google-Smtp-Source: AKy350Z9nhHQkGwfXXAmu9CDd/l+fSb9QwcPUqGPeKtnTr9ak7kVjuSZ14j5pV/JdmEBP0Rbu/ulIA==
X-Received: by 2002:a17:906:2319:b0:932:b790:932c with SMTP id l25-20020a170906231900b00932b790932cmr597111eja.44.1680634879631;
        Tue, 04 Apr 2023 12:01:19 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:19 -0700 (PDT)
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
Subject: [PATCH 1/5] dt-bindings: phy: cadence-sierra: drop assigned-clocks
Date: Tue,  4 Apr 2023 21:01:11 +0200
Message-Id: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120121_268177_3B06F66F 
X-CRM114-Status: UNSURE (   8.43  )
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

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/phy-cadence-sierra.yaml       | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
index 6a09472740ed..1de699fe5306 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
@@ -61,14 +61,6 @@ properties:
       - const: pll0_refclk
       - const: pll1_refclk
 
-  assigned-clocks:
-    minItems: 1
-    maxItems: 2
-
-  assigned-clock-parents:
-    minItems: 1
-    maxItems: 2
-
   cdns,autoconf:
     type: boolean
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
