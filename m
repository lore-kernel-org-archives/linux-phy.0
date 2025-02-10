Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 591F4C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 17:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIZXxARDAKQoltr0am2j2nORC2r3NBdf0GySzf5fJjk=; b=QFCxMMeieKDIF+
	qqStEoul6fHgKCxEqp9leoM/AEFGOxWyElMI313r8PYDJV0CdkwiN3jvbj3LeUxsIX9q7FEtClMbC
	fY4MIHRL0VfWh0AjE1inM0hkiLCox3smVlQC7J/UnTtQf6ZIY77jYmCOY9Rp1odK4/ruSpJ1Iljse
	tmXo9T2R3niKbiBdeeE9cysebtKwEm+3BNEyZduwHadyiDy1R58WN0Oj22Dr6rrd3enbHFT6ihUSZ
	Xk8UfjOak9uAB/vTZUCGh6zzwwXosn75h/jgfFdcutfEBEf7zYwUUQNUWdeA3lfjlitcAWAUSZn/F
	PzJ5YMhIgVpZE5pa+vsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXjv-00000000l3Y-0Jxy;
	Mon, 10 Feb 2025 17:38:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXT1-00000000hP7-0FeI;
	Mon, 10 Feb 2025 17:21:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EA3CE5C5D34;
	Mon, 10 Feb 2025 17:20:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF717C4CEE5;
	Mon, 10 Feb 2025 17:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208066;
	bh=RMFU5GP39FFSVcqZoZvFhdL1KLNkmqLG2J7nHXa6xMY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tH6XojV9s+UfBiBEnH9I7otR7gB4HdR0bp9RO9MTROrdGlsjDOhzpDlB/mPw+WBY/
	 rvRqDLS3sMxirNQsjLfrM9bsHqgY9gnl2MaovP8VmGiTP/7tt6iijTcacL3qaKZgiX
	 6aGhstltDRzXSpk4pO9t+t2ZvloPN16d9h9zvi/B3uGuK/JFNwtN9Zvvb0q3nEiAnm
	 uMD7ikemWxQyAre448kmWWsZHAJA//fcHpjMQMzoecg/PWFpfwAKoyrykgGdEBaCCW
	 lAm+r+H8Msu/YLK0YkuUFgs8I8P6TZi2jiijLhO/SVMXXyhePLdkWwNVvSqDeCOYnS
	 GrShqsgHmWTpQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: cristian.ciocaltea@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de
In-Reply-To: <20241206103401.1780416-1-heiko@sntech.de>
References: <20241206103401.1780416-1-heiko@sntech.de>
Subject: Re: [PATCH 0/2] phy: phy-rockchip-samsung-hdptx: don't use
 of-alias
Message-Id: <173920806342.103786.14726518410674851410.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:51:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092107_154210_60B8A8DB 
X-CRM114-Status: UNSURE (   4.19  )
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


On Fri, 06 Dec 2024 11:33:59 +0100, Heiko Stuebner wrote:
> One nice comment addition and removal of of_alias usage for core
> device functionality.
> 
> Heiko Stuebner (2):
>   phy: phy-rockchip-samsung-hdptx: annotate regmap register-callback
>   phy: phy-rockchip-samsung-hdptx: Don't use dt aliases to determine
>     phy-id
> 
> [...]

Applied, thanks!

[1/2] phy: phy-rockchip-samsung-hdptx: annotate regmap register-callback
      commit: c8f7d65cac565cacf0420acf8b54c855dd7b4484
[2/2] phy: phy-rockchip-samsung-hdptx: Don't use dt aliases to determine phy-id
      commit: f08d1c08563846f9be79a4859e912c8795d690fd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
