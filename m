Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7265FE6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFwJxZoVf6XVtj1syK+0Sj7kLI959eiltFO7Vs5h0jU=; b=l2IzNFvOAuuDeu
	BIzu58SaZRLR0lYZdvfu7HDU7IUPxM44qQ5XaJuf3QKQ3mj8bfBwd47+CWKdOQg4y08C49xlCMBSM
	ihF6XobsVRLjGeR+O+duRzneeziEkZjQ0Dn1sROJsP6zHkOQum1SzUiRMwZihiVivphhKAFKvrkjs
	bco5B5kmbGUbljLIjlVbIwSnBmDBDktgPgJul4UQXvlvDm9SAAL5VSpIlnmVMSR0HHaLRwFeuYo/b
	PRoZRtfHYW1QQks3nyIfZ3UqIhAaIGRjrlg7fUjCEiC9GLcYDkNOkfB7MlCe9ocdeFxTJfbx1O33O
	mr28AO2ZxCxdxXP0mlXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RW-0000000Fr9w-0gjc;
	Tue, 23 Dec 2025 17:45:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RU-0000000Fr8A-1tR3
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:45:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6A93060155;
	Tue, 23 Dec 2025 17:45:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B394DC113D0;
	Tue, 23 Dec 2025 17:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511903;
	bh=yYLRuE+3aYL6fpy/GdMvQWTkVDpkXTEU2eQ9VALetjI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=b7trd0Q7eF1+Ej9lfdel6nHjoJKaYVmsceYMv+bOJwK24ZOXAhLk+v5mWuUXYiqGp
	 t0gVG88wFTKKAnZ+n/kB1G69Sc5/OBPalB+9FhkrFvApwinGfK9Oj2y0hFMfVBYRdO
	 mJj2MOIJhNWCr9WD95mB0bPVuvdUINBnxWbK/mfq3tdFDZNzbFp2WNZPpCKVvvk8Aa
	 +ypQt18Mz0GSXpdQ9acyTZyCl1XziYMKoO/Vn6Cd7tKe3Evfop0J5yUGu2VJgM3RmV
	 saAUkpS2UCxKTUqVWE0YlBe4Z9U1nucJ4mtSlnXwHRqSSUepYqo/eb9p4HclB56nd/
	 lTk1KRcFOWhdQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251216-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-v1-1-771d564db966@bootlin.com>
References: <20251216-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-v1-1-771d564db966@bootlin.com>
Subject: Re: [PATCH RESEND] phy: ti: phy-j721e-wiz: restore mux selection
 during resume
Message-Id: <176651190036.759340.6791774689693138877.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:15:00 +0530
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


On Tue, 16 Dec 2025 15:26:20 +0100, Thomas Richard (TI.com) wrote:
> While suspend and resume mux selection was getting lost. So save and
> restore these values in suspend and resume operations.
> 
> 

Applied, thanks!

[1/1] phy: ti: phy-j721e-wiz: restore mux selection during resume
      commit: 53f6240e88c9e8715e09fc19942f13450db4cb33

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
