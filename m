Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C4CCC71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNrTBOQfpNGCXp+FTsrj2gfNdcja4xdKleFVCI7I5+8=; b=OYI9CfedT2P7z2
	A3Oqr/xRqYCYFMKLDcZouQM2WEUUT8yFujdUqPTzR+yzEWUEa7aiqwypbnY/vMhxMRd98zApYgxRO
	ztd1AUXUxhGrcc2tgvxI4Z96Ll6b1x+oJ8U4ons2wSGSiRkbQX3tHQts8Ysu2WPHRwWreW9vd3SQr
	jbdqV2eCazIaukoGeVdQYQ5BcvZoUstQxHGYKnyFl+ED/qBdGs3QGtsD6T5FnGx7poeNCSDSUGbeu
	t1rvfqG4p84d7QkfMwfiW+5Pv4o5/OTTkl6RF9l0hm8bn5bKlBtlyF6zWta8JsjSgnC51wdUE05Bq
	j4k97Rcm3IBYxA67+D1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREai-00000005Eyn-4AwK;
	Mon, 16 Jun 2025 18:29:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRDgq-0000000585D-1aUe
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 17:32:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC3085C56F6;
	Mon, 16 Jun 2025 17:29:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5C44C4CEEA;
	Mon, 16 Jun 2025 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750095131;
	bh=HvJYCQ26zFqcISTyhNEbYWLh3eDft7d6STVfq6ldmS0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WDAPY2UY8cljpCnXUH0IrXdvKDI2Dd8HaCI3JsP3zKnWyXoZz9Fi9RFaj6njrd5W/
	 TniMdBf0fu1dzY9Jh2Cmcpe6CAz2/TvKpOFYwO+SDYUIvKddhTfJ+uofQl2SxG85pG
	 AoBMWbLCDLGXyAiA5H2/ImkxoRi8hwlwYk5i5XjMlCow27DqvBGhjvb4iUYema5o5h
	 wXPKTaBUr2a4ItzNw5he/B1JzkFXR1HDV9+JyW3v0qxruZHDcf6v3aXw7LoCSK91UV
	 vDLxLlsm4CFCP+nfu0plNao93qF/wsKdyGoIwZndj8Ud8JOQ07axK4FLGpoIHOA+zO
	 xmjkfWmxt0nRg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lubomir Rintel <lkundrak@v3.sk>, 
 Patrice Chotard <patrice.chotard@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250523085112.11287-1-johan+linaro@kernel.org>
References: <20250523085112.11287-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: drop probe registration printks
Message-Id: <175009512856.77433.17489306165089300644.b4-ty@kernel.org>
Date: Mon, 16 Jun 2025 23:02:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_103212_458120_E5A46393 
X-CRM114-Status: UNSURE (   4.33  )
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


On Fri, 23 May 2025 10:51:12 +0200, Johan Hovold wrote:
> Drivers should generally be quiet on successful probe, but this is not
> followed by some PHY drivers, for example:
> 
> 	snps-eusb2-hsphy 88e1000.phy: Registered Snps-eUSB2 phy
> 	qcom-eusb2-repeater c432000.spmi:pmic@7:phy@fd00: Registered Qcom-eUSB2 repeater
> 	qcom-eusb2-repeater c432000.spmi:pmic@a:phy@fd00: Registered Qcom-eUSB2 repeater
> 	qcom-eusb2-repeater c432000.spmi:pmic@b:phy@fd00: Registered Qcom-eUSB2 repeater
> 	snps-eusb2-hsphy fd3000.phy: Registered Snps-eUSB2 phy
> 	snps-eusb2-hsphy fd9000.phy: Registered Snps-eUSB2 phy
> 	snps-eusb2-hsphy fde000.phy: Registered Snps-eUSB2 phy
> 	snps-eusb2-hsphy 88e0000.phy: Registered Snps-eUSB2 phy
> 	snps-eusb2-hsphy 88e2000.phy: Registered Snps-eUSB2 phy
> 
> [...]

Applied, thanks!

[1/1] phy: drop probe registration printks
      commit: 95463cbb4fe6489921fb8c72890113dca54ce83f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
