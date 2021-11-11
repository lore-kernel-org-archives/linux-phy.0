Return-Path: <SRS0=Lyxf=P6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD1EDC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 14:33:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A61EC6117A
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 14:33:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A61EC6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBrPVeUVDrlIkjaxFzvaPNU1FKfy1wuVbXPJE8jQpwA=; b=AMDJ16+QGuAQnE
	sj6+j5Unh23XaNSeIeIbfDvz4mmb/mTcSc7fGzxHuUiEt/LD0Z3Iuz5V6Gw8Yyo9VjfMsTm3fs7kM
	SDgDJiaSWYsJCENywhOlZNUlWo/G5m5MgDUYRIF4zYMKmj14DKecXs57DcHO15khZbYQkdIbX+HUH
	t/0NhaywTFuP5N++aNl6mYY02+VHJN7mJ9W+8Wt0x4dM6dxzz8KDtNLB0dt6b2yDNC1yDranFuHAr
	3IhFutOUJvVd2lMHBJRxNWse2IfCq8fhwcvkymDXkR3GsiQpDRUF7EJiPTwRZYYwXfgzNekPmVVTV
	xA7+VKrhpUPAsCHI0uXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlB8P-0089Tf-7F; Thu, 11 Nov 2021 14:33:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlB8M-0089Sz-8M
 for linux-phy@lists.infradead.org; Thu, 11 Nov 2021 14:32:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0FFC6101C;
 Thu, 11 Nov 2021 14:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636641177;
 bh=EC9DYAc3NJvXeSlqs7k2CbDhZ/g8MLLC3h+AFn04aso=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J1Va8X68rUvTU5oZspkY8vY51TdPAjY/D+hbyTMCHQO0sBA4NpfmdHHBjsOLy3uG0
 5jBqlYaiz2R3hm75ZveF1qBqEGO6+9ri5MMvCceYStyCgeAQBK7wMj2wZ4xKmOPdi2
 e+G5wboaeShjrlpodqPV7apZtmcz7iTX3zLoahQQ22u6GJ7h1hoaOr/y/eWsoerU0H
 OhMjCsj70d4tmZagR8n9MLN3TunqwIMr/Ump/GAObq1Ny7IiFev8O1EBWmize0ySfB
 FyF/PTwM1CfhAAqxKXhIjShTZXoU32I52jMTPSldKYKJXd2jPgAfGhoytdnd0V4DLC
 NGVxg6IxwUwoQ==
Date: Thu, 11 Nov 2021 15:32:54 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org, pali@kernel.org
Subject: Re: [PATCH phy 0/6] Armada 3720 comphy native implementation
Message-ID: <20211111153254.366f10c2@dellmb>
In-Reply-To: <YY0n2YdocuzVvrhy@matsya>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211110204508.429a0441@thinkpad> <YY0n2YdocuzVvrhy@matsya>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_063258_338246_CF29A5E8 
X-CRM114-Status: UNSURE (   9.57  )
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

T24gVGh1LCAxMSBOb3YgMjAyMSAxOTo1NToyOSArMDUzMApWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gT24gMTAtMTEtMjEsIDIwOjQ1LCBNYXJlayBCZWjDum4gd3JvdGU6
Cj4gPiBIZWxsbyBLaXNob24sCj4gPiAKPiA+IHNpbmNlIE1pcXVlbCBnYXZlIGhpcyBBY2sgZm9y
IHRoaXMgc2VyaWVzLCBJIHdvdWxkIGxpa2UgdG8gYXNrCj4gPiB3aGV0aGVyIHdlIGNvdWxkIGdl
dCB0aGlzIG1lcmdlZCBmb3IgNS4xNi4gVGhlb3JldGljYWxseSBpdCBjb3VsZAo+ID4gc3RpbGwg
Z28gaW4uIE9yIGRvIHdlIHN0aWxsIG5lZWQgdG8gd2FpdCBmb3IgR3JlZ29yeSdzIEFjaz8gIAo+
IAo+IEl0IGlzIHRvbyBsYXRlIGluIHRoZSBjeWNsZSBmb3IgdGhpcy4gUGh5IFBSIHdhcyBzZW50
IHVwIHRvIEdyZWcKPiBzb21ldGltZSBiYWNrLi4gSSB3aWxsIHJldmlldyBhZnRlciByYzEgaXMg
b3V0IGFuZCBkbyB0aGUgbmVlZGZ1bC4KPiAKPiBUaGFua3MKCk9LLCB0aGFua3MgOikKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
