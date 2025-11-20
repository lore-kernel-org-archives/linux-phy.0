Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19101CF9C73
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8YDatzG/LNO16O1PzczTKJNoBTUI2fjd+dFGaAElQU=; b=0lilSpzfY9r/X9
	Dry5iz00LpE4V7FdLqFWb1uy3XRMn00jRv7JhivPaMMmhmCzgKneoHfWFGJA83AghJPw5LJWyukBO
	AO4T5IhMaA2/rErd5CehqzRM0p9DEuzYAYH1mOpjuCppIa6r87Lt3YRIRrtO+hpjjghfwAV8nSRWG
	K3x3XBnjssA0LY9ZmnLMKTenQUeyYfc0xOL5BuSA7jXDgkwLprLTHZIYcjSlmbXG7M43Ey7YGyp4N
	qzMOoXUPihST0es0XWoaUqQdSUTaKwm6ayeLGvNmWDDyJiPHBDAv0QaZ8USwKJ2dAy4IS/y+Dxy8a
	o4Rc90zkw3cd6qUJ1euA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bq-000000073yP-3ZLX;
	Thu, 20 Nov 2025 17:11:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bo-000000073vt-10dd
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E665E4423F;
	Thu, 20 Nov 2025 17:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AB1EC116C6;
	Thu, 20 Nov 2025 17:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658683;
	bh=OS/r0EpM0s5wxSFxcNk05ajk5qhEsvQksnkARUX8mc0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Zq3J5+evRCaPmxhDA42H5sjKUoSEnD0mw+9/fYrGHockn5O4LFP5vnREYCUS5lPQM
	 HcfDfPzfa8g/FO2vKwfZcWnl6GOvYbQ9AkSDAz7R2qXZXSGhZW+NT6GTLaPphxpv+b
	 TEQjHLa1UFSwUyEEcC5AD4uetQMiFs3bY6hGWFKJp4hnF/U5XH1qAUfB4YAQrKljUp
	 jktgcAMSeH5ZpQ02G/Tf7c5G++tuwBDzi8Ogy7I/Mr8Q62qbKYxWommAvrZg6NZZSP
	 jsCR8doZ5vMootrUZ3+2rrWWp3VvoobyQ1JsG5WLX9/TucVUukJuXvb4Zx0ZsC6uB4
	 tEj1HS5kJrJMw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, 
 =?utf-8?q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <20251017054537.6884-1-johan@kernel.org>
References: <20251017054537.6884-1-johan@kernel.org>
Subject: Re: [PATCH] phy: broadcom: bcm63xx-usbh: fix section mismatches
Message-Id: <176365868179.207696.17035169965635910169.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091124_309667_F85A1E79 
X-CRM114-Status: UNSURE (   4.26  )
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


On Fri, 17 Oct 2025 07:45:37 +0200, Johan Hovold wrote:
> Platform drivers can be probed after their init sections have been
> discarded (e.g. on probe deferral or manual rebind through sysfs) so the
> probe function and match table must not live in init.
> 
> 

Applied, thanks!

[1/1] phy: broadcom: bcm63xx-usbh: fix section mismatches
      commit: 356d1924b9a6bc2164ce2bf1fad147b0c37ae085

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
