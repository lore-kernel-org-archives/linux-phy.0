Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FAEC44532
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 16:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3CvqAzF4LglPo0MPAr95nq5v0Xqdi+2lovPpeDT9/E=; b=bP3QGS9rH7WJcg
	lgE/ZJZC0zQAobUiCxlDi/28lvH2BFA6qEoG3kaUjTS5Wuicv7N3BuuFX5PMAz0z4slGR+uuaBbvp
	Iy5vJA65IoZC4fglQkXlfzUhh09lOFD0p5Xhw2mZJUw1mgTqyg2whHywS6BsH9Gy6G0gCR+jZWJ7J
	+QKMVKVYB+TKR9HV0AWk+wxvhHR+tlFcKKDN+fK9EWNmLIA1mJqF5mivzWvzqCHtBy3YAHeoI7X4c
	OzMKffidPpdYcujZyd1mUyh7oZdGhD83QM+br52VmLabf2tvEvKjJf5O2OjPAd91rxfcvWdNBnYTM
	9SfrqiB63nERreP76LUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZxq-0000000CMp5-1ZXW;
	Wed, 22 Jul 2026 16:38:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZxo-0000000CMog-0qF6;
	Wed, 22 Jul 2026 16:38:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 61F12600B0;
	Wed, 22 Jul 2026 16:38:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FADA1F000E9;
	Wed, 22 Jul 2026 16:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784738311;
	bh=xguxeJsRUnOMPr8O6uQMF5COxPhgnEd3/jFNolbL4Jc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ITUIa1qsKIqvMlIRz/ud4mBLV8GmOnS/3mgHzW8U0L1dOESNarlO3DXVTuya4tr4P
	 SKrmaxNoQFBKoWJOUqhBIkJPpLgQMrgu1pAdFavYEJoEAUvlNtZtsv75kpa56ciZZY
	 it6/yjU0407PL6ysChZCOg28z0GnF6rFrqu4DrFcNmEFuf30Q4YMCFsIIJYRQCTvBp
	 Hz+6LE4yr1X0WoURLzEzUlWXf3oIvsdoB7T6uTNAXPyHREXTD+kSyDef2/7Ha6nZV5
	 8/FPBPYJhsKJ7FkcR0512K5+IZUslI8tbzJf5kiDeTJ7xjTw6VamZxI5o27Gnx78Rn
	 ApjmWzq7TSg5w==
From: Vinod Koul <vkoul@kernel.org>
To: laurent.pinchart@ideasonboard.com, tomi.valkeinen@ideasonboard.com, 
 michal.simek@amd.com, Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260627162233.2803425-1-radhey.shyam.pandey@amd.com>
References: <20260627162233.2803425-1-radhey.shyam.pandey@amd.com>
Subject: Re: [PATCH] MAINTAINERS: Add Radhey Shyam Pandey as ZynqMP PHY
 maintainer
Message-Id: <178473830883.304548.16250078284958976521.b4-ty@kernel.org>
Date: Wed, 22 Jul 2026 22:08:28 +0530
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


On Sat, 27 Jun 2026 21:52:33 +0530, Radhey Shyam Pandey wrote:
> I am maintaining phy-zynqmp driver in xilinx tree and would like to
> maintain it in the mainline kernel as well. Hence adding myself as a
> maintainer.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: Add Radhey Shyam Pandey as ZynqMP PHY maintainer
      commit: 02f447eabd48a2e843147ca72b0626b6e6428940

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
