Return-Path: <SRS0=3F4a=PM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC0EC433FE
	for <linux-phy@archiver.kernel.org>; Sun, 24 Oct 2021 17:15:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 525EA60F9B
	for <linux-phy@archiver.kernel.org>; Sun, 24 Oct 2021 17:15:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 525EA60F9B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qm3g8U68OjuakYlYY43ZuBqllSg53ktKgBNgxe5hmSI=; b=vUFqLZfoxuvGcd
	ow+5DvCO2wn0Y89v9g5CUpjeE7CFCk0NNQR7twBn3Ucmnaa6b9k0NKI4e18BUhC64QxzDTKJ/Ncqh
	BhK22gnhWzu6vv2HgV9FptUYB/dmfQB/0qrxt3r7OaOMY83jCk5DPxRr3auW2tF+OfUdH9ZfFT0ln
	0ScJMKHNGokcxQjUTqG3e9+Wvrl+a/GRZMg/N5eb6HIAtzpTyEi7yzMvEKEAffD+/vYAwBB+3STeM
	yinYlHVGf0MCJLrVOpZj5DtWpi/nByaB5bvqhJA4Yd29YWcft5e3f15dfCnitppvkfy1WjgEso65F
	ZYn7tm8kLPe1ROwuXwfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meh5O-00EOOs-SA; Sun, 24 Oct 2021 17:15:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meh5M-00EOOF-Es
 for linux-phy@lists.infradead.org; Sun, 24 Oct 2021 17:15:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D407160F57;
 Sun, 24 Oct 2021 17:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635095703;
 bh=CsWc0SRs6ZzdaM49ktypJd25duLDuRk8S4WN/XMFu3E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n7C1y7V/k4CTBKc0bWu6+RPEcZV9CB6PvBC1MzSJIbrBJYTEUOdMqbMtZpkLfgjj0
 u3yD1v7qw1qu6WwIwyOgConl42GiFq3m4sKAGvoc3EX3pDYVbXN+c8ZItNcrx0Wx2Z
 td+M6eT190qDlNmqfk4B1eo/u8r4Q4kSVpqggn0tIhlYmj3j00dakwS2nvVqk/kRQP
 XxRCsErckj3cEw3vC80TpuJtFc0P2CuXeBTkF0WYrxe3eaNvYyHRr/J1LMKefIbUf7
 XoJXekBtn7laHWn2nnGH0dK9ltu0953795PJILk/J9ei1lI7Pjvv3yL5arc6biN30e
 n9SeAQtHw3WlA==
Date: Sun, 24 Oct 2021 22:44:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wan Jiabing <wanjiabing@vivo.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kael_w@yeah.net
Subject: Re: [PATCH] phy: hisilicon: Add of_node_put() in phy-hisi-inno-usb2
Message-ID: <YXWUk38hq/Np7EMc@matsya>
References: <20211015080154.16016-1-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015080154.16016-1-wanjiabing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_101504_538131_822CD07E 
X-CRM114-Status: UNSURE (   4.23  )
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

On 15-10-21, 04:01, Wan Jiabing wrote:
> Fix following coccicheck warning:
> ./drivers/phy/hisilicon/phy-hisi-inno-usb2.c:138:1-23: WARNING: Function
> for_each_child_of_node should have of_node_put() before break
> 
> Early exits from for_each_child_of_node should decrement the
> node reference counter.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
