Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1827EC6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5ZkuFdi4vl6HhziAbOsV5YtPfcT5BmahCoRY9THDyo=; b=bYPgORgS+oHf1T
	cID39+nqRVfY1DWnzJ9pl6ahTK3eB6bLp1jPb6sd+tP818Caoql68NMgOq2TzclDmYecCg5o6eGN9
	XMvoLg2WUn7kvJVv/8g1NwT8AogZy/wwZr7EAVwNG3jSFGg+dhyuyIvMg/wrj6O/siDoq1FlV8/Lp
	3fjjIK+kBr4bS1oVWzlkMpJV29ACv1tjuIE/tYSqv/hpqzhA7miDpJZqDYxN55m/xLvPha26qdLsO
	vzI6iaIY3T1Py5wW8Ej/24ZDtZkYBNh/EemGRw0BXUqkfdVp25+JuUlE04EbgP5jdWmbxL+UsanAM
	KBXZXTnhf4ORefI3q/9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piEov-007X21-1c;
	Fri, 31 Mar 2023 13:29:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piEor-007X0G-2e;
	Fri, 31 Mar 2023 13:29:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C07C62927;
	Fri, 31 Mar 2023 13:29:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB38BC433D2;
	Fri, 31 Mar 2023 13:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680269368;
	bh=Y5YtUrKC2+Ye8jz8W+QdmzBteBT9mONICvBXXC3yYHk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AGeBz/Int3Z/Zz/BhdkATkoaS/vmn66coKC0qxFAEUuShOdShOQKdxnRbgRwgWXuP
	 enrXY9u311Y4S/am4tiZepiyNmr9fI0XIvyMK1tKI7nHP+4AgPiZfSjl43U2wS1e5a
	 FTT6TLLUp86Ak/o1diplnsOAey/rEmvlJSgBZnsPRgb04+pAoT4I7KA4oGJiXQTsDz
	 DPdIAz6qxbWiGe854xmxL2gjF56IMPhEWC2BXszYt2MgZFUewbH51qjo+FLoTUBLZw
	 O+OuNXLNclsYsM4/oWRUceJyBrgVxV5uXhtmyjHLydRxv7eNxdJ09u4u1C9ToLKhAE
	 xw+O3wbu2ejHA==
Date: Fri, 31 Mar 2023 18:59:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, fabrice.gasnier@foss.st.com,
	linux-phy@lists.infradead.org, kishon@kernel.org,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	error27@gmail.com, kernel@pengutronix.de,
	linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <ZCbgNNhFQZUo3VKH@matsya>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_062929_897418_22035C39 
X-CRM114-Status: UNSURE (   8.98  )
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

On 27-02-23, 16:13, Michael Grzeschik wrote:
> An minimum udelay of 200 us seems to be necessary on some machines. After
> the setup of the pll, which needs about 100 us to be locked there seem
> to be additional 100 us to get the phy really functional. Without this
> delay the usb runs not functional. With this additional short udelay
> this issue was not reported again.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
