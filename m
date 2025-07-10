Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E1B8C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL6l4MVSvG8JO7NxoKythy/SQ3RxOH2snkm35jMcZbI=; b=3Xitku9ZGrDkV4
	Ye6oH1feyDxaewXdzid6uIVngvESI7Ls+bUHM0YhC6RKSWAeMVVB50UfZX+Vum3/ZZFQG+rZdThQ7
	WtJjK1XwKLTQzSOeM6SYvEfIhhOwOYHFm3uOEvbVrLqiIG1KqZjYRF6JOJAlkXRRSAL+fsJ3X4hlk
	cKnjJhIt/XJyeZQUlv1I+a6XFbkNOGgP7MjkHpxxPMe82V3C4oIW83Atut/h8fHflC09/RCZb0la3
	bV/zC0tA5HsXarJjClz3xyMZcy7GjGzNXAYbQUA6RZM4ZHss86qIoDrzg+XLvscl+g/jSqRnZ9LIc
	3hSDU42IdPP7NhRCmQng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw3q-0000000CiOj-3RdD;
	Thu, 10 Jul 2025 18:31:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqp-0000000CMkM-15vk
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jTOJwZJsmHoGcZ8h71+3z1fiOauF+CUgacJvRTAcORU=;
	b=PdHO/QskZmC65Fm3hTLdRZu3DFgBVZTxoK4sYXRnYaBEoFRM10QwqGsowFo4jT5pnAyKOO
	iecsiuWzN8Hsp+uXCPW2dij4vnbPUwmm1JsTTjGUeMsijFhz9FBgUUocqXxQB3HWTi3AWx
	RqO4b/WQpiAQ19ACu+NickZJ6b/pA64=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-f79Ap7eDO8-Cg0Ri3JkXrA-1; Thu, 10 Jul 2025 12:08:33 -0400
X-MC-Unique: f79Ap7eDO8-Cg0Ri3JkXrA-1
X-Mimecast-MFC-AGG-ID: f79Ap7eDO8-Cg0Ri3JkXrA_1752163713
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fac216872cso24446456d6.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163711; x=1752768511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jTOJwZJsmHoGcZ8h71+3z1fiOauF+CUgacJvRTAcORU=;
        b=ahv0nhk24qwnkiBEYuq5qJKMvUlwaso0uGBTvqjYByYTncVMoAQtU8YdWrhV0xc5Wt
         9OxhbSpEg4JyvZ0EBxkQqAfSOtVaqSOA2vPELc8wDRiZerR33Cfozx6xZtjxYfE+pJYN
         yB4Ypvv+FRYuGMT5Wmp5NE8yefU/gutWRMW3RRXauNW7nI9csMGxxpiISpfdMGX8vtgA
         o00LcZr1UKQmUaVFpCijxZwB/TQp7Lh2GLJgXjy1l1HjrjigidDWhNLF0jLachJ7ppxZ
         nBHhUjLRWb9NNozqFwYPfQ60FytHR1jLN9MCedNBZfrjzL131RBxOMSG2ED+AyzjyjFX
         3c6w==
X-Forwarded-Encrypted: i=1; AJvYcCWKiCbspi4Y+P46gToe1BGBB5fhcKK1DaXSMsO3NfVrx4jUjONGx/GO4Es9feK6NtdRNM2inTipguM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwACj+yeq3faeJoUBUbuUU0+Uy58AXezu9xLodiMg17fILa0Rgl
	P5Y6n+HWQvueYn8TDm9DzBTwQ8YqeXhZtM8dPiUtuc9aNi7Mu+LraVXS4RH5kDP6dhl1LCG1PAc
	eUACN9Y3n3eY0kYcQgUxVTdyysNGTBhR3BE4lmLEErxj41e1ar6BUflSIonq3B8o4ctPnQA47zg
	BT3Oh0Und3cdSHAOpGzsiwK71JhiRpuOaDU1ZheH2/htD4fg3xdw==
X-Gm-Gg: ASbGncuENBQrRmvKthOCZxkp17iSmMgeJ9zWtnlwl5X1r7/RExlZ5BR8Gmc/nQaFOWH
	LdhNMJ4fFHWn0/7iVFxmcUo4/yeHIPB55aq9aYkEFE4yH/KQY7OgOdtkwfi8yMHCfCFxthRVIb+
	KH9enjjV7IzVKluRXGdAoXtjqktBWTmn/R/hYxBCJQETqIN/24TWBWpVrkD5MU7DM8KK6Zm3Nlm
	SR1gAL5sBGSmiYXw5cPO8m0X+9maClvU0DxIXh+/755XwMHXn/kgCQwIncc16aUNkt42oZOwBGa
	ioGzqOwQPO4wzk7boNAmAneTUI80tMsuJYRkM/S1FkgaBxtkx0Xv+H9wIvRD
X-Received: by 2002:a05:6214:468f:b0:704:885e:bebf with SMTP id 6a1803df08f44-704981edb41mr38252586d6.33.1752163711357;
        Thu, 10 Jul 2025 09:08:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlqOGrQN8krksQLxHGl7XCXnHCMvXuYKuTeyW1zhM5hweEhYitnN6UMrP83jETXzN/T64C2g==
X-Received: by 2002:a05:6214:468f:b0:704:885e:bebf with SMTP id 6a1803df08f44-704981edb41mr38251666d6.33.1752163710538;
        Thu, 10 Jul 2025 09:08:30 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:29 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:19 -0400
Subject: [PATCH 9/9] phy: ti: phy-j721e-wiz: convert from round_rate() to
 determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-9-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1629;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=pMJI6s5tTYu1BzJU7vvw5Y0iwaNTd3NH6yMHjsN8/cM=;
 b=0nPrE2c6cl5ohekNJUp1MPpsItdutqAcWnGrmBosgKM0YvNyBYPz4zo1bZfpAq6S3ivaSbkgi
 TWd7oICIP84Cvj784x11Hev/+JYsi8/Mx0kVOHPtXnwdacpkl9MVEHt
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yvM2rTVnfZk0eiLroG6FvkT5CiZAZkMKobyEUQba4ns_1752163713
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_091023_362978_B653865F 
X-CRM114-Status: GOOD (  11.43  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index ab2a4f2c0a5bf3aa4b77045f4da8b0ddcc079f7a..12dafb2bd49bc33c13dd49246bc26df082e3dd40 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
 }
 
-static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *prate)
+static int wiz_clk_div_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       div->table, 2, 0x0);
+
+	return 0;
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -958,7 +961,7 @@ static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops wiz_clk_div_ops = {
 	.recalc_rate = wiz_clk_div_recalc_rate,
-	.round_rate = wiz_clk_div_round_rate,
+	.determine_rate = wiz_clk_div_determine_rate,
 	.set_rate = wiz_clk_div_set_rate,
 };
 

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
