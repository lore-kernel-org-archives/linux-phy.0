Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8763CC6FD1D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itlbJ7Kwy5sDIC2mU7/zoykpI8EsmTpXPwE3DD7Hwd8=; b=G1OowRJM9Ztc9W
	JpvjS/hMo3u/3pW2jlYOFaBrCn4fm3/4CkLAZGHrE/+NHuCUf1G9Otp3lKu/+dEclT236GpGyXYjt
	jROaPHD5KOy6WSDqSwUbkZiM5cQk1PvI+Zfh/6RUZcsb9+lOVg7tvDxPHsCa7644Ji9j4ypTXJzuO
	vJSKUOcrpK/P+BwtOauIpzibULON/FRmYs/nwEIJHcw42RY9wjbdl5f1sallEvoDriRo2iiGbC/sF
	Ce7cHQ33nBTOc6DiiaMEL+1xfzaDpZ/fOpp5lTI/aWjW4BYYr5tZW33xDQ7V7s5lWSeJgYwJ4uEyi
	8NFZYb75Sc4SsMHc9mQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfXt-001DzD-0e;
	Tue, 04 Apr 2023 12:13:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfXp-001Dy5-2F;
	Tue, 04 Apr 2023 12:13:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 22A1661512;
	Tue,  4 Apr 2023 12:13:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA27C433EF;
	Tue,  4 Apr 2023 12:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680610428;
	bh=kBLWTzI4Ec3Tgm3PQcE9dHuMDi02IfmCduhDnazZ9YY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f/SzTtuPKL+FeY9p/qLiRDcrMowMa5080F1nb9Ne3bZZ8K2QKEvDbZAVp4CFMtwxi
	 HJLL91Vm99Vm2leQ/VMOD8jAAnC0tbdltFotedxlnBUF99kKJ3JtRll9TD5V2xECJ4
	 vchGtel3UyYejCJw7NS1FKgEKJLdt4/ASCN1OofD2Z8Cd/pwtlnRTgLVCRTHkp8Z42
	 UpurcQzf/8UHtwCUXOZEem0LE6wseZMBy/QuPiNaXgFwKoBQmcIxUA81m/N/9aky7R
	 SPjGv+zGKz2/SfqYQewaZJ5IJa1/fQ71d2UbjX3tbnOY0IWil5UMXmRFf5KUFoQ96h
	 2koyJkcIBkuAw==
Message-ID: <ae922f41-63a0-baf3-c204-73d4e8d0fe08@kernel.org>
Date: Tue, 4 Apr 2023 15:13:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/3] PHY-GMII-SEL: Add support for SGMII mode
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20230309063514.398705-1-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230309063514.398705-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_051349_769035_367946D8 
X-CRM114-Status: GOOD (  14.35  )
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



On 09/03/2023 08:35, Siddharth Vadapalli wrote:
> Hello,
> 
> This series adds support to configure the CPSW MAC's PHY in SGMII mode.
> Also, SGMII mode is enabled for TI's J7200 and J721E SoCs.
> 
> Changes from v1:
> 1. Add "break" statement within "case PHY_INTERFACE_MODE_SGMII".
> 2. Add newline before "default" case.
> 3. Update commit message of patch 1/3 to follow the existing convention.
> 
> v1:
> https://lore.kernel.org/r/20230309062237.389444-1-s-vadapalli@ti.com/
> 
> Siddharth Vadapalli (3):
>   phy: ti: gmii-sel: Add support for SGMII mode
>   phy: ti: gmii-sel: Enable SGMII mode for J7200
>   phy: ti: gmii-sel: Enable SGMII mode for J721E
> 
>  drivers/phy/ti/phy-gmii-sel.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 

For the series:

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
