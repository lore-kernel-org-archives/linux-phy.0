Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03381C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 12:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSAnQwpOHKeJMuZ5pB4NlrkmeeqIFocuZSw8F2c4raM=; b=q5ulWyVb/I5n5k
	h8ZFucPgwyVmFOc4e7WZf8Mjo1UHy2nTIA9DCNyGigfhwI0eGt7Hz5AZQgGVMGgIH5QRLJovNzwYn
	TsNsy0Cs6dD075j7eHjs1b5NVTQrOJEI2QAVNim18RFtjT5I+izLBIGq8T3pxtT+Z13nP7IKLfjV3
	SnwJugfnPvE5lDVtm8REgCWGXz2vY+/jogop9rK5VLdQujwlNkVqpVXQ53A8UyUgKz7CGvRoM2daR
	G0mpsNqgq4+8ZBM6stG8j8WdMhWoW89q7d1xzqOVz/BATpdt45SsRtMyn9ahcnoJ9pV36qgzzS7Tc
	XUnP7K6DgKYbjBJZS60w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0NUV-00Cioy-Cu; Thu, 23 Dec 2021 12:46:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0NUJ-00CinL-Dj; Thu, 23 Dec 2021 12:46:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EC0B461E19;
 Thu, 23 Dec 2021 12:46:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63D0AC36AE9;
 Thu, 23 Dec 2021 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640263586;
 bh=NLkJd4huS6QSaYfeSeIMWzAylR/uQWfKDP6VJw3AnIo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iEuHmv5RxbM4z7Rr+g+rlWWT/ydYOvTS9Iiv50wg65QX02zQIGt0zIaWHNgQ5O9qh
 eLLeZMEh7C3UjH1B6WmG8gbFkKGqdfU7apHDcTiqpGUjFmfB0dBku8XqDh2HgM0Utv
 LBoew/6uD2wH7ooPh/VWdif84HeRyk4DxTzfL7S8e7wK0WyXpyEfJelBz3njoGpDfL
 rj/Wq3sk+Etx0+3AiczS2K02ZrPSlkyN11YXQCB53v/wNLT+HR/Plv80gk2FYvZEDO
 Nm4N+U8nh5OBFxDttRSYsuvexO+QeLiLzNhx4y2abOvvPtvUCUU2KieSgz9WRUsfxB
 GDv2s4dvVFHSw==
Date: Thu, 23 Dec 2021 18:16:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ryuta NAKANISHI <nakanishi.ryuta@socionext.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: uniphier-usb3ss: fix unintended writing zeros to
 PHY register
Message-ID: <YcRvnh8EJUm3itVl@matsya>
References: <1640150369-4134-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1640150369-4134-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_044627_521334_7B644512 
X-CRM114-Status: UNSURE (   7.26  )
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

On 22-12-21, 14:19, Kunihiko Hayashi wrote:
> From: Ryuta NAKANISHI <nakanishi.ryuta@socionext.com>
> 
> Similar to commit 4a90bbb478db ("phy: uniphier-pcie: Fix updating phy
> parameters"), in function uniphier_u3ssphy_set_param(), unintentionally
> write zeros to other fields when writing PHY registers.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
