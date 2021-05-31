Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F323C4708F
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:25:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CAAC7610A8
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:25:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CAAC7610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkRmCL2SOIQuhtwIrzVZX9JUPm4QZn+8AUYCcPQjMP0=; b=MULAF3+zNY+sYw
	djI1+VNNadbzKOYKdLccCqBvaI/qFzvSTWibVFl9N+VtJs/00ylDjxNooneudmAvqCEUWQEDH2mj0
	2in/LcGGzcTktI/qVKatTALl/kHNwbyiQQYx/V3J2rL5I9Umv0q29IxnHNbTDo68I5fxVuiSjBZC4
	4pOJBTyC1TGty/gVBYekWaYbgumrHqxBaV3EN1jTg6kiiFVEbhxu+tYk1inZ5xuWS7X/mzJW4HdNq
	L9r6vBjeBRiUpHAAKwDaSzbW2vJzPojO7pGZNLRAL+ElFH3TD4Ap1Z5bStpRrUi+ygY+f5bc009fE
	DXEHgHDJx8OY/zzS4ztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndFG-00BQhP-6S; Mon, 31 May 2021 08:25:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndDZ-00BQ6n-HJ; Mon, 31 May 2021 08:24:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FEAD610C9;
 Mon, 31 May 2021 08:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622449453;
 bh=8P7d3B/GlN7hz8aqxDwhACR/qaphXcmTzOMcKPMMbjs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l6iom4iXr1g//E31Q4JTOMJNEIBl9AI1ytDZrSoXQbtQz5ns0OU6NDWcq6PbPibct
 aqfYzQGL80zLYrFt81XnCToJRhdcqsavxJkuHnew2dK5H6apCu7lvSe32LOQLTAGUA
 vw9GkdLQ3JCfDGabQQQhxYQP8VzE0ThilvJYO3qDnhsnewALCytaa4chbv4R+2rnes
 5Q02x8NwWXxSbflMmduvllf3QDsjcpxNS0mdB8mP8RH0yFNY60p+9dNoYiii9Uuii9
 GjYgSLF3JnnimiW5QBxR0PNQqB7GnatDWb6q5ZKwW/MTeCvrAi4HYPKf9VjvQ+Xp6a
 HQvpaeRvxKehw==
Date: Mon, 31 May 2021 13:54:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] phy: phy-rockchip-inno-usb2: add support for
 RK3308 USB phy
Message-ID: <YLSdKcOJcwzB8IeW@vkoul-mobl.Dlink>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-3-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514150044.2099298-3-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012413_653387_96F44447 
X-CRM114-Status: UNSURE (   7.01  )
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

On 14-05-21, 17:00, Tobias Schramm wrote:
> The RK3308 SoC uses a slightly different USB phy than other Rockchip
> parts.
> This commit adds support for that phy.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
