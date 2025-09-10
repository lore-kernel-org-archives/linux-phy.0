Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D03CA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 16:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03j+kbEDsFGYVYk2/tZ9Y/i3HYoHaWdI1Pjj6Ft6GLs=; b=3LHhp0Ks+DsIX4
	vEkb6XbRbLk/lidcY1uVNKXqXVKDX0ukIoKfEKYhOXNcIB29hbxtrUpd3rjIORHVO+wlf6h4KfN/d
	HRjPDz1zJ0o9al+xIhKtlMa5qwRUKJOHXLqUj/+SE3fOZTh7lueE0nLfvpSK+sPH3R7JvqRj9PDhH
	OioReYNw4IDRJFF9aOkBYTCOjJY7X1oWVLnlMHwvQo8Pnd6qPcfJLzAtciH9ttvUZdiiUk6H65Ign
	YCDFRA8Oh7T4QOUM341Cvp10wU5kBqAguSVDSewIinPsNskrbCHmNypWuMrzThb6/BxqiN2t50Uhr
	b1S/N9yEDWnYMFnz823A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNyl-0000000Fb0m-21Pt;
	Wed, 10 Sep 2025 16:47:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNyj-0000000Fayn-0Km6
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 16:47:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AC33E44ABA;
	Wed, 10 Sep 2025 16:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4527FC4CEEB;
	Wed, 10 Sep 2025 16:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757522848;
	bh=Vtn84X32CANz54Mc66T5jFTvifZ9RbwAhO8sHt69ICg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=vHrJMIQaabwbFB5pu8LdZTDT0UsQuGEQmMmfYAxaznBf1rkuUoF+bIGJqd+eWU5Uc
	 l9imGigKjp2zRU6TdAdmqll2yEXJNfke7OboqxfH3mEEXwBMYJayalDObp4XAV0mPm
	 +aDDfuJkczib07AdrDoaPfaa9ehgiFo3zcXFZ8K8nKcZaVE8wQ62G0a4HVoq0TLoPs
	 orBOtlzDq0xdfq9+6JmWfqhN/BU2JsdBf+4fB3pYv4ajSipXfY/7BeEdejBgXcRsDj
	 xZ9gM22RwMwkdYvxHi+DOuI25BaZdK2U29b6m9Yf2dIATY786S7Z88GOSjG+VlU8EV
	 G4TSGFvnPKU6g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Michael Dege <michael.dege@renesas.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org
In-Reply-To: <20250703-renesas-serdes-update-v4-0-1db5629cac2b@renesas.com>
References: <20250703-renesas-serdes-update-v4-0-1db5629cac2b@renesas.com>
Subject: Re: [PATCH v4 0/2] phy: renesas: r8a779f0-ether-serdes: driver
 enhancement
Message-Id: <175752284587.484319.14293466138559863532.b4-ty@kernel.org>
Date: Wed, 10 Sep 2025 22:17:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_094729_142778_E724304D 
X-CRM114-Status: UNSURE (   6.69  )
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


On Thu, 03 Jul 2025 13:07:22 +0200, Michael Dege wrote:
> This patch set adds the following to the r8a779f0-ether-serdes driver:
> 
>  * USXGMII mode support for 2.5GBit/s ethernet Phys
>  * A new configuration step suggested by the latest R-Car S4-8 users
>    manual V. 1.20.
> 
> Changes in v4:
> - Fixed email threading
> - Link to v3: https://lore.kernel.org/r/20250528-renesas-serdes-update-v3-0-8413fcd70dba@renesas.com
> 
> [...]

Applied, thanks!

[1/2] phy: renesas: r8a779f0-ether-serdes: add USXGMII mode
      commit: d337c557581eeb008a06d66ad72152e871967fa5
[2/2] phy: renesas: r8a779f0-ether-serdes: add new step added to latest datasheet
      commit: e4a8db93b5ec9bca1cc66b295544899e3afd5e86

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
