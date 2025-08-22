Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C335CA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 06:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPexY2GrjDW0SWEz+nxmWAGytfTU6YfCScKkX6uFTP8=; b=qwg8qfIBW6u9Nh
	6VQvrB3QBUD7KVteaGR3HV0IPdVl4BcbwzEUIn/5gZkApbeXdmJADTXI0Xvq4yrcTj17h3xMpTiyH
	HmXucdn3Cme81ROnWpMT/G2kuAeG9LCXXZC7VsS0ChyYDk6/Eq6GvBmvt07SQDnwbRWOtVSZqsImo
	FuTzOCa5YgSqk1ytat0x2R/4FuAfwYXwP5N5Zu2wI+93jNPY1IBqiq6oXz3zuBvfPE310OXTnG65w
	NI2bT94CUpVYSXMGGSm2pabGXX1XWn3f5Fgk40GglpVgOMGI8jkiFGolQMErq+/Glx9IohdU3GFk9
	2lD196UO6p9dWJ8eShaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upKzw-00000001f8Z-1M3c;
	Fri, 22 Aug 2025 06:11:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upGQe-000000018Qq-3N3M
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 01:18:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CF9DAA5869E;
	Fri, 22 Aug 2025 01:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10207C4CEEB;
	Fri, 22 Aug 2025 01:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755825531;
	bh=EmGmH/AKGIUC0sHj6WLzucn/g66akuiKWcitfVn6KlM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DNeWSUT4LGlCoSQnqDIYfRF9/x5S/DF7Trd2ud08U8Q4Lpo2/BoLUF5PCswoDwBpu
	 U26ZWgtkwo4e//80+64aWp7z/M/FM/uLSJDHxirx9CzoSdLkkv21tj/ueKvQwmYgc3
	 C/5FQfhIWMZ/ZHhN6t1UcZES5JW5wjUaFVeDn/S8es1chvjar4YsgsCJng/9Xu1JhS
	 ommArwX8V+M+HrRSsC3UqNpEA0z5Zo2jozokZffmjVftEkNxQjr26LnQGIj1w75c9c
	 47KXZpZVA7cydF2kJU5YpEv/wWMACZxIDlbEhjOQftDCEyGi52w9OwRhYpHx7KXBkQ
	 FqXrUd8MGY6AQ==
Date: Thu, 21 Aug 2025 18:18:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Michael Walle <mwalle@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>, Matthias
 Schiffer <matthias.schiffer@ew.tq-group.com>, Andrew Lunn <andrew@lunn.ch>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, nm@ti.com, vigneshr@ti.com
Subject: Re: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID setting
Message-ID: <20250821181850.6af0ff7f@kernel.org>
In-Reply-To: <20250819065622.1019537-1-mwalle@kernel.org>
References: <20250819065622.1019537-1-mwalle@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_181852_915060_B7049379 
X-CRM114-Status: UNSURE (   6.40  )
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

On Tue, 19 Aug 2025 08:56:22 +0200 Michael Walle wrote:
> v3:
>  - simplify the logic. Thanks Matthias.
>  - reworded the commit message

This was set to Not Applicable in our patchwork, IDK why.
Could you resend?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
