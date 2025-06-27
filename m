Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6E6C7EE30
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJr1lWIdLincx8mg/zXqcxvjoWrqvzYyRaJ2JFO6abo=; b=kVOe/mABIKPi19
	YDikCCt6MR1SP1V/kXwFBnGKvSpEg0GHinLLI6yM+CMRvo9JX5YPKD3SmTlvHNmtEtQIwrW0hawEg
	TDFhlfX9S9Za1wMw7xHp2BjK6YPiBvPgdAnWvlzdsoWpYudkX4uy9RbeUR6km83tUPHaX/+iB9z3j
	LfHmKyyvOqLxFWTRsUXIhiV9qKAoeqJJDLD/8mhj1sgsqEcQmFNRtk78IaHdEFpmC2FxMC/vGm5ks
	laTxKqo8QnVP2mrGgYdHgwEQ136ekJrMOhvuw4p3ZsHe+ZAH5eSQQ6YyQgphpjDBxuLjJGW3wWcdJ
	Q7wTJlZDSc3YLHFT4VqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxLU-0000000DG1m-29lJ;
	Fri, 27 Jun 2025 00:53:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFD-0000000DEXV-2oQD
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 506F76111F;
	Fri, 27 Jun 2025 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B421BC4CEED;
	Fri, 27 Jun 2025 00:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985226;
	bh=hgeVknDOC/0zBF1/a5xJ9tCtK3wFHkbZAPTH1sx75Dg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=G73Nw3t83ZFM7Yc59Z15z979dAfVLGLng642E0ZsWHFjctl+bLIiBeI623MLDasLT
	 8bz+amtyntoCCeDDwJUDJ3wx0ftmEInKVSce90M/DGZ6sGH92/fSbKVwHf4Z6N6Vv8
	 mhU/BuWoEa/+uM5cBh930HisLc97kcs3h299T2SL4mMTsnlfft9hINYPtZa7F2PXpr
	 5yE7JVWu5lQBSx/YkR4CQeTz4MzRwj1iJyQOCCzcoMuS+zJiZmZjo1tlM5ZBJzKsh8
	 ogqW5FJzHR27hJgmwf3aak6VCGHc1ynBXyCiSZ2GBJ32QnG393coY8eXexl6W4Ae2u
	 AY2Smj0jiQ8Tw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <5b8e9b4f645bcac9d50059e513abba4db7e1aaea.1750771156.git.geert+renesas@glider.be>
References: <5b8e9b4f645bcac9d50059e513abba4db7e1aaea.1750771156.git.geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: phy: apm,xgene-phy: Remove trailing
 whitespace
Message-Id: <175098522563.106297.14885803182264962743.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:05 -0700
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


On Tue, 24 Jun 2025 15:22:29 +0200, Geert Uytterhoeven wrote:
> Remove trailing whitespace which hurts my eyes.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: apm,xgene-phy: Remove trailing whitespace
      commit: 05c6f31991300f1c0e5e80eb1f66a580b9b5ca5f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
