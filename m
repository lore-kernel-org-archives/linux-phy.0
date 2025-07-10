Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7E1C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4kiPFF6T7G1CuC18CSkNRUBxDogwRWqLp7CekgLglA=; b=sqIdBJjyC6oeOX
	WXRfZGvo2wjTxts5vAAwW+8cTCyG7ryJbeI0y95YkPTaBkkvrljTaqs06WDoVyvYSAq8VywaBcH+5
	Nww20PcEo6yKFNanY+iqse0+3/5wjtvvmEJUa7awQIE4ImsSrbIFKUIdUDnsNvDij3o9aWQd1ykcg
	Y0dxMmMNJ1nUHVzrh/hJkAAI1eBflH1VBkW6mk6pnA+BfV2KOWPoDekifh29jW5+aVofM7AwpQqJK
	5tmQXfmTpQt44KupbnZvSnM8T9iTOosw7Fl+ZR1d1EHAc40A4z3kWQOWnDaJXdh8QFO5azg7k+MfL
	GQG34200cg3XUGr5Ullg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0K-0000000Chdu-33QA;
	Thu, 10 Jul 2025 18:28:20 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZton-0000000CMGJ-2Aay
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fJQSlBKA2g43dFqB6TuRxKz7xFAHDfxLS8SwGXWJVrM=;
	b=SOtdK6Jodrc0izsDSfbemrFQ72XmT6Ba0N6mf3UUx271MndUu24d3YIvQIXpVaArokZvRq
	QvN52Sg4o5BmG0i/b355DG0UjxWFB+pxbMwO75r/W6KXU4Xw45iAxbfQ0jkVWD97Kp1VH/
	8WoQsseG5cnyUSHJJ6InJLED9d4mGj8=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-XsiQvnaoMTasz8AapU9Fcg-1; Thu, 10 Jul 2025 12:08:15 -0400
X-MC-Unique: XsiQvnaoMTasz8AapU9Fcg-1
X-Mimecast-MFC-AGG-ID: XsiQvnaoMTasz8AapU9Fcg_1752163695
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fafc9f3e1bso19240896d6.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163694; x=1752768494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJQSlBKA2g43dFqB6TuRxKz7xFAHDfxLS8SwGXWJVrM=;
        b=DVFpV3EioH9DEKgGHmqzzr7S19Xn9pUKAu7OmrmzUdO9+8/WOCvfpSaUbI/Md0Z+bw
         mk+/2k2/ve2vggt670Aj+0nL7rc11Fp/CoTk+8wuO+VmcHEMVO2fR9ca5XzQr3emiX0K
         Zeg00vxMZZWe57EPLaR01HZULjdYN6dz5l8G0KdAreohYhEhzW2d4CUy/fjK/oVkybJl
         zO4fnP7+G+xBnvTi7NIUQf31bO483pfemk3SwiXWdnzySY8N19rQM9SJ7NjXa74mFC3e
         GIwgEtwf2NG4eqi6esSZ86tr9CG4uK3BvGa1GUqLqrhuR/RQ4Lf9dD+bZ8QY5AtAdQrj
         koSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlu5gimjnPxgV9UYZXaMmd6JBIKh9qbDUZbfhxD2yVvrPD/R0dZd9KdaLpSG0I6cP5dyf5DzMdqYc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxwQD3415SMKaS8VAyY8q9qcclXCVD/j46gXUfeYKStYJ8MYW1
	Om8FOk8Hdrc5HsPDkGhAbZTPGdPNtrWh38nUg4XllKFaGcFoe9aKPPQtrBA4vNxynzFLJaF+QHh
	C/TKFOgm/xWfcapMaYlEWqCstbIiKh2M94Alv5a4ID4S/j2Z+HBCP9FRG0IFmbItw2sTsOEJ6W/
	w7dB/XIkRaQ3iEQFdXHSsuwhqA05/SVmycIfdO3gUDw32mpZauRg==
X-Gm-Gg: ASbGncvLLLkbCKU1syWouaF+OzlvipZEZY5RWERYhdp89aDSAs+HwqR8bSstCJAo0Mk
	KoHHfBWn0whMVQCCGuiYo7zf7xk92SVY05rahZMUk9ld8uBDcj6Q6c2AqFcspM0a/cWeZLR1nww
	u4sVgXS+8RREKds7HHikHDtSzRAx5ezjrSEQS5qTq4SIxqa3Kf3V5lxxC8gu8XwfSWycCE9j2wC
	sZLlD7LwL+QIm+CPY4dBXMaWLWLJEdy5YAuJ/V/ll+PcmzU8IMRUqivLI02qXOkm9jFX2brBoGh
	gIn1YjAtOiOzv4NLJXR37jG1361Knya7zh+3gXezKN7K6rathsCLjMRyKH20
X-Received: by 2002:a05:6214:d0f:b0:704:7dbd:2075 with SMTP id 6a1803df08f44-7048b79dbe8mr93046716d6.0.1752163694186;
        Thu, 10 Jul 2025 09:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEInLStwo1lDSg7F85FMOE58AhksEafUcDFpNGGZphskAtBc03MrN1OcVT08c+bAzB2AxSVXQ==
X-Received: by 2002:a05:6214:d0f:b0:704:7dbd:2075 with SMTP id 6a1803df08f44-7048b79dbe8mr93045996d6.0.1752163693579;
        Thu, 10 Jul 2025 09:08:13 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:12 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:12 -0400
Subject: [PATCH 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-2-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1429;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=iJAJsOBdjX5yU2h75u6+b08f3YAfQGGv0k5DSS+fdqc=;
 b=gM9Vog/PjfK+PD7kK6yqe+FHMUUn8OmRYlp0k9f9lt5ka6hie/ovQ2orPiYAUbVKPreNvVHLO
 BW8lUYOkRwPB/LUPMWdxoK3stAq+kbRSdWnBg6NGEyKUO9GNQDXxSDY
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Qx_KBqYvN2K9IuleuJow2dUaF4pYvpCALEHDJ7M_Ct4_1752163695
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090817_620575_A4ED10C1 
X-CRM114-Status: GOOD (  12.12  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -170,7 +170,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
