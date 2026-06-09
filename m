Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62E9DCD8CA4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 14:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOHL0GoNzS1ikRHu/PK+/w0pm/UBgrKPwkzRxrhK47g=; b=DVo8FFKqqydYCi
	fXD01xKp3964JzvzLBljlenjSAQpvtej1vhfRtWTU79M/AHn/xDLVf5cNVpaCgUKtpOiMKKv+7MJX
	LMpy0Dro9EDtIcsQeWSGhOf7Cj5oCIGdLfcp8XGvZ43HKOQokRGM7rzoTRz3YoVk6jm0gO9I5dTSq
	JhHRGPtWMLPeuxoZzg6PV6bAWpgvIVlMGtVT10RT26Y7eRX+rAg4UrPzPG0ir5McKx8G+o7I3unta
	al7kUAo66NEz0z9k5FLVNYMra4bWfdTBOSOv7mDV4KUFW2ofoCcpCLbFd5uGMSrD2QfADslQE4Nme
	QlHb1HQgk9EdoRVaoKlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWxlE-00000005p40-2OQz;
	Tue, 09 Jun 2026 14:49:00 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWxlB-00000005p27-1iec
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 14:48:59 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-c8584e80bd9so2154794a12.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 07:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781016536; x=1781621336; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ssQbrVnKF7op2GL5R9NuBDcc9CEDLMmM16A9tAh/aJY=;
        b=L87eaxGhg00wwJ3ExaJt7o+I78Qv0WdvlPWpmEoRgOqhemVz/v05d24+aqr0zXFf6z
         YgpANUEk0u4SLqpws563GVInHaFYIVxeuyrOOBbnkdUSl+xY0T9c9ZavYqQxm0+gyAfw
         PpD5J9062RHjcgrE5xW7YhhVWdkwLrD6ROIZTtaJeQdmE9LtTu+mnyP6bN67R6osmoR6
         saDrtlwaR++AjdwQjFvjNOzMRbRwptkpdsj8K+94pNZbkQO/1MVIY0aYNZpj/riUJcS4
         jMtcU8Eg1Y+9urtWvL8JWLBW9YM0CvFeWVf7J6X2v6S8HL7u2uqWbTedpup/O/1/4KvL
         ixeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781016536; x=1781621336;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ssQbrVnKF7op2GL5R9NuBDcc9CEDLMmM16A9tAh/aJY=;
        b=AEzn4PA2rUftblg4ANCEw+hC5qfCEItYTXZpNtLozUXPU3K76qBvgcpv8eAgzD7mci
         ammj1LT9QouiB6i5MNkedF6qQwfY4b9Wo+Gix60yKfq09N6rIcbQoGLGYyzXRiI8THsQ
         QDLL6Nzkf7tcEi56OCktCdb2V25Yy/HDDRPNN3ev0wks6pdqb0v6Sq0BsyobbuOnvK9i
         6Ue8jAdatr6e8UMNjXvCvwctarV93rauux7MWktxBSnKxwKcTID7gmhi3ZV+9hXfwYJf
         0pXvxn3lRfVljk/Ga0jwGMWVYQ1/jHDhIxpZ3ZiXTRansJJg82tIQ09A9KFvpUVqAqdW
         yu+A==
X-Gm-Message-State: AOJu0YxuAxPspDgDHqlSm9jDnRIYiLN1ma+I67U21MdukPfipSFxagQx
	DU6LGPmp89ChJ5gWVqYQVw09g5CckVbCMibZhhNAcM+t2xHGbHvqQrgR
