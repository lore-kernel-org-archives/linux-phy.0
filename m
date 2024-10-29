Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BF2D2AB3F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOqiRVvaY9HN6AX7Y88VViYAbd/cH459Rdl61+0QslI=; b=4C/LgHhj2Ixghf
	MJDZpqqvSXibjWbcK6HqaKPcmdF7Mz1jc9BVeMAglNysdpVgWBZ3CsfGA2f2kqel4JjZq1Rcykfxk
	DoI95sK6f9YxGyG+XnDtM7z1MWXyWkNCDsapbDmQMRBug4f7T+C5bvtfvH0meDFfyNFuR64gNwVZ1
	f63xFRnUI9LuCHSnMGQbd8UZ9BDRhvAzl+rjc8C1fhCc4eNXSoroL9ql9BhbqoDDgyI/AjuI8F4lr
	ZEQQRpHp4Z2EqSgxC8jYS38NzPi7O5pT0kFxr+c5eg+t9y63/myj9kVt2JOXAQDUxwvhJzO1MRCIR
	v2wvwP9cNWwMVxbi+L6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mYh-0000000EcWC-1oZM;
	Tue, 29 Oct 2024 13:46:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mUt-0000000Ebm6-39cn
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 13:43:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 36F735C5E56;
	Tue, 29 Oct 2024 13:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8A44C4CECD;
	Tue, 29 Oct 2024 13:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730209378;
	bh=GGo7JHb+1UoYyHCQmJ7gS6Ek7kWmrbPkx4ADQlZSt5I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ci9/aR4CiLwWNI2+uWJd05AQEdtpYjazJW0jiEE1dyReiXTgVauL/nDNB+HbZxEs1
	 wiUntxD9vF87WRUKvJBXcS0mxGdDIfkW5AkHgHDmbxm9B58y2jo4Bj5xFlzR6L5qrH
	 F7m0HI8NYvXMZFe+o25MVf1Nq8obwV+sLUMqnLaRvFljLviXKGoe3Ceiag7JNL+m/Y
	 NM3/iCi5cqGHbgPyeKcetqTVgOQWgmdxiIuUEO/7aNQkfCvhzBSsb2KgMEIn2+k7uR
	 O6QSwnkkW7NFJGA4CULlsNUWgTnTxvguZ8NuAqNguH12HbN4BzSr0TdQINKPE0BJkK
	 eb6zno7z4lrKQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5mVC-000000002y1-1gGK;
	Tue, 29 Oct 2024 14:43:18 +0100
Date: Tue, 29 Oct 2024 14:43:18 +0100
From: Johan Hovold <johan@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Lee Jones <lee@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	stable@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v2 2/6] phy: core: Fix that API
 devm_of_phy_provider_unregister() fails to unregister the phy provider
Message-ID: <ZyDmdsHtxo-gFIFH@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-2-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024-phy_core_fix-v2-2-fc0c63dbfcf3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_064259_855917_591B10F1 
X-CRM114-Status: GOOD (  13.26  )
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

On Thu, Oct 24, 2024 at 10:39:27PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For devm_of_phy_provider_unregister(), its comment says it needs to invoke
> of_phy_provider_unregister() to unregister the phy provider, but it does
> not invoke the function actually since devres_destroy() will not call
> devm_phy_provider_release() at all which will call the function, and the
> missing of_phy_provider_unregister() call will case:

Please split this up in two sentences as well.

> - The phy provider fails to be unregistered.
> - Leak both memory and the OF node refcount.

Perhaps a comment about there not being any in-tree users of this API is
in place here?

And you could consider dropping the function altogether as well.

> Fixed by using devres_release() instead of devres_destroy() within the API.
> 
> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

Looks good otherwise.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
