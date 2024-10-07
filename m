Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 273F9CFB448
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1ZLz97HTOF1vVzV7P9DKaQ2hvUfxoTaRjVRlwPnOBU=; b=fUkn+0ZgR3Bepx
	NWa/PtM5btoIJMA01IfIeuXcZbEhDwTnW6rViysOY7KADEX9diuzPsWJqqfsXraX4g9L2Ti0nHorl
	Azc+zxEvvnia8724VmJgX/Tky+OShjm2Sa9OKNJmze361YWnWenBD6LVi+ImQHDXa58Y2QICOe9FB
	P7MEp2jdZZT8cPigBxIgRfbcv8l3tY+GQo0+rPoV90C7XoIvBjdmojIR4oB1eQ8941AB8jvafjtdo
	A7wT80jCF+6y25YjoT2FwDhTfjEZOdsuqS4RnN13zietjbCMvof5ceuz/UGFwBgMkvFHDoo4YHa6W
	bHvdZaNoNibE+UNVEFEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyl-000000031fj-3UUm;
	Mon, 07 Oct 2024 15:48:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyj-000000031e1-1Ao3
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 15:48:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AAC0DA418BC;
	Mon,  7 Oct 2024 15:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 810D1C4CEC7;
	Mon,  7 Oct 2024 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316135;
	bh=jtJ4cAo+3G5Xe9E7fqOUi4rinpMDDc7GDlhsd6jiJd4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=doX/BxVnn0XfGxRTn5PZtlsRSgX78t5XzT1er/VzG8qYGci90MHQ8z/xat9DSNkpW
	 7+x9Cnu+ZgkE0KZ7w7hMn693umZnqscd5Kcv7VhlyeDJhQZASr4aVsd7Gp5LkpGoi1
	 I4g6zrk8WBbonPPx2WaqkAymOYAdiUguHcyI37pcT1q70fDnFuAzqdbVTPO34ucYEE
	 jCtwOgjNe8VRAVXwywxv/M6ooEH8GxI+2ei/4nsj6vaRzMr9OvAQ+StRCzb1QprdbY
	 FPzubOnpGcuNwMLR+i8OVm3AJ+pbJvY+iddbWRmS+rxQZ2sNhr9/aP5L0fvf4Sn6hN
	 fxN8KRb0f3stg==
From: Vinod Koul <vkoul@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>, 
 Sam Edwards <cfsworks@gmail.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Sam Edwards <CFSworks@gmail.com>
In-Reply-To: <20241004034131.1363813-1-CFSworks@gmail.com>
References: <20241004034131.1363813-1-CFSworks@gmail.com>
Subject: Re: (subset) [PATCH v2 0/2] phy: usb: Broadcom BCM4908 USB init
 fixes
Message-Id: <172831613316.134526.5485203085922304367.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:18:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084857_431982_DFF60FE0 
X-CRM114-Status: UNSURE (   7.58  )
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


On Thu, 03 Oct 2024 20:41:29 -0700, Sam Edwards wrote:
> This is v2 of my previous patch [1] targeted at resolving a crash-on-boot on
> the BCM4908 family due to a missized table.
> 
> Changes v1->v2:
> - Florian requested this change be broken into an immediate bugfix (w/ the
>   'fixes' tag) and a second patch containing the coding change aimed at
>   preventing this problem from happening again
> 
> [...]

Applied, thanks!

[2/2] phy: usb: update Broadcom driver table to use designated initializers
      commit: d3712b35f3c694cb932f87194caafc714109ea08

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
