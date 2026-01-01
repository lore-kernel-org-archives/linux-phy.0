Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF1CFEE57C5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2pmul50y2iYmHH+AjCv05gY58WqjIZJwYqB5rolG/0=; b=AADfAZRKZdGv2/
	fVfKRq2qxeNl8Bt2iDNnroWSrp94Vq9+2IwsztP6nZ/e+xmI4w7klEb0A3gLp0hLYgQPspXI4Ggts
	3VQnIHEosUQryomj5pr5iHqhuN3qihDPj4k296a3R/CHlxoG9Zu7fMHqrdrNSIy/Cz+/SmIIiWNAY
	F2wslqewBY8iYowDNFoCEzWeesS8d8v2SloTtKiactJetBUkoaU5ru1e6Bi3n6639sGGE0AavbjOm
	ZWtwny3LejKe4i2wjmpFIpG3FJmZkA1SpM8XGoDjnZVAHP0T5wH2J8SugjM2GS7t1U4bS94MacFbf
	FQzMibPuKmcb8cPkWKfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXP-00000006nxE-1r2D;
	Thu, 01 Jan 2026 11:08:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXO-00000006nwP-3Wob
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 169AB60008;
	Thu,  1 Jan 2026 11:08:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E89C4CEF7;
	Thu,  1 Jan 2026 11:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265693;
	bh=DIrTBlhGlKqjKq8gIq4zDuQ4NpbywDGZmvh+KkyVEfU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=q3LObSyWHSr037mtvgLnfAoTfburGkxndEFlc/RHBxsjb0MQU4XucRlMkTDtAdaGF
	 NKreWnxqlX2J9zFaAd1uXJ2xJZlwgmfaVu5edCrxW17geR2OT2IdMEP3SWKO5lBXgJ
	 gZsvwscgXHb4pkmbenTQOIvK3yUVBbYdA7XBPcNXpTroiG9fG/IjUVZ4pfE+I2gOkz
	 LAW/wqjzzpeIJYlOD1tzUJA+SsrLJltByy8w8URm5rsWgwcpV5w6mDffa8aNnIgvCJ
	 R7l6UZiN4eiS2wtDMjeMv69EHCkHvqmbrj9savB4ogjiShPJzmWHXExyfbIAwZEH/o
	 I/2p03piEik+g==
From: Vinod Koul <vkoul@kernel.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Cc: yunbolyu@smu.edu.sg, kexinsun@smail.nju.edu.cn, ratnadiraw@smu.edu.sg, 
 xutong.ma@inria.fr, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251230141050.93856-1-Julia.Lawall@inria.fr>
References: <20251230141050.93856-1-Julia.Lawall@inria.fr>
Subject: Re: [PATCH] phy: renesas: phy-rcar-gen2: fix typo in function name
 reference
Message-Id: <176726569055.201416.10909096861421617891.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:38:10 +0530
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


On Tue, 30 Dec 2025 15:10:50 +0100, Julia Lawall wrote:
> Replace cmpxcgh by cmpxchg.
> 
> 

Applied, thanks!

[1/1] phy: renesas: phy-rcar-gen2: fix typo in function name reference
      commit: 5068c09db5c9ccd47f531bd3ff7f9fe50400fa13

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
