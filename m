Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F4CC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 04:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+XOYidvapY5+hT3gQLE+hfD6QaPLAGqx18LmvTZPro=; b=D4p0pFxepYH/Dw
	uYcXlxWLhm9B30pugLTkImhBD1xpLNDratcnPew6U39Pi3qrzZprJ9HY/kkCI7af3Cg8p6cg47xap
	S47eFW3hcPzBIUsPisPblsfBUpIugZXDhAXDYFzLjj8S6Fk0BJVe5i9FtXevgvLuyV72ACi9RtKCz
	KEA52E4LP79lLsRoDt6Dhtyt4rWhezRbKiI8djDXLgYMnqjd/iiU36FL4sX8l1X9soxVgHemLk6Ts
	JcenVghXnPMpz8qmk4Hj2GkOeEGBnIfBt88isDAPVMiKgqtOBpA8TXlW/WsfgkwXisL1y2Et012QT
	YnxvziAX+LusxFPHcxQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGw6Y-0091Wk-Fg; Mon, 07 Feb 2022 04:58:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGw6W-0091WJ-3Q
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 04:58:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0337661344;
 Mon,  7 Feb 2022 04:58:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7703AC004E1;
 Mon,  7 Feb 2022 04:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644209898;
 bh=hmzT2AM8lylqdoXOy+nKuqNdHRMelSGHWNMXUYiaoGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y8AKHJ9Ng4PD8Gsvp2Siq7XkcHRj1aCI1pdJkjWbi+A30MM0i/XJAuR+VTilS48aC
 ZeBhZPDfS23qr6+AoHQ6exvRUjYJKhKoHyyeb3AhEpP5kExCjCsUqEF9+FClnlOv8o
 5BCytzYDGzOEgKGEQqTLhFD+dHpmXGQBCHNeQE1r9kCakUeOv8HjeiCmV6f5Mipcsg
 3NJTCG+HHclV+jEsywudpA3eY4+yGXPKdbBM6c29Mr5TCvSoU2L+CPijWsa8iE9Ucr
 l8iOXDjT0RblIL7OhFdBkQi7a11PKY/7/lhzhb6SI1Yz8uOzQpAJNt7VyUvPKbYSvc
 9/VxtKWkPv7fQ==
Date: Mon, 7 Feb 2022 10:28:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
Message-ID: <YgCm5VUGpQZxVUar@matsya>
References: <20220128072642.29188-1-a-govindraju@ti.com>
 <YfqT444YoGBIturt@matsya>
 <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
 <YfseaJADVocxqnOu@matsya>
 <3444e347-2603-6f5b-94de-09642c41fc27@ti.com>
 <YfzERMrPh+TrXr9x@matsya>
 <004e4d00-936f-1e4f-8378-b779ae168c60@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004e4d00-936f-1e4f-8378-b779ae168c60@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_205820_204624_56706867 
X-CRM114-Status: UNSURE (   7.82  )
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

On 04-02-22, 11:48, Aswath Govindraju wrote:

> Thank you for the clarification. I will make note of mentioning this
> from next time. So, just to confirm, if the fixes are merged then v2 of
> this patch series will apply cleanly.

I have merged fixes and applied v2 now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
