Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DE5C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0Tp8cieofJu+0dijg1+33Ih3YTXOxG5LtWxBu36fJg=; b=jO3fCzpnX2a9zM
	Op00xpDxHdBa66XL0vUc3PiEkGC/sVfhyfS0QThfJd0Oz2fwk6VCzHdct1hg2p1UMTSqNDhodvNRQ
	pJJhmAsW2UY2K4CTneNfT9nqi//LScn65aOGJjCZ1cz06LuTS1RAwb8nOigpVXgS2XYyzX8ysTY6d
	7FeixCb66MPgZoUXuPwgyggoU6QcnCWKn/veeEUOx9LuQswQPCtFfyR9CndsIzREdaXh5EFDuYEpI
	2UwzZc0Auyp+ZryBG2xKAwswPg4YTBhpa/QommqoJ9wewd57VsOSMN6WENGWnirOo6Fel3OjMUBUX
	Wp7KwmNNceD5NYAs41FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZ1-002YKh-07;
	Mon, 27 Nov 2023 13:22:15 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bYy-002YI9-0S
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 13:22:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id A84F2B83597;
	Mon, 27 Nov 2023 13:22:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BEC7C433C7;
	Mon, 27 Nov 2023 13:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091330;
	bh=VMQtEdCOVaS38Wu6iEj4lCJRQZ4TyTyCmYz+FNCaYOs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YC2PyYm4dkKVLgr7iY+QbR57yyY3WkKWh05Vumr0W2xzgOAPDikIYQys0hoceviqD
	 V0PhTMls3rZLnalsDFEvc1EGbtwf5HKhf9lXXdei/NdCNV5IgZFfXwLBqmG6V3YsRG
	 MCXEOPht9SodhovpMQqve5pJHcTis1f/Jtz/qPF8chRQaMZIwLebhj0bBD5RHFqqKI
	 XDNRylIZvGV9XbfhpywsssvCGyPyAJY8F60aHK3eaL0FTeT8sS41WVUPnt7zOPTpN8
	 n0sam5Q1P6Sss6B00aa9gKFBOgc1r7zp7PJtK3URzHyETTk7fHQC60DKpPNzIG09Lf
	 8KC63klPATSbw==
From: Vinod Koul <vkoul@kernel.org>
To: vincent.sunplus@gmail.com, kishon@kernel.org, 
 Su Hui <suhui@nfschina.com>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
In-Reply-To: <20231120091046.163781-1-suhui@nfschina.com>
References: <20231120091046.163781-1-suhui@nfschina.com>
Subject: Re: [PATCH] phy: sunplus: return negative error code in
 sp_usb_phy_probe
Message-Id: <170109132717.42536.11844523525705275991.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052212_356042_4C5E2C80 
X-CRM114-Status: UNSURE (   3.48  )
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


On Mon, 20 Nov 2023 17:10:47 +0800, Su Hui wrote:
> devm_phy_create() return negative error code, 'ret' should be
> 'PTR_ERR(phy)' rather than '-PTR_ERR(phy)'.
> 
> 

Applied, thanks!

[1/1] phy: sunplus: return negative error code in sp_usb_phy_probe
      commit: 2a9c713825b3127ece11984abf973672c9779518

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
