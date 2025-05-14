Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05249C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i6aObXgUUqWD4pkh/piEi+sXDzFEF6hLMH01Q7oRwc=; b=KddwzqOMbMpcnp
	5X/7nvJ3JwGj+1u1jxQUWl6Kq+DFkMo6lw7XJMf1bgcc09U9SurhbCZl4XwTBYlZplB4zn/Ysak1K
	9nCW/hpoO0QixBBqUhhWPKRb5IRI/QSwJOAvwWZa5Iqj41gjDLB6qc/DRlDYP0MYNckc+2kkpfFJF
	uskzLbK91suD9IenGnoo2OzrJHtx56JR7LiFdHgZi9OKZFDFtjR971z+tD7bAfU1gW6204CBw7AFX
	CHYlbkHmiIID/ckPfexbrIf/+F/vJSzc7sYxwk5WO0V4WCi8yT533MEpdoYVj08aGUBtlVLfxcVHg
	r//eAwesRTpow/NaiETA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYO-0000000FI1w-35FP;
	Wed, 14 May 2025 13:53:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAKw-0000000Etyy-3C8w
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:31:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D83AC5C0FA1;
	Wed, 14 May 2025 11:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78FBC4CEE9;
	Wed, 14 May 2025 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222305;
	bh=moXEfyVKJ32fVWfovmj/8bS6KOq57MP09z5rxjmMVX0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qixUZ/btnbmPmcqUEjTUB1aGGbHP0fw1WlMEOyGzCLB/Wm6GRsRAXwRKQDz+/Bl7Z
	 d3EPn7DgzEyACOVoOkygkKfQNJq33Xz664noff2n+U2/qmYS5GcJxZ/sRwlZaPllfg
	 sdvPtCezMB3KH1qXYZT4r8VwElHpLOvISHxbSiaKcCnbgPQ4c5Yp6ZopMoBtb186JT
	 ECCGmLIA3S8o6jfNKC86FRuG3uGoV8fTb4T8xlyXKyG4N6AX2O/7R53h1ZIjJ1tBwO
	 58whQrAgmQPOq2BarQK75EwG/tOjU2I2GZ0ij2kbYHMByk0IdodedweyU9NdeYXaEl
	 RG3UkaTS0dy/w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Minda Chen <minda.chen@starfivetech.com>, 
 Hal Feng <hal.feng@starfivetech.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250422101244.51686-1-hal.feng@starfivetech.com>
References: <20250422101244.51686-1-hal.feng@starfivetech.com>
Subject: Re: [PATCH v1] phy: starfive: jh7110-usb: Fix USB 2.0 host
 occasional detection failure
Message-Id: <174722230439.74407.4949832120715878056.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:44 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043146_846525_06BA2467 
X-CRM114-Status: UNSURE (   4.63  )
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


On Tue, 22 Apr 2025 18:12:44 +0800, Hal Feng wrote:
> JH7110 USB 2.0 host fails to detect USB 2.0 devices occasionally. With a
> long time of debugging and testing, we found that setting Rx clock gating
> control signal to normal power consumption mode can solve this problem.
> 
> 

Applied, thanks!

[1/1] phy: starfive: jh7110-usb: Fix USB 2.0 host occasional detection failure
      commit: 3f097adb9b6c804636bcf8d01e0e7bc037bee0d3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
