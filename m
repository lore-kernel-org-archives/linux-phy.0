Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD4DC48291
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 07:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnlD5s5pXbgREKjFjwd6pERLyMrvqOTutDqcni+kagQ=; b=hA4vso7LqFjOkX
	bv1l1bO4nWunj56ff0rruihWt+9ARWbtPakEqQdkQDAUTgtM5Aa/Oj5aSBLRMNmUN4DCHAUZQwhPy
	lTcZcVHHLmQ5FXvYsRFR0oK2BMEjNrsGRfYtyCVuRcIJ1pth1UWMHjW1Bj/F1Y3Kl14Dio5S8ay0l
	r3qslScAhkVF//vv0+WZBA5LMnP2FRZn1kRNc0vO7GjBdcWL3CaEOc1k4Ldvep0xJ/+2fGFzp49cM
	Gjk7e70FAtykZhrD4SSn2eM0WIJL7RGHaLtm8ueAJJ1wR7/itZYEsQ1v+qrWzB7cklgqPPnhRrq6l
	DRK2o62HSY/TtMp2vpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWsxc-00000002Dvm-3c19;
	Mon, 05 Feb 2024 07:00:08 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWsxY-00000002Dso-32LY;
	Mon, 05 Feb 2024 07:00:06 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 3015060461;
	Mon,  5 Feb 2024 06:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707116398;
	bh=zt0C46DodJBw5mMiz+hdsd1ggKvdZL8FZ+OjMed37Rk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tH36ZgQuTy82CmmwbwrfaK6mcnilerxyth/pAfkT84LOG4s04CTqsIidYWsJCJTc1
	 apeqTj9Ms8UG356uohWBjDVKt31g8C9hKjXd7dhaVjMRHC3ertJwBG9ydwEbnNDt8e
	 CQhDuXlo0wPxJWJJd/UVIVCM/J0Tfktzoh6ampZMQQ9nv5xQRb1TblzH3KgH3RF5Ip
	 M9zqc2fCDXTlZz5Skz7zQs2Jo9X7tgWF6JXlp++gtHN6gZPY6N0Ae2TkQjZSqoYlHl
	 uGD7cs673Ujl6skOSecx0oIAZe6gCl8kskqZ5oA6cQj2GxY8GYx4dc+Pmezp51aRAF
	 Y4Wr2WQsVmz/A==
Date: Mon, 5 Feb 2024 08:58:48 +0200
From: Tony Lindgren <tony@atomide.com>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v2 01/15] gpio: pca953x: move suspend()/resume() to
 suspend_noirq()/resume_noirq()
Message-ID: <20240205065848.GC5185@atomide.com>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_230004_823132_78C5769C 
X-CRM114-Status: UNSURE (   7.22  )
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

* Thomas Richard <thomas.richard@bootlin.com> [240126 14:37]:
> Some IOs can be needed during suspend_noirq()/resume_noirq().
> So move suspend()/resume() to noirq.

Hmm so what happened to the earlier i2c transfer at noirq level comments
from me and Linus W here? It seems the cover letter mentions it but I
don't see the related changes in this patch?

Regards,

Tony

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
