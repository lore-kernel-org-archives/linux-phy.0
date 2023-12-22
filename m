Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A9AC41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tnhQF/6ro+WO1XGQ0qdbUEhC9+39y2XLcv71Ct4n50=; b=BzTwsv4GjERN0p
	8vDUvcmwgDnZ7fJtDzlZxk/qQTO0ivv4sLa1U8t2HKBdYjMZz6k+xg/nD5/7lYjPWG47HHqzOXLem
	wk2DNi5qx3LV31NZ6pw53u0Ph3FzJRNjb9KkGvfr8sjRO5qXZMEix1fEy8oZG30ysmzSAcN8Cis7m
	oGusYYh4tZQh+1c91kz8KRo2j2FBl9zcrHM2tadctdiM/worCywkqryExDD1Nc5HPHwEbKSRoUsYa
	0XD2f2H29PsXCRv4FmIMK6i1dgsRs1+aVMXL5fjfOv9B9Heo0uaMapQVAc3dFT4Opu+SdnAERCrxr
	cJ4fcK6z03FcnrdIptSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcXe-005WER-1J;
	Fri, 22 Dec 2023 10:14:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcXb-005WDN-1s
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:14:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3EDE4CE2156;
	Fri, 22 Dec 2023 10:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA186C433C8;
	Fri, 22 Dec 2023 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703240036;
	bh=B3Fb3xaBgAJ3MicHOvgzp7hskRNgdGEtl2qTy05aZKc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=G+qCJUK04/auFikiWz2Ec6e1QyGnDMaDk/BjJ6UjmfbvmdGHIVtL/xid3226FLyey
	 LZbEvlhvKqa0+cbCXc2jwqJF+BJ7IhhwGOgQBa9N+jaXHtUJUfXavuGyCVPb3xJ6uz
	 LZnTnndvZLr2kUBgkd4EiaHDIyZeSeRQwqUcyUvIuM0/Xbr6ZY3u1cZ/512MFR5AGk
	 ih5F8IZFArvpur1Gl1bwnujZa4+solwWvlXmpfGXi07qvy0CpsgQvqu7gYC/qiXKqZ
	 EwsUZEEgOnGfSipSUoZNRHq87B6J74q9BiUxifiSrvmUkSjFC9eqiYZflVuj2QCk2K
	 vZPVD2CPBystw==
Message-ID: <15424f2b-601c-44b0-83a8-19d69d7c92cf@kernel.org>
Date: Fri, 22 Dec 2023 12:13:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/2] phy: ti: j721e-wiz: Add SGMII support in WIZ
 driver for J784S4
Content-Language: en-US
To: Chintan Vankar <c-vankar@ti.com>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Sinthu Raja <sinthu.raja@ti.com>, Andrew Davis <afd@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20231221102956.754617-1-c-vankar@ti.com>
 <20231221102956.754617-2-c-vankar@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221102956.754617-2-c-vankar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021403_853366_5536E7BB 
X-CRM114-Status: UNSURE (   4.92  )
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



On 21/12/2023 12:29, Chintan Vankar wrote:
> Enable full rate divider configuration support for J784S4_WIZ_10G
> for SGMII.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
