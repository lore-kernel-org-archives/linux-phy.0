Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A9DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 13:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QrnYZn7G5bZI/G4QEKPBstny+zTb8BuIyD/upSOj1Fo=; b=ob3Xo42h++oN8O
	GZRCKmmYdKCeHI+BgX4VBl3cCk2qlrcDcD2sJTZMOG6J6xlPPmuB2KaXxwfmWR9Np1Qae16SzvA0y
	orJBZN82Q2DKJEva4ACmL1JEjfEEzHgtgifWlZuXRrKLFgqvUVPAZt5Lac9mVco+iz7adevYWOIuW
	H8ecRjU21S9y1qlVaehiqsf6Pf2LFti+BX8VRcSahwVT75NAmXARPLbG82E/k+AoyqeD9a4aHNiH3
	EC9fAVX9Jk58iWYRlqlI7xwYtW+zK1nWotCixbD/i5dbrOHkQBszYsfjLQPtLDitc+aT4lmfiXhw+
	04d6BAIRkxz62j0XTA9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odtB0-0039Nk-ED; Thu, 29 Sep 2022 13:02:06 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odtAm-0039I8-JH; Thu, 29 Sep 2022 13:01:53 +0000
Received: by mail-wr1-x42c.google.com with SMTP id n10so2062397wrw.12;
        Thu, 29 Sep 2022 06:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=QKIpHGs3LeinzeIaUGKa0ICPFZL+uew+WBou+/qEEMs=;
        b=AgFahVNBMPAdTt6Hji1RhoPcnR8MCGZgvz/2UE5Q1CTjXVo9CW0ak/uSx1R+Vq8LPI
         U6nGupIT3g1fujwOUBuemHE58YZu1E5MiLno/O/luh9m6dchtkEs62VjfDkZkPxImpQA
         t3sDG+ehBpLP3dFCgjV6xQP4qBUYtyfshdD8TVIkwAD9om7bLf7WSEghDLkQ/L7diKJ1
         FlGMrf6Q1kFxxEen86Qbwl+o5C+b2T31ZgQ1bDX51wzN6PbMuKltWkFJzQFr7U4esERu
         sFe7Y3tiwEuE+2Vh2+uoJvCbR72J69DxTNPMuukHXoVFQr5x+LCQg0dtMPRiWgK8Hchp
         HWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=QKIpHGs3LeinzeIaUGKa0ICPFZL+uew+WBou+/qEEMs=;
        b=AxH+NUn0xt5Kx4aZ+bKUnWpbRmRIDoCE3xxwa6UkRvljNmrIscxYvj3q8c+XI9qtiC
         OFy+ZAmqNB5FdeUH2ycEdue0Q4gUjMwn4nUsK2WemF2MSmKdoMMNHIBn+JHloMjSktpH
         3frRMTZjW2bTeSkYr1RlPZVHs7KijD5gxJ6nBwQk5x852dtGuMOtLWe/MIynTXzhUdnQ
         5VDdXan/297uaRIzBm/E0+Gm5DoTxjNvOvyrl82d4MFAdf3HxqaWbie6LL8mAjczYJPy
         ChqyXys1TeJPmA6/dHQiJSaqCUjikT458wwSMcC+EPY88V2EAF1xm4kZzAcMFkNFy7xi
         0eAA==
X-Gm-Message-State: ACrzQf37Iymt13OAofqpirYi8UHT0U6seEciRvd41Gvb1qc8cd3hI89l
	oP4MFSDW5NnHuRj84mc9CUk=
X-Google-Smtp-Source: AMsMyM5vXaXH5fZ3dIbmRJWeClvpwWiO6Y9sSQYzNl6JW42LcFYRMSzFHH58H6hdJJTPcWhcyowbbQ==
X-Received: by 2002:a05:6000:1051:b0:228:e1a0:7221 with SMTP id c17-20020a056000105100b00228e1a07221mr2213671wrx.165.1664456508569;
        Thu, 29 Sep 2022 06:01:48 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net. [80.193.200.194])
        by smtp.gmail.com with ESMTPSA id m13-20020a5d4a0d000000b0021e43b4edf0sm6555454wrq.20.2022.09.29.06.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 06:01:48 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: phy-mtk-dp: make array driving_params static const
Date: Thu, 29 Sep 2022 14:01:47 +0100
Message-Id: <20220929130147.97375-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_060152_652293_A944D4CB 
X-CRM114-Status: GOOD (  11.71  )
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

Don't populate the read-only array driving_params on the stack but instead
make it static const. Also makes the object code a little smaller.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 31266e7ca324..232fd3f1ff1b 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -85,7 +85,7 @@ struct mtk_dp_phy {
 static int mtk_dp_phy_init(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
-	u32 driving_params[] = {
+	static const u32 driving_params[] = {
 		DRIVING_PARAM_3_DEFAULT,
 		DRIVING_PARAM_4_DEFAULT,
 		DRIVING_PARAM_5_DEFAULT,
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
