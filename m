Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5349EEB58F
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 04:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcMA8Nr0djdVF90BzogiMWoFnQzcumgQC3ICPQ+19t4=; b=RXgDwNyJlmiudt
	na7jINLYKTu33U01+8O5eiaMBaxGSHve5wY0v95AxP+lcU6D3tj1MMzchVhmnb8yfNvX79/echIz/
	yj3gBrnkLAT4T/lLfm71QhOMd/RKCNJzhPJFXbhJCuEq65Rx9QvSJpifPaPje45fLRFae9z9Zltzv
	unZwU5kYfZA5cVHIjTurcPMk55kMrs6vK6NCMO3AQswXg/SsS9skkZxA2UEgOmdhYdafg+PFa+p6c
	KQIcCH6Wxp82L7MURxuFe/qE3Tz1QXvIQnAko02zkg4iHP7ChBCuSnkBkLo1YL0h8R9dxtd8cfRlY
	Qzi8E8njYYpQeKyVWmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgHc8-004aQp-1B;
	Wed, 13 Sep 2023 04:36:32 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgHc5-004aQ8-1f
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 04:36:30 +0000
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 0D37C80FC;
	Wed, 13 Sep 2023 04:36:27 +0000 (UTC)
Date: Wed, 13 Sep 2023 07:36:25 +0300
From: Tony Lindgren <tony@atomide.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/3] phy: mapphone-mdm6600: Fix runtime PM for remove
Message-ID: <20230913043625.GN5282@atomide.com>
References: <20230911035501.36706-1-tony@atomide.com>
 <20230911035501.36706-2-tony@atomide.com>
 <20230912150022.ctkctrgbo3cdxyvh@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230912150022.ctkctrgbo3cdxyvh@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_213629_592607_CFDDE960 
X-CRM114-Status: UNSURE (   5.38  )
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

* Sebastian Reichel <sebastian.reichel@collabora.com> [230912 15:00]:
> Isn't this just about the use counters, i.e.
> pm_runtime_get_noresume(); should be enough?

Good point I'll check. We are toggling the out-of-bandwidth modem wake
gpio line with runtime PM, it may not matter on remove.

Regards,

Tony

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
