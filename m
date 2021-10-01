Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6585C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:08:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAFD661A71
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:08:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AAFD661A71
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5qjneTFTBLtH9xPE/yVaNjJS+CKtPMPUfBXtAtG8E8=; b=Q43LHt5pJOFav6
	K5qCkuJyafK0pfg/NlSupO1AUVhjOZlAMeh9F3rEKATsUiCN0R/hqctl9neWXxg9rZEARzIYqklzJ
	+X6EZSmthla/H5vLDeAr0j6XX8rXYLuPkB1A1lQQtRV1npiyojwPCElTPElZZEK4xCFJic9MiDLx2
	y07xhpkZI+n8ZnBzoOFNdxgc/c/6gvWrYPXpIfv2KNWHs++YFvuQjxpIx/HitFYTCd6NGqrSqHY+f
	kOkJfFGh5mQJFZ92qbEKAKNDnMy9u84AepKaSDgMlB1UZc6a5pquzTB+XJBh5rFSUxOyKd7fcrOpH
	9e9GxnOopJr4XbcxgmgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFSr-00HQa7-7p; Fri, 01 Oct 2021 10:08:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFSo-00HQZJ-Jo
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 10:08:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6081A6134F;
 Fri,  1 Oct 2021 10:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633082902;
 bh=jIoDVs/Z/LVK/g4wkFRFhOcING/G9KP8xXEzegnDoIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C0iK1JzL0JPU29PHAivKdGtf+bGgGvCC86oEWoiUl+98XOPJw0PXPHomrbGsmvpBT
 pZq+/uWqqqsVs0oKgYKumeYQBwfa6toQ2lGiIapiRsOgeVb8f6Bq+qWyAPB14rjAvm
 eWekvrsLJa3S1VSNCBI11/pRgV2aiDRYLyO9D23Mc178tBn4Vwm7mWiYDcPCwWmmgW
 QBYfZfKbKrA7uZZBt8Nk/UrxvN3jKCmCmpbjJdj/8iR85IkI2Dj5xCS4Gw8dI+hjWr
 6jtB+JNmz1vFXJYyFAus4z33+a/r/gFBZO3N7/JgbUjkWrY481t2NC5seMbEw5zjdt
 kYsqdH3V3fl6A==
Date: Fri, 1 Oct 2021 15:38:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/4] dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY
 block
Message-ID: <YVbeEg0qX1jC0Udb@matsya>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-2-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_030822_692452_578E76E1 
X-CRM114-Status: UNSURE (   7.51  )
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

T24gMTMtMDktMjEsIDEwOjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IFRoZSBvbGQgYmluZGluZyB3YXMgY292
ZXJpbmcgdGhlIHdob2xlIERNVSBibG9jayBzcGFjZSAoRE1VIGJsb2NrCj4gY29udGFpbnMgQ1JV
IGJsb2NrIHdoaWNoIGNvbnRhaW5zIFVTQiBQSFkpLiBJdCB3YXMgYSBiYWQgZGVzaWduLAo+IG92
ZXJraWxsIGFuZCBhIG5vbi1nZW5lcmljIHNvbHV0aW9uLgo+IAo+IE5vcnRoc3RhcidzIFVTQiAy
LjAgUEhZIGlzIGEgc21hbGwgYmxvY2sgKHBhcnQgb2YgdGhlIENSVSBNRkQpIGFuZAo+IGJpbmRp
bmcgc2hvdWxkIGJlIGRlc2lnbmVkIHRvIHJlcHJlc2VudCB0aGF0IHByb3Blcmx5LiBSZXdvcmsg
dGhlCj4gYmluZGluZyB0byBtYXAganVzdCBQSFkgd2l0aCB0aGUgInJlZyIgcHJvcGVydHkgYW5k
IHVzZSBzeXNjb24gdG8KPiByZWZlcmVuY2Ugc2hhcmVkIHJlZ2lzdGVyIHRoYXQgY29udHJvbHMg
YmxvY2sgYWNjZXNzLgo+IAo+IFRoZSBvbGQgYmluZGluZyBpcyBkZXByZWNhdGVkIG5vdy4KCkFw
cGxpZWQsIHRoYW5rcwoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
