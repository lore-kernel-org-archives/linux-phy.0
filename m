Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09540CD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/ooFDKUt23Z/UI0J1tsjDC4OG9Q97QPVoF64u+WG3I=; b=UWwnvdKoHIQ6a3
	yb9lkTHrawVJy7Fn0fiCUC/ajTMiU+AQJyepOetj+yFP3XumSiVX3yfOgLwgYH3R9KB02tgGrUjVZ
	hHZNvWura6uNhdlXqrSySNarYC2p3G6jl3f1EgpvaTzzdp1ewi7C1RhpzcWTPa36ZK6Jlsc1ghaQE
	9Pwbn3rsoLr6bSmvwyLrurggT0vZrksj7sGqyx01GE49z++eOecMCm8tiX9ch3U77JcT9Xd1P8TVn
	8e1nPyMq2nDhXS9IqM5IoaDkc6vyeE9K0Ghmn7bpwr+kPZUybH8RMoRaByZvzsZZfUOPJorUs6bVP
	eNHW0V2MVYZNHM5uybzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3y-000000089jY-2MdB;
	Fri, 05 Apr 2024 17:09:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3u-000000089gT-0kXE;
	Fri, 05 Apr 2024 17:09:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B0D91618CC;
	Fri,  5 Apr 2024 17:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E99DC433F1;
	Fri,  5 Apr 2024 17:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336949;
	bh=vMESqORx/RA9w4d/QSXK1eOJoSKOP0cUct1lvNlW1F4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Vu6sAsBkgXNJbd8lq1II7NYJ9WhiuBjf3HWQGqCKHhmm3W0G1gxePoxaERv+VuRM5
	 aU9+7cLg9SB+z6f36HhOH/5Y+GzothUZ/wuSvUxbQFjdNhxJFVli4zDA8z/WKhDYIF
	 Cl1nide42Rbr704RhLJdyalaV9BcnX/zjx7YdH7olqGqGMFqsV0BxOTzX4hNb6gRju
	 F+husBsR6oAXCLdfcRkSbpLjjDHOPbqqOeDp+F6bE/FdcnDLlHfwN/m0k14jpaHH3a
	 DrzmNacmZD+dviVAdBemZ0SRZjPepVS2AX6FmtZ4ffhAQJkcl/aqnp23hFa8k9vSKE
	 /PBuyn8DqpP2Q==
From: Vinod Koul <vkoul@kernel.org>
To: rick.wertenbroek@heig-vd.ch, 
 Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
References: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
Subject: Re: [PATCH] phy: rockchip: Fix typo in function names
Message-Id: <171233694670.304553.7633655553349926405.b4-ty@kernel.org>
Date: Fri, 05 Apr 2024 22:39:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100910_294393_E3FE6F27 
X-CRM114-Status: UNSURE (   4.22  )
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


On Thu, 07 Mar 2024 10:53:18 +0100, Rick Wertenbroek wrote:
> Several functions had "rochchip" instead of "rockchip" in their name.
> Replace "rochchip" by "rockchip".
> 
> 

Applied, thanks!

[1/1] phy: rockchip: Fix typo in function names
      commit: 9b6bfad9070a95d19973be17177e5d9220cbbf1f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
