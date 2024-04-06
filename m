Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D31C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+aBxvO6owaIe3E3BN8AHNCV/Wt00WoZhE0zyK24rU8=; b=DgdQhhvTJeT4XY
	eOZsB+2BiJh74JYfFbpYme6vdM4fJOH7U1lbS+ONbEmv843VwCiy30imtCNYjaX26uYk9MfZdOUwk
	tMboFo8wYSh1fnOIK4KO0HuvTEGkU+rfGXTN7+ofn3vH7SAKW6WytFZGZVKFgDYZrJ8hUWGJ3DBuD
	A4QeWWpJuyvDp/+lieTvymCUjKt7Vo9TRDrIv0+Ok7wA7RBUzkEnXVfm1K1IY1FaN5AnAnVPlNnUF
	alXLgEJmegxEarU57AwJ2XKnZXt3kkyASqs4V3Ck4h1tIW8SD/spnB/c2H05u7g7GvdM8A68WSOFI
	NFp8/iGyNl5M2p0L55tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2D4-0000000A1qQ-2Ucj;
	Sat, 06 Apr 2024 09:19:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2D0-0000000A1nu-0Syk
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 09:19:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E529609FE;
	Sat,  6 Apr 2024 09:19:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A704C433F1;
	Sat,  6 Apr 2024 09:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395173;
	bh=TD60yYsSeKuKEn0H7kCBzjt2joQqvZ+9T1R4Avjktzw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hbmoL1MHGnXv4ia11ywmYLuNWHfsYJnBybcUwcq92tM3eonpaflABnd0s+cNv7zPN
	 WsS9O+i1/vitPpqz854yptlqRJsYBxK7JZq4V2u3A25q1i/5SC3F5aquEbdB0QinTS
	 yawmFXzh8scbn5IvcpSd3wMzolDdsgH2vYxbhttn3qPntOAk3wbsd4DnNyTz/tWY2T
	 pHwChp4vv+n7pAeYWcsRU2CQlOzH1FUjlZqHM55r2I8q/X8jFhLEDKNQ8tiys2kTy9
	 KR+aWuxcE8z2UtxJvdBUqLUwUbPO1B911+Y3gB3fzSHW+XP3ykF/XGF/4Z591xrGup
	 zqaVAmkDlYDbg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
References: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
Subject: Re: [PATCH] net: phy: core: make phy_class constant
Message-Id: <171239517126.352396.9441266148456614839.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:49:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021934_451769_132AB114 
X-CRM114-Status: UNSURE (   5.25  )
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


On Tue, 05 Mar 2024 15:18:51 -0300, Ricardo B. Marliere wrote:
> Since commit 43a7206b0963 ("driver core: class: make class_register() take
> a const *"), the driver core allows for struct class to be in read-only
> memory, so move the phy_class structure to be declared at build time
> placing it into read-only memory, instead of having to be dynamically
> allocated at boot time.
> 
> 
> [...]

Applied, thanks!

[1/1] net: phy: core: make phy_class constant
      commit: db704bf6dccc8fef77ee4a8326bf2013b828205b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
