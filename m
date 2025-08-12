Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 945C3CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhEd7/mxg00ZbQQ9vvWxx4O+8HUYvXQBhDzUdWR/cBQ=; b=3xhP83R90n63EG
	aK6EwGoJWY1nG57dTVkwwfWHLf4ut7MCdkLS6VyzWqoE58mkMXhhhe8PKbMwcQKo1OX2OJwKALAdL
	mi4peiBCWERdva34MJZKWy1m7zC/x7d/jesgcTpYeHI8YIp970M3kV5t4r6ubLk9ThWDlCbKtOGpM
	zJRkXA8nV9z6ZD88bsPm+au2bJKYFkHM33IKqEcsWW199yrFr73K8HG7WLgdDnk/9yjMqs6hf4KJC
	RkuY/9+cE7RtqBCjv1uLNc4ROMN3/YKji/iCL6qcR6JxhB1+9gFWBx4ge2Tea/AgFyI/iCkrej5j/
	9neEpFurMaReVEIpJB/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc6-0000000Bp7N-10vs;
	Tue, 12 Aug 2025 19:24:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4C-0000000BSAl-1gML
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:41:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D0BFD601F2
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 16:41:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51301C4CEF1;
	Tue, 12 Aug 2025 16:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016899;
	bh=dE2xwVe5G7Nhj4rDbrWqeDO5E+f+C3chdUySaONj5vE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BFemb9PqKS6hs7DNmeDiUOnWy/C7lXLfpJ2MKVCYqtDeoaFCZRR6FASWvd11SStiz
	 nB4WKHeEDobaFXbz7ebALS1mswyyctTyqe3BCiwFPSZ6ptKLmTPdUikyeL2S8yGHtr
	 Qrh24hBI6FpcpohRrQ0FjPirLgkyScVeyIPoia9pfQZOKoDCpSCpF1hNVbzLFWmku7
	 NXhb9QCMb8vBpltcMgYOiQw+nnx57ZieRWqOvefs1y9ws7EDIVof9mwBoV9DDLkacj
	 G5zjqXxeHaLUzXw0nRsmowPulADXVyXcuybX6ji3TiOsMK4E0D6pNxwaT348EgNR5a
	 gLGqiWHm8xOvg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250724131623.2662-1-johan@kernel.org>
References: <20250724131623.2662-1-johan@kernel.org>
Subject: Re: [PATCH] phy: ti: omap-usb2: enable compile testing
Message-Id: <175501689789.633310.16803003001477331009.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:37 +0530
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


On Thu, 24 Jul 2025 15:16:23 +0200, Johan Hovold wrote:
> Nothing seems to prevent the driver from being built on non-TI platforms
> so enable compile testing for wider build coverage.
> 
> 

Applied, thanks!

[1/1] phy: ti: omap-usb2: enable compile testing
      commit: 8343cfb636261f36796fde0e79a858422eeb0207

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
