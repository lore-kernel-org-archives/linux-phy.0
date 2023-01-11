Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558A2C5479D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 15:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8wvGMc+Df7jYMitGrN4ODt0vMaM5zEmoy/896Nr36s=; b=JKb+TfY6c/Q/2d
	zM9zqKXMdedfes6k6+zglbEyctDMmO4CQnMr09VW+lp1IU78+kF4euYuMOe0teudxqCKvrS9ytn9k
	qbK1TXUWeQj8PX3jSv5sok2fbJEvLspSJt+dItj6ndau6xDrWS/uhy3D5OvTAAyG/uIZ/oVuj/8DH
	CJid6n9vGYTOlCy6aZ8oAteCMEfJJ88L5jrLMOOM6H5WjNURwinKe9Cd/M3ZSCYRF19C8ab1nc7at
	aH/FoeZWzbQHdK2qNbNh1uDsQ0AcvPp14avPQ5Iv/CYcfyyli62eW/M9mQ64e4WmUYlZxDmDyBZ2D
	P/lw/PaitPxZE/gGdsHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFcqL-00Bxfu-Nc; Wed, 11 Jan 2023 15:16:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFcqK-00Bxf6-2O
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 15:16:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3ADDE61D58;
	Wed, 11 Jan 2023 15:16:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF34C433F1;
	Wed, 11 Jan 2023 15:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673450202;
	bh=fFLqTcQNwLu0CsRaw3Xnu2gv0QW9Ki3xX4+eSs6i54s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c3vmkxZv3lvuQb/VNRoDNM7FSHASMDfX6xpCLjXchEHwuPRNyRNwPjltmeMEzK3Ru
	 067GSJofKaXCJ9G0tzWSnwPfv0vTz781jHuPpMe0tpN2YoZh8LVaTIOmT06BTPxxo3
	 FpQGRZVtBGGU0cUl5gG06UM+uT+bGmuTIVQuF/tdzJJOXewT35A471w78XVyuTws1X
	 e71IEUSvKojJS91aOK82RakTpM7cgaJbTPTf4ONj1Z7BeU/14/Na692zcZC+LOf3V3
	 odYNf6z15SoKiPd0adutLaDHOAfgytOGjXVgK8u7xwl8UiedxZ0v0k1uC2fweDtLLj
	 dOh/qE0q5YSYg==
Message-ID: <3423a83e-a937-d158-9123-5a85fdf9b07c@kernel.org>
Date: Wed, 11 Jan 2023 17:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V3 2/2] phy: ti: j721e-wiz: Add support to enable LN23
 Type-C swap
Content-Language: en-US
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>,
 Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20230111111356.17392-1-sinthu.raja@ti.com>
 <20230111111356.17392-3-sinthu.raja@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230111111356.17392-3-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_071644_165089_3DDC0E26 
X-CRM114-Status: GOOD (  11.61  )
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

CgpPbiAxMS8wMS8yMDIzIDEzOjEzLCBTaW50aHUgUmFqYSB3cm90ZToKPiBGcm9tOiBTaW50aHUg
UmFqYSA8c2ludGh1LnJhamFAdGkuY29tPgo+IAo+IFRoZcKgV0laIGFjdHMgYXMgYSB3cmFwcGVy
IGZvciBTZXJEZXMgYW5kwqBoYXPCoExhbmVzIDAgYW5kwqAyIHJlc2VydmVkCj4gZm9yIFVTQiBm
b3IgdHlwZS1DIGxhbmUgc3dhcCBpZiBMYW5lIDEgYW5kIExhbmUgMyBhcmUgbGlua2VkIHRvIHRo
ZQo+IFVTQiBQSFkgdGhhdCBpcyBpbnRlZ3JhdGVkIGludG8gdGhlIFNlckRlcyBJUC4gVGhlIFdJ
WiBjb250cm9sIHJlZ2lzdGVyCj4gaGFzIHRvIGJlIGNvbmZpZ3VyZWQgdG8gc3VwcG9ydCB0aGlz
IGxhbmUgc3dhcCBmZWF0dXJlLgo+IAo+IFRoZSBzdXBwb3J0IGZvciBzd2FwcGluZyBsYW5lcyAy
IGFuZCAzIGlzIG1pc3NpbmcgYW5kIHRoZXJlZm9yZQo+IGFkZCBzdXBwb3J0IHRvIGNvbmZpZ3Vy
ZSB0aGUgY29udHJvbCByZWdpc3RlciB0byBzd2FwIGJldHdlZW4KPiBsYW5lcyAyIGFuZCAzIGlm
IFBIWSB0eXBlIGlzIFVTQi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaW50aHUgUmFqYSA8c2ludGh1
LnJhamFAdGkuY29tPgoKUmV2aWV3ZWQtYnk6IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUBrZXJuZWwu
b3JnPgoKCi0tCmNoZWVycywKLXJvZ2VyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
