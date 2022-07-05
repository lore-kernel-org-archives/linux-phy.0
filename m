Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7669AC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEQ1LyZbmY+l1ETf/tEV87BVHsd2ktKREV9ja4IZGSs=; b=07o4CbHy3uHKhk
	ow1V82Cbxj0tiuK2lEa60nG7cw+6BQSmyb+mxW4hlQFb4HgXN6MY6Pe1j7PuEeJc6ec25CioIvmuH
	Tp39c8QPEXOkGjbMVJImvn9bxxJPQ3S+L92qsYIQooh0zI9eo+t8/1zNZcCKEiPspX1tN4QoNvxni
	dtr5kfN4fUqUnez1Lik+oTKdoWVc9qKQqokz4sCj9Nh70kHB6oqNecyl1Eq36CILFmO2NO5uu9Ddg
	+zLaXOmP+6FVgcp9h/nkRmlH3xJRavOtW2UiAe0cdb1QGPRymfEgYFqlly53hE8MU2bCYIglm0WKP
	WEhYa9p8As8r7U56SgYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8d01-00FbHJ-SS; Tue, 05 Jul 2022 07:29:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8czz-00FbGV-AT
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:29:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D045661605;
	Tue,  5 Jul 2022 07:29:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD031C341C7;
	Tue,  5 Jul 2022 07:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657006170;
	bh=jr/lmjA+fvU99wtt1/ZC+0QddPrMA3HHsWrLCoegLS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=roeG4vDZmtGMKNQkqGUEO9Vr9+fM/R1ljJpLNsPc0p/KUaEtBTsqhzPLT8EbMGbcq
	 LmQRDTPHS/7cdGfWGQ2iEnvNbB5Z9XYbydSaWAAi6a8YJkQDXVFWvx7GChSkvkU0uL
	 joM7tAaG7R9vJ2u8qCOLDnvU3q5LxisXtwcHz6Bt7kq7VJWG3g13hm4ERGyhMDoNbm
	 eu6nT2syDMkdXt+EPuo64HsdWi2QbyzVGI3ADwyRQPhL+Y685eaxrRYDp1MqLmaPRz
	 7YmJw/9yBlDCIutYAZ62da1dgAC/k75Rtv4zR21x1hw4iOW257l4fel3JRibiaBkL6
	 LQYxKBElBTibQ==
Date: Tue, 5 Jul 2022 12:59:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiang Jian <jiangjian@cdjrlc.com>
Cc: alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com,
	kishon@ti.com, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: phy-brcm-usb: drop unexpected word "the" in the
 comments
Message-ID: <YsPoVjodZ81vAGvu@matsya>
References: <20220621122401.115500-1-jiangjian@cdjrlc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220621122401.115500-1-jiangjian@cdjrlc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_002931_411547_C7C6AB17 
X-CRM114-Status: UNSURE (   6.58  )
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

On 21-06-22, 20:24, Jiang Jian wrote:
> there is an unexpected word "the" in the comments that need to be dropped

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
