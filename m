Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 932AF106B504
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 21:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoP4Rta4cbihdUQB0QqnQg2RkTsSR2Ll7zBHDxAB9DU=; b=jq+XsDbQM98Hd4
	5WJ7Xjjf7EuwadV1o1CUHG5mJT34NnsbbQDMvGN8U83dyHkmkpk4z8w5uvXXGXpwJsaM31EtdMaY0
	zg0f+EBd/sM7SpIfJMR6jAhEgak39VReV494dtPH0iF629HYyhQqAoJRvW8TFu8NFRKxDgtvq2jgL
	rg6Yy6CNxSTL4gyUaTgeLRMFuREZKWA8uxuH9JyYcM26DATsXzw0OOIzx7M6UsqdFRdwWBI2rgrwl
	VVv3pPy2so46Xha+jIkDiHP1bIHpiOVqblod2iHYUA2pziTllVPrd9QWFcw67DW5ijLT6Rt8UoMMy
	RXAFD5+YcFxD6Y6VbxWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4i-00000004ISN-0iKy;
	Wed, 25 Mar 2026 21:47:40 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4d-00000004IPq-16UP
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 21:47:37 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-43b40003d13so168404f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 14:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774475253; x=1775080053; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8itINxGCEyybb+FqlXTgxh4G8cS3WQPV0CNAYmqrJc=;
        b=ucIzdC8VyOtGkjWYbDMH2ohnhzRWpNErMOtNpg04dDIiCPEoneFusFiXo69TTy7gk+
         mHMz+gbOwyrApm86fW3Ez0qep8tsrgHN/gGNdKW9WtD4CHQg6J7HxA9c3RazPcXBsAV3
         6D3BmSpBQaTRF81FitEnWpsRly3WPIx23Y7uAtO3bCDQw4HobWzHr46Vyc4WTu+rDalI
         eO3SggR0K+4ivY9oL1+sFIz9B/3aOYtrTQ0xx/eF17Xb0yBQwCmOWu5bHY/n7Msz5rpd
         GFbcv+5rSOvIE0y62+lmCQLXURnvO0nnGhX1uG2FdRC1Y3ab1tsVZDYrI2vksWQfPANA
         +8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774475253; x=1775080053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K8itINxGCEyybb+FqlXTgxh4G8cS3WQPV0CNAYmqrJc=;
        b=SS1owJ7DWdaYmt9hAR5olnjm1hHgiPqMUD3IN6Lao698wustK1CqM7Kc+mI+fB66QQ
         yx5b7mko53u9RFhmC4vzWu7gwUvDrtjL6eDMVTlPZLCUWKkjorb2etZDjRk6awA1NefI
         EAUZ/tGOAoaPvO8VURbkHtQZkM8bMH35z9mCXI9/OhkGI9PQgISb4KoB7diW69tgr9AC
         S3422010DLaQKPAV5vGMQf2TjTjqYavf3N0CZ585YwA1qS6lI3sPIE9U5WpuCym/Q6+U
         txtbOUOoGSD83mXtjx5u0sBRDQO9R8AByYPUYeWP6q+Hb2QeQXBqmvyGrM8rGIrSOWxh
         Ip/Q==
X-Gm-Message-State: AOJu0YyEn/bDWJhU9b/BMJKAY0LSSweFmpF/TC/eGV0txMfAYNh94zFk
	Dn2OBJZL1c5iFkh4sVFsZstRVDVCjchnKfhHcbBlBj2rKQ9IQwIfkOaVZzi+Hd8w7D4fFxgHKt1
	9TJkw
X-Gm-Gg: ATEYQzwPCm/Vj0WNpr5FzxmHfFsft34JR0DgzCsHi1DoVzLezNWd04pKNDOiTxgAZIH
	gSi4EXYm9skWBK7Vc9IOClrUYFCcua7eu1GShUNGUFOqBViw61jkgDAYX39TE+ZspsjPIH9jHNM
	Aykswozl1qR2IIR5+5MzrJHelU1E58IyBaPlWGzYYqOBPcOYxg2q/10JXY5kF1ZkvoIWacMHOLy
	/hhJkbAh5BQI2ItIRyRH2a1JdqfdGIvvKUHDr2YbSO7PdIPOQo7tHK4cG5gfVHwoP9sqOvpk323
	hZB42sAsyGMKoCwtCUUGZbnOfvRgfjcEO5YSOAXMR1WIWe8ESF4viLwPqU+OfdiKFsyMYesclQb
	j2k4fJu95idLRJPX/VyXAiKS3UUs/gp9dekIIELCByZ5ZQKVqi1+kF9opv322iHJlVO5V3C/dI3
	XredG9T16oAi9EJA0YcSIe4O4jsFv0eqy1dAE=
