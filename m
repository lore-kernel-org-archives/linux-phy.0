Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F040C61DD6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 00:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/Iba0nVVrmKk89JSFCluYuD1Wsk46erz0NnR1yonNY=; b=rsXGq7flems32p
	XAJqqzYfQkE+19fcB8TurzR0jNNyJD0E5s3WNH1qGh50oN1lEiCDcrx/GClbhLfnAMGIc3Iy5G2sn
	VzkzqiMZ6pidgI6NSqA4m5IsRPVlixZBD8VteV12+xfzYoBv8ZAzR+JPcib8lHKRPZlwoMyV+0+sj
	Bcvw8tDIoM7UfGS87QJifdcwzG+A3tclI7oYQRGeeewYpuIxQD/Q2HOKfcDnOErapoK17/oq3Th4v
	C7fvIdHowd9WIbh5hzNtGB04lywfPMLEUUzBvjp1PNvZrT0a0FryDzQcnEjYvxaS9qM9WYkk/Vv0B
	W4XODlhDV5DmAi/WLw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1YTt-0000000DYvj-3IF3;
	Wed, 02 Sep 2026 00:05:33 +0000
Received: from mail.lvkasz.us ([116.203.126.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1YTr-0000000DYvB-1YzG;
	Wed, 02 Sep 2026 00:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lvkasz.us; s=pf1;
	t=1788307525; bh=/CCCKx7u/SD1z2NkO1bJZurwMqzPzrZhPYKcLlgoSk0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AeS22BDtMX3vpsCc4zhlmE9WLWILrdsFNNCwOTuDGtYsojDWUPF/Y6cLP7XD7g2vA
	 pBBjHu0DYDsohnmOJgBZ7JGI4BNxLN5dQuirRObEqRQHqBtiZGfLnw46atHUcT0eQV
	 C5u4efUH+1rYSXtu8K0QjrchETNX/lbApFTAofBxnn8NwSZRexm5tvvmP3+vFl6hIf
	 fT3T6VWvP0lhxdTvtu6cY/nUlizjDDef43qSxt+1RR5Qd8OiAogMV+y6mPn1gLToRv
	 7HTrAL3a0v6eddKxde7Y0CV7Z0jUWXeCf4u32VLNct0Ti4jYtKZTk8ehFlXPBQU9aU
	 StH6MT1W4A65w==
Received: from aorus.localdomain (5.185.72.109.ipv4.public.orange.pl [5.185.72.109])
	by mail.lvkasz.us (Postfix) with ESMTPSA id 45B9BDF235;
	Wed,  2 Sep 2026 02:05:24 +0200 (CEST)
From: =?UTF-8?q?=C5=81ukasz=20Lebiedzi=C5=84ski?= <kernel@lvkasz.us>
To: selvarasu.g@samsung.com
Cc: akash.m5@samsung.com,
	alim.akhtar@samsung.com,
	andre.draszik@linaro.org,
	dh10.jung@samsung.com,
	jh0801.jung@samsung.com,
	kernel@lvkasz.us,
	krzk@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	muhammed.ali@samsung.com,
	neil.armstrong@linaro.org,
	peter.griffin@linaro.org,
	pritam.sutar@samsung.com,
	thiagu.r@samsung.com,
	vkoul@kernel.org
Subject: Re: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to prevent OOB access
Date: Wed,  2 Sep 2026 02:04:37 +0200
Message-ID: <20260902000439.25379-1-kernel@lvkasz.us>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260831070309.158069-1-selvarasu.g@samsung.com>
References: <20260831070309.158069-1-selvarasu.g@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_170531_593968_DF629D6A 
X-CRM114-Status: GOOD (  10.49  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SSB0ZXN0ZWQgdGhpcyBvbiBteSBTYW1zdW5nIEdhbGF4eSBBNiAoRXh5bm9zNzg3MCkgd2l0aCB0
aGlzIHBhdGNoIGFwcGxpZWQKb24gdG9wIG9mIG1haW5saW5lLiBJIHdhbnRlZCB0byB2ZXJpZnkg
dGhlIE9PQiByZWFkIGZpcnN0IGJlZm9yZSB0cnVzdGluZwp0aGlzIGZpeCwgc28gSSBmb3JjZWQg
dGhlIGRldmljZSB0cmVlIHRvIHJlcXVlc3QgUEhZIGluZGV4IDEKKHBoeXMgPSA8JnVzYmRyZF9w
aHkgMT47KSAtIHRoaXMgaW5kZXggZG9lcyBub3QgZXhpc3QgZm9yIHRoaXMgU29DLApiZWNhdXNl
IHRoZSBwaHlfY2ZnX2V4eW5vczc4NzBbXSBhcnJheSBjb250YWlucyBvbmx5IG9uZSBlbnRyeS4g
SSBhZGRlZAphIHRlbXBvcmFyeSBwcl9pbmZvKCkgY2FsbCBhZnRlciBhc3NpZ25pbmcgcGh5X2Nm
ZyBpbiB0aGUgcHJvYmUgbG9vcCB0bwpkaXNwbGF5IHRoZSBwaHlfaXNvbC9waHlfaW5pdCB2YWx1
ZXMgdXNpbmcgJXBTOgoKICBpPTAgcGh5X2lzb2w9ZXh5bm9zNzg3MF91c2JkcmRfcGh5X2lzb2wr
MHgwLzB4NjAKICAgICAgcGh5X2luaXQ9ZXh5bm9zNzg3MF91c2JkcmRfdXRtaV9pbml0KzB4MC8w
eDI2MAogIGk9MSBwaHlfaXNvbD1leHlub3M1X3VzYmRyZF9waHlfaXNvbCsweDAvMHg1MAogICAg
ICBwaHlfaW5pdD1leHlub3M1X3VzYmRyZF91dG1pX2luaXQrMHgwLzB4YzgKCkZvciBpPTEsIGJv
dGggZnVuY3Rpb24gcG9pbnRlcnMgcmVzb2x2ZSB0byB0aGUgZXh5bm9zNV8qIHZhcmlhbnRzCmlu
c3RlYWQgb2YgdGhlIGV4eW5vczc4NzAgb25lcyAtIHRoZSBPT0IgcmVhZCBsYW5kcyByaWdodCBv
bgp0aGUgYWRqYWNlbnQgcGh5X2NmZ19leHlub3M1W10gYXJyYXkgaW4gLnJvZGF0YS4gTm8gY3Jh
c2ggb2NjdXJzLCBzaW5jZQp0aGVzZSBnYXJiYWdlIHBvaW50ZXJzIGhhcHBlbiB0byBwb2ludCB0
byB2YWxpZCAodGhvdWdoIHVucmVsYXRlZCkKa2VybmVsIGZ1bmN0aW9ucyByYXRoZXIgdGhhbiBz
b21ldGhpbmcgaW52YWxpZC4KCldpdGggdGhlIHBhdGNoIGFwcGxpZWQsIHRoZSBzYW1lIGRlYnVn
IHByaW50IHNob3dzIHRoZSBsb29wIGNvcnJlY3RseQpzdG9wcGluZyBhdCBuX3BoeV9jZmc9MTsg
aT0xIGlzIG5ldmVyIHJlYWNoZWQuIEJvb3QgYW5kIFVTQiBib3RoIHdvcmsKZmluZSBvbiB0aGUg
YWN0dWFsIFBIWSBpbmRleCAoMCkuCgpUZXN0ZWQtYnk6IMWBdWthc3ogTGViaWVkemnFhHNraSA8
a2VybmVsQGx2a2Fzei51cz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
