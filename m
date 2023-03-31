Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74A2C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGtV0o1x7MSd0X80pXgVgiEx670ueLIIlEQF0zXsXtI=; b=yN/5M1hDUltGHI
	D7+k2GE+bHwFi5egR0Bh4N8Kj/zwMjvMugJ9RsIhKuvteDh5q+YXHPgFoZkvntnVUVJCPKQU9gL99
	97Nm7ZHDrQDVJDd1WZ2Rj/5c9h49NV/W+z0M5Bb/Oyf+bh40l2XaV85ZleZRzD8sJ4Qo+aAsMM8eN
	0R4THFGuv5x0PigQDylCI4wWdCAfPRakG+SBnOSIMELFTmTN+eLJnz2TMTZmNEp4Zx7DNY89IYWjn
	yOWAV6SG0D2HR2mnONgZKO5WdVzHwcaM4OnkWXg3xN2Sp+fC4lGZ/nyLdFVf5l4OE6aJC8Uw6ElSp
	mzGHvbpL45yPAncgzh+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piEyD-007YQF-0n;
	Fri, 31 Mar 2023 13:39:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piEy3-007YOM-2L;
	Fri, 31 Mar 2023 13:39:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2AC04628A4;
	Fri, 31 Mar 2023 13:38:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D640C433EF;
	Fri, 31 Mar 2023 13:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680269938;
	bh=9Ont13GCZOGcHqmKRrh5cFvPZ59+SXkgaQM1wrfLLz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TC5vimUVWe9dr2dpx3CZ5QghYIyL4v/LknOzZWt6UFn+fX0JXAlDLipCoBeNbC+kc
	 im3UN8alv8woUfpsP3h9p0+SJ8yHH1O9bcjTqqie3qxpd5DJRAr7K2EG/AlGewi8Vw
	 M9BZqmQUp0U6HCnVvaZMIJqdX1iO/l12ueihtxBXLrRKxVR0Fmyu8CAasOPMKIAjOI
	 GxPWVUciJI2rQ7qqyPAnLMBnpcRd3b4+7jPF4JBmljy2XllEO+P79yRK+aFQVJM2i9
	 PXVKrDAtVYUzXa1arXXZ2lw0G5VZK/secucFxDZdvvgJvdgRpjXtsOGUe4voD0rRxE
	 7hcHsf3wgDy0w==
Date: Fri, 31 Mar 2023 19:08:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: laurent.pinchart@ideasonboard.com, kishon@kernel.org,
	michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	git@amd.com
Subject: Re: [PATCH v2] phy: xilinx: phy-zynqmp: mention SGMII as supported
 protocol
Message-ID: <ZCbibnS856BjpBwS@matsya>
References: <1679940407-13131-1-git-send-email-radhey.shyam.pandey@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1679940407-13131-1-git-send-email-radhey.shyam.pandey@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_063859_799722_F02597D5 
X-CRM114-Status: UNSURE (   6.57  )
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

On 27-03-23, 23:36, Radhey Shyam Pandey wrote:
> SGMII is validated on kria KR260 robotics starter kit. So modify the
> comment description to include it in supported controllers list.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
