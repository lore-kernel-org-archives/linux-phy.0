Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7667BC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 08:22:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E23B61002
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 08:22:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3E23B61002
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prqcBhJ7Gjjb8GliFi+J8sM4rlLZ5SRF/6MqrnvYjPw=; b=r7w1TgDjf+8o0E
	XrO6ttlMfoDpJnQ2u62j55laKWqzuAiG6o1yuzjHXZYtWlEDyLTivggYGy/lkoGRVa5HnuVWbQIyY
	Th6HvAnDv3Rm/JDD9Pzyr2XtXzMND3RBxNQv7E0eA0D+OQ7ZdTEXVEElF4yndSNNb50+bsoAZjThv
	CwyglSOwPjah0Oc2D2XGU7+TyxZKzzUw1NtNxH4MAYnbmno/sfXoIuJgcx5F3N343kvXlgi7Osw9o
	2AMgpVZyXELEZzJ7t/qbWhIHtW8+VaSK24ZsWQZg7sgZ0uryr9NOr+gqJwJE9/cseP1jZyG2w0WH6
	yyUzMcu9jnzTlE1DKbtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mevFC-00FmZH-No; Mon, 25 Oct 2021 08:22:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mevF9-00FmXi-Pc
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 08:22:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D9F260F46;
 Mon, 25 Oct 2021 08:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635150125;
 bh=APOL5RoCizGxqVuPkb770u6tvkOYLzgDYT6J7o+vNH0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k6snvvbdQ7hZ0z/OryQqVaoK8wLppqwzWpvScuEBvVDUzJv+d5yvjsM39g8Vv8KFf
 rwspREU4zEDNWCjaq/KJrjDdX2kpDEW09Mkzsp5+R7s4HCj1Af9kC8ByVJr7enTQwd
 KPPYKo/UluOZ3U/kgHWORDeUsyXb3LvhCk1tvTECMo7LmH1OFDhDzHaIRSQevT5GGc
 RwyiEzGjNddT3jO3vxQA0+GzcaOGwCzebIzBCJbcz86gG9Cn+ICODXSJg305XT006s
 XFqBSrFVNh3WVT8pUDD6eBy95X8LoUoQ5eYi7DOePghqhneHA5k5wgNOXdjMFMZ0bJ
 RmHW5x9VACanA==
Date: Mon, 25 Oct 2021 13:52:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 steen.hegelund@microchip.com
Subject: Re: [PATCH] phy: Sparx5 Eth SerDes: Fix return value check in
 sparx5_serdes_probe()
Message-ID: <YXZpKXqn0iY4td2G@matsya>
References: <20210909072149.2934047-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210909072149.2934047-1-yangyingliang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_012207_883608_9973208F 
X-CRM114-Status: UNSURE (   5.50  )
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

On 09-09-21, 15:21, Yang Yingliang wrote:
> In case of error, the function devm_ioremap() returns NULL
> pointer not ERR_PTR(). The IS_ERR() test in the return value
> check should be replaced with NULL test.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
