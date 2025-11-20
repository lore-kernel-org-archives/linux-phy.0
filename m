Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76194CF9C72
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLabhJHwraGu7A5idTs5RDV3hzlysZc2CpYznx8jMlQ=; b=FyROMrDPSzAaqp
	QqqnBvgLDYcxvclWDbcUoYU5vRB6Q9buJ2T+zhf5bbcy3bpZc5gDA2NT3zmzpeI25jj677w01ty3c
	wleHpxL2Bu1aL40LGQOHCMROPQl+JsGUn45NSZPjP3xUrRnt7aQjzmX0msFHAiT2XvV8GdLELVQF9
	jUnR7+kWNuxiKqtsRs3Yg86XCoTOeR3nTHAk1NayhJ5S9/7yBcVqR/YkDx38VasryHaC9JMFalt/Y
	OK9hX9yVy5dmqwt5TJ9P7O8FeJpko44+y9650i95ZZ1p5r1NuVkVv5gfzOzk0pfmI+i2joRatyQYL
	Dax8lRFikx0IPmsWXnNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CB-0000000748W-0t9F;
	Thu, 20 Nov 2025 17:11:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C8-0000000747C-49DD
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 65396601A2;
	Thu, 20 Nov 2025 17:11:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77512C116D0;
	Thu, 20 Nov 2025 17:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658704;
	bh=81mEL0swadpIT7Hv/NcLwxVrDCioPcum/sVlYlnkrCk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LwJHItmxjWZpJBn3ssR4oEXN6hk2AnphFn+Ksjb12U3qL/mhLRWSJHhR3cEjMGhv6
	 +WhZJ9HsEKgnqurWhmhxo6h5ubBPz9d2JZZr9qxnnL1IsPq3vypy7W2+oqKfMwL3+l
	 uWHS0EoykpzXEY1jopsN77IGF/loEqpJ4pWkdFvOCF3nNLEhkkuCFhwJqHzzknQG+o
	 1Fvo0R0mkyMyvVnAIndsIh+deaJDmF8i6ZIqi/Su/0semTbxiC0ikEPlOgWFQWWLkx
	 FGmyr/ta7Zk3EqOYQekWznJuW4icWkMEhmqc0M/U2xYUQve6me72oUSmuv+3fOuhwy
	 1LaIBLbWwOuqQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <a8807dafa87fcc3abcafd34a1895e4c722c39793.1758719985.git.geert+renesas@glider.be>
References: <a8807dafa87fcc3abcafd34a1895e4c722c39793.1758719985.git.geert+renesas@glider.be>
Subject: Re: [PATCH] phy: renesas: Remove unneeded semicolons
Message-Id: <176365870211.207696.162192602584477873.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:42 +0530
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


On Wed, 24 Sep 2025 15:20:31 +0200, Geert Uytterhoeven wrote:
> Semicolons after end of function braces are not needed, remove them.
> 
> 

Applied, thanks!

[1/1] phy: renesas: Remove unneeded semicolons
      commit: ec5814578e3c36289c4992c466ae297e0b799c18

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
