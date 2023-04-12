Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A51AC77B72
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvPXKcD4POYVTUUoqlY5RCfbQyTLnq5vPJrBIarmOro=; b=Hgc69C3v/v/DES
	1pILjKciJZe0U23a3VM4z+/OdLK9Lc/7WvgwOSKJUHaWsbnCYA2saM/+vcLjP4/pWSv4iUkSeVGwp
	l0Mfk+8GWz7kclJOCCU+vJ6Xf6gGVe1dcdMw19P8vfFK5blHsINyInLjqUg6RZ30m3G6HHe6lwTc+
	KhbRG3go5YEkEnie3Oa1w9H5V4asuY4UtoWKfrPqQhHUj8S8Aa9zXEj94eJZiWMGGiiqUk0BFOk5U
	Pw0TQn3XHi+vmXKvWl26tHEhDsO0hdrBk17As78dGRKjAYsFDPhD39krpXIhie5eD4tr7qY7usyJW
	HVI6WLAlQ8PQzAXcag2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdbL-003rQH-2W;
	Wed, 12 Apr 2023 16:45:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdbH-003rP8-2y;
	Wed, 12 Apr 2023 16:45:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 666BE6123A;
	Wed, 12 Apr 2023 16:45:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AE18C433D2;
	Wed, 12 Apr 2023 16:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681317938;
	bh=FjHFIZWg445rI5vxTZnUyscl1U/orLLI2DzJhhetNyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EI549Dxs8cx7q3xbAHAnMrSdRyFxNwhozAl2zsqM9yRKziarOPfYaZLofjZAE/xYP
	 GStsFJvSR9p6PYjbbXuM1RPNXRKNo0HxbwTJRcqzeghbNZWrVQM5LA9+ypN9lh80BG
	 zdpYQANQgxn79ri68/vDcbxzdnc81WR+oQOPdqDEYyBCa6QAALhyi09fM5u56OK1F1
	 sjRgYLm3p4yIsYeKQWkZzT6HDbzbCoShuhbudv8X1meWBxCRi3peoPXWuH7uI7lu3F
	 iILuw8dQbtvVgC/FmR3T4fGcm6r+FJeFOQ8Vdtb6hUy1lEWuUDRlYVDdPe3EMm0gxJ
	 ng+he2NJ8X7IA==
Date: Wed, 12 Apr 2023 22:15:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, rogerq@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH] phy: ti: j721e-wiz: Add SGMII support in WIZ driver for
 J721E
Message-ID: <ZDbgLpCuDYAdELJA@matsya>
References: <20230309092434.443550-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309092434.443550-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_094539_999124_E14BAA60 
X-CRM114-Status: UNSURE (   7.15  )
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

On 09-03-23, 14:54, Siddharth Vadapalli wrote:
> Enable full rate divider configuration support for J721E_WIZ_16G for SGMII.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
