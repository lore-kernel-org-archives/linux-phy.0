Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D084C87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kg+aHSogHNzkPwciKVxNBwabUmXl2v3JUtAv8ubRpq0=; b=1XshP8O12Dophh
	F7HqjEvq4Ox/nsDguZPN5UpBWaotwfunSCIVhPoFaU6tJneX7qaCMM8gHaJPysU/IgAIi8pW39cWB
	S814bBd6k1F/JLgQU/vuYRQ6nMvvUjgamwqRjwaEV/MriyNN62a9Z6TBSabNLrlraNR+h9AMAARVA
	cO8LFPjDqYXI/KOgoZEQCZcjB6yfPz0b316F/3pMV/rEY9mmFfVHg/2IX/Fpt68caWPqs3dZir5JB
	mizje2eDsz478NX87cJV5AWVYYNJxAWl7PD8oIsiXfjVVCfC2Bolc8nmHJCjEvZxs9OoI9aZR7Y0n
	1Qt9BvOSolW0HIW00c5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukKck-00000002bCD-32Bf;
	Fri, 08 Aug 2025 10:46:58 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukKZv-00000002aWu-03TL
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 10:44:04 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 17DEA41C7B;
	Fri,  8 Aug 2025 10:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1754649840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yD0mi7Uyn2c5rvpZYEE9/kGZcsO9rhPRIIJK6YIVS7Y=;
	b=B0EjYcKgJzqeCgKhFUYQDiDJroLjBvTKhCAST0DimHX7D8YJG7g97F9rquUineE9/2Hzkd
	jg5p+1VqCnIjbRLs2ksamT/MXzQWK0n8gkUUTHMS1wYcSzGUfFiqY1EvmZu7evuoCpSbn2
	XLi919S9apR9YYzYDPEvckA2tpC8tFqYZTV3q4dfTKKbi3N/BCbfcriafbj7qwP/+nIs7m
	mG9F9lMzUSls4OV4U3ZwpUq0nLuV42726Pv2bDs8MGzrJyg4h3qvy5bizSmWbhDkhuGkuj
	KWNTpB5tgeeoH0KVgQDhNVZme0bU6iHmDSWPsiUTST1ldDk09M8Z2VVUSZaRNg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,  Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-phy@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: marvell,comphy-cp110: Fix clock and
 child node constraints
In-Reply-To: <20250806200138.1366189-1-robh@kernel.org> (Rob Herring's message
	of "Wed, 6 Aug 2025 15:01:37 -0500")
References: <20250806200138.1366189-1-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Fri, 08 Aug 2025 12:43:59 +0200
Message-ID: <87qzxm9jps.fsf@bootlin.com>
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduvdefiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufgjfhgffffkgggtgfesthhqredttderjeenucfhrhhomhepofhiqhhuvghlucftrgihnhgrlhcuoehmihhquhgvlhdrrhgrhihnrghlsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeffgefhjedtfeeigeduudekudejkedtiefhleelueeiueevheekvdeludehiedvfeenucfkphepledvrddukeegrddutdekrdeiheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeelvddrudekgedruddtkedrieehpdhhvghloheplhhotggrlhhhohhsthdpmhgrihhlfhhrohhmpehmihhquhgvlhdrrhgrhihnrghlsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeekpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehvkhhouhhlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkihhshhhonheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhin
 hhfrhgruggvrggurdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_034403_355486_B1DCB7EE 
X-CRM114-Status: UNSURE (   5.74  )
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

T24gMDYvMDgvMjAyNSBhdCAxNTowMTozNyAtMDUsICJSb2IgSGVycmluZyAoQXJtKSIgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cgo+IEluIGNvbnZlcnRpbmcgbWFydmVsbCxjb21waHktY3AxMTAg
dG8gc2NoZW1hLCB0aGUgY29uc3RyYWludHMgZm9yIGNsb2NrcyBvbgo+IG1hcnZlbGwsY29tcGh5
LWEzNzAwIGFyZSB3cm9uZywgdGhlIG1heGltdW0gbnVtYmVyIG9mIGNoaWxkIG5vZGVzIGFyZSB3
cm9uZywKPiBhbmQgdGhlIHBoeSBub2RlcyBtYXkgaGF2ZSBhICdjb25uZWN0b3InIGNoaWxkIG5v
ZGU6Cj4KPiBwaHlAMTgzMDAgKG1hcnZlbGwsY29tcGh5LWEzNzAwKTogY2xvY2stbmFtZXM6IEZh
bHNlIHNjaGVtYSBkb2VzIG5vdCBhbGxvdyBbJ3h0YWwnXQo+IHBoeUAxMjAwMDAgKG1hcnZlbGws
Y29tcGh5LWNwMTEwKTogJ3BoeUAzJywgJ3BoeUA0JywgJ3BoeUA1JyBkbyBub3QgbWF0Y2ggYW55
IG9mIHRoZSByZWdleGVzOiAnXnBoeUBbMC0yXSQnLCAnXnBpbmN0cmwtWzAtOV0rJCcKPiBwaHlA
MTIwMDAwIChtYXJ2ZWxsLGNvbXBoeS1jcDExMCk6IHBoeUAyOiAnY29ubmVjdG9yJyBkb2VzIG5v
dCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdecGluY3RybC1bMC05XSskJwo+Cj4gRml4ZXM6
IDUwMzU1YWM3MGQ0ZiAoImR0LWJpbmRpbmdzOiBwaHk6IENvbnZlcnQgbWFydmVsbCxjb21waHkt
Y3AxMTAgdG8gRFQgc2NoZW1hIikKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8
cm9iaEBrZXJuZWwub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVl
bC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3MsCk1pcXXDqGwKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
