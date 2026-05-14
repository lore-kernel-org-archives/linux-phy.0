Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3434ACD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvDGAiOP9JViTybjYGm9fx86zQlmuGGhm2g6Fk7y2Bs=; b=VutFdHiNwNwbP3
	GalwhXgl8pHcbJxXN1dsYRTwuEg+Yr05BZIuM2jbvWaCEO79V+qxxn7ERKh9uruzEZEE3LuEsS4cB
	lYWxEDHuswgeYUA734FU0uuZ2FSvkGkotgv7JaMk2rHvsHwnCu+3LxegqwgR0h5BdLZiXa6sVLBFc
	KuEeGnOeWeuJDrIPqmM0wvOOAeQoTINRbXON7DsXqraXCBcyqlW9xuhzZe39T0TRWnnK1zfvEERau
	7sjALmxjIUSuEcYWD7BlohGdwuBq2ys6QPW+s+u9nnJ0Zf2eJri5bEhYE0r4JgDLUBTsM64YqcdWZ
	4C33mhcsRB6IOPQfG6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlD-000000061be-40ZV;
	Thu, 14 May 2026 16:18:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlC-000000061aV-2PlK
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 16:18:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D3CF16015B;
	Thu, 14 May 2026 16:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9EAC2BCB3;
	Thu, 14 May 2026 16:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775485;
	bh=/g4jFjZPiFSrClQIiaJoDlvUPxodjYT6LCU7ijnm8BM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LyBsB3EIWVZOr4P93gQNPAlllnr+FlO7i+5WUsP5PoxljT8j8A1jsceMHoeOQxLqQ
	 tF/JAWtAGNiIS+BzPapxpBI7x4dVkyIVxIjYMBQu46DcBd6hNkdixAlSTd2ODUzXVw
	 KENOMYjFVf0FXq8HJXesrVKt6FHUKFIZHJu5GQP70cy91lPP9eMdbUYy1hJegltRA/
	 NJVxDH+GUhXz76+ZH3KOmTzTIHhXmAlY/15fpxEZybIRp1X24bvMb5uyUtt70fAvTF
	 oMLvFjrD6Yn/rjOi/ft4G3JSmwdpzWLZMvGOW2o4zjwSibGBmKhhj4yAn+CLYpMPlI
	 hCHGKfV9xJF7A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Caleb James DeLisle <cjd@cjdns.fr>
Cc: naseefkm@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-mips@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260425173642.406089-1-cjd@cjdns.fr>
References: <20260425173642.406089-1-cjd@cjdns.fr>
Subject: Re: [PATCH v3 0/2] phy: econet: Add PCIe PHY driver for EcoNet
 SoCs
Message-Id: <177877548239.1092446.7962897182903086280.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:48:02 +0530
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


On Sat, 25 Apr 2026 17:36:40 +0000, Caleb James DeLisle wrote:
> I just added explicit includes per the recommendation of
> vladimiroltean/sashiko
> See https://sashiko.dev/#/patchset/20260404184918.2184070-1-cjd@cjdns.fr
> 
> Changes from v2:
> * Added includes per recommendation of vladimiroltean/sashiko
> * Rebased on commit 7080e32d3f09 ("Add linux-next specific files for 20260424")
> * v2: https://lore.kernel.org/linux-mips/20260404184918.2184070-1-cjd@cjdns.fr/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
      commit: 2cc066dbd3a211628b40967949cff2790d0f62eb
[2/2] phy: econet: Add PCIe PHY driver for EcoNet EN751221 and EN7528 SoCs.
      commit: da1af49257591190ad6521abb3198f1f40420407

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
