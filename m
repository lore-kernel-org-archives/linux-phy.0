Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D778C0015E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 13:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs71YAJKISUNhYJVHo49oIGR39cE8KRbFJVs8tJkPl8=; b=XFDylankQBO6wk
	WbuU5k9td0uvJd680Lfa2k4GvCktQatB+NSgDnaof18AsrhlD/dPXVLImDegxtrbF8+iLMFLAE4wM
	L10jiQfpz5ugC2bWygAGBqkJWjBb7bG/7gHE5HS/HC46ks1rCKjVXlNj3FQC1q+arL0E10gOvVCOl
	8F/PltBEJnfyuV1KuI+dgEctN0+qypWOh8XJ4JPeyjFnriBLcQDj8kMlfCbKywMKMAtXfztGKUUW5
	Hnxm1f7cXkbYVcULw2gY8+LJXkHFjaGWL09q55jOyQ7oCl8c6LeY9eA6ABLneX0RBwwgneBNx+DOD
	H6yZCjrs9eWy8s7wv+Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOejm-00AZSH-0C;
	Wed, 26 Jul 2023 13:39:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOejj-00AZRg-1g
	for linux-phy@lists.infradead.org;
	Wed, 26 Jul 2023 13:39:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0971C61AA9;
	Wed, 26 Jul 2023 13:39:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B370C433C8;
	Wed, 26 Jul 2023 13:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690378770;
	bh=6GBJtmUypkdS/Ca5ddXll226wYiHkTQifYI+0BRaeao=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=poX8rfcmEq3YT6H6OcTJPN8qCKy+aiR+yKfH95wry/bDsmiFZy0MoydfV7ZBBjOsQ
	 VD0Y3ztk1KMnkyzUT9C+jG/D/AZCwyMFhWGcPscbw7hFDXIcTLS7A3dIuG6eoS0Ch3
	 KVfeef05K5Cu49DsKK5VUV9+KEWIxrd5sYo1r36tto6sLv5twIeoN3WJO+GAYuXqFL
	 ObR+vtKB/sr76q3dpV0jdui/e/p2ZCf2VE0lHQS8nmYJjr6P4wdQpw0zvD1kVaKKM+
	 2ReULNXvdJ31LXTARMds7U24XHYGFIbygGPmlWUPgipEezM72VC2qbg5jZxyVPAHlu
	 G4qdEXKjR7gLg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Minda Chen <minda.chen@starfivetech.com>, Roger Quadros <rogerq@kernel.org>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <12097f6107a18e2f7cfb80f47ac7b27808e062c4.1690300076.git.geert+renesas@glider.be>
References: <12097f6107a18e2f7cfb80f47ac7b27808e062c4.1690300076.git.geert+renesas@glider.be>
Subject: Re: [PATCH] phy: starfive: StarFive PHYs should depend on
 ARCH_STARFIVE
Message-Id: <169037876811.26143.7183354703555625191.b4-ty@kernel.org>
Date: Wed, 26 Jul 2023 19:09:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_063931_600203_52DE0478 
X-CRM114-Status: UNSURE (   6.51  )
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


On Tue, 25 Jul 2023 17:49:27 +0200, Geert Uytterhoeven wrote:
> The various StarFive PHYs are only present on StarFive SoCs.  Hence add
> a dependency on ARCH_STARFIVE, to prevent asking the user about these
> drivers when configuring a kernel without StarFive SoC support.
> 
> 

Applied, thanks!

[1/1] phy: starfive: StarFive PHYs should depend on ARCH_STARFIVE
      commit: e7379477f4478c290be47cde3ad8a39d5ff561d2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
