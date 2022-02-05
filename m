Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000FAC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 20:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhTG4011KKldmsDxbrHvBN26Pd10MgXr9884R7YrpTw=; b=eH4Cx5Z6mTOjkO
	vlhGXi6bbDwtIQCg/voOtYyxg7kIuy+L9TG+1WXId1BlRNXSRtmerzzYGoG2maZNxo6/NrjWEgBwJ
	3oHNgc9Ekd9Oge/Zn/b+et3dISiB2D3/1npfBgCTr9Pr0TT/qnhNiN38TcOjqUKHhTt2UjkoHsVx8
	49yh0FOUcyPkdcY5L7yIgp+uITlch0Q5kuNXq/71v5M//8N2RoMnMnCIsYL9rTc/m37QBobvWvR0e
	3LU8Tfif4Nj0UenPaggSgk2Nt+n1BM1xe9eGXZ1avGAlSYu9amtnbxHctaxifvlmOJFb9/FQtYRHq
	jZQS1mwu+O0cUBd6QEzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGRMg-007Q1D-DB; Sat, 05 Feb 2022 20:08:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGRMM-007PwL-Pj; Sat, 05 Feb 2022 20:08:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=EndNmZca+VVvmr6LnUGh3p/snwLNh6qthIjCr+h8acE=; b=C5KTgZBO2gHcqvCQxZr+nX2pUB
 OMetQLP4RIZZGnum1hFD3hadMP7mHYUcpbp7Shz/NWMUiWkzBCKDsxaVtSu7Bqvi/0jLeTM+ZvrDX
 9dta3Yj5DdX5PfaYD5C0trlWCZ1gvBauuN56C5Lp1p48zmx1lYsZoAV8RPY7GAGL9sRuOJilNlb34
 qYH4/copqQ7/3562MctKn0D3qeLcjmMNgxZ0PRS9PMGSU0hZbBRRHijL4jnsSqoU9Ncm4Anl6SViz
 L9Cfr/OH8gWgKoUUkuv692CyZi/WL2NtED/G2fDWaeJcnbTXrOmsIDrxF4BYMO5ok1v4amzFNUMgM
 IrXgt/DQ==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEK-007CMv-53; Sat, 05 Feb 2022 18:56:18 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 9284924001B;
 Sat,  5 Feb 2022 18:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087375;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EndNmZca+VVvmr6LnUGh3p/snwLNh6qthIjCr+h8acE=;
 b=Msqlzw/UiMuePIAE9ELEdIs4DM8y7gUaomdiFQ80P+1LCnwHEWqAO+EJv4NSHYtvi2MtVo
 TczyyBV+AD5lRR6NIQnNTk4oDe4nIFjg25K2HNQdAHzvhEzp3ebewgECbb5aDITV9tdf+w
 tA5rVRswEYU1razwt/ZLsFj7DYDy0VMyIg1tDYjt5xvALujJhb/1D/Xc4uxEQBiMqsiP3a
 phEKsZ3UtVhBQXeTB8k59Us/OSYuMbBJSh/dwckR654Cw5yaOSALqsdupCw+/VL8ioR8ug
 cEf8O/97LS4CUKXcobw816ExFYHyjDJou8RaJ2Tx8ujEKjx2P1PWvZI3tXY3Ew==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 56/66] media: sun6i-csi: Add extra checks to the interrupt
 routine
Date: Sat,  5 Feb 2022 19:54:19 +0100
Message-Id: <20220205185429.2278860-57-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185616_304547_872A7AB9 
X-CRM114-Status: GOOD (  12.77  )
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

Check against the enabled bits and make sure capture is running before
serving an interrupt, to add extra safety in the process.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 8941104f611b..e3ac7dad86ae 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -111,13 +111,17 @@ static void sun6i_csi_v4l2_cleanup(struct sun6i_csi_device *csi_dev)
 static irqreturn_t sun6i_csi_isr(int irq, void *private)
 {
 	struct sun6i_csi_device *csi_dev = private;
+	bool capture_streaming = csi_dev->capture.state.streaming;
 	struct regmap *regmap = csi_dev->regmap;
-	u32 status;
+	u32 status = 0, enable = 0;
 
 	regmap_read(regmap, SUN6I_CSI_CH_INT_STA_REG, &status);
+	regmap_read(regmap, SUN6I_CSI_CH_INT_EN_REG, &enable);
 
-	if (!(status & 0xFF))
+	if (!status)
 		return IRQ_NONE;
+	else if (!(status & enable) || !capture_streaming)
+		goto complete;
 
 	if ((status & SUN6I_CSI_CH_INT_STA_FIFO0_OF) ||
 	    (status & SUN6I_CSI_CH_INT_STA_FIFO1_OF) ||
@@ -138,6 +142,7 @@ static irqreturn_t sun6i_csi_isr(int irq, void *private)
 	if (status & SUN6I_CSI_CH_INT_STA_VS)
 		sun6i_csi_capture_sync(csi_dev);
 
+complete:
 	regmap_write(regmap, SUN6I_CSI_CH_INT_STA_REG, status);
 
 	return IRQ_HANDLED;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
