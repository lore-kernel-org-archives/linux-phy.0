Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BF7C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfQaCVCxFiBSzGbNsaGwGVOYI1lYf19IoavMEXkNWlw=; b=E7UxbpeITxucuV
	z9w81FQCkQ+1IOG0s4SARQkVeNLcZmP/+vqJAExau/JMOwX1O9UI1nxBl11+4o5G8ddB8sAYyR8Dc
	1CUTz3mCDEF0hzQgKq0xET2eOZd1KtoGXHD63hWbUkXoBV1q2eM5qzuGYy3nDoU01I/+NnoOC7rqn
	xCZ8oFrTbP/01WvfhaQdo+Rfg4ufbqrrNml1UZT9R4jWspFI1MfD2WsWUKzEqQ5Dob6lvEPtLDHQa
	mAvaamjDfYGwzpAtd90SoLzCM6LwUhPZpZJAhxM7vJBx9X8q2qg6/nQiba+dx+/GITuGawkx+Ktan
	zZdPLIcerGmFem5M1FIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3OA-00BPsL-Tk; Tue, 31 May 2022 15:02:30 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gx-00B9yl-Dx
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:51:00 +0000
Received: by mail-wr1-x431.google.com with SMTP id t6so18805483wra.4
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uQC4VQ4WPzHEK/K/bvUrrtdGhjy2EyWTwZNKtRp+iyw=;
        b=3zIN1i390joEcWbbq2lEOHhXMbqplBLfG3SD7Gn+0anr4jkoPd2gwnoMEaZyMG8yla
         79QJeDtdsmbhvTN0aVi5ShWLg923FwOfwzsJscVxwTBck9XRvgDLMf1YBLIGIMtHLxp/
         2fx/3yU5USgbjMKAZuKyerFEXHn9DkEkkIQcxl7/VfGcrIpsxQUqsiMBkPIUbw5ELdWP
         LaEcasNOwwN6Hgwjt+9noUuQw6IjSIkKmqo07es5YJAW1c2FQFNg2FXnXV8QrSZU7KcI
         E/wqN9qZKk0nK7AO5t9fdLwAoMhU9MFxIRULSYgcApWN7dji4+sJeKwaQnjXe2jGwzNH
         ekoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uQC4VQ4WPzHEK/K/bvUrrtdGhjy2EyWTwZNKtRp+iyw=;
        b=tKOTBFrCrRXBz96Hc8rd5Lup3eFr8caS3c3ij08QX54NZz2C3trYRmtQ4/fBx+PjoH
         xvwp5RNPSwCemvu3W3Og4SG/pq6Bd7bgigESsSVwmTWko7Gq+k+tEc2VCV8NZnzp9eI0
         7wC25ULwL+v9W7sr/aqDq3cVGhDgOEA+J7xk/I1qtbrfuXmdylk8g5Bwak1l86upKkyZ
         mAB8BlJWuZmpq/+VRiQrE1lQdGnu+Y97GtDqw0IitHefWVvIpob1l3AwG2D5X409Assc
         ADth4SN3IH+GkpxnF0a0jmaD6Noj3Oz7SI4oz8cjslhvIdr/RqPzXVJlg7KohWUJimLw
         Atig==
X-Gm-Message-State: AOAM533qx+kRMe6pTAQNrVcn9MNmGRnJrbMffb7u4f/NvrOMbm8QTvVb
	QGnfkGPKuzwhdYNlcjt08m1caw==
X-Google-Smtp-Source: ABdhPJzt2aaYFVPwdsiueoPDpTiBXsJc2pSW2BEWEyPMk06DY6DCbjp2yLb2MuUyFpuwoIgosOJPOA==
X-Received: by 2002:adf:ed86:0:b0:20e:6f48:a194 with SMTP id c6-20020adfed86000000b0020e6f48a194mr48087877wro.290.1654005059022;
        Tue, 31 May 2022 06:50:59 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:58 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 11/17] dt-bindings: phy: mediatek,dsi-phy: Add MT8365 SoC bindings
Date: Tue, 31 May 2022 15:50:20 +0200
Message-Id: <20220531135026.238475-12-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065059_492910_7705EEF9 
X-CRM114-Status: UNSURE (   8.78  )
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index 6e4d795f9b02..9c2a7345955d 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - mediatek,mt7623-mipi-tx
           - const: mediatek,mt2701-mipi-tx
+      - items:
+          - enum:
+              - mediatek,mt8365-mipi-tx
+          - const: mediatek,mt8183-mipi-tx
       - const: mediatek,mt2701-mipi-tx
       - const: mediatek,mt8173-mipi-tx
       - const: mediatek,mt8183-mipi-tx
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
