Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16151CEE343
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mkc1AesGzh1iafAUYz1b8zVjUoGwsB8jrmds4CTy5yI=; b=akGAaC2i6xwkfD
	EY49ys478hE8xxjD/8eaCbPZWBg0CTyz1MQAwVudT5lEJbMXr7e/91GB3QRj5MSCFDwrmumVcvDIC
	tPxwnZ5FwWY9jK4s9Zv3VvEXNIzJlin5vK0M7rO/x4MvEUsrSasKYilKn+UuYmswC1ueHEZuPpeX5
	+oG1XMUrZo264S/ffwq1akHZUXURoWLNjZ5bI20qeaKfPnnI7e1SL7n4fTWLaGt3t9B+rOUc236bW
	tnvwcZNtuFWld/w+MItVhC90s71hJZfrKVroHkt8ZqkXfwWB0az0lH8QnqT8sbqH7TF8QS1V/pglh
	wsLRELWSLPJb3eEuzd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLZ-00000000qVD-2sMG;
	Tue, 18 Nov 2025 17:18:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLY-00000000qUP-3wTy
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 17:18:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EC8C61108;
	Tue, 18 Nov 2025 17:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FB6FC2BCB1;
	Tue, 18 Nov 2025 17:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763486307;
	bh=kNNPtMGh+bMjabzibNEHON5AwQKYfiW3/HMQS1nmqFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=s54LzJ8oCwmh+oVExm+1YC3vQGHweXjYR87PxPQE5jffbmjzf1XZicoWOs4vcaD/a
	 2TvH4453Q21vf1Jm5uXxsJyH/LFQSESGmR91wRLDZGabhaxKYKZ/YB7VYyOwbV9ew1
	 Ga+r5EK1zm+sNbojFPBpquB9TZrpY+7DOQl50huf5FBw6TXhlQGcEDxUFh0C2oNMoG
	 ep3YGHzWlOwNoPYmUzpNkWKMCQBU0ogqqtSP2v25aiMmxhjt2gVIGmvUzSh1KtSXN+
	 U9V7J1fDDVX9KLLplzbdYgcVO7onoL7JX5TDFNGtIr9nWHE5kQt6rgLTUQa1hbfUr6
	 EwDoJuEsetndg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251117103422.4041040-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251117103422.4041040-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH] phy: core: Remove extra space after '='
Message-Id: <176348630606.62598.7063456477483942304.b4-ty@kernel.org>
Date: Tue, 18 Nov 2025 22:48:26 +0530
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


On Mon, 17 Nov 2025 12:34:22 +0200, Claudiu wrote:
> Remove extra space after '=' to comply with coding style.
> 
> 

Applied, thanks!

[1/1] phy: core: Remove extra space after '='
      commit: 54760125b026f25d329158ffb5f5569c8efcea93

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
