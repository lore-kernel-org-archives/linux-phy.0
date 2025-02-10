Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF8C0C021A1
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 17:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19SZBzYzvmkJTTsDNcD/W1qT1TGh+NL63P2ijDlIcoo=; b=ze5Vj1D3qMXoc2
	nDNwtuhGbGUiUn6ax6CbzjV6oMh3odAbBMl+NYA3m16SFgdGcLIFEwl0CIZ9EidqUiqjZQ/ssOdQF
	Q66cjG0/wmZWTT7EQZtOkFEbbxf6DqKKFj57m4rny4SFeFQKEg0wnTR/KqbNXzJbBJtVtcE6mabaz
	/N/zeA+wIHGQPXAzyPNBFf4DCWGXuen7h8ubf34nDFBksNLGOOCjhqklHlHB1Dv9WZH7Y2mjtjJbr
	uafgwV5JaJz6qkvUzdhpOO0w0+1TxfMGL9CTzh1HedZItc61/LuDCmZ4S2bvqwuhEB7c6TxJLTEji
	rnBeNQTK+ebt1aRwyjbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXlJ-00000000lGJ-21ZC;
	Mon, 10 Feb 2025 17:40:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXTD-00000000hTz-1IPt
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 17:21:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0426EA41C25;
	Mon, 10 Feb 2025 17:19:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BEC6C4CEE5;
	Mon, 10 Feb 2025 17:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208078;
	bh=4dfjPhPpwR3tUG3LV/LuaU/Rp/qJ4AK81d8QI0QBwJo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DH6Zbwwo9rIA6asG82bQ7YALq4p8NbT/a4sRQZnAM5sGqJFAs9cpiJ9i1BDG1ah7k
	 ufr1tXUPnGsN4o7OTiiVo07KkyhDZveBR5ASw9yENdACh9RTx7z0PFtGldTgCUmr1d
	 vmRUAWg6cA3w3NaeyAnmDow48R8J3shmM1iIDV8YfhzkAx72kNMZGH0E8sUk9Jvsn+
	 StF2YO8/s5pgKmJwQJuT7eujtnaERrzknEMeCbolJlE8Uu/Us8Z89xXQZMTu9h7a7V
	 L5g6arvl26eL37/gyiQKfi8hSLy8cc1WxFBlRY0ldIMmCwt3R7ZrofVtvfDq6FRx0A
	 0ixmpZRSbGDTA==
From: Vinod Koul <vkoul@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250203185421.3383805-2-robh@kernel.org>
References: <20250203185421.3383805-2-robh@kernel.org>
Subject: Re: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states"
 property presence check
Message-Id: <173920807568.103786.8838731795889395787.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:51:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092119_428956_688F6FDE 
X-CRM114-Status: UNSURE (   5.52  )
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


On Mon, 03 Feb 2025 12:54:21 -0600, Rob Herring (Arm) wrote:
> It doesn't matter whether "mux-states" is not present or there is some
> other issue parsing it causing an error. Drop the presence check and
> rework the error handling to ignore anything other than deferred probe.
> 
> 

Applied, thanks!

[1/1] phy: can-transceiver: Drop unnecessary "mux-states" property presence check
      commit: d02dfd4ceb2e9f34caaaaf87105267e2f722f443

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
