Return-Path: <SRS0=gA2j=P4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08CC2C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 09:59:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FC0E61130
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 09:59:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8FC0E61130
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmOcWurIMozCjm884D+Vs5DBWm7/wv1qGKbV6U4tEjQ=; b=OVt7usZUXQNiDU
	DL0lxuxIiPoonlvOBEWmzr7IF2PS6xn0c7/mDTXJTa2zL8pM8+iJdP6eEmEWZfkBHjgo0qkpVBMKb
	zyV7+NEIGVnQyBcdJfWbT+iEsccDJWmBY/I8K8tsoNl9Lqz9E4K1+xFUQ3feyXLKpQIbBm7IJXgdZ
	YEUw21WlsHyQhlcU4DCwr1pzQJIf2LyBANOJbaMVqaZFWylnVfXh9E+0GHQv5bFGdYz5HTcn7JwMr
	vHJbK20AkWCx7wmlUvFrU6IDXp0wLdx7hnuU42MTixyfKCxLMj7/6cNpQaph9/9PZ94g9/gNs9EdS
	cUbcV/5r4dMvBmmtjpSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkNus-001NgI-Ad; Tue, 09 Nov 2021 09:59:46 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkNr1-001MHR-8r
 for linux-phy@lists.infradead.org; Tue, 09 Nov 2021 09:55:48 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 55D7B240011;
 Tue,  9 Nov 2021 09:55:42 +0000 (UTC)
Date: Tue, 9 Nov 2021 10:55:40 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 1/6] phy: marvell: phy-mvebu-a3700-comphy: Remove
 port from driver configuration
Message-ID: <20211109105540.5b02f4d2@xps13>
In-Reply-To: <20211028184242.22105-2-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-2-kabel@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_015547_502353_D3C3E7F5 
X-CRM114-Status: UNSURE (   9.46  )
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

SGkgTWFyZWssCgprYWJlbEBrZXJuZWwub3JnIHdyb3RlIG9uIFRodSwgMjggT2N0IDIwMjEgMjA6
NDI6MzcgKzAyMDA6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gCj4g
UG9ydCBudW1iZXIgaXMgZW5jb2RlZCBpbnRvIGFyZ3VtZW50IGZvciBTTUMgY2FsbC4gSXQgaXMg
emVybyBmb3IgU0FUQSwKPiBQQ0llIGFuZCBhbHNvIGJvdGggVVNCIDMuMCBQSFlzLiBJdCBpcyBu
b24temVybyBvbmx5IGZvciBFdGhlcm5ldCBQSFkKPiAoaW5jb3JyZWN0bHkgY2FsbGVkIFNHTUlJ
KSBvbiBsYW5lIDAuIEV0aGVybmV0IFBIWSBvbiBsYW5lIDEgYWxzbyB1c2VzIHplcm8KPiBwb3J0
IG51bWJlci4KPiAKPiBTbyBjb25zdHJ1Y3QgInBvcnQiIGJpdHMgZm9yIFNNQyBjYWxsIGFyZ3Vt
ZW50IGNhbiBiZSBjb25zdHJ1Y3RlZCBkaXJlY3RseQo+IGZyb20gUEhZIHR5cGUgYW5kIGxhbmUg
bnVtYmVyLgo+IAo+IENoYW5nZSBkcml2ZXIgY29kZSB0byBhbHdheXMgcGFzcyB6ZXJvIHBvcnQg
bnVtYmVyIGZvciBub24tZXRoZXJuZXQgUEhZcwo+IGFuZCBmb3IgZXRoZXJuZXQgUEhZcyBkZXRl
cm1pbmF0ZSBwb3J0IG51bWJlciBmcm9tIGxhbmUgbnVtYmVyLiBUaGlzCj4gc2ltcGxpZmllcyB0
aGUgZHJpdmVyLgo+IAo+IEFzIHBvcnQgbnVtYmVyIGZyb20gRFQgUEhZIGNvbmZpZ3VyYXRpb24g
aXMgbm90IHVzZWQgYW55bW9yZSwgcmVtb3ZlIHdob2xlCj4gZHJpdmVyIGNvZGUgd2hpY2ggcGFy
c2VzIGl0LiBUaGlzIGFsc28gc2ltcGxpZmllcyB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsg
QmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1p
cXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3MsCk1pcXXDqGwKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
