Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D39F8C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hv6mn+7o8kl8dt/Bajlgla1aSJFFFVccatCHd1Wj3pE=; b=j7nH9yzdqH2sl+
	p4C8hZj9Ni3/bDGmpg7neYjPLvH0UBJmNvVglYBZy+nEy7EeTnXATVfJkiSjpk1yo7nU+P3bg2KAm
	tg8CiVz7Yb7t+MZBENICWow2VSKZsqW4SuWEPceEzt6y1y78vO2jPQbSPGeLRaGg3wCTALYAPUjJg
	OqgaejHh5wEM7z7V5hs8zz062kz2KgzjEeXP4kG9GFMN8E3DyjpP+iSmdaWRJtN57v0CV0wXMHULi
	/ZK7EL2IoEG70zj4OfnyyuAQY12oHoyCRuNs1uBeXddIn1NPw163oWJRdx9jKu9soUkNXkWRAPoZB
	dpIs9VbWKL0Jm+gbytDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQZI-0079yM-3B; Sat, 05 Feb 2022 19:17:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDg-006zmJ-0R; Sat, 05 Feb 2022 18:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SNwbf5QlL6t/rXl3WBfynCKlJIABovC7MSi6MTabc8s=; b=p4eDCWpDJmrtSGLAdwDlBkh2ig
 KyK2ZqW3N18DUaXsTlg76rV7OJ89VTBnqOSSzB217RBW64YIy1/v2BSSvsDaBwgbDnW0jNFK/7OAG
 mquyLEG3lFPb2Hpd/GIcHdfobhMuBH57RN1DFlsevM5P164p8EEFu5NkNHFB2PPm9l3YSlRQAJOhh
 UtCrdcEspbtidv6syZ5EAm833vgwMx3WuCJqiiC4MWVQVQABxp5F6SA+FKGc6yTqnXSFB8E5I3IdL
 kvHZJd33uyq2Ay0Sl1p6i6oXdSbzt1OkQbjR1uZiQcLRs1w2bBBEiAPMPUnK8xEHjwcp14UIYVf7R
 E4nHBHNg==;
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDb-007CDh-QK; Sat, 05 Feb 2022 18:55:34 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 8AFCA24000D;
 Sat,  5 Feb 2022 18:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SNwbf5QlL6t/rXl3WBfynCKlJIABovC7MSi6MTabc8s=;
 b=mywFtUMgNaUOTwoAfns3csuiwAGjI4e+7Qg9LzjwtItnxTmmbpqSUob2pX0GNJUB000OwF
 OHs3tkvQrolL/FpPDeAfxNJ9/BELD5WiGlAv3kTZJBiyRq7ueuzwTFOAmIEXmSB/6pym30
 tFA5yZI43t/aMObAaPSuDhsNTXPgovYAXV4f6d0/1zWyinKm3vPeCJj4l7LnKZyGOkLSzn
 26g3TEmNszvBGo7+Ai7Iaho3SVWKUFKJdOKtPu2k9FRAA71LD7u21oUyCrTKgtDUnyAv5Z
 P5a86zEz9uFXYsWG+TaJReMDTzCQFFTcfPvHgna6xiFWk24c/ExRBsrvJaAWSQ==
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
Subject: [PATCH v2 28/66] media: sun6i-csi: Introduce and use video helper
 functions
Date: Sat,  5 Feb 2022 19:53:51 +0100
Message-Id: <20220205185429.2278860-29-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185532_132775_4DF510A2 
X-CRM114-Status: GOOD (  12.91  )
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

Introduce some helpers for buffer and general video configuration.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_video.c    | 46 +++++++++++--------
 1 file changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c
index 178dddb0eaf1..6f5470a6859d 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_video.c
@@ -92,6 +92,29 @@ static bool sun6i_video_format_check(u32 format)
 	return false;
 }
 
