Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203B4C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k49ueFSvmQsTmakta/Krw75Cq595hUBh5QancQzAAAQ=; b=2tsnIYhSq0MRZX
	1NrN+JHkx+foIqKG/pFK2UyUYAXTLB8y9+W7l3uS7gEuTdb+0nncDHcDPhGNFonwe3QBsBDULoLb0
	mm+eo7vHRfq4OFhfXib67SHxw611YaJ8duJzC1KIuw9bEyLjriCpu0Wu4fiLsiK6nPu4CJfm9xsDn
	aaK5VFPbWfiAAIX+abeGRFpmAQ/xuv+2lZM3FJ31iZi8by5rZ9B2VFiFbG8e6Z64BrcG97h7qu1ng
	Ni+++ur7S+yiQ3j7ZLdvxdmOnST9UXfmMiqpqoinXnPWgFq/AFLEHVLyKMMvuhPvJsOWYA2CEnggL
	G64EVVVWXYRvdh9k1qeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmP5-00000006cwC-2jvB;
	Mon, 20 Jul 2026 11:43:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmP4-00000006cve-1sqF
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:43:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 983B660103;
	Mon, 20 Jul 2026 11:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD68C1F00ADF;
	Mon, 20 Jul 2026 11:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547801;
	bh=USIFta8waGswLsVlrDqqeC2xFs953QzX0eT4BvPWM8c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=DVVvMFHfbIJcXfQxDL7HTpHjrOz0lcoTScUafjew1nqMVm1MaETpm+nna6dlUAe4I
	 qT0vUTWcVUVhORQjbGSb7jsZzbCMFWdaQIRmcL5tf5F5D66iiN6i+kXa1bEPpX78QV
	 i3WzKB+umJc8+NaB6F/HBIUrModomwfNNi2u6rkdU+TA2AoZorSJ9GR3Q3Lk6zPWmY
	 TCd3eqMdwVmw1x0seE78ky7SAEaf24wEsf+1xoDhkxaV/hdbwlnQTRp2F4PVb37B7v
	 cGQAcgoR0IiKuqRiCUaNUsjjysrl2L4ZPXWQZQ+PBlH3ZJYBbIZDnxtN1/iv/nuvH3
	 ZKA6Pwr3iaDFg==
From: Vinod Koul <vkoul@kernel.org>
To: jack.zhu@starfivetech.com, changhuang.liang@starfivetech.com, 
 keith.zhao@starfivetech.com, neil.armstrong@linaro.org, 
 Can Peng <pengcan@kylinos.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260718090054.444513-1-pengcan@kylinos.cn>
References: <20260718090054.444513-1-pengcan@kylinos.cn>
Subject: Re: [PATCH v2 0/2] phy: starfive: Fix JH7110 DPHY runtime PM
 cleanup
Message-Id: <178454779848.1388616.16069499534692165906.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:13:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sat, 18 Jul 2026 17:00:52 +0800, Can Peng wrote:
> The JH7110 DPHY TX and RX drivers both enable runtime PM during probe
> without arranging for it to be disabled on later probe failures or on
> driver unbind.
> 
> Use devm_pm_runtime_enable() in both drivers so the runtime PM state is
> cleaned up automatically when probe fails after runtime PM has been
> enabled and when the driver is unbound.
> 
> [...]

Applied, thanks!

[1/2] phy: starfive: Fix runtime PM cleanup in JH7110 DPHY TX probe
      commit: f40b0241f3a382e99c14de2f28f14a44973407c1
[2/2] phy: starfive: Fix runtime PM cleanup in JH7110 DPHY RX probe
      commit: 97bed336f6a25c9d1115ca95e3aa00e05c3bc271

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
