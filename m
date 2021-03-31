Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5F77C433DB
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75EF061962
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 75EF061962
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ykSKit8PSRvsFpn0TnlBbdUWeDhxT14+Nej7thwEU8A=; b=C+meOQ42ADfdLhTPL9Fugzd28
	Kw4kJlvA9cLrbNbi65MqFhI5zneCwN+vdvBRbWTX78nbKF/JQMnA2wWj2z5eiLvqdZFp6N4w1v21w
	NSA4HbYQ3WhdSUW6UchBGiuagjcp+zoYEhgiWq5Sgfvt1weh9lnAG34tDjNi65tuKod8Ci0jkeRKl
	fHtU0kCBpOFLx8N0NVvc+pC7fTFlZDvzacI6O35vm0jtZJyTC5ihhDiPQbx+DPoc4ypmvOloTK5XG
	KrS04UX72vf9valfnWKQIStjKShC2TvvbwUsxBX5Y0ETlK27ldV66pjp8G39Di3ahyyD/CHUcdzXO
	i7dOG0KJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRYsP-006QQg-IV; Wed, 31 Mar 2021 11:19:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRYqF-006POm-QF
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 11:17:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B294D6195D;
 Wed, 31 Mar 2021 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617189413;
 bh=Fg1HIGN3CeImTBjCARQjOr8UdmTKiuMeaC+WX9KUH3c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QFacM2dyeASt+7G6DMjt9PCZ+5Uj8BCOdooiIW1caeOK7mqyl2DBvAAHunixct4hv
 BaC5Xu/ChiqfF9rBm/5y8orSCXLaUztAdVo446IlKI17PVqTwx+cz8Lz0T2KcJlnbA
 JLf8LY4YLP0IRCnI70bKi6RgjNmj5YBSvIOVZhmThyclNt9SpfahwPynxzUA93wqOH
 oycvZoE5zBMJB9sgSgTIBgqKS2S78FxfW+SBi0V4RKZAUxYDEQC93Mx2KhKyekp0Mk
 n9vG9cSkoWBLbWugXoP0NeioBqdaD2emvuc1HvJK4F8LHf27ldK8bFSxEaIUDDjh1Q
 gk8XIne0aZIPg==
Date: Wed, 31 Mar 2021 16:46:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bjarni Jonasson <bjarni.jonasson@microchip.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: microchip: PHY_SPARX5_SERDES should depend on
 ARCH_SPARX5
Message-ID: <YGRaIbyivDr9MKGK@vkoul-mobl.Dlink>
References: <20210331081937.367408-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210331081937.367408-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_121656_668965_2CD03C7C 
X-CRM114-Status: UNSURE (   5.30  )
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

On 31-03-21, 10:19, Geert Uytterhoeven wrote:
> The Microchip Sparx5 SerDes PHY is present only Microchip Sparx5 SoCs.
> Hence add a dependency on ARCH_SPARX5, to prevent asking the user about
> this driver when configuring a kernel without support for Sparx5 SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
