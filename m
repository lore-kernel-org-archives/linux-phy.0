Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BE9BE6FE24
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcDraw1pfhvx65Xz1iOqnAKNZ7IsaZUqJqhiC4pRG3Y=; b=4cAH6Pb8iMEGsl
	S29JhuZr9aJ7wZmernVrA0FATT4wCNJLgyQW+3+/QzV01TwbThcUX/ihBl73Jj9eeAMPYO1Cqu0jE
	YYsPSeahFY31NibvuV0WAL2d+4n9NOc7mrUfh0VBZJmyb1fcmOqeWtW4p0dnK5nOGPJ1wCehOsVzG
	PWQCpyC6rUaMCbQQVHE8MNDA2nGKvqUecftZ3/gcacR39iZA3v3hmIx59le6Oeh/Qmh3ap+G25ykF
	nYtJR5XxJa5Tl+qHsT2wkfoEr3PM5PxgchF7sxd0StKtW0ZrJIJxG9/+AgJsMLUNmmq+ojNDxTCXx
	emA9qkvmpnTthO0VxAqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gp-0000000Fphc-1KJc;
	Tue, 23 Dec 2025 17:34:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Go-0000000Fpgt-0VDL
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:34:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BB946013D;
	Tue, 23 Dec 2025 17:34:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA9F7C116B1;
	Tue, 23 Dec 2025 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511241;
	bh=Hk+bJmPYeR2MBcMwrql3q2wz2dX5vNKc0tgRJA5z4vU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AGLUj7tRxaE8kSwpYac5rZAK9gVeqdNwMP20nhvXC84gYQTCnOp5eeOr6hdV1r48K
	 56O7RrlUW4oQ1TyQAuOrTXRoVfi64lMy27W4YKgeJLgGxC0cVDoRMpbvuFkblnJQfx
	 ub3g2Wg06vTqAQy6wjq8CMmS6k1YNVLaZzmBRpWepxqp0nklQGuQNgOqE5skG0Ezg1
	 X4Fbov2krHSfhj1TUTHtmwiTBCm/6C/q8BsSIomrKoAj/W138dH/pQgJ1eobSlpCu4
	 9H2QTmdkEAHgTSz8ryyh8g7XI1QH8xJLeKQ7BScxHk5ng3IQEAppELB610Tn9h/Xrb
	 7S9179Gq+5KEA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, neil.armstrong@linaro.org, 
 Haotian Zhang <vulab@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251124105734.1027-1-vulab@iscas.ac.cn>
References: <20251124105734.1027-1-vulab@iscas.ac.cn>
Subject: Re: [PATCH v2] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable()
 errors
Message-Id: <176651123953.749296.6443352481052227479.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:59 +0530
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


On Mon, 24 Nov 2025 18:57:34 +0800, Haotian Zhang wrote:
> devm_pm_runtime_enable() can fail due to memory allocation. The current
> code ignores its return value after calling pm_runtime_set_active(),
> leaving the device in an inconsistent state if runtime PM initialization
> fails.
> 
> Check the return value of devm_pm_runtime_enable() and return on
> failure. Also move the declaration of 'ret' to the function scope
> to support this check.
> 
> [...]

Applied, thanks!

[1/1] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable() errors
      commit: 08aa19de72110df8ac10c9e67349dd884eeed41d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
