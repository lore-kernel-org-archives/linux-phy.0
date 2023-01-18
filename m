Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F067C38159
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qc64r+0Nqao3W9uAw6Ix141AVZmkf0C7u091dLYJB7Y=; b=EiurCas2AAqvNR
	VKIxAYVRg0fenpg/2+X18Pn4G8o3dQoS+wOpdFCo/iQNbjAz9XgxQzTQ6mbBLgDU9zjz4yPAp1qMN
	eKVrSFdh2tit0ll5rUZvRCjunozSG/BSzApxS7QpayK2vuwMs177GfYi4/cjM51FZ1i6Z52xdhuRE
	HqHFgY5BHb6pKAcXxhzdctQql/T6mmpQoGRbxTbH7mPCIvm0gmu1bhmgCx9UY5BTUxr182QM3GDnY
	wowi9Jy4rLV1EkYG8AjtRs33tgetvCeXmLcuvGW6HK5/QFOyRna/WL/z4uiyFdw++uxt5SfnDMMz7
	mQoQiHAdpxj0Ft3KoFZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICEZ-0021W4-QG; Wed, 18 Jan 2023 17:28:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICEW-0021Uj-I3
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:28:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id D31F0CE1DD7;
	Wed, 18 Jan 2023 17:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B827C433F0;
	Wed, 18 Jan 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062897;
	bh=i/molI4igSdPuWthi1ooT7FdJi3hNe5JxLCaHL+bYLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oFB0sDSoMq1O+pmytzNxTTzcuXWOzTzY9OlEmrOPKuLTHBWOk9cSTSuTH4MXRbl6E
	 TAImPNTMbI6mKtU8nEGK5HPlLmt1Z6OTsFfPoolAi4RAp22NAqarIg3TN6z3VaI5PJ
	 QIBAu4x4cA96s/KEDmJSavvkuG1c0u7hfoBsjEhV9lUW2qpiUd9EWt+3EnruB3qMIi
	 NjcWytDhCPqT9NXQe5tuuYtou/Ng6rh050/ycfw0FG455wzWEno/DAgTMvYtZ2lBzQ
	 UePcwUmib30SAxeuZYovalXrzH1lxTvV+cXN0zX/6eDVU6ZEO4dNFhMlx+crqbc4Kq
	 SPPdbYjWtnrqQ==
Date: Wed, 18 Jan 2023 22:58:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: phy-can-transceiver: Skip warning if no
 "max-bitrate"
Message-ID: <Y8gsLbKGDWZgzAeA@matsya>
References: <88e158f97dd52ebaa7126cd9631f34764b9c0795.1674037334.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88e158f97dd52ebaa7126cd9631f34764b9c0795.1674037334.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_092820_802145_870D271E 
X-CRM114-Status: UNSURE (   7.57  )
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

On 18-01-23, 11:29, Geert Uytterhoeven wrote:
> According to the DT bindings, the "max-bitrate" property is optional.
> However, when it is not present, a warning is printed.
> Fix this by adding a missing check for -EINVAL.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
