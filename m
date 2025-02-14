Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D110FC021A6
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 13:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LT4KxjloGZGT7yoaSabwIIZNkTRjN3hig437fGz0SNg=; b=AK/iG+muTmDmdc
	CiWUInD6DJsvDyY4ht87+qJDkvOnWe3lB/hLZeE5TrT7qOSQerVlZXlwtqITP83JFX/KV//dO/KVq
	ayKJnY4Yt27Mon7Chab9fm0tMKWWqPuNfW/lLwBietMJesHW83Z/UNsu8B/AInAL4Zrpmga0iVc2X
	gWoJRAEwQO296HKp8EhX9Q0KMMB6PsvDGYYzPlhmMuk9ncLk35gWv6NkgjXUuIpD70OJ0jhsyoxUm
	YGPdqxO9+CiAX0ykIPi2XVnwfxI1mkh3bLTOLwjc+GJ66AgWLK0fnH1wSfpEsP5MfMWvw6BQr542L
	/r9Rf8mknpXFtCEvR3bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tivlM-0000000F16L-2UVF;
	Fri, 14 Feb 2025 13:29:48 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tivZl-0000000Ey9m-3KPd
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 13:17:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DB834A42A72;
	Fri, 14 Feb 2025 13:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B2E8C4CEDF;
	Fri, 14 Feb 2025 13:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739539068;
	bh=Xrz6HHKDtLLsT/YWrF32+M81jYfehMVmbpteFdyfJ8U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Gm/IQjivPxeNPqDWqWqHl7BcseR+N7jrGmv03SMZaRo2vFfKKyelU9h4EOaZrO+mo
	 MQquoIgk8MNOe83dXq2oFTe0dgWOfYuBdTzojC9ZBD5zi2lttgXb3re2GLPCKY7Y2z
	 3H1ZOljLALSwik58BweP2dLQL0v/WLUgN46Cy8PuGQfAERZMGaqoKgi9ZeQ4/Ty97l
	 KChht7op0RNm23GteFDp4brt1Jqba+Aa3zwgO2Qh5sBHi4B6wDQpymPvTqsWbXHtil
	 he3wPNt16g8VOkT8vRPTTcJ6zoC2cxgCJTLDkMO1XPVQt3rnPNHWZeYP1W/V0OdrNN
	 j3Xg2fcQ7CNbQ==
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
Subject: Re: (subset) [PATCH v3 0/3] LAN966x PCIe endpoint cleanups
Message-Id: <173953906507.3648.11168442623966598761.b4-ty@kernel.org>
Date: Fri, 14 Feb 2025 18:47:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_051749_898139_0775813A 
X-CRM114-Status: UNSURE (   7.96  )
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


On Mon, 20 Jan 2025 15:35:00 +0100, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series contains various cleanups related to the recent
> addition of LAN966x PCIe endpoint support.  They can be applied
> independently.
> 
> Changes compared to v2[1]:
>   - Add Acked-by,
>   - Fix references to bogus MFD_LAN966X_PCI symbol.
> 
> [...]

Applied, thanks!

[3/3] phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 || MCHP_LAN966X_PCI
      commit: 7dff18535b93ea1ce6dbaf36b7ae670f04113d08

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
