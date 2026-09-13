Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EAD4C88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=px/+jtw9X5K7iBOnAQIBgYvMdULamvrsDih0JivP95g=; b=pvsy725rwS60/z
	ABeI7mBoBeXwziEjCynjX80q5suRHFdTt3sDkPoVz7UrZdQlTSRdDlwlHRVqKomEVsUqHbGt4rHGq
	XK9IrQlzwoX90yegBMfT7i6CRXMOohDkAWQ3owIyMb8rcPdn+caepXuFYYzeHa5pNLuRTI3yZpdDF
	HhnjiksKtgSkOjLNY3t57q/+udqWVY6Rb9ArzAG1Uw0I9voCo5wuc0RxFQ7+YfxOYVizFOZgrSz3l
	UJV2H0NDIchvORRvXgHWErxefF7FnUPQFcQwraQIdfTqSNvXS6fCwAl7TfdGZYbjW3u/DKOM/V1gl
	CA+vQgJ3ygKoIfxcfySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ht3-00000001bYC-3gRl;
	Sun, 13 Sep 2026 10:56:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ht2-00000001bXK-0Hx2
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 84DB960DEA;
	Sun, 13 Sep 2026 10:56:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31B311F00893;
	Sun, 13 Sep 2026 10:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296999;
	bh=o4vwBXsY0aKxB88xoaV7+laAtETGalqgALYwpXPPn8w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=L6n1Yz4ahzR77f4RbHBBxekgXWwvfW9lNPfcHxNw6KV++Plk+rvYqDpk43cdes99/
	 QzwvNQBstS+yybptTusAPKl7n5iBD+SV2S9iwk3X2bVfkOzSqJJg8giuqdT3A6AhDr
	 AKS6YDVw4Udq32oMjnVQQw+e1fvRkkU69H+YS9MShJyN8AUsNXqiHXgKjDvr3T0mBM
	 M55HkNuFQZTpCNOtAbBWCvI41pFtvb4a1YJM6avDuRtiLC2Mm/pgD5sEFPp7zwyGdq
	 76v6bj0EzFg4V9qULLFFIsty2QhdgZCvKqyuDUc2Oa2SJNM6fera/PchVxl47g2xVY
	 +v3Yr7MdFQYZQ==
From: Vinod Koul <vkoul@kernel.org>
To: olteanv@gmail.com, kishon@kernel.org, andriy.shevchenko@linux.intel.com, 
 Haotian Zhang <vulab@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260219163843.1571-1-vulab@iscas.ac.cn>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
 <20260219163843.1571-1-vulab@iscas.ac.cn>
Subject: Re: [PATCH v2] phy: hisilicon: hi3670: Fix OF node and device
 reference leaks
Message-Id: <178929699677.215437.6593754684719636000.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Fri, 20 Feb 2026 00:38:43 +0800, Haotian Zhang wrote:
> hi3670_pcie_get_resources_from_pcie() leaks two references:
> 1) The OF node returned by of_get_child_by_name() is never released.
> 2) The device returned by bus_find_device_by_of_node() is never put.
> 
> Fix both leaks by calling of_node_put() right after
> bus_find_device_by_of_node(), and put_device() after dev_get_regmap()
> when the temporary pcie_dev reference is no longer needed.
> 
> [...]

Applied, thanks!

[1/1] phy: hisilicon: hi3670: Fix OF node and device reference leaks
      commit: 2638a0e60f65e38bbd28400340ab92fa67b562b3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
