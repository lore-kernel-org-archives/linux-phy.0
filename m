Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B162CEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 11:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXGn1lBkerT8YMRMXuj0mToYRsOSfGOfrOgONSlGasQ=; b=uiUb8vgiHdo59v
	c7uVHb5Ii7hrwTzT8XOZwzNDCtAOgLSKvzeTm0m59mr/3GTOWGciIRSuph3s+pJRsalVsDMIowLFo
	ygF4QgLm8QCXFwj+zbSiyELcj8Fvi+dP5KeNWZTF9k0m59X5uj+BkYUCD9CsckW9io26ORmpZVtHH
	t5VOZvkNY+IS2LeXJIj9tRqFO1uK9JtGIHK2iRjyk9Jyn1VFHEmMjamj/KOpev7+HM9/9GH/xHy7z
	v7lpXgnvkNJKlNtJgC41OQrV/CnEf0TuKa6uBbjkMRz87nPRDcyzzpvBjAof8nXgJypWg2TMI89zO
	8lc1Qs1dLb1f+tW7U+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUq-00ElA3-19;
	Tue, 11 Jul 2023 11:25:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUn-00El9f-2k
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 11:25:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 384D46147F;
	Tue, 11 Jul 2023 11:25:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0153FC433C7;
	Tue, 11 Jul 2023 11:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074728;
	bh=xuuHCFiGencqlt/jeI+QVDlzvHHuWL4jp2TrresZywY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kPuXQOuClxu5R4yTiHCYZoQxGLkKT/g1Gg9kiM4wWNU5YQcBX1rHSrZoC1RIJ/24E
	 4QLtC+5XQczoL7EW2s2gyQ/uZVBLNqj0/lPRnif/7Ydbaegb29Tj1NSOvDKT+LwhLV
	 H3WdP6C9X0JZQkZ1OZm7tP6fvba5hCZbI3Dz0y1AloPO++q7Q9DyJ39YGmHc+j9Tvg
	 eG/gW9x9pT40ko9oKjpiCyBBhHBOVpJMJPLsDWNUKLqRFi3O+WsszJhlI36WdCo8Kj
	 Prbr6y9msImXGgr/sv17Mj8m177dMoPwZw2FQndrJDPjMMb2uXp/I7sE5YwV+1NS2b
	 s7KDXEazoMabA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Swapnil Jakhade <sjakhade@cadence.com>, Roger Quadros <rogerq@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marcin Wierzbicki <mawierzb@cisco.com>
Cc: xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com, 
 Bartosz Wawrzyniak <bwawrzyn@cisco.com>
In-Reply-To: <20230522172415.1668975-1-mawierzb@cisco.com>
References: <20230522172415.1668975-1-mawierzb@cisco.com>
Subject: Re: [PATCH v3] phy: cadence: Sierra: Add single link SGMII
 register configuration
Message-Id: <168907472460.198426.11430720798374263873.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 16:55:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_042529_926963_977590AA 
X-CRM114-Status: UNSURE (   5.33  )
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


On Mon, 22 May 2023 17:24:13 +0000, Marcin Wierzbicki wrote:
> Add single link SGMII register configuration for no SSC for
> cdns,sierra-phy-t0 compatibility string.
> The configuration is based on Sierra Programmer's Guide and
> validated in Cisco CrayAR SoC.
> 
> 

Applied, thanks!

[1/1] phy: cadence: Sierra: Add single link SGMII register configuration
      commit: 3e2744cf994493135491633e43cec8d453c71e1f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
