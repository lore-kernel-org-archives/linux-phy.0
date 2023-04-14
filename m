Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31D7AC77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVx5fMyycI76L1n4UwNfDKuwhinsyurGCfrX4luGE7M=; b=tOl4OH8fuOxUWs
	A6aclKnQHlGtqpvWsAMl4hu5y48D5LuC7gRjvDTZGEIUxB5yRGiI+Deenjz++OAsF6owxGaamIWTf
	mPeZEvOQTbuq/PiOOTyqDvD9+Wc7Ljizw4UT17iLwe9MCoV0YBolDiyoVpsM8ed33UJZBWAj18LPC
	h2LUaF3//AYcueh2wODNw/oJqY3u8kBsXOhZLu51TgdH6nEfBs+pkldZ93izKewkVjs9n8jZl9GqA
	cvIbv56MJKBYOtI5B2ehO0J1aO/dFlue/aR7p2vuQiaZbcbjqDEK2JkUwkTACB9h7iKQkRAcGaRl7
	pBmzzMKQ884Vtj5xX5Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnISI-009VAh-2e;
	Fri, 14 Apr 2023 12:23:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnISE-009V8Q-37
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 12:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1681474978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yPCGffG6qbUGI7F6FTErQ0LH3cHGPkEEbnsErQvfFxw=;
	b=d6PnMEWxIEnlFOxVIYUoL7RiGW/uvbjKlhFdb3Em7Q3Xt+gutyuSo4HPBIks1hJccS8m7W
	/GDM9ZugroNXxmJkQKO8W45un1ES2HPeXefFLCZoGiYKcaWJ/jPxB24AhSGXEBr6fR+uWc
	AC9un9vaSto7WmjzCwQKKqiu8I74kLg=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-hEIdigCSPieSq60v34qEVg-1; Fri, 14 Apr 2023 08:22:57 -0400
X-MC-Unique: hEIdigCSPieSq60v34qEVg-1
Received: by mail-qt1-f197.google.com with SMTP id c6-20020ac87d86000000b003e4df699997so11157604qtd.20
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 05:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681474977; x=1684066977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yPCGffG6qbUGI7F6FTErQ0LH3cHGPkEEbnsErQvfFxw=;
        b=B0ljQlnO4d+vQHr/fEVKWwmQhcYLhDpkAd3NEPn0H1z/qRz8h7UatyGkr06dCQHw88
         Kf6km0/4gpXEz67IU7tqPsEBUvBdYasjP5tQgQz9YRihTanT7tE2Wijj/lF86083g1IQ
         vKavpFNvilqLd/4Gsg2gqvTGTAzWf39opOvo0kEQ83bQAeqjPDnCvq5vZhJYIpTSP2KE
         3ox27MkmYTYTZrPMqPF34BIVIuGtMjkwwwTFoRdYI0BLB4TRgA4nTpDDfQTN39lg8573
         LRIRpCJ9bWWH1Q9TdmJxpvITtcEOdkNmCvhDiMH5IV5nlpIlVlEabv7URgU3wq2uqKBf
         4w1w==
X-Gm-Message-State: AAQBX9dXwlzCVDon4oNvP9seW6OPw1dc/tJc9+5zlIA8GCtMtRv0Cz9C
	MUapyprNIisMipCgShWwknCqCkN6qwEd1S4deEf9JH17Cdh1P5Zvn0YZaGlq9tps30dT+iPzxCp
	Ua7WdkirfMbxnnezvbUslC3kx8Q==
X-Received: by 2002:ac8:5945:0:b0:3e4:e2fa:66b0 with SMTP id 5-20020ac85945000000b003e4e2fa66b0mr7771670qtz.29.1681474977223;
        Fri, 14 Apr 2023 05:22:57 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZrFNjLa1K+ogArho3OQ0SXUeh36MSY9HRSMAimwdY9UWoY7qElQIx2CPz+MS7Z6iLrkNomrA==
X-Received: by 2002:ac8:5945:0:b0:3e4:e2fa:66b0 with SMTP id 5-20020ac85945000000b003e4e2fa66b0mr7771633qtz.29.1681474976909;
        Fri, 14 Apr 2023 05:22:56 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id r4-20020ac85e84000000b003e302c1f498sm1193420qtx.37.2023.04.14.05.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 05:22:56 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	granquet@baylibre.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] phy: mediatek: fix returning garbage
Date: Fri, 14 Apr 2023 08:22:53 -0400
Message-Id: <20230414122253.3171524-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_052303_102389_162B62F1 
X-CRM114-Status: UNSURE (   9.09  )
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

clang reports
drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
  'ret' is uninitialized when used here [-Werror,-Wuninitialized]
        if (ret)
            ^~~
ret should have been set by the preceding call to mtk_hdmi_pll_set_hw.

Fixes: 45810d486bb4 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index abfc077fb0a8..c63294e451d6 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -292,9 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 
-	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
-			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
-			    txposdiv, digital_div);
+	ret = mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
+				  PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
+				  txposdiv, digital_div);
 	if (ret)
 		return -EINVAL;
 
-- 
2.27.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
