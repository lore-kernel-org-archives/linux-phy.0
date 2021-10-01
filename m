Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32530C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:20:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F283661A63
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:20:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F283661A63
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNTcXSkz1GF2H0fOnFJuq/d6Rk1Zw06Q4A5OplCFd/s=; b=fuTOx58ujh9P9Q
	eid27C+5Zuf757wpe81c/hJuYnY/7eBGfzTicLBV4/J8F9dd02qo7yao6VXjStTz494srtty5l9yM
	egBjrnn8Y0v4/cXK1wK2WtkkAJl9dATrSZasZENUZivbpGjIaoVKJBdvSDlxNk8na+5L5ZBN21h0N
	K7aFHeCP/fUXCX1/s767XlNPML1uKl1avXAbYuEoSgT12Hd0lx4m+iUqbqUX9khNegQkYs4rQN4Vo
	XbJdEt31AXyqu6yxiQbQrtO6l05+S8ypJePOfostpiLxMwzGSORfwUO3FFs29/aZi/ZV4xkH3WFTI
	h+eLvUvQCUoZ0uoNylQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDmn-00H3aN-Em; Fri, 01 Oct 2021 08:20:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDmk-00H3Z6-Vs
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:20:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD4D661A57;
 Fri,  1 Oct 2021 08:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633076450;
 bh=4ydmC4212QSweCoXZhk6S6Cz/uTkZU+5vdq8RbNTT0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IqPt39dAyb8Tt0U+QgnqZ0lZLM7gRKduYvqKlzunVjN8iqe+IoWhbUk7yGaCBwZfh
 I66VT2zsuae1LmjL+pvNvnwGzzBo1mwUngP4EIzOgbecfKAl/W1j7hRuKirfYsg7GA
 2o7xBma0dOxi9Ro4CsTbs1aUpEGJmsvQp++QSby5lJ0QzOqfig0LhhR7f9G1EH7eG7
 DvpdDnQzokayruhBHtsiiYXrLnkki4veE1RUls051eP/cmMaVRJWNfGojFB4A/SPMN
 edoCwQgoPs3JEnrhXch2n9abOV9qSJIcspzXhnkwNCLXV2z2EbqSYRlSHTmZH9ztNa
 lLmXKERICNZ3w==
Date: Fri, 1 Oct 2021 13:50:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: broadcom: Kconfig: Add configuration menu for
 Broadcom phy drivers
Message-ID: <YVbE3mJ4iD/PI+xe@matsya>
References: <20210923025013.189-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210923025013.189-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_012051_085133_FBF07420 
X-CRM114-Status: UNSURE (   4.25  )
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

On 23-09-21, 10:50, Cai Huoqing wrote:
> Adding a configuration menu to hold many Broadcom phy drivers
> helps to make the menu display more concise.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
