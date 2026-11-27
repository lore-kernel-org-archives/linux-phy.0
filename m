Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807AC606A330
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 14:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kAw2QYaH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DQk5vL4+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oYhXUMY71tMfFTQQBWTQJ1hLoMGa/GcFvEd9zoXp1Hs=; b=kAw2QYaH3Bg+qBhZWpewdKj5ii
	FSo/8GqvnZxmvpRWTpDTjWYS/Q82ISkNbjbcUg88j1pW2hUg8WiFuNmlWVt5ohVaANxLAb5rM+PPK
	jm6mQAyrPUNMyAnG7kkS/oQF/Uof+CGW2+gWd9otvPpafqOpH6bd/O8vJLXdDgx2ejuorKJGnLhfO
	vmnuAeOv6WdzD9jqrU4i7wxZUOxayDf518fpy8NMWV4fUwBQdFoCpmZYsgPkRVp49sZQ8aKaRAX4L
	7cf/U1Bh+wIADaNrDZv6KfNn5iCndYdF9veQKSO09zWtns3k62GbSSLRBID3Tx7ReQsjTxzDvsaBE
	RA5YEIhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwgd-0000000GLyo-13Wx;
	Fri, 27 Nov 2026 14:12:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwgc-0000000GLyP-1X9I
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 14:12:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7FC6E60616;
	Fri, 27 Nov 2026 14:12:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41BBE1F00898;
	Fri, 27 Nov 2026 14:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795788744;
	bh=4wizBbpem3+glW/CBA3fXwLz8YgeZA2FykyHPMS2uVE=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=DQk5vL4+AXG2dv1bhuT4qB/6q3FQSnSCCFRCKrcTgLjCSxSDXHX4b5kMGj/U/Beie
	 5KLpHNA/r7aJbDZYl8+BPZmIWBmoMkUGnzJHk/qFKnZIAe1UGg/6KbJIs0h+9swjGU
	 iYLrKFO2cHMrX51GtAi6j3oDd8S16aWkzpH3l76ixVKVCrzBeBbsGnvwkBd2PgDgjH
	 xL7tF/LJLyKXXguKMQx72/7Eu8d+mvLYLgliZKUSQ32XXng3mYIlfK6suCTM7+Qwbd
	 sgwJDuJeavDDLlGQ7LB1yJjZQ318sc3QwPV8ehPR6osotcC93JiNxtceStlVC8oO6W
	 oKo9SIjeP/Hkg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] phy: sunplus: don't read the disc_vol cell after
 nvmem_cell_get() fails
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andrew Gaylard <ag@ffroot.co.za>
Cc: Vinod Koul <vkoul@kernel.org>, Vincent Shih <vincent.sunplus@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261116074006.20357-1-ag@ffroot.co.za>
References: <20261116074006.20357-1-ag@ffroot.co.za>
Date: Fri, 27 Nov 2026 19:42:18 +0530
Message-Id: <179578873839.13164.16471147930433859862.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=757; i=mani@kernel.org;
 h=from:subject:message-id; bh=RG9xuVo72y8E28IbVX3jdTRczCWCBh/BRjwA3zgb3u0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCY/FzhupzgYfIPtncMHQhpmVv9Kl9kFf717zo
 8YYfI4CkBiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmPxQAKCRBVnxHm/pHO
 9bFiB/9O26qQZiJ/diHW8kJA1WQX1DbygHKRbExupaYfMzo1Yszy021CKvBX2YhJqWvvsSrHjum
 lWwScNdR2G+c1U7vuK1uaWB3OJwL71UVlQmK/jdkbd1uhbhrP4a91bqjjLCZUBQoiXp1t5mVj9P
 /U/DWv2pXgOh5/PhTbWZje2SNSwoJnolj54mBgUAHTjqQ8kj83fz15QgsDyiWt3vDJxOyaOyhLg
 k0N2n/U+TDI6btkDGhPtisBSQS3BOucGv6/YLBav4bR0rAWbrPgvuO5foIgVCmwD0a1ocUdIpJ0
 yo5mo/ZIaMlrzln8o7HdOqthqtromWmHMKdQLO2a1e49NGcW
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-16 09:40 +0200, Andrew Gaylard wrote:
> update_disc_vol() returns early only when nvmem_cell_get() gives
> -EPROBE_DEFER. On any other error, such as -ENOENT for a device tree
> without a disc_vol cell, it passes the error pointer to
> nvmem_cell_read() and nvmem_cell_put(), which dereference it.
> 
> Use the default disconnect-voltage level on these errors, as the function
> already does when the read fails. nvmem_cell_get() never returns NULL,
> so IS_ERR() is enough.
> 
> Tested on a Tibbo LTPP3G2 board.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Andrew Gaylard <ag@ffroot.co.za>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
