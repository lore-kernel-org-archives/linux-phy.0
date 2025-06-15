Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B2E1C71135
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 17:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79NE/ep/VGOzoDacfZpzJq0Kdo6TCQqHQLu+ODNeFUE=; b=kMsAYXbOdQvb+X
	PbLJ5ugZy4Uu/rXoJK5CreQx1/Cz+3bohMM8qI3bErJSnhHoO0bTQ273+RXN2LwK1AJ/zZyR2MmCW
	AOOe8IxVMh7tg8S9Dbay9orAXdsdmDQAUVpklk1pySe54XOr4KXaPMfUiSC1AW6Ea3RX50S19aTPp
	liLhIc3R9v4BTBkhHkSL8nAWcCCPm11Tpj+m9cXQYn0i3lrn27ItJPl3PnlTa7Hae2uwGus9V0CIm
	AqBWXWqeOlB5N4gwvITass1HxGD7KQdWfH98ZtB502lBHo7a5zNCkl76YZLMagW7tIy9oKEjWSwmy
	PzA3RBfRs9HLda8z5M8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqlg-00000002gyG-3UBt;
	Sun, 15 Jun 2025 17:03:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqbP-00000002fxp-1NOJ
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:53:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C077961137;
	Sun, 15 Jun 2025 16:53:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96769C4CEF4;
	Sun, 15 Jun 2025 16:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006382;
	bh=iPxJ9YbUiNAqgnRPEO+mLFdnygq/9Inp/T8SioCETZ0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rJaFFK8NVrJ428CUp2Iwl7qExG+kfiRqzsricVwshi+KyTb1PfbUYZ7LCfamCEaMq
	 8FOX1AYe+UpGCRfzRAx+JgoWHIxSTV5gkBrHGcRXmzU5JBBwhgAWwG/AxXuefMbP2P
	 ww2c9A6eKWmh5uZgtMQvcXXqju9iNAum6fgz+AffKixrky0drKf8vcl7eBUfPxb634
	 L+ouuf9phzGcRP/bfbGFGXA9SXGrJ662yJHP+2oBARWY0fqo4G0rvEDFHVnvRFMNYn
	 ypuP+Tc0L8sjVhRfSMT/1GyVPinApm0uz4i9SYGWAgZXbz0Q0BrwqOhhGc1SOlnKNX
	 9z71QRTME64kQ==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
Subject: Re: [PATCH 0/7] phy: phy-snps-eusb2: fixes and cleanups
Message-Id: <175000638017.1180927.7231066808038333033.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:23:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Fri, 23 May 2025 10:48:32 +0200, Johan Hovold wrote:
> Here are a couple of fixes and some related cleanups to the recently
> reworked and renamed phy-snps-eusb2 driver.
> 
> The clock and repeater imbalance fixes are not marked for stable as the
> first issue was introduced in the recent rework which is queued for
> 6.16-rc1.
> 
> [...]

Applied, thanks!

[1/7] phy: phy-snps-eusb2: fix clock imbalance on phy_exit()
      commit: 641fa5b515a6900b1452cc92d30d1ab391e04414
[2/7] phy: phy-snps-eusb2: fix repeater imbalance on phy_init() failure
      commit: 3232a6b0d834569f71aa898401288af6b4ab781d
[3/7] phy: phy-snps-eusb2: rename phy_init() clock error label
      commit: 4f333990841e06059c3cd7251791017d4c9e9028
[4/7] phy: phy-snps-eusb2: clean up error messages
      commit: b7996f8e9473cf8a594af1fa1bb799f8f28c0670
[5/7] phy: phy-snps-eusb2: fix optional phy lookup parameter
      commit: f21b9bea6bc29de88b885cecd5e4f0ada60d4700
[6/7] phy: phy-snps-eusb2: drop unnecessary loop index declarations
      commit: d2d0ae723ba3fca2c54dfbc758b368d3009e79a7
[7/7] phy: phy-snps-eusb2: clean up id table sentinel
      commit: 47311eaa0a3be575f7835d99e3767f5ee5940b45

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
