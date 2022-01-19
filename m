Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69836C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jan 2022 13:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEK/DAuiZdPf1HjGV2zrIqg0/2rbAFL4jEYHYCgcxh0=; b=j3opmCfpRlYMuI
	TlWW/byMdPY4xSM/XgdkksoDwhIbvD49UNCMwAO+hficciNboKUyD5M+5I0pWnKw+Uv1affbuiQ2C
	+nWT5DBCFaSgaD2jOAP59o9eYOpMIAdNl4GMMvmet7eO9D7vxg+eETvfMtOUnRMOrgDYPySN2fA4x
	ywxor6yzZnidXheHi2CKCp/QAYU8Vo5bLSULybb7de3EBCT63hpuRIdVlahG/8RBbnYcInp8Gn7ei
	2Hm2kQ/wPKe0WMGi/YalISdP9+j3y2Dx7aSH6rmpB68iaOH5cls9o4zgK1B+O5EveVdOWDUvg6Qcu
	P2Jy669q5Tm7T2UYTvdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAAmd-005Zhh-SK; Wed, 19 Jan 2022 13:13:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAAmY-005ZgW-MO
 for linux-phy@lists.infradead.org; Wed, 19 Jan 2022 13:13:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 450C961472;
 Wed, 19 Jan 2022 13:13:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44E6BC340E5;
 Wed, 19 Jan 2022 13:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642598025;
 bh=MCJ80zPEGqOHdJ2QElivFmgcDuJnFFqE3ijFB2jlRYs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SMzBBy9WAUXX4vPGCdIt6daZg2vEDYylKwOomhQCud6n5lvQF6tN449n8PZZihFKN
 cAtBOWCuEwU8v7I7Qo108uhm46ZLGNAwwYMr8hJ5uHGlCG0ItpjpRrf7n9l2obWmTO
 vu0JATyIixYThUD9FGaxGGyOgtV9psLefezf43b8lhTwfmhueppV+sSBTMAYA2Y0Rd
 2YM2lXNORQ9x5s0lOqfzA1nus1Qdzu9bQBPzMxxrAif+Lyu76rkxRy1GkBaWy4q6+B
 ffIx5CrFDw+3GvS+ylD2VzdAZqBTY42O9Ss+gJluTjHY1jI8pJ91DOgE19fZviZ3uZ
 bDCQzupAj3JhA==
Date: Wed, 19 Jan 2022 14:13:38 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>, Holger
 Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Russell King
 <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree v2] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <20220119141338.6815de68@thinkpad>
In-Reply-To: <YeeAXSHSCn6PtqKW@robh.at.kernel.org>
References: <20220112181602.13661-1-kabel@kernel.org>
 <YeeAXSHSCn6PtqKW@robh.at.kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_051346_807378_09CD6C12 
X-CRM114-Status: GOOD (  11.14  )
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

On Tue, 18 Jan 2022 21:07:09 -0600
Rob Herring <robh@kernel.org> wrote:

> > +select:  
> 
> This should be omitted and this schema should be referenced by any 
> binding that uses it. That is necessary so all properties get evaluated.

Thanks, sent v3. Will you be applying the patch? Or should this be
applied the first time it is needed, by maintainer of the specific
subsystem?

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
