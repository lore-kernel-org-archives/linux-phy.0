Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBBA8E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 12:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqY+GEXz8EWG5uQk5fKTVDC90yvTjVZX6pRvYSUTgNA=; b=uVgSFECvGeqRKM
	AWgeM9J2Ht6zCvvg1mEYOgW5ukyYJw1w+xgI5neh9O1dlcpggJDxtyyQzw+yJZsFHOoh1Dn93zJ0R
	4N5nWZox/XMGJKuDO7nK9b/JVTgZnublDWOpzPBPMsrrg+G0UOPuuGtmNX9fScVXdOkxMYR7YMour
	f8hNVAPbaNe79QdIEY4WYwQQbQ3pPu0ZdZP+CEy/EmSK5/iFiepX3L00o0YiMPo2iMcwL3h70NOU6
	nHv3iCz06/MCc7xgR1bv/tfpL+lXeA05XiIxAygh68RX0Bz5TzjZAcMzZqOCgewX7q/JqXmRhE3QQ
	yBNMkEP9LA4YG8QMIxvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ45M-0000000BxLT-2SLo;
	Tue, 24 Dec 2024 12:32:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ43N-0000000Bwzu-3hpy;
	Tue, 24 Dec 2024 12:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4dyEAv3A9O4YKkslfXjx3dtbBj+iHetygGQxkZZo12I=; b=f9IvIx1gExi2NQvCb7U8Rs0YB2
	KWLntdwOHLv1jDtsEFUF1ssTNIYv69SNjpIhp9OYNrH2H2U1/Q5nenWJCXXmqSsUDdILbzm56/nqB
	kTTUZf6Cq7JtkORvZHwjsy98MNy20iZEbd9YrKvQmnZzdjhubqse6PgmH86k4ZkmJ5/1mSiwxgneS
	tZzfbDJoeQDq3aHoYib5DN37We8m+BmuxtwMva/AC2IAMnAU/nKvKDrudosJBvJuCPYogjJozaj42
	eNaZUUqLXvDTHKdTQ2/Dd2n6OajxGga2mVQbeac1NMGO9Yf+TPhYih8BX7pU+CYAiwiFns2BDlMet
	TjlGBROg==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQ43I-0001Ap-VH; Tue, 24 Dec 2024 13:30:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: Add rk3562 naneng-combophy
 compatible
Date: Tue, 24 Dec 2024 13:30:20 +0100
Message-ID: <4353493.mogB4TqSGs@diego>
In-Reply-To: <20241224094217.3817100-1-kever.yang@rock-chips.com>
References: <20241224094217.3817100-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_043025_968088_A7E9B707 
X-CRM114-Status: UNSURE (   8.33  )
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

Am Dienstag, 24. Dezember 2024, 10:42:15 CET schrieb Kever Yang:
> rk3562 use the same Naneng Combo Phy driver as rk3568.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
