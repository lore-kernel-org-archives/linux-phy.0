Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4631BC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 08:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/kgQvDQ36XPang0NqSzocs9/iG0aLpKrl1xpYDv7Iw=; b=YrgMmxv6m3UB1P
	4FozGYoJ8xmaTHhV1LcIFmtbmKaaKUMq5kHUJd99BOlujPq0hclGGwmnwqV/5fbHWr5GZbQt+VSvV
	vrDaLwfCohKe97RzD+jqIScBZD7MGThriE8FeAleDWFlBEoL1+S59USHsJ40bpaJ0FpcQWZonyMV6
	8phoYPPA794RFgeOcI6fHWHzR+x7IMctTyNCBTPrEqgz7Vp7HD9t8/fl5R4X8vAfA049YJP1kdiSW
	k7xf4auK9ZOraYPEvAXXh6xKofnqB7E7ecrLyi6DHFGO1F5GZBZOkBkk+P89F4u2K8C+kEayju9Ht
	Uz04vbYp0nKmdSnfjQwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1petrk-00FBo1-2Y;
	Wed, 22 Mar 2023 08:30:40 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1petrh-00FBkS-1r
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 08:30:40 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 61D6FE0016;
	Wed, 22 Mar 2023 08:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679473830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s30knEgyz141A4mH34EilC/GtHAUuX2LIT467JfKUBg=;
	b=Nj9sECjLO5HpDgwl42PSdE4VAZ3F2ZJn7OZO+XU5UJrD/UJ9pSwysX/Uad/HwmkUh+/bzj
	e3fuVVQ/pUwEPkfdk0ypxelvTtfGWssVfs1e7gmxR2+teRUBMdEVjprOh+V0hAXSnSJECV
	M7o+RdIyNAKgfErEQHDLCUhfDa3RHgk/Xqwy6wmmCcjpFQwO042EEmW0lER+jfHnPMFGiK
	ltjtl+ABAtASOWSSNdOpR7pfWJrVInlHkRCyGosLd73HXJUGjrJqQjyH437t1S+FbLl8bq
	TCDPqyxpR6OcHJ6Sd+myWLL56QN0ggr+DNm4V8nrX2kl0yEQbKW4Yqowl4FJCQ==
Date: Wed, 22 Mar 2023 09:30:27 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <ye.xingchen@zte.com.cn>
Cc: <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <vkoul@kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: use
 devm_platform_ioremap_resource_byname()
Message-ID: <20230322093027.4c1e2176@xps-13>
In-Reply-To: <202303221007049346627@zte.com.cn>
References: <202303221007049346627@zte.com.cn>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013037_772112_AEBD3B12 
X-CRM114-Status: UNSURE (   5.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgp5ZS54aW5nY2hlbkB6dGUuY29tLmNuIHdyb3RlIG9uIFdlZCwgMjIgTWFyIDIwMjMg
MTA6MDc6MDQgKzA4MDAgKENTVCk6Cgo+IEZyb206IFllIFhpbmdjaGVuIDx5ZS54aW5nY2hlbkB6
dGUuY29tLmNuPgo+IAo+IENvbnZlcnQgcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZSgpLGRl
dm1faW9yZW1hcF9yZXNvdXJjZSgpIHRvIGEgc2luZ2xlCj4gY2FsbCB0byBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKCksIGFzIHRoaXMgaXMgZXhhY3RseSB3aGF0Cj4gdGhp
cyBmdW5jdGlvbiBkb2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFllIFhpbmdjaGVuIDx5ZS54aW5n
Y2hlbkB6dGUuY29tLmNuPgoKUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+CgpUaGFua3MsCk1pcXXDqGwKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
