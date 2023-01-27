Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD2CC38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztO1ztQEk9N1N0xAVSpBxSEX8YytyKMj6eV2fVNbvjU=; b=jsuyExuV3yXxRM
	UXxGh/mWeOHIb0rJ4jV5vBK7bzkjBU95V6Z2QEx1Fpg6uUG4DHxW8Ij6L9r6PvuemvudUH3GR//gr
	zb4QYevjknnh6T/x0UDQST3Bcg+Hpak4TV6oip311A+PnMWn2rRq34tFnDUPKNswjM9Gqi0SuwBnO
	ZgYXij/FTJsjcSLbkYUMYCq3Sd20e/OivcuISWdJYegc/JCKo0qj3aRC8YPnRg+eBEzkF9ze7wL2b
	tybJTGRx1tWErdo94MGuGJSsc/q0+apj8so0plrDGLBidufhS+Mf96joQJlB6ZRMMa2AX+qicmTWg
	OcdUKX9Hlrrcqf6hDydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVcG-00GR9N-Rf; Fri, 27 Jan 2023 20:46:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb2-00G8vS-QE
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id bk16so5887778wrb.11
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXcEOV+ikhaaev3YUpdV3LTjyGNwDAC89LChkvoW52Y=;
        b=ECGkYC22kGhYCVIAgJfs1kwNkbHusNO0OIv7monN00IxJ/o2bSlbuNHUJze5Ozrt/M
         ujaHYFsD/x9rlkGuD+eWGdVwmMPJM4zpZD/SkU7AtFYhB2aQHfkN35l5Zw9ykEasQDBX
         7zihqPGLiYXL432GMeBiWsG5IKcqyRrynqy3bSa7f3VShNqilVQ4CMz6eV1ALCYNpLrP
         wepGiVaixK8VgQAjQUC6eWm7qUnwtBj4RaodXkl3Q0YEhL7QuRNtbs1T57/gXikIz/n0
         BI7ydf2oiSjn0OoOnPtaMh+wtpBVpw9s2XgkClagH/8gU6K1DrlKCcdlliWnqWq/Nkbs
         rTJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pXcEOV+ikhaaev3YUpdV3LTjyGNwDAC89LChkvoW52Y=;
        b=dPVi0WGZ8xc+fr4d2ecEgchfuf91dnAWA4+oYJoGw99ugT/biy3acKSWppXTu65aTq
         z2ye3kF4lE7Xs/YoG2wdlIYCYVVbh7pLIfZD7NthFVc/6g2i7pq6qD+YOJNhGXScp4dG
         8BLm9xe9lsVfHOSkh0EFIaCBoQ6lbvjH1IgrOQSGDJJyhVggUwQb97OW+l+UIcZaThoy
         jKFaPJJsoQ+JqAyae02ZEoVc/w+8sL9yC8dBYg/djdl1rEu7ulnL3P4TRuwVnQKMI/kV
         5KZ3X2eE+HEG1+nJOUHsGKy0J4ypS+RjFrrEBu/iVMS2J2MdL4O1ucCHt60EVmRdnAq2
         SswQ==
X-Gm-Message-State: AFqh2krWEvdMUvZeFu+5Ndf1gZufVzUnfXyDA4PU7KvAmODTjcDyRs94
	X9QAm0G0i5FsvY8cJsuHPE9Kiw==
X-Google-Smtp-Source: AMrXdXtnxP2pNNbbdNfNhQSvTB/2VE/w9WDZOg/rAZpkuBD5arji3hv5ReYPbhPestFCp0q1weUkqw==
X-Received: by 2002:a05:6000:8d:b0:2be:3a6a:f565 with SMTP id m13-20020a056000008d00b002be3a6af565mr27343065wrx.38.1674848470759;
        Fri, 27 Jan 2023 11:41:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: replicant@osuosl.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
Date: Fri, 27 Jan 2023 20:40:51 +0100
Message-Id: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114112_975011_A52B5B6D 
X-CRM114-Status: UNSURE (   9.43  )
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

The DisplayPort phy is actually part of the Power Management Unit system
controller, thus it should be its child, instead of sibling node with
syscon phandle.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/samsung,dp-video-phy.yaml        | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
index b03b2f00cc5b..3bee3f8733f7 100644
--- a/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
@@ -22,13 +22,13 @@ properties:
 
   samsung,pmu-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
     description:
-      Phandle to PMU system controller interface.
+      Phandle to PMU system controller interface (if not a child of PMU).
 
 required:
   - compatible
   - "#phy-cells"
-  - samsung,pmu-syscon
 
 additionalProperties: false
 
@@ -36,6 +36,5 @@ examples:
   - |
     phy {
         compatible = "samsung,exynos5420-dp-video-phy";
-        samsung,pmu-syscon = <&pmu_system_controller>;
         #phy-cells = <0>;
     };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
