Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E6FEC021A6
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 19:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2UCSOxN+ezdVtjfkRP+b415TzMxh4YW2p1rk7ziIhU=; b=C5T8UDuJ6fBim6
	6quSaHvCBv1X6E4J0UbFa0iV2WZ/pf8h78PdoFqEspMFeN/SvgUTQ5AuIWtv0cFPcGGkI4PB5PCsF
	HAn7Bj1UKqV8CQzB2tw0iR6/hw7u63aE0561cL+1f63fY/MwAQBVj/q2UytPbJ8OOvWODPxSKd5A4
	xNwjn8Dn55GYot9AOiiCRkPZgakrCHHyG9kW9QFeXFeDLpCJNouGNTMmrS/cM0snGJDE5gUz6EgPZ
	C+pOeUvMHTzag/Uf+4I5MBp7qjAn24LrzDrwEF/10AYOPcox8zdEQlrvTffl7yrsjh9lHQtcbI+0K
	zTeFYDKH5cep7NqDCI0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiehc-0000000CMkY-0FEP;
	Thu, 13 Feb 2025 19:16:48 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidlp-0000000CBp9-2Au5
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 18:17:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8736DA4286D;
	Thu, 13 Feb 2025 18:15:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2344CC4CEE5;
	Thu, 13 Feb 2025 18:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739470624;
	bh=OL4dYF305QXhH4qXKBx1QHuLXwMdLA2pA/wG6iulJos=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VGe7qyOtM0BKL/p/Nbjgjow1OHW4jD6ULOIjuBji1MLIqLvbTlV1mtX4MYBGEqkmG
	 Qp8uC1or2PGChwk5w8TqiXQnmpSpoFbODVNfWl23rhFH9Nh2StCo9+6TDjwYlbhpW8
	 zvMIvAWZA6/5I7Gd0dvL0vHxAwUqBTGmZhWIAE+ikDeplZBg6cCiqOWOGtQ+/RzAKC
	 QLeqE8RNkiINXSgjS28CrGrATGQlvykKG4l3WtQo5qkA479vviNBdnVWrwfH+UU9K0
	 BuJRV9e1ioFPoXM1E8bk9jAGDuJpL9ss+WXYmRZiaghUC/kaEDOocX9/j5nDTIqTIm
	 ZVEFCgPK0NLlw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org>
References: <20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org>
Subject: Re: [PATCH v2] phy: core: don't require set_mode() callback for
 phy_get_mode() to work
Message-Id: <173947062273.294083.8317890397960470675.b4-ty@kernel.org>
Date: Thu, 13 Feb 2025 23:47:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_101705_628867_BC9A0DD6 
X-CRM114-Status: UNSURE (   6.65  )
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


On Sun, 09 Feb 2025 14:31:45 +0200, Dmitry Baryshkov wrote:
> As reported by Damon Ding, the phy_get_mode() call doesn't work as
> expected unless the PHY driver has a .set_mode() call. This prompts PHY
> drivers to have empty stubs for .set_mode() for the sake of being able
> to get the mode.
> 
> Make .set_mode() callback truly optional and update PHY's mode even if
> it there is none.
> 
> [...]

Applied, thanks!

[1/1] phy: core: don't require set_mode() callback for phy_get_mode() to work
      commit: d58c04e305afbaa9dda7969151f06c4efe2c98b0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
