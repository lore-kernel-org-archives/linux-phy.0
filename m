Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3D9D3176C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Nov 2024 17:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Erz9FeofzvD+gBQIxKUph+5HkXaBfPh+kcmRQiGxOXY=; b=4ccCbMTj790fyv
	uGJuJ4qKyFeaxbSHfwvHnihwo80HsfUYMfWNIW3zfS0gKi9ujfOpSlRGuJpvOIUC2pMhWMrw7Ffon
	Q6JLnJyilzmL7OzlIWDt4iHDF39NzC6j/gTpbkJUpRHWbtjw/ZKED/UNbuD78o4aLmcM6POvRMpaF
	+QRqjjlE41Nrrky6ca2EAa8U3Xbpw+lCCUwrmcFT7Hgm9xRM7DAbx9wpWv9Aio0Ihvh/IPZP4bkBy
	UY04N8wuJZ5djG6mW3/8BaCOszEkfHWIYzAxK9RpSHb4w6mxrwKr541/jhU4gQPd601GYXXSPVwfo
	kPuIRPSIO4/pLgOiTClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NO6-00000000DCB-30Yx;
	Tue, 05 Nov 2024 17:30:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NBO-00000000BQK-3GYr
	for linux-phy@lists.infradead.org;
	Tue, 05 Nov 2024 17:17:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BC187A4372A;
	Tue,  5 Nov 2024 17:15:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EA1AC4CECF;
	Tue,  5 Nov 2024 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730827053;
	bh=Xmw0hDI7VZHL4OmECHg/7HK3WckZ0xRvAV6zKnKQaW8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ghlbq7B9Q6xP29BaMU2BBxJ9SluoySMXwCsQ1PFFtbilr/X2AuRNzGzFu8dL1UBcy
	 P0tvjy22ghyU8YRP67rGAdfLmD/q5wseUyV/aTn1TC7T1dSNXSo5Wz65zx9rGCGnFW
	 c7fdkPnSLcvHNnuQj8OPuxlClbZ3vh/rirgJj1mh4SEgWA/5ailNC4Gv9UqqkHbx7Y
	 2R64IYVTQ2gp034yjdg10YRENUNG7DW8qc05kdMHjQFqI2OjSYakbBEoxYfG8N+Rrs
	 3yOMQkak21O1B9xFEWoWp9R+HWNmo7PKpBq59unkz+2l4BdfzF8xZh4iHS3IBIfU3j
	 ZTzOVpl6uEivg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t8NBN-0000000008l-0rAM;
	Tue, 05 Nov 2024 18:17:33 +0100
Date: Tue, 5 Nov 2024 18:17:33 +0100
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
Subject: Re: [PATCH v4 3/6] phy: core: Fix that API devm_phy_destroy() fails
 to destroy the phy
Message-ID: <ZypTLe-3QeXatcup@hovoldconsulting.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
 <20241102-phy_core_fix-v4-3-4f06439f61b1@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241102-phy_core_fix-v4-3-4f06439f61b1@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_091734_924141_0BFA53E3 
X-CRM114-Status: GOOD (  12.23  )
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

On Sat, Nov 02, 2024 at 11:53:45AM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For devm_phy_destroy(), its comment says it needs to invoke phy_destroy()
> to destroy the phy, but it will not actually invoke the function since
> devres_destroy() does not call devm_phy_consume(), and the missing
> phy_destroy() call will case that the phy fails to be destroyed.

Should also have been split in two sentences, but this also works. 

typo: s/case/cause/ 

> Fortunately, the faulty API has not been used by current kernel tree.
> Fixed by using devres_release() instead of devres_destroy() within the API.
> 
> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
