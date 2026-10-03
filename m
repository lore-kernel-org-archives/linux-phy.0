Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AAFCA5FED
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 15:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8HjC3Y/U1P/ETx+jg6b7kExYx0nb1RGbe/XgfJNgGY=; b=hgdElJoHQHqwAm
	RwSeaVyy9IBtbhQZ+6RY3GVtyUb3CF2aFpxa3VByM9wwz/hX+7sYjIxtcflJv4Rn80QfmyPRMrreU
	8wSrfs9BnjGZkWACo/HaNnix9lPYLygEkpRz2quL0t6+GkeG0ubiX0ZbG55S5KMLCKBglmzbm/8jM
	fORxHsJBJl980g+tWVg6y21+jF3nITGUIdYkGMrE9DmTQwREF20ZIHYfkkK89P2ZZE4KNcuL7zQAy
	48jmBbq22YGucjF/Q+UyEOSsGGZ2uFVx50nKZeoKtV7xRxjpzBKADhQmv7NQIwWRfDtAZGzRbXQOk
	GsiUgbRRFRuR+ltBDz2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c6-0000000Dgb9-2x7e;
	Sat, 03 Oct 2026 15:25:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c5-0000000DgZD-16Q8
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 15:25:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B1D8960DA7;
	Sat,  3 Oct 2026 15:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2160B1F0089C;
	Sat,  3 Oct 2026 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791041124;
	bh=Bwb0uQvjF5uOv/mdqqLowm/S3PGsxAPSbHv05csY3hQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RijQrBJUFx3FnIsikmoyrSHdF8f5DD698drgXSSHZnVsiJFCiYREfBWRQC6L+buSg
	 9BB1ibxHFOknW1KXzOTK8WZB06tYVIuKyzDM5m7g4yYBQdfjgssXA8SmuK4Rkb2ygS
	 38SQKDA2SRsQiV+hMqJzI55kwEWdHnypYw2nJJYLZ8z2MjIx/96MZ4mr+dfQp3eKKt
	 4Xi4a+mkVwf06VcQ2O8b6jYfISlQNWgKkwpjNQddHCI8Ph7P9k/IpvAdizeRKVRn6v
	 y/fYh42PXXLsNPaI4Dwu9Dbjs1KYh3luxxMMuFVN3QOvN49J69RzCZt8QnujZleUCk
	 9+Xl1+WBBPcRw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Hemanth Selam <hemanth.selam@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260907062518.12810-1-hemanth.selam@gmail.com>
References: <20260907062518.12810-1-hemanth.selam@gmail.com>
Subject: Re: [PATCH] phy: fix typos in comments
Message-Id: <179104112277.223537.1284926343224482532.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 17:25:22 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 07 Sep 2026 11:55:18 +0530, Hemanth Selam wrote:
> Fix typos in comments, reported by scripts/checkpatch.pl using the
> misspelling list in scripts/spelling.txt.  Only touches comments, no code
> changes.
> 
> 

Applied, thanks!

[1/1] phy: fix typos in comments
      commit: f1d07d242b4c25a259276cc2b136f49c68ee71ab

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
