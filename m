Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E629FC636CB
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 08:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vogJfABIGHroQuVkVvRromwJ9JHD3HtNr1MsL9+Iiw=; b=zs59QtZDoGlFfn
	Dm03HKZhua7756eyE2OLGn7h7+2DdaM/iePXsXlpc/10cIFlD6Gf7WJVdU6ozUfXEA++SIPDyDJQT
	9SMK29qtqI0+IaquNkatlYfbNWcrIKV9fuyC2TruR3yl09sykmSbr4X1KEbM4NFTfkvQppBQV5+SL
	1EuUZdBtC5LzwcEMfT9WqPBVcXrGan5QavPPdJ4WCphf1cLKTpSwKFO6flBzU8wXAO4RvmoMhiqX3
	2nbsN6Zx2kaOOYmk+RJjU4Ih41GcpbUEnqoJlMBz+4KvFqbUqKmEX5pR9bv//mO14EPwL52a7+SaY
	X0hClZUnS5U5UuwV+uOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rky-006Y6J-20;
	Fri, 24 Nov 2023 08:41:48 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rki-006Xkl-14
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 08:41:35 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507ad511315so2280591e87.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Nov 2023 00:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815288; x=1701420088; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2ZTLCIzGtDzdo93FJ4l2pfkops6GMcXVN1dXIsoDYI=;
        b=UchG3Ncvof+JctBVY4l5xzIBoEY4D4scbeX7M3vWp64G/h66w7sbsvWM7vKClVD4h7
         qK6CKXbAPhJfjEHbCma+aLz79iVypSIxhMIhfqSdpzAdBO9kqD/NnOi4Fu+X81wYFIAV
         sw2ee/aFqv+RtgD/RVKXqlq98EyxNhP88IYAXMMMSvtIVZ/+rCsxwQbsecPE0Y9QHcoW
         ih5fzpLdrTr8HFOwba7BbKp9keJVfrmCbo8lSUmTaO0W70YBaVajXQJuzocjEJXwCInL
         S8Rj9K5WzClip48v3LwPhBuFvipS9AB9MdYs0z4d1ogYx9Awa+L/18HM0bPqV0Xq4zrW
         jhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815288; x=1701420088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m2ZTLCIzGtDzdo93FJ4l2pfkops6GMcXVN1dXIsoDYI=;
        b=vRQOgy1dNi8tvcYs2BmDN2mWS+az2FMG/rlQLFSqOh1L1CbDXiKFLk2XmDOvLLBDD+
         /wwO4vREbTvu8sEvLJ8EpDZHg/fNcWgKZRla/gW7b2vz+0g55lWDLLROAM0jDpB03OtN
         MP6JfdTg5XVJEyiHFO64FSkQxQt26eHsxQMpp0FBz/d6aUHUxqGfFEvKASgK6raNTv/t
         C7LU2TH18lRnR1qnv0UTpQRm+utr+2Fdtu91Mb72bpx/t/tmMGDV2isCRe7Jq+5Zg25r
         VFh2HlAuZTB7aEwmpgrGlp+QcGVcESRVk2TX62QqZkl1QqBv2LdMp+YB9s5elVCK8HXH
         w/tg==
X-Gm-Message-State: AOJu0YzRsfF5b07n27OH8/7wc54BfmKrms9VTFPyl0++CqGYXX/7bQp1
	vYzNzJ3h4xhOAF7sEE2ED007Vw==
X-Google-Smtp-Source: AGHT+IF7kjc01o/SSdybHjyNhj71mp3t5jB+vgaS6Zawv8K1Yz8ZO/SXKRCN8wCpxqC5dFcGrXnmPg==
X-Received: by 2002:ac2:48b0:0:b0:50a:71d8:c94f with SMTP id u16-20020ac248b0000000b0050a71d8c94fmr1135313lfg.60.1700815288264;
        Fri, 24 Nov 2023 00:41:28 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:27 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:14 +0100
Subject: [PATCH v9 03/12] dt-bindings: phy:
 amlogic,meson-axg-mipi-pcie-analog: drop text about parent syscon and drop
 example
MIME-Version: 1.0
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-3-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1573;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8X7fhNCy/HvwIwzbk4yey3zcZzSI2bVpb2v4gVLXFlE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGu31exqQpuNJfZ3NjzAF/oHsRU6ubp/jrWqLQT
 WaJLbsCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhrgAKCRB33NvayMhJ0VZEEA
 CD9QWyKz5JqJKUffivHccIDuBx4b2ZX1upUOn4LYSEVYLaEcJbOEb6eAX5QsIvTezN2HvZAOD/TF9X
 9pmybusblHc3qqagjwruVann9xFjxmVQCB9SWYGaaQ0kQYjPaY5PMoVHthzTo9JWLHJSz24rKrbXDu
 xLpfwHLzURD2kOC43HpN66RtC1etfxfHeGOidg6loQOI04C9jg8vbuQKk7i0kIDBhl8PiFEJ+wgw6L
 D7M5mAuFYh9Tbd5Z5hbpNP6A+NahpX86HYi2TeKEMOMMCD92TqldpuV62F+Ry6VSJLYPVXi4i9FJ2y
 BG4Ix/aRkBZrVNcPjfiOppcPJ0kO+XcRl3EUpuMo/bjnARyq7bqZoHTiJ+VMyLwNo/K5LsaelA5kmv
 tA5YgY9gVsjAhiCEvOX8bGnkrRYLI6rINhOz1VqeVgbhFxOkYVfICfwTIaVpJmfniwQ4jOThbthyjO
 CAAKJ0dXfO51MW7CDFudjjcdwaRBdjl0nEOEWQgIe/adFoJX+l1iF43Lq8JJYTIF2ignclF4V7fEdO
 ihz9RrW4apafWFspszLmJDMa7hi6fS04cXDWU+4GidaAXBkpZmoJpvuwsx1qgdBLvOr6AlDgFvKXYk
 z9mvyPn/fy3OaYQofJppI6cR8w4scLqA3Bd7v8qyOdKyjBKiNATHR5rXnrrA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_004132_387997_0B0385CC 
X-CRM114-Status: UNSURE (   8.65  )
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

Since this bindings is referred from amlogic,meson-gx-hhi-sysctrl.yaml, drop the now
useless description about the parent node and also drop the unnecessary example.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/amlogic,meson-axg-mipi-pcie-analog.yaml         | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
index 009a39808318..70def36e5688 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
@@ -9,16 +9,6 @@ title: Amlogic AXG shared MIPI/PCIE analog PHY
 maintainers:
   - Remi Pommarel <repk@triplefau.lt>
 
-description: |+
-  The Everything-Else Power Domains node should be the child of a syscon
-  node with the required property:
-
-  - compatible: Should be the following:
-                "amlogic,meson-gx-hhi-sysctrl", "simple-mfd", "syscon"
-
-  Refer to the bindings described in
-  Documentation/devicetree/bindings/mfd/syscon.yaml
-
 properties:
   compatible:
     const: amlogic,axg-mipi-pcie-analog-phy
@@ -31,10 +21,3 @@ required:
   - "#phy-cells"
 
 additionalProperties: false
-
-examples:
-  - |
-    mpphy: phy {
-          compatible = "amlogic,axg-mipi-pcie-analog-phy";
-          #phy-cells = <0>;
-    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
