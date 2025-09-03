Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240CBCA1009
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 12:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW2NshIV1et45f1TvQB7xLsHZzTU9q4SmCLym71OKjo=; b=OeJ4KdPQXUW42s
	F1bJaycwz3ztQcWGPMg3/k4KBhiWyUNk9jsBlmtB0GNNM8LYPHIxdCqWxxqrRvYIhTU7WckggbTic
	7wouSlJpz79Vd0u7Xjh3ayIulirNuPD3INiRVKA9Dy7F5oICH0JKkSicENXPYUACYbv8pZZLh8e6F
	boWBSO1gZSvoCpLGdrO8OK1P6Y2hq75yRu60dzR1NlUlS52e7jLZoPLbBqctEbv1JH7C06aRazwDk
	fIjQiyPcBLFVxYWkACSXohq4m/S3POuUpB+gjcWSejCkPD4YIcmQhiH9feOmTpSWHzm/InUc36ej6
	zovK0h4wVsOsxTSTfmbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmiK-00000006PBS-3Xwp;
	Wed, 03 Sep 2025 12:35:48 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utlYr-00000006Dg7-2Ir9
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 11:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1756898502; x=1757503302; i=markus.elfring@web.de;
	bh=ND06E395q6iJZo+iubvby4YjESA3sJwwe4VdYkaj21o=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=jVqdXL23S7bpGIOTCJ/w404I8PtUR8Ejp841gmnZ+80VTFJ5+1tXjPV3C7qA+a6Z
	 CGP0VBeJBvGblB5DWMU3OP+zSoZqwEVtb4JQbA6BZvM8L7RGTUF/SOuD2eCUr1/ZA
	 CPfuI1RW7q2mW2CupP+gaHA+eyyH6Go9gPN4vN4Zof7Jv1gKyf67OgKDCBoI3duL4
	 0alu9jg0J+BrhIsW7Bux+kLNbwmSMCW8rNJRWTnLOpaqVb+V1Qk61x95HGPBK5Ncy
	 AoBHBCPitzQ59pCybCL3Z68GelJA0+w65ROglDwbyJTmR3gA/ucZxUpjmi5fpL1+f
	 5Fa004cOod1YS7WX+A==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.92.225]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MzkOL-1uYGZD1Q1p-00uXRw; Wed, 03
 Sep 2025 13:21:42 +0200
Message-ID: <c044573b-0fdc-48a2-91e3-63af1c830253@web.de>
Date: Wed, 3 Sep 2025 13:21:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Miaoqian Lin <linmq006@gmail.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: stable@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 JC Kuo <jckuo@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
References: <20250903045241.2489993-1-linmq006@gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb-tegra210: Fix reference leaks in
 tegra210_xusb_padctl_probe
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20250903045241.2489993-1-linmq006@gmail.com>
X-Provags-ID: V03:K1:nN/LiDaCYvRWjO0F26eEFj6xu+z5SvDSnft/C3hST3PmxdfkPN/
 YIq8Bj4/7TNpmmPaQm4Ltyq9KvC19Qx0pfOuw0BKJZKSvuiwXJPhxN9bjEtHrPxQgbtocXl
 Z7bobBAL2J9NHVroZBCqjKoppY/XEsSXxgoWtjPjEzZUxRkE+z6fW5Bcuh/ZFxD2HvH8tCY
 pj6mMuErPIy37yCVgriUQ==
UI-OutboundReport: notjunk:1;M01:P0:JGxEJv4CHqM=;9pYBoRZA0m92SX/ijM383sOWEO+ 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_042157_953614_44B97B2D 
X-CRM114-Status: UNSURE (   3.21  )
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

PiBBZGQgbWlzc2luZyBvZl9ub2RlX3B1dCgpIGFuZCBwdXRfZGV2aWNlKCkgY2FsbHMgdG8gcmVs
ZWFzZSByZWZlcmVuY2VzLgoKSG93IGRvIHlvdSB0aGluayBhYm91dCB0byBpbmNyZWFzZSB0aGUg
YXBwbGljYXRpb24gb2Ygc2NvcGUtYmFzZWQgcmVzb3VyY2UgbWFuYWdlbWVudD8KCgrigKYKPiBG
b3VuZCB0aHJvdWdoIHN0YXRpYyBhbmFseXNpcyBieSDigKYKCldoaWNoIGNvbmNyZXRlIHNvZnR3
YXJlIHRvb2xzIHdvdWxkIGJlIGludm9sdmVkIGZvciB0aGlzIHB1cnBvc2U/CgpSZWdhcmRzLApN
YXJrdXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