X-Gm-Gg: Acq92OFooBRmrKkANG7lVe3HWL//GO/shBIL0YCd/4JGwjt4aItjGZ8U/WJ0nly72AO
	Bm0eIpoZaj4cx4ceCVUSug+egHLEbX7N3QCUNt8U8DQFvUM0nT/9FxYgFG1wgxuEwFHJB0DCGEO
	Y+roYj/VGE773zVAO8kHQciUMHlsSgZnsLXKc2+7oCL/rTR5ercD4jzDNYjv1c6e3I/6WT0WtlX
	IfEoYuz2sPdgdk+F1/N/pjXgOkBgXNiTlEksqkiUeEsiFGEhWZEHb06/KIPWdXpiZsHc9Sc92AE
	REZ0YYQR5hMfW8wOSYv1ERTNe9cPJUEN0VamGQ8fiUfwZ2KJPUXsE7MKxmYl+823JGKokIpJ6Fq
	TBwLc27DxPdrCaym/0vYANDSsHfnwN8dCbKUOplphtDyDqVyw5By8HOMFRc18yuUUULdOUPHhIc
	Ip6m7HYnTef4Z9q5kWcY7dbH0ATLsnJp6Ws14Ys70apC1eZVFS+cnDEN5/LuaUw41UML95n5Vf5
	Dhx7sZqXmUfoL/BC9jdMS9D9hra
X-Received: by 2002:a05:6a00:b92:b0:842:5ad6:2d3 with SMTP id d2e1a72fcca58-842b0fbbe6emr22139626b3a.38.1781016536024;
        Tue, 09 Jun 2026 07:48:56 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842820e8e6asm21143237b3a.0.2026.06.09.07.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 07:48:55 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 09 Jun 2026 22:48:50 +0800
Subject: [PATCH] phy: freescale: phy-fsl-imx8qm-lvds-phy: Use synchronous
 PM runtime put in reset
MIME-Version: 1.0
Message-Id: <20260609-lvds-phy-v1-1-6ad790c6d0ea@gmail.com>
X-B4-Tracking: v=1; b=H4sIANEnKGoC/yXM0QpAMBTG8VfRubaaqTVeRS7YDo6EdhAt7264/
 NX/+wIwekKGMgng8SCmZY7I0gTs0Mw9CnLRoKTSUstCTIdjsQ6X0LkyuSkaZbsMYr567Oj8rqr
 6N+/tiHZ793DfD4YB1ZZsAAAA
X-Change-ID: 20260609-lvds-phy-6328389a2cf1
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 sashiko <sashiko-bot@kernel.org>, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781016533; l=1367;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=qLlRgnDvVIOGIOwv8hJ8MxfIWNVhS2goiG/w1fmsMUw=;
 b=IqL5DMF0Ti3kRukr5DGbKVt8A7KSEHSGptH6E67EIOU4j0g9Yu1SDjO7QRbcHOnrcXqMeHBzU
 PQpAdcIsTQLCXQP6Uhk/S0u3Lyo+gHKLtuX1gKBcIq7tpfUcFXUei0V
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_074857_444886_1C994CC0 
X-CRM114-Status: GOOD (  10.70  )
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

The mixel_lvds_phy_reset() function pairs pm_runtime_resume_and_get()
with pm_runtime_put(). The asynchronous variant queues a work item
to handle the idle check and potential suspend, which can be cancelled
by a subsequent pm_runtime_disable() call if probe fails after the reset.

Switch to pm_runtime_put_sync() to run the idle check and suspend
synchronously.

Fixes: 06ff622d61d2 ("phy: freescale: Add i.MX8qm Mixel LVDS PHY support")
Reported-by: sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/patchset/20260605-lvds-v2-1-3ce7539d1104%40gmail.com
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c b/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
index ece357443521..e2a1645000ae 100644
--- a/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
+++ b/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
@@ -286,7 +286,7 @@ static int mixel_lvds_phy_reset(struct device *dev)
 
 	regmap_write(priv->regmap, PHY_CTRL, CTRL_RESET_VAL);
 
-	pm_runtime_put(dev);
+	pm_runtime_put_sync(dev);
 
 	return 0;
 }

---
base-commit: a87737435cfa134f9cdcc696ba3080759d04cf72
change-id: 20260609-lvds-phy-6328389a2cf1

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