X-Received: by 2002:a05:6000:2c09:b0:43b:3d54:3154 with SMTP id ffacd0b85a97d-43b8899c8bamr7310451f8f.7.1774475252883;
        Wed, 25 Mar 2026 14:47:32 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df85csm3440402f8f.28.2026.03.25.14.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 14:47:32 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Mar 2026 21:47:57 +0000
Subject: [PATCH 1/4] phy: dphy: Add lane_positions to DPHY config struct
MIME-Version: 1.0
Message-Id: <20260325-dphy-params-extension-v1-1-c6df5599284a@linaro.org>
References: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
In-Reply-To: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1428;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ifv30MJTT9Kq3rU4F/0lfgtGdY/CJTJdg4VXhDyxAqM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxFgO48lH4cNvKfoaQPuZTx8IjEdMBxi/fIw9u
 PHn2+WCaM6JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacRYDgAKCRAicTuzoY3I
 OgTLD/0Y5cXnyg+CyY34aCujLm4/jEvYCPVQjIi++u5w/ojDJCb1TfzLq2jvaQ5KNj7KCwJQIXY
 U6+9GHRn9WagrGaTYGe8X7PrEZiv3jnV7WCZkPdBpRyA7dWrztCYqUd5rf4t2FQTJgr/oSkBwRN
 DRXfG1wXcs6kx0RtTYaPRVSViENKXn36KAgekUjrB8Ng5rYFDSFsKItwHc7lVgl5NNyG+jFigTw
 CpSPFaBnHhP3zKQM/nMW4npVuJO6KwZDTft9uTlIfT6iyNYNyHVva3pS2cRVzmwqAlEmSvWJgzO
 XwpPbSHRciXglsY9hIjhO44iVTuWuu2tq4FGTJHV5HdSuhQyoCQdfsHnfw4MNiu2Bv4zX+4+n3f
 8f9G4qwuxdX4RajP+z3/ayOXA/Cxq23MKdZaRJoDzlU8zNbrbtULjNniswNAk22Tazg/xYrfd5C
 cVQ8v4pCxJUlJ//+xiageB0jerPQ12sQcTWznyAojnaXrdRxzFdOHVgsqKjmz4djEmN+4h/+OOe
 yPZ/nhbZZr+zbqM3RZk6YzrewuMJSQe8Kkn8LeQk0clTj58JQILCbXxKyxYR4rMKXjWMlbzPTtU
 p6n0ucTNBqT4nzwc+gKGDtZSUwhtu7aP3GecLjCbbjBAhDadexQgSBBnIvS48W4UrNG4mXBU46K
 uK7aUZ2L0rDEL3A==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_144735_323083_C7CF6674 
X-CRM114-Status: GOOD (  10.75  )
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

Add lane_positions to the DPHY configuration struct. This data-field
represents the physical positions of the data-lanes indexed by lane number.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 include/linux/phy/phy-mipi-dphy.h | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index 1ac128d78dfeb..c7eb11c41d7ec 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -6,6 +6,8 @@
 #ifndef __PHY_MIPI_DPHY_H_
 #define __PHY_MIPI_DPHY_H_
 
+#define PHY_MIPI_DPHY_MAX_DATA_LANES    4
+
 /**
  * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
  *
@@ -269,10 +271,19 @@ struct phy_configure_opts_mipi_dphy {
 	/**
 	 * @lanes:
 	 *
-	 * Number of active, consecutive, data lanes, starting from
-	 * lane 0, used for the transmissions.
+	 * Number of active data lanes used for the transmission.
+	 * When @lane_positions is not populated, lanes are consecutive
+	 * starting from lane 0.
 	 */
 	unsigned char		lanes;
+
+	/**
+	 * @lane_positions:
+	 *
+	 * Array representing the physical positions of the data-lanes.
+	 * Indexed by logical lane number.
+	 */
+	unsigned char		lane_positions[PHY_MIPI_DPHY_MAX_DATA_LANES];
 };
 
 int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
