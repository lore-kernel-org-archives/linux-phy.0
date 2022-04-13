Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81951C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 10:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezzKbNHE0wROAsDrKbUu5y45r4mzukTxhYYOu4/F4eY=; b=Jm9yi4RLn5IRN3
	sesUYQGuwn3LrGMKM4ChJuqrwvcivzCJ1b/uGDobyEp5SmIsgM9ES0QBu0eNj3HRl1lTuVa8MUr43
	zoe42qA01upkEb4mnBjyc5gS+pHkUOwfEZhnoALPxz5hqFTL9F+Jv6bo1WN+UBhjP91QgCYwvtOOl
	35zumqKs6DUoUR8EEaEw5IXAlCwHtZQAbwgybT6UmKg9uoF2bsHriFA0AtAtb7ax8sd1brZaF+coS
	M5LZVLB0cRQNF+drbKOAdPg0cwHb3JvY4E4AkcPlSswWc7EzPnks0MvQ1c+tqWNZxc1CQ37+AlBmC
	bvk9xBkd/vlhE/Qh7znQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neaeK-000hNc-SS; Wed, 13 Apr 2022 10:55:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neaeH-000hMT-6q
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 10:54:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B2883616D1;
 Wed, 13 Apr 2022 10:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C379C385A3;
 Wed, 13 Apr 2022 10:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649847296;
 bh=YRSjE5SEipQF3+7DHWCXcFxSxmoQRKjQ24qGlk4pUQ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j845OEhK0aDGEHuDBHxDdmbqtiETHCGXzmxb3tReLr7XQgKNzxqFk3B7aO07rHgKE
 XxdD3n2IBI6pYfOekFajFfjT77arlDL/sH+zdsSgVmBrX8IIS+OV4yH04nCI+zVt/O
 7HpYQNk/DTTQgkSO7ZeqkCeNXhKSdLWcrcFCiUOHDGI5+fkugPvGdnzbvfwOcdFoRI
 IbwOT0M1XLOnczZppimPiTDjTuuMASAxeSRWms34wPBI+ZPbQgOJfXIB0JhUWG44eS
 et3nSpmWpIeVcCi1IuSyEbOvOIUriLmc5lk9DCvO/tpjptO9jjGItbmXBf55leBIZ/
 mafbYtarUsgyg==
Date: Wed, 13 Apr 2022 16:24:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Tony Lindgren <tony@atomide.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: mapphone-mdm6600: Fix PM error handling in
 phy_mdm6600_probe
Message-ID: <Ylar+x3fI9DpmeKB@matsya>
References: <20220105123947.17946-1-linmq006@gmail.com>
 <20220301024615.31899-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301024615.31899-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_035457_303083_91641DB8 
X-CRM114-Status: GOOD (  10.02  )
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

On 01-03-22, 02:46, Miaoqian Lin wrote:
> The pm_runtime_enable will increase power disable depth.
> If the probe fails, we should use pm_runtime_disable() to balance
> pm_runtime_enable(). And use pm_runtime_dont_use_autosuspend() to
> undo pm_runtime_use_autosuspend()
> In the PM Runtime docs:
>     Drivers in ->remove() callback should undo the runtime PM changes done
>     in ->probe(). Usually this means calling pm_runtime_disable(),
>     pm_runtime_dont_use_autosuspend() etc.
> 
> We should do this in error handling.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
