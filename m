Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1085C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 21:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yb5nnT/Npx9QETTXlqAYXAi4GJy5q/RaDYCYsBKydMA=; b=tuOBwfucAxdPRu
	6J9Kxhn9CTaUiLoI85CCvRK0x+kgn3ohOF38wTTO9IRVwH6B0pVfn5bbd6S0arX8lhP3r3bMzMXed
	VSW93NTlqcXjnN2rKUhSWj0gmemfWHXPGLKBLDZEuuzz5zocVjIftmXO0+DESD5Z2vPwgwUS5bYwg
	72dl5FYwVejJq6RO1niHSuz5BKzEKEvEqVUZDvFM/dT5SQUEy10G0XR34hgISpMpM61XIc7j78kmD
	wtOPKlYQhEqwvcRDmcHU14bX13FShDKEy3xc1DQmWwNA9cv4eAgqa/v8wVRPO4AnHYiagnTGCFRhi
	tjK6mglRZHo8yov5IbMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msWqC-00AB5g-1y; Wed, 01 Dec 2021 21:08:36 +0000
Received: from 3.mo583.mail-out.ovh.net ([46.105.40.108])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msWq8-00AB3P-MT
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 21:08:34 +0000
Received: from player796.ha.ovh.net (unknown [10.108.4.54])
 by mo583.mail-out.ovh.net (Postfix) with ESMTP id 46D8D23C6B
 for <linux-phy@lists.infradead.org>; Wed,  1 Dec 2021 21:08:26 +0000 (UTC)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player796.ha.ovh.net (Postfix) with ESMTPSA id 5317F24DA5558;
 Wed,  1 Dec 2021 21:08:17 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R0067f55729a-1a8a-45c6-a52a-f5ace8f2f974,
 738FF6B34265B71E218B6744B181DC2F08F41F15) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Message-ID: <aeb874ed-179e-5ede-6339-ea4b80b7806f@milecki.pl>
Date: Wed, 1 Dec 2021 22:08:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101
 Thunderbird/95.0
Subject: Re: [PATCH 3/3] phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-4-alcooperx@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20211201180653.35097-4-alcooperx@gmail.com>
X-Ovh-Tracer-Id: 16449679117486041945
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrieefgddugeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeetledugeejtdevheetieduhefgtedvgefftddvfedvieevjeegleffleegtdeunecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeeliedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_130832_921767_38E33063 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDEuMTIuMjAyMSAxOTowNiwgQWwgQ29vcGVyIHdyb3RlOgo+IFRoZSBwcmV2aW91cyBjb21t
aXQgNGI0MDJmYThlMGI3ICgicGh5OiBwaHktYnJjbS11c2I6IHN1cHBvcnQgUEhZIG9uCj4gdGhl
IEJDTTQ5MDgiKSBhZGRlZCBhIHNlY29uZCAiZGVmYXVsdCIgbGluZSBmb3IgQVJDSF9CQ01fNDkw
OCBhYm92ZQo+IHRoZSBvcmlnaW5hbCAiZGVmYXVsdCIgbGluZSBmb3IgQVJDSF9CUkNNU1RCLiBX
aGVuIHR3byAiZGVmYXVsdCIKPiBsaW5lcyBhcmUgdXNlZCwgb25seSB0aGUgZmlyc3QgaXMgdXNl
ZCBhbmQgdGhpcyBjaGFuZ2Ugc3RvcHBlZAo+IHRoZSBQSFlfQlJDTV9VU0Igb3B0aW9uIGZvciBi
ZWluZyBlbmFibGVkIGZvciBBUkNIX0JSQ01TVEIuCj4gVGhlIGZpeCBpcyB0byB1c2Ugb25lICJk
ZWZhdWx0IGxpbmUgd2l0aCAifHwiLgo+IAo+IEZpeGVzOiA0YjQwMmZhOGUwYjcgKCJwaHk6IHBo
eS1icmNtLXVzYjogc3VwcG9ydCBQSFkgb24gdGhlIEJDTTQ5MDgiKQo+IFNpZ25lZC1vZmYtYnk6
IEFsIENvb3BlciA8YWxjb29wZXJ4QGdtYWlsLmNvbT4KCkFja2VkLWJ5OiBSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
