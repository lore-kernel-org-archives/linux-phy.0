Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0CDCFB446
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh2UQ+GvFvg3tCAI8Zf00ZRkF/pYKT9+OWVouV1KBoU=; b=a54Dhk76mpGZNT
	utrT4ck3+Ga70EYFTHpmkcsS3QbxmDY8TAsq8DS6qGkgy6FJALCRFE/e+RzVXky+QwipSfZSGmwuR
	qVlnKp2ZiSC3HYv80AdzWlQ5wxF03AfGH4GzBwrVe4wSg+ixYWI4f1B+RabmUH0qlgWDE20GoH5sW
	uBdnXmOv5BFWVnizW0Od8at0U6UpEQVjiCj8F9XEEMNZ443k9hLkuBDEDoSghRvdE+3E5qrXZJpgl
	yhBo4Jnldjbx3e3vzIU9+B62mVAYUPwZEXnckn0ZdC5DSTtqkbMejQKthz5Fesa/RMED2To4OMqkh
	LzEMtzY5/ZW1UvL1fAMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxq07-0000000322c-04eb;
	Mon, 07 Oct 2024 15:50:23 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyn-000000031gI-1gnW
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 15:49:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ECC1AA418B4;
	Mon,  7 Oct 2024 15:48:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05155C4CECC;
	Mon,  7 Oct 2024 15:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316140;
	bh=p5Xehmjy7mnH0JiCA6ugLDU31AUR2wdaC5vYbu696nw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lj/+nOq/mhJoO5W9psV6cPk58JfZ+f9mGQlw9fcKAx+45XF7M6c2jeMYDes6nkpfH
	 ruyeuGpTqqLwlvPQkiKaRnfz3fuJAXXbiCp4S/BXLCZXQHIWJvZ3ILUFA8RxICyk1+
	 25U5Pre44ZrmjkXNZRj6c53VUx+E4l0YwWhABABPiDMlpDIjl8Cm4i0gTQ/y/x6iZS
	 ao9ppKlkaU0FTVyBTwO05N5MvCqx2IZUAfnBjIcEl0FjIFNyO3ZV+USLJnWawq7dZk
	 Qf7X1ZxL2YCxd8IK7IQVbUphk2Lrdloo0rkgahzGvOsHoZKo4KF6jRNZQI7bSm7jM7
	 tZx2g1MPj/gOw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Josua Mayer <josua@solid-run.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241002-mvebu-utmi-phy-v4-1-83783dc89b9d@solid-run.com>
References: <20241002-mvebu-utmi-phy-v4-1-83783dc89b9d@solid-run.com>
Subject: Re: [PATCH v4] phy: mvebu-cp110-utmi: support swapping d+/d- lanes
 by dts property
Message-Id: <172831613865.134526.12073367410930720808.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:18:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084901_535766_E812BD1B 
X-CRM114-Status: UNSURE (   5.73  )
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


On Wed, 02 Oct 2024 17:04:40 +0300, Josua Mayer wrote:
> CP11x UTMI PHY supports swapping D+/D- signals via digital control
> register 1.
> 
> Add support for the "swap-dx-lanes" device-tree property, which lists
> the port-ids that should swap D+ and D-.
> The property is evaluated in probe and applied before power-on
> during mvebu_cp110_utmi_port_setup.
> 
> [...]

Applied, thanks!

[1/1] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by dts property
      commit: d6c496f05e98c6d25ac73f23fd0075913620de56

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
