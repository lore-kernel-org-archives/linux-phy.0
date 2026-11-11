Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D31606A326
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 09:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dYP5m3zr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=Qai0FJm0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=18w1mCrGUipuVjZxUJHY3ck7uz9wb7EWs2UOETh4ja0=; b=dYP5m3zrYbivIW+X2uZRI2Iwl7
	gSEqM5JojIO14EfXSNzK/mQyudDUEeahbQ/fWISYJvtgGKx6mkdwIBdmjEHPp5iZh2aoKyJp7BR4S
	6UOKASJeZ77ncAtU/L2oM2U6nPr/b6KXIDJzZAaAgaRW2OeiFBPDFr5JfytAJKmej0yloOGS1QN/j
	9R7ba00KcAg/VtlNJoPjfN+c72PYDcBAs4jY5UpTZ+zQcVt9m1CAXdUmug3XGVIUZLAQVT+OiDdvt
	LhlyyJfb5QPOvqohecGJXutgECIjQU/vApwPMo7tQtXkC4tKS9ebhSivvZhwWfUuRlWvVfFE+DJvv
	8ZQZJi0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Qo-000000068hQ-0MMa;
	Wed, 11 Nov 2026 09:15:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Ql-000000068gY-35uc
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 09:15:49 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 88861200668;
	Wed, 11 Nov 2026 10:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794388543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vDW8BQ3QK7DFSdWh63AuwvUGvwlRPTs3t87UKhBTiKQ=;
	b=Qai0FJm01qvgzYgCzoKUwfFRkWXXkV89HX8W0AIUeeo3O4D10HCjZm5UDfhSbS5IZJa05H
	OLNwC91drMq/tlWnEk2mvH0dSbS99tbn8nBe5DwomURL4TwEReV4y2mKQDtJP2mCvVyBpE
	r1PblBgZUoIZ0+aAqsKRQQXXXjoBZ+N+bGdnX0GLCvxzOJYxCdEtzgZJqnmIsgaiRzhswL
	x8vFWQN+JtfoE63jqkDPmz9YtwsuAuUsUy0cJ5MpXDpKex9mQ2mXTsC7aW2AnQTig/Y8pV
	+U401Ip4zWrlIQiaSZGoDvoUKwYHK4dDePp5fG8qGIrCmkTr73gxXsWgdbVLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794388543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vDW8BQ3QK7DFSdWh63AuwvUGvwlRPTs3t87UKhBTiKQ=;
	b=flt1gfAWqs9ee1FfpsFe0RiSyc8UOlD/mXAjMwv3JJh0nPp9NxsrqQlUNKmSLvlgXs339S
	MPjBobd/kUrbPNisqWdF94gTDH8InCTX2BgLBtOvlJPC8fkmEaNfnCrVNLsJPc7GMM5/BP
	Ydjfxw5jZbOQ1GwtXXGO9EDvUPuQIagv8YKQg2377e+e13WY88QXj96IDHvSYfAtYTCD6A
	VSlFZyMWY6/4h2L1Mwx8m/dQClLhEE6SHj8J829Nda5l9bnPg9zvQijmnV8E1RoN7HmvAr
	9cckseGJgxaDbzTo10ngxQGmmUsxK+tnp4ktVhY3LeMEXFxRkdjZ5lkbOriAcA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794388543; a=rsa-sha256;
	cv=none;
	b=edgHNN1SfJhgR3AMrv6ln6caifgSbcJRITbBxlYwwYO6gDawrVAFioKvxFNli4RPBYIT1d
	qorW9rG3iBlGHABSJiR8thQLZZPC16vpD0QidrL/XYiHjPs8tbNQTAVzhXvdkbsJvpiGyk
	e2q5BvXRvgq3aS6HhUT+gDGa9ph3LthfICG3yCyHxpoQFefoZamRMef2AnZl10u7Ix17rM
	zFAX0Edj03CYU0rMeInQ2/0QpGYceSeWI9BSrVOYwCz9oAfOs88muWNlvfbhsZo0+wpo6q
	JRMG1I6vws5llz0TDgpbPj8EAJEicd/vfEc60athUit7otjdR2k3bf7IV90PTQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
Message-ID: <dbc39e63b74e1df9dfb134b6100a8deb0ba6afcd.camel@pengutronix.de>
Subject: Re: [PATCH] phy: hisilicon: fix UTMI reset leaks in INNO USB2 PHY
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Xia Yan <yanxia@cmss.chinamobile.com>, Vinod Koul <vkoul@kernel.org>, 
	linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam
	 <mani@kernel.org>, Pengcheng Li <lpc.li@hisilicon.com>, Jiancheng Xue
	 <xuejiancheng@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>, Shawn Guo
	 <shawnguo@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, yana06070@163.com
Date: Wed, 11 Nov 2026 10:15:43 +0100
In-Reply-To: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
References: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_011548_230844_22D7443F 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mi, 2026-11-11 at 16:59 +0800, Xia Yan wrote:
> hisi_inno_phy_probe() acquires an exclusive UTMI reset control for each
> child node but never releases it on probe failure or driver detach.
> The leaked controls remain acquired, so a later probe can fail with
> -EBUSY when requesting the same resets.
> 
> Register a devres action after each successful lookup to release the
> control on probe failure and detach.
> 
> Found during source review of reset-control lifetimes.
> 
> Build-tested the driver object on x86_64 with W=1 and reset support
> enabled. No hardware testing.
> 
> Fixes: ba8b0ee81fbb ("phy: add inno-usb2-phy driver for hi3798cv200 SoC")
> Cc: stable@vger.kernel.org # needs of_node_put(child) on <= 6.6
> Signed-off-by: Xia Yan <yanxia@cmss.chinamobile.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

It looks like an equivalent to devm_get_clk_from_child() for reset
controls could be useful.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
