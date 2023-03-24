Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FAB2C6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 13:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIriq6oO2QzehHhKNlXbmUEX9AYVAa2C/+ZCOXQwI2o=; b=e8Khd5knJ5yMO8
	eM1VmrHqJ+nIP90aMkIKscHPLpv9xjIfV8ycsKI/pgRODIKdcNYVk7/tqbHOIiGiD8j+D2pvIQFTw
	wNnN7MKMG3Y9s9T0JnbSA/wVmU4m/QiY0hg/yuxaxSH9YFCYJX3El4l4vG4e66r0yR3o/l+cbnSTh
	QviFMltuQT1im8N/MjSUvCda0sSjqFFCPGxvIGSAGt26tXUGJCVqzhj6fUYF1hOlMlysCYTusAWl3
	hVN67cqZ91SFP6Fe2IRGAgAtkCah3mKhPOAKPq695Obw81vYOtmCzA9QNsC33rcE3JIdwRFe5vciT
	zbV9VchSbcbzUTKCV21g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhRh-004UPs-1n;
	Fri, 24 Mar 2023 13:27:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhRa-004UNk-1n
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 13:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679664417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rqu3TJ9Us4tjFNY0o3zPlo/dxstIWcHIOGlWftNzUnQ=;
	b=eh62+0trEr7F8Xo2fRLbctUumberdj0TmYkvEnAbOsM79hU/h4QrIDmEaWM9U86jUrntFl
	FqborovT+Xkp8+0CP1CW+0HYZsSKbv74OQozKe8zxtkAc7tQDCCTkmyFl+FhTHDECSVKoT
	sTE7qoPwCL2GfUatxBlFrawHpqRp9m0=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-616-ss_sIntnPOKKnQuWusIZng-1; Fri, 24 Mar 2023 09:26:56 -0400
X-MC-Unique: ss_sIntnPOKKnQuWusIZng-1
Received: by mail-qk1-f197.google.com with SMTP id x80-20020a376353000000b0074681bc7f42so764734qkb.8
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 06:26:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679664416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rqu3TJ9Us4tjFNY0o3zPlo/dxstIWcHIOGlWftNzUnQ=;
        b=UEOvNDlmRBiDGDWjdx+15V8JBPd+bywv5Iut4/B0KCTVzfB+8IPSSZ23vjBu2yUFZh
         k8ov7QFdNLUdnSSPB4WCdC8WoV01ZHTDQ2Fl/sGVM4W+evinPE3CZEsqVk+juZ6SizV8
         y0uX1IONsCj2XX0VRE1196uig7r0jdThVZ6nB+ZjiCDjf8JjzteHHMTIz3R504eHeCOO
         ChnhvHq4aydvPZiWcTVuv42R6R7DcyJsrPzKMR7b/27cqMLnHv9PLmqyX4HGlMeIAbV3
         cYtnm5hMIqTWF5zS9qikSSnz3diEzzgTfM1dR5gaLy3vgTf/eVC/mIAn2lt6M6rldXsK
         BPrA==
X-Gm-Message-State: AAQBX9ek7zPdZmRSxVB7cTBlC2LHdZWroOTcosJLVgbbt2ZS8xf3NFYz
	PNSya5V6iNGVl/OdCa9sIZ//M5zj0n1JQ8p4j5o57a/hDu835M1vEh1oBt+KxXBh724QdYpw/E1
	kscc/VuYMiDrWRUODnk3w8/yxnw==
X-Received: by 2002:a05:6214:d07:b0:5ad:1a83:8021 with SMTP id 7-20020a0562140d0700b005ad1a838021mr3926026qvh.49.1679664415745;
        Fri, 24 Mar 2023 06:26:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350bWyV7OYeyD9u0w6iNh0EYkkwfo17tJz1C8lhIiQ8oaWqvEFwUsQXfvyFHVNhZAkqBx+PZ4Og==
X-Received: by 2002:a05:6214:d07:b0:5ad:1a83:8021 with SMTP id 7-20020a0562140d0700b005ad1a838021mr3926002qvh.49.1679664415511;
        Fri, 24 Mar 2023 06:26:55 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id 123-20020a370381000000b00746a7945d87sm5095680qkd.52.2023.03.24.06.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 06:26:55 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] phy: rockchip: remove unused hw_to_inno function
Date: Fri, 24 Mar 2023 09:26:49 -0400
Message-Id: <20230324132649.2649166-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_062658_673597_34906022 
X-CRM114-Status: UNSURE (   7.26  )
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

clang with W=1 reports
drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c:284:36: error:
  unused function 'hw_to_inno' [-Werror,-Wunused-function]
static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)
                                   ^
This function is not used so remove it.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 726928ff1273..401b0aabb159 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -281,11 +281,6 @@ struct inno_mipi_dphy_timing inno_mipi_dphy_timing_table_max_2_5ghz[] = {
 	{2500000000, 0x15, 0x54, 0x7f, 0x15, 0x6a},
 };
 
-static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)
-{
-	return container_of(hw, struct inno_dsidphy, pll.hw);
-}
-
 static void phy_update_bits(struct inno_dsidphy *inno,
 			    u8 first, u8 second, u8 mask, u8 val)
 {
-- 
2.27.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
