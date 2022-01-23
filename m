Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E39EBC433F5
	for <linux-phy@archiver.kernel.org>; Sun, 23 Jan 2022 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywuY0vop5re5EUdeVlaQX9kuDYJlMBA7qx95+TRhCPU=; b=jf6BfLRwu8yX7e
	cRVuXUzMdoMGhpzwl873kipvs6RR7lieUFpF7bTWGogtHAb1gfvqrXnNivnchBNx5tvM2pi8HE8mX
	q9Uly1iQ6WwlfuEMe19dTklSfVUGHE76KmUJ5rA8F6fbHJBwCXMerLFkIaIJwk+OaUwpqqZHs/KPl
	eETwPJtKy9HWD+W1x6orjNcmsSQPHbA5RSKVoargNMjHCRnM5g2oBeoOVBFK0gE7NkNvzonLl0J/F
	YvayjbvXZlFLHOus/Ulk03OICSMFPilpqH7RqhMtqdsyR2qA8nucyY4WG9pVzYGE+uJeraNJ+obHk
	4lX3pnErAhMhPyC8s0PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBdTt-000wdd-DP; Sun, 23 Jan 2022 14:04:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBdTr-000wd0-Dc
 for linux-phy@lists.infradead.org; Sun, 23 Jan 2022 14:04:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02B77B80CEF;
 Sun, 23 Jan 2022 14:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAE27C340E2;
 Sun, 23 Jan 2022 14:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642946668;
 bh=hVmka7E7LtDJ7yqUAlY3ND4Y2b2jX8U28hzoFzaJHW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QZPSaLgPAgB8iu+/2baqDruGVT90M6F+qLDAY55lL6CZFTITbe1nG8gXrhabPsf+p
 qAYIVKI7peI2GUJi9f65H3juCkS/orlf2njgoFgkdOjG7nlDjUvZ44DA/9CRAwY+0C
 DqSprkNUW0EqSDlr42R2aSQ8jYnkCfshKBup48SY1il+0gnDv9/0+6GAytWrEeXkdI
 L9UUaCTHSDq+MFWH48D456exm+was4ywuXGPQDGTU0avEQ6W08LCIgGMbQw2JDg9UI
 EHq1DGDrXBWAGxC+NcDtJtDUmAHoXRr8Jyy1OPznL7izbov/48qZixymtlmpMExDJa
 31p+yC+mZK1dA==
Date: Sun, 23 Jan 2022 19:34:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alan Douglas <adouglas@cadence.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Aswath Govindraju <a-govindraju@ti.com>,
 linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: cadence: Sierra: fix error handling bugs in probe()
Message-ID: <Ye1gaFOYziZDVs25@matsya>
References: <20220115115146.GC7552@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220115115146.GC7552@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_060431_617377_7C16539D 
X-CRM114-Status: GOOD (  10.14  )
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

On 15-01-22, 14:51, Dan Carpenter wrote:
> There are two bugs in the error handling:
> 1: If devm_of_phy_provider_register() fails then there was no cleanup.
> 2: The error handling called of_node_put(child) improperly leading to
>    a use after free.  We are only holding the reference inside the loop
>    so the last two gotos after the loop lead to a use after free bug.
>    Fix this by cleaning up the partial allocations (or partial iterations)
>    in the loop before doing the goto.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