+/* Video */
+
+static void sun6i_video_buffer_configure(struct sun6i_csi_device *csi_dev,
+					 struct sun6i_csi_buffer *csi_buffer)
+{
+	csi_buffer->queued_to_csi = true;
+	sun6i_csi_update_buf_addr(csi_dev, csi_buffer->dma_addr);
+}
+
+static void sun6i_video_configure(struct sun6i_csi_device *csi_dev)
+{
+	struct sun6i_video *video = &csi_dev->video;
+	struct sun6i_csi_config config = { 0 };
+
+	config.pixelformat = video->format.fmt.pix.pixelformat;
+	config.code = video->mbus_code;
+	config.field = video->format.fmt.pix.field;
+	config.width = video->format.fmt.pix.width;
+	config.height = video->format.fmt.pix.height;
+
+	sun6i_csi_update_config(csi_dev, &config);
+}
+
 /* Queue */
 
 static int sun6i_video_queue_setup(struct vb2_queue *queue,
@@ -160,7 +183,6 @@ static int sun6i_video_start_streaming(struct vb2_queue *queue,
 	struct video_device *video_dev = &video->video_dev;
 	struct sun6i_csi_buffer *buf;
 	struct sun6i_csi_buffer *next_buf;
-	struct sun6i_csi_config config;
 	struct v4l2_subdev *subdev;
 	unsigned long flags;
 	int ret;
@@ -182,22 +204,13 @@ static int sun6i_video_start_streaming(struct vb2_queue *queue,
 		goto error_media_pipeline;
 	}
 
-	config.pixelformat = video->format.fmt.pix.pixelformat;
-	config.code = video->mbus_code;
-	config.field = video->format.fmt.pix.field;
-	config.width = video->format.fmt.pix.width;
-	config.height = video->format.fmt.pix.height;
-
-	ret = sun6i_csi_update_config(csi_dev, &config);
-	if (ret < 0)
-		goto error_media_pipeline;
+	sun6i_video_configure(csi_dev);
 
 	spin_lock_irqsave(&video->dma_queue_lock, flags);
 
 	buf = list_first_entry(&video->dma_queue,
 			       struct sun6i_csi_buffer, list);
-	buf->queued_to_csi = true;
-	sun6i_csi_update_buf_addr(csi_dev, buf->dma_addr);
+	sun6i_video_buffer_configure(csi_dev, buf);
 
 	sun6i_csi_set_stream(csi_dev, true);
 
@@ -219,8 +232,7 @@ static int sun6i_video_start_streaming(struct vb2_queue *queue,
 	 * would also drop frame when lacking of queued buffer.
 	 */
 	next_buf = list_next_entry(buf, list);
-	next_buf->queued_to_csi = true;
-	sun6i_csi_update_buf_addr(csi_dev, next_buf->dma_addr);
+	sun6i_video_buffer_configure(csi_dev, next_buf);
 
 	spin_unlock_irqrestore(&video->dma_queue_lock, flags);
 
@@ -294,8 +306,7 @@ void sun6i_video_frame_done(struct sun6i_csi_device *csi_dev)
 	 * for next ISR call.
 	 */
 	if (!next_buf->queued_to_csi) {
-		next_buf->queued_to_csi = true;
-		sun6i_csi_update_buf_addr(csi_dev, next_buf->dma_addr);
+		sun6i_video_buffer_configure(csi_dev, next_buf);
 		dev_dbg(csi_dev->dev, "Frame dropped!\n");
 		goto complete;
 	}
@@ -309,8 +320,7 @@ void sun6i_video_frame_done(struct sun6i_csi_device *csi_dev)
 	/* Prepare buffer for next frame but one.  */
 	if (!list_is_last(&next_buf->list, &video->dma_queue)) {
 		next_buf = list_next_entry(next_buf, list);
-		next_buf->queued_to_csi = true;
-		sun6i_csi_update_buf_addr(csi_dev, next_buf->dma_addr);
+		sun6i_video_buffer_configure(csi_dev, next_buf);
 	} else {
 		dev_dbg(csi_dev->dev, "Next frame will be dropped!\n");
 	}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
