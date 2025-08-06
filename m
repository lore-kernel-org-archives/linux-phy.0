Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6357BC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 13:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhasWDE9hEGZ0L9zYAMJgFtoCaBIAiUAuXD0aWq85lI=; b=phLcbHhDBeYH+M
	x0DVMs9VdCl4pyKIMF1N+4IOUGVZm+CN99YOV2HN1mK92cjbmAelI4jGkUjiqJqmG/5Nw7uzf7Y0T
	VtvrZnzoOwq+h7sc510rBhVpqfNxZHl7ixIs5m8lk07tN9LUscVXZ13nTXwL+awUZij4u+ooiMSUI
	gNZC7vrKtFGwWu225bIVMlAswi3qcEW/I7ZV74Ss9OmTGf2tPEmhVVTLumGhyrz2WUIBrffel/TLm
	atvAQ3putsedywQjmWpr+BLyvmHY4tewGvK/xak9/UplqhcRex5obsxGSsTiCqn+zon7pYlXzWiIr
	EITCkPPvizCmnyxQrwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeOD-0000000FK7V-0Cdi;
	Wed, 06 Aug 2025 13:41:09 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeLg-0000000FJdd-0k4B;
	Wed, 06 Aug 2025 13:38:33 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-af925cbd73aso1129921466b.1;
        Wed, 06 Aug 2025 06:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754487510; x=1755092310; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RE7TCvCxG2zRfjEqEq1jHdxAR83d70+ntgHwgKLT2O8=;
        b=RzRf5mQ5dbqzQl9kZ8fDOtKesRtTTr7KNu7aJcjbZwK63RMWoamYvrojTGhCAC4lUI
         q6Qrw2CJjCgwDZqgyr1gfIfQkZV4e8VW54Cs6Kto9HRY+uhnKzbKNn53SBGVCsQ1qfrB
         jV6khywbWuDc3XAXocLSK7Pm8EIANb/77fnu9Hd1A98sFOLCTO1gBLjaK/RMzuQ3xQCy
         9EtxBhxPG9WTJuWb4f/+e6LlFUEuxyDU0NDwoLbiRj9HFVFJOI21812i567xjkUa2a2T
         9Na1sjR/6DspQAd4agGDzlhzo9uLJKFJrsZKh4rhsU0uF4FlffUkVfo4O6dJ6kvvOFBj
         hw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754487510; x=1755092310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RE7TCvCxG2zRfjEqEq1jHdxAR83d70+ntgHwgKLT2O8=;
        b=g1JjoqPMbuWU8DTbim3gu4nru2InUILDTvnNtqx03yhO67zv8t1r0ZO3Znx/QER3EZ
         9XiD/C0aSQ8Fx/kV9XqY0duFDhJeXmDayO7ogXdxO/s+XS2D9xVnwQ+bZ69CV+Voaeep
         ZJC0LzDaCxxEZNoEApiNDRf+MCd8LT4hg9hfxb5AEk4OroTSllasx1Vr/DxDRrVQG/+q
         TrYtmuDWywPthIjtAOXpf+M0A0WUlaUiHhl/WZvSUy5E/Q7KBEeBLRO0DMB/tWwVwAUk
         +AAwkCpNkWBEKzEnrNprWWcSIMCs3fnVBDZy2PRC92zTn6QcUxcJNxHcXX85YigDGFHf
         FH9A==
X-Forwarded-Encrypted: i=1; AJvYcCUyplAliEkp9om9eC2M6e0ZWGy0JTm5p49Q9BNnNh/HQlh+GlJ2dv+lTHrUl7zwXIyAYiTNQ4MMOYpbZAo3leHN@lists.infradead.org, AJvYcCWpRZZ95RiFO0t0HXUueojTb0C6gpPf8KslP2V1Ea1ZtrfTTPveUY7BtJG2QosAonZHpUZqBYBN6sqk@lists.infradead.org, AJvYcCXER+OGQyThAKVbJxbebzSfFxQE1mMRtqeidbA8myuANW8IGgSG/W9cXgTnjrq9XwsGm6TteBmh7gcyMAOnzws=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6o8/j8hekWPOMxk1DrCV8FO61YxdWEnaEfUcUYtUK8sh1Vv2e
	jFhEJKqCw+qXuWMPx+Zn8OtU3jk4TIUZRc/A/qjU9ubTs9L+SyGDbLyc
X-Gm-Gg: ASbGnct5RgHnVTMiJkCFatyMIx3nEZXdoBoJg8+lBd5xzM19EZce2N9KkfNg8pXTxmg
	VcA1c40zoJbzoPaDpmP/J/BQ7NAImCy+0g1hInCWPUR4t5otxSXamXUqlnqKbsBPTR6w7y49djt
	qrHuIYq8DCIyYtjvJu0t0yGNqpqyX1cGj8UQoCANzNpmhOlCXsIZvYiPpxhAJhChYePkDQLNBCp
	uZghoxRU+oCdTvzx0H0a4PbeWmlPiR/f5hD4kGGoRqUgRPgMP7ONJqL+mh6y/KRT5TUzbPmWp/G
	4O+R9Yyn7EOoJzSwXuHWYObGTwWQYtVqVTFDd0LtT12G4833aJndYpnA/G1UthIvTUXmW0CcXzi
	YpZiUOti4e3wTPUao3TYN9q6eQxCrKfIsccN2jw8OTKX22o6alXJD9XX9rk8=
X-Google-Smtp-Source: AGHT+IF2ymGd2AoFy9NFAFSdbbtre8bTkfbWoo2XU03adYW5ZL+BPbzq5aCYNXd1svLTsa/+uCsjAw==
X-Received: by 2002:a17:907:1b19:b0:ae0:e18b:e92f with SMTP id a640c23a62f3a-af99032f881mr258825566b.23.1754487510304;
        Wed, 06 Aug 2025 06:38:30 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([185.144.39.75])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c10asm1113170666b.116.2025.08.06.06.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 06:38:29 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: 
Cc: rick.wertenbroek@heig-vd.ch,
	dlemoal@kernel.org,
	alberto.dassatti@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: phy: rockchip,pcie3-phy: add optional differential phy clocks
Date: Wed,  6 Aug 2025 15:38:21 +0200
Message-Id: <20250806133824.525871-2-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_063832_216844_80101F31 
X-CRM114-Status: UNSURE (   9.61  )
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

Both PHYs can use an alternate reference differential clock, add the clocks
to the DT bindings

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml   | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index d7de8b527c5c..b747930b18f1 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -20,11 +20,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   clock-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   data-lanes:
     description: which lanes (by position) should be mapped to which
@@ -82,10 +82,15 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 1
+          minItems: 1
+          maxItems: 5
         clock-names:
           items:
             - const: pclk
+            - const: phy0_ref_alt_p
+            - const: phy0_ref_alt_m
+            - const: phy1_ref_alt_p
+            - const: phy1_ref_alt_m
     else:
       properties:
         clocks:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
