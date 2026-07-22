Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED19C44512
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 03:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q7O52Hq7+8QEF/stB4ah2zXMOWrBu5Gph7fQpB8uvQY=; b=g5myqwN5Wk5706
	H9z2YSGxZgecaaXxeENKCm1XkOlqe9XCL3rdbgLauMXTswUQMadsy45riP4e5wcQPR/MnI20VlPzB
	rLBNNRjmJpnCBENP2R3tWX40cgpSwRL46ZYFNTkvIdzyXoXED7rpHVCjGyS6AyDJTFhsgsmA87nqL
	2/ZeCYi6bBG8pyMRIFZ00L0nkUq7isz4oc5Y7oJqeijaXj88XdLbdQV4eoUqRNkJpZMscXoUF3MTN
	PbjP3ekPSsYn5iGa3TxyJ/i7un9OVTEC8cLBG5VimZJg+SGUCsIm90CoOamHEO1wAOxCjpCnerCbJ
	fLpjVGY9oS0ZP5PBHKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmNlE-0000000ApdA-465N;
	Wed, 22 Jul 2026 03:36:45 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmNlB-0000000Apce-2VIL
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 03:36:43 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-ca7c1176317so8863147a12.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 20:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784691400; x=1785296200; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7NHyhDTZjnyF9Jy1uHqpnZ3KtVUroBokJdvpUJqEFWk=;
        b=o1vlIao4zHcQWq7zLaqxxmREJzSWwidFgzOal7h5Chxg3DqBr8fSOFzfXUiJ9BIOey
         9Gxmyk0uSpU1hmLiqxYv8h34VLQwxiuvGTIbIYcORPiPkGTTXGZJzRxGXMtWnx1+WNkA
         uZpFRboajTxHK+xkoGKeJZpu3mRhskrLFOAcIHJFuSliN6K5u5ci8JsWrvc+hhV9Ke0W
         O1tBZM+mb9PYkqbzMaLK4UvHv7YY8vu/rs91GtgvmxYGfJ87idU44cohsRK3cVV07qUw
         6qoGLvRugoRi5+JaUdfU6pqM+UPBEM9uUbW9GrzVl2uuFlpCQfjbBPyPWs+KuxSEMItk
         1zzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784691400; x=1785296200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7NHyhDTZjnyF9Jy1uHqpnZ3KtVUroBokJdvpUJqEFWk=;
        b=eknqLYfyb6Hngyw/0I0z4Y1wfQGSUOxWB7ynLefF9yVKYg5vw1dLI9KSuvGZeOXS3a
         +/+g4gljF6F0/zdn1FIGbhqXSY0Q4HObD2EPRZ7mqv3IZC1pXgTfiCVnyqOiG8CcEOTT
         keS7mVoMB9Q2dSma4+zwK64DZ38S7x69mBRYUNNQPv9ER3SMHyzVaRYQfBr9ejki1Md1
         oZ0wrN4kpzxT3qRHJKk/nI8bFmUWX4OHBkoTkoJeAIR390k5fIOyIGJnWfGtYfdy4r0u
         nQlX2O8UFETXnh8Xxey2GsNuQgnIOW9yxWnCW36rImUqLlM5q4I4/kJMkObOwQbbPjp7
         W9nQ==
X-Forwarded-Encrypted: i=1; AHgh+RoYz+NHAr7eQzn1o8xqr1TugDTrU5BI823DQAkUsGYKZ1L3I4QkJNSTlw3+Y28pS1pZpIzX2+Lp8vI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsJoh6RpPE9h2BJFMX2G4bPXxhAFojUPwuGJoVpes15zvL59Pk
	VAcN2/dO6m/fnSXrqIkX5+Fi7KPp/UuILmprbmQwwzGmsQfNlrmXsRM=
X-Gm-Gg: AR+sD13opYRydGuzDCXxEpCNB6h+tflAlA2ilPnMdsr+YdhzcaDPxLKN/zrJk9r2B7E
	oGU4GupfDLK3qQP4RnR5izNyDIrPILbJC9TXkHyT9sY8F5JWAh4831npUiA1PXfECRym1NQfvXh
	YRt7OhQy5RaN9J6sn6vdwInOZzWeBIVcbFIZrCHS191rbRQ/JB8aoWTum7B84ymD6J7BGgoljDq
	w9MnnsldgCCE5B7EKfTKkWFmJzVpATG6W+acYN6HSN2zy1t5xef78wx5MOPIijhXlOHOoVWksVl
	FeXAMJ6yPXbr25x2qGJkeBF1uEn0cEKBwAPOKFDOiD7wPPlpAlELEE1+cR98V5uR+RX8eDRFuJ9
	mBqXD+VK/mUk6LEqlRIMqABAn+B4kCYLL5nQBVHnfgQdIjbI8sLf+bL1xV93mxLWcLiB8haRCAt
	b2C0UJGMdAYaDPcRr08QA+7XMHMzA=
X-Received: by 2002:a05:6300:808c:b0:3c4:2cf9:28a1 with SMTP id adf61e73a8af0-3c42cf93a4fmr1420862637.46.1784691400038;
        Tue, 21 Jul 2026 20:36:40 -0700 (PDT)
Received: from t-rex ([2401:4900:adaa:53ec:4dd9:f3bc:714a:d631])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13d13015052sm1561599c88.5.2026.07.21.20.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 20:36:39 -0700 (PDT)
From: kr494167@gmail.com
To: ioana.ciornei@nxp.com,
	vladimir.oltean@nxp.com,
	vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	surendra <kr494167@gmail.com>
Subject: [PATCH] phy: fsl-lynx-28g: propagate PCVT enable errors
Date: Wed, 22 Jul 2026 09:06:19 +0530
Message-ID: <20260722033619.10647-1-kr494167@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_203641_655622_35E9AF12 
X-CRM114-Status: GOOD (  10.35  )
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

From: surendra <kr494167@gmail.com>

lynx_28g_set_mode() currently ignores failures from
lynx_28g_lane_enable_pcvt(). It then updates the lane mode and reports
success even though the protocol converter may remain disabled.

Propagate the error and leave the previous lane mode intact so the caller
can handle the failed reconfiguration.

Fixes: 8f73b37cf3fb ("phy: add support for the Layerscape SerDes 28G")
Signed-off-by: surendra <kr494167@gmail.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 38afcd081a2a..1fe406adc83c 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1003,7 +1003,9 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 
 	lynx_28g_lane_change_proto_conf(lane, lane_mode);
 	lynx_28g_lane_remap_pll(lane, lane_mode);
-	WARN_ON(lynx_28g_lane_enable_pcvt(lane, lane_mode));
+	err = lynx_28g_lane_enable_pcvt(lane, lane_mode);
+	if (err)
+		goto out;
 
 	lane->mode = lane_mode;
 
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
