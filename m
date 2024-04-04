Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE78FCD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxpBiOKGJeuBXReFyX6rmgL7SPrG+6ZS84DNhXpe0DI=; b=y3O3Mrc/eSEbwP
	Y1TPsQOTIXATaVRFgk2VGgjDWrG6yR2sqakygGU+xQ3B7srEPojdh1zbP8a0lv8pArplGqNgun2uu
	5xQW5fRYmk9q3BKji8G8zWkfRcTqsMSazHg6dbW1AQyUQICOvLpWgJOI0aJWil7TqqzrQxbRTmbJB
	9jtfi/pQLx9X48ekrJAGjproC7CSaR7A1gresdPJ5JxVB1O/MmkYoCwFpNdLOYE/HSnRNBghxULMY
	y05OqkGTggiXQn7Mlo4W/g2G/2yPpq3T7uuSYoSxHPY5M+93MfJcsBiPbSI4LdKJ3yF6G2+iOtGww
	o6+GEYgq4JxDX+vOfftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEi-00000002pIg-2IJK;
	Thu, 04 Apr 2024 13:34:36 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBP-00000002b2f-1MiY
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:13 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3438d7a05aaso544246f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233624; x=1712838424; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j8M8yJjJuvMId3GZYZjS1l/TGkga5FhjqBUO4vnkd2U=;
        b=hELXvjcruiioYUU/3XQ53TWerYwczhCDY9lEHADspn2M8RE9X36H5eLGh+rmH3fX25
         o8yvFWXv3oqivw1q/3/TCvbyXi+X5AaeZYBGyiWJJxTHlSI9sKtr7lVorydcisFVqjI6
         0t1XYnkEy0Qr3PNxspDA749tp0/vPUxqZ9+uEJuXzyGR5eALBPQBwE6whT3xkMhSPdbl
         OOPKvwkf0+CnTF0J4ON6UHr0LTip0e/6aKcUBpBx3tXXM6oeFWQXXzE9XqusadsCONCa
         i42D/ezyFI3/gJb74/T3IsCUREcVabfqwxzNF+7xa7IEHHVQiGjlBobbHGqdf0iFQGB/
         7lwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233624; x=1712838424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j8M8yJjJuvMId3GZYZjS1l/TGkga5FhjqBUO4vnkd2U=;
        b=RLrB2TgHqSjv9S/CEhRLsVQ9AhGD/x1734jg4+hmu3ZrkuUeitGjWoK6oWimOQOIHd
         tzuW3LvJSO2dbCCeBrLYaG4tBf0WiQTD4nab8nOxLxICyZVT8RBLUbmrYiCIK5v5uhxy
         If7cCrYgERwq3FY09/BdXq4flcyua4PQvPQCAQL4RC5P/PlSH7ARWRzKRGuezYHXFw1L
         Kh35+V74DUGpxBBqstpCTAtzrAn49uvCeWMEBfTLEuHv38MwoLWrg9CvP7/MOKY0tq5f
         DERY2mVvNxyqFLhBsTtq1XMFyFEKIbwQsuURSCTRMOcGlhj3Rufz6+YU/Q0xjq9RtvMD
         Vu0A==
X-Forwarded-Encrypted: i=1; AJvYcCX/5B3Z0zVTtjVAiwog/HD/GupFOqI9Mttxu/5SDrWyLGE3RzrvGDbxHCOIL79BY76XytEFPX7Tu29r++azdYnj7EymkW/7ai1KQIfvgg==
X-Gm-Message-State: AOJu0YxNDUwypE70hkczb3ijJzcy1MI10SmiN6dQktR15726WJpt8hsA
	2fkkHUqr1o1b3cm1+f08TFhqDIQSi4D+2BDu9BwMlXao2y43AuGtoVs2L9lbl0Y=
X-Google-Smtp-Source: AGHT+IEexjP4B7taUG1Uny4tFgGyVFyyDBsJMVaOWIrgfE/nQ60oagnYHJl04Il3/SGN/3eIZeAILg==
X-Received: by 2002:adf:ee90:0:b0:343:83a8:96e with SMTP id b16-20020adfee90000000b0034383a8096emr2374666wro.8.1712233624515;
        Thu, 04 Apr 2024 05:27:04 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:03 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 09/17] phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap
Date: Thu,  4 Apr 2024 13:25:51 +0100
Message-ID: <20240404122559.898930-10-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052707_743119_E3D0ADF6 
X-CRM114-Status: GOOD (  11.12  )
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

This allows us to obtain a PMU regmap that is created by the exynos-pmu
driver. Platforms such as gs101 require exynos-pmu created regmap to
issue SMC calls for PMU register accesses. Existing platforms still get
a MMIO regmap as before.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 183c88e3d1ec..c567efafc30f 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -18,6 +18,7 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/soc/samsung/exynos-pmu.h>
 
 #include "phy-samsung-ufs.h"
 
@@ -255,8 +256,8 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 		goto out;
 	}
 
-	phy->reg_pmu = syscon_regmap_lookup_by_phandle(
-				dev->of_node, "samsung,pmu-syscon");
+	phy->reg_pmu = exynos_get_pmu_regmap_by_phandle(dev->of_node,
+							"samsung,pmu-syscon");
 	if (IS_ERR(phy->reg_pmu)) {
 		err = PTR_ERR(phy->reg_pmu);
 		dev_err(dev, "failed syscon remap for pmu\n");
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
