Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A531DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 12:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tM/EpCT6ohjQAWPATPgQJaFX/l88XW8PcdB4a9/jH50=; b=bq8/QJhm+iZHa4
	8PKbvYJ0EQ/GPN8UOUFqfVOPqNciMRZA6qIjnmh88BsJ1WFxnVGWuQ0rFvNzdWOQWi32QY3RRX/YQ
	G6M9ZK1MDHSkv5d1Xv1jjWx56StyeVwvCsa83UCqddd890Ime6r/kb6qj/fzngiwYw1nt9kslkfPv
	sD2ilkvuaVbqrvYz5DjCDuPbRzt5NJBPEYptr8352q+P8SyT7oX99C1B4+UdDbLaiLdyELNqBWdTX
	YQ0kCpTtEkem7x03WQ6CYzIkiP2Vwj4nz7qqV9sLFFtHF78CJyaXeaMJt7XsbtMY5YvUqwDPYHJ/w
	HH+/2xtUh3348qI9AWIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3cZO-005Cjx-0h; Tue, 21 Jun 2022 12:01:22 +0000
Received: from smtpbg136.qq.com ([106.55.201.188] helo=smtpbg.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3cZ8-005Cfy-Kx; Tue, 21 Jun 2022 12:01:12 +0000
X-QQ-mid: bizesmtp71t1655812823tpq96o23
Received: from ubuntu.localdomain ( [106.117.99.68])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 21 Jun 2022 20:00:17 +0800 (CST)
X-QQ-SSF: 0100000000700050B000B00A0000000
X-QQ-FEAT: LLpWZ2U/su6JhY0hD+EKy2D65Zze6IqidBAaB3jaqdfvg3uAG5NIxfLEo8Uny
	ZWKf6K5Y7aa1OnZLL3hPa1jROWb9oESf8IO0OHod2vPzoFNi7tWHeZRdaqku46hWpXqfEbB
	rvm89MiE5PcNW770QyvAqrRhXE6ZxgbwJqfZApC8n5LRHlAN/E4NGVSGy/YHgA8EaQyC2sS
	pH6HIQhdSKjroP8T2MnHg2w0lTh55ILNVsmYFnrM57It1CV9qDBVxB5dPGkX9TOSpA5A4mH
	NG14D9981NHdG4oyuVTvqdYgErci57J0oXiWQontZ3tAgbmLHbkKX3G+cV6Bysuw1sDb962
	8UVR9k5btsM39iw/qo=
X-QQ-GoodBg: 0
From: Jiang Jian <jiangjian@cdjrlc.com>
To: narmstrong@baylibre.com,
	khilman@baylibre.com
Cc: kishon@ti.com,
	vkoul@kernel.org,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	victor.liu@nxp.com,
	jiangjian@cdjrlc.com,
	andrzej.hajda@intel.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: dphy: drop unexpected word "the" in the comments
Date: Tue, 21 Jun 2022 20:00:15 +0800
Message-Id: <20220621120015.113682-1-jiangjian@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_050107_065239_E2F483C4 
X-CRM114-Status: UNSURE (   8.37  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

there is an unexpected word "the" in the comments that need to be dropped

file: ./drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
line: 139
* when in RxULPS check state, after the the logic enable the analog,
changed to
* when in RxULPS check state, after the logic enable the analog,

Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>
---
 drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
index fdbd64c03e12..32d1ff09befb 100644
--- a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
+++ b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
@@ -136,7 +136,7 @@
 /* TWAKEUP. */
 #define MIPI_DSI_WAKEUP_TIM				0x20
 
-/* when in RxULPS check state, after the the logic enable the analog,
+/* when in RxULPS check state, after the logic enable the analog,
  *	how long we should wait to check the lP state .
  */
 #define MIPI_DSI_LPOK_TIM				0x24
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
