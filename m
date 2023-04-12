Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 935A6C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiQT1AOEPQDKXOaqk/Jhhh0jLppQCFm6Fti392v6Gh0=; b=xjlWZDclyj70P9
	hRrQhRkiLZKidBCFobBZMATgRefnFuCOp9yfwx7dlhOhSim8pvNSMDmJux2xPG0iOI70CMfzA/CP4
	EjzpCMAi/FiyUW0cxXNOVueCxL6rqMUIIG+J/DEVRsrW1KfD/c6PwlE8D4bcLWg7fru0pkaaM9+eV
	GJ+YxKWGCCsmQX8mRYZNxr1FOWHqH15NQYw0Su29gtiQfW4dwlyQXJL2/jyHxfsNubFlrDx5ZN6LQ
	UXN9iOSpIqsLxeZkzwotTlwZBz5uyfW9OILi9vptky2phyWQK9CdSM0yXVdngSX/+7xhNVOU01SWt
	XvbvQrbGlAo1H9j8Bqrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdc7-003rap-0u;
	Wed, 12 Apr 2023 16:46:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdc5-003raE-0I
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:46:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A604563759;
	Wed, 12 Apr 2023 16:46:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D09BC433D2;
	Wed, 12 Apr 2023 16:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681317988;
	bh=Iv2JNXA7Eub8y5aMi88VqjFDcaIvmjosrLTTL4kT+Z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dLbH9SaIo5CzWGKLzQCBLMO5ZaMpqWkUf1VZHGJvLhE0TWxNWIYOLW+Fn+ov224y6
	 NCA7J4YULQ1FG8x6r+dv5nN/bdSeBAz0yEydiNJbBbJQy+zbfjobvgtNiQF3HP8wDH
	 0GCYT9TXhAzyDbnim4rF+/GXN3/T6Mvk0g2la8LSc71DzA6E/l411iDruiKRGO6pdf
	 Oc9D0nkG5y8XteCa4R3AZC3lEyaQckVPm6jOi7qW7nepv6k6/0ybmVKsvLdMUsXSES
	 AUzgMfyKjVh5+0JIs3H+CifC6l25eQGvwFRNfkLhqAvZFoVpXLaVPEr+AFjBwuwK3e
	 WtXqqKnOPMmHQ==
Date: Wed, 12 Apr 2023 22:16:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vaishnav Achath <vaishnav.a@ti.com>
Cc: linux-phy@lists.infradead.org, kishon@kernel.org,
	linux-kernel@vger.kernel.org, j-luthra@ti.com, devarsht@ti.com,
	tomi.valkeinen@ideasonboard.com, praneeth@ti.com, u-kumar1@ti.com,
	vigneshr@ti.com, nm@ti.com, sinthu.raja@ti.com
Subject: Re: [PATCH] phy: cadence: cdns-dphy-rx: Add common module reset
 support
Message-ID: <ZDbgYN1/NUsHBWW9@matsya>
References: <20230314073137.2153-1-vaishnav.a@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314073137.2153-1-vaishnav.a@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_094629_174399_E2B51669 
X-CRM114-Status: UNSURE (   8.74  )
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

On 14-03-23, 13:01, Vaishnav Achath wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> DPHY RX module has a common module reset (RSTB_CMN) which is expected
> to be released during configuration. In J721E SR1.0 the RSTB_CMN is
> internally tied to CSI_RX_RST and is hardware controlled, for all
> other newer platforms the common module reset is software controlled.
> Add support to control common module reset during configuration and
> also skip common module reset based on soc_device_match() for J721E SR1.0.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
