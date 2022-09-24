Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267BEC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 06:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7ndQFGMrI0bxQHKVrwNa1UoSK31PgHJ7/sWwWopPRE=; b=UCBkWLQEa7KN9R
	OU0LEWQ3n7E981DPKkrZHOiF+4KnREs3npmoe/FXzLq8xbsxxwwpo0QxVXEZI+pdus5gcHgtAYrNB
	kIIq/V7hTAbUhp0lXA0yOKw1FG9g7dl5RbB1XR0IeD5H31F3py/ZMIARBacCHD4PsIKNlYVXtt62M
	LL4XjcN0qpVn1D3etNKShPjXVfNJeN8vjvpq42wQSJPTdU+JAJAT1Vc4Mjgj33oKjnEvK9p6EIcU9
	hOYs9JDHZ1QhP0x+cU9QqX76LVzPMjZ2LXc7Fn8UoB1P0d4sDZb4NMO1LHELx17WNoE9hwnEVazj9
	ozNF6qcxnBniuWsshbRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyfi-006VSP-JZ; Sat, 24 Sep 2022 06:29:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyff-006VR4-DA
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 06:29:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3728660E77;
	Sat, 24 Sep 2022 06:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 229C2C433D6;
	Sat, 24 Sep 2022 06:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664000988;
	bh=6bg3jfUXb8g3xzE3q/HoLtC2LRIFOYoq2MN00W1hiWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxh+RvDPfgvHvSdrANIsqxeFjiPiFphxpC2aIw8U4U+XySvz7hoMbwG8NHH/4VdhS
	 uZb5LEr4a+wfY9N8OyJwh0G3As+OPhWBwJ7FeyDuXOxce1ZxvE0p7Tawi0vDdXASbc
	 uaT6RMmVhvPJGhGPhqvrSZxAYaURY+CT9xAFHAZ/ALEbMHwe6GOJGDwWhMnV6vy9/z
	 8pi8cbvnAEkyz+nOK9ls3H2xPvine1rzGUdxs6wZHu/AXro/udZV/O03PNF1BCeWFz
	 XcdEopEo1we2tc4whkObNuWB+A8G6wt8C3donSHN6OWoIjhy4sPph/RsJsK7l/MNUf
	 SDrTAjdpUhRLw==
Date: Sat, 24 Sep 2022 11:59:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Roger Quadros <rogerq@kernel.org>, Jyri Sarha <jsarha@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Tanmay Patil <t-patil@ti.com>, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: ti: phy-j721e-wiz: fix reference leaks in
 wiz_probe()
Message-ID: <Yy6j2KhuQmR95JNc@matsya>
References: <YyxFI8aW23IC/21U@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyxFI8aW23IC/21U@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_232951_499713_2DF0DE08 
X-CRM114-Status: UNSURE (   5.69  )
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

On 22-09-22, 14:21, Dan Carpenter wrote:
> These two error paths need to call of_node_put(child_node) before
> returning.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
