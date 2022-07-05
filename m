Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9573BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdJx1ps8g+PwV4/nxa1dd7XUWsN+Tyg8cj984vmFUts=; b=iPt8bHNuTRwt8P
	Ne5O07gXni9rj9RlFttfPnkrjRnS//8e5GbVVNPyMLLJuVqRQhC0P/+MZ48S4pDw3rIw5WskqOF3A
	ctplygsbKbWJBiKsrxrk7Jj0y6PEWaQgbI4wu7zizp+Q40hTJXdYMaHtkJVzsordGtE4nNySP+UFP
	JntC/Ne94L5L6VGJ84otElNT4LAKK4NPGQuFhKxTzhw/L3EkYUd+hFzJobBndbaswjJiyAAUZKJDG
	+D8oVHnwJwvi3b0QPvNrD7yjgiaylOmPIqobloHzUgVx30wJht0o9fLUDn82I88p9ASbWD+YhDVgo
	NckyajiJ3v+96cay6TvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c7M-00F4Tm-Vn; Tue, 05 Jul 2022 06:33:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c71-00F4DU-Jv; Tue, 05 Jul 2022 06:32:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B12506126B;
	Tue,  5 Jul 2022 06:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B1F7C341C7;
	Tue,  5 Jul 2022 06:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657002760;
	bh=+O65Y5o3T7Br8OzntHnLsnqAXOerkRpKxVPoUCxEmxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsyPYO8IOUQ4X+4B2XJanvVDRB8u2ae8i3MqCG0ykGHm6CBjdje+BNEyOG+AYrV1h
	 P2b89XBD2DavyVaqkYnQRVsLBQ1HxvteKr2pwgp+/NPZhqgkRADmeH4EPmQ80gaXzH
	 X6SLdxhVXqp1wSziTUs2kvn9UPL9TTM83RvfWeTttXVIUiMF06Jb5FtXcCwyDl6SSl
	 k2dDIpEXjCTYurZuW5EjNojVELxaCURjJqC/R2kzTGTjpt0kXq8XU1hLXCkSsuve11
	 ILZGrmI6sw15rXRfWFOVNDSWLxFxCsuXu/uE9wtAkuY7dq/ZZ4P2Ai03ORX09Ikaxb
	 RWYpGVf03KB6Q==
Date: Tue, 5 Jul 2022 12:02:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiang Jian <jiangjian@cdjrlc.com>
Cc: narmstrong@baylibre.com, khilman@baylibre.com, kishon@ti.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	victor.liu@nxp.com, andrzej.hajda@intel.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: dphy: drop unexpected word "the" in the comments
Message-ID: <YsPbA/jCj/nuPDP+@matsya>
References: <20220621120015.113682-1-jiangjian@cdjrlc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220621120015.113682-1-jiangjian@cdjrlc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_233243_748718_11A646CB 
X-CRM114-Status: UNSURE (   8.34  )
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

On 21-06-22, 20:00, Jiang Jian wrote:
> there is an unexpected word "the" in the comments that need to be dropped
> 
> file: ./drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> line: 139
> * when in RxULPS check state, after the the logic enable the analog,
> changed to
> * when in RxULPS check state, after the logic enable the analog,

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
