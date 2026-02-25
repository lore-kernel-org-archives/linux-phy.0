Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4851FD376C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 15:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1vN+PbJH6lTn5S9mdHOWPWL2kbBh1IgUsP0eiPhIgk=; b=VJI1vsWMCUVwOH
	s+Nana+S/j+bnPrOuatiEW8TOx5SEY7RmN+Ttpst0TMjS1daUcEd1QxttR68y7IIV/YkEO7eHFbRS
	3VfeBSp9i+deatRHlZ/9BMB5TjwVx9xA5jrMWhoslry+FegUeyOcaFReeweZox6tU6UIDMUz7Dwmd
	U/hh6nZJYlhzPDQ0dIY3LwLpAD247V9ijIkd1MzuqTzW9iD0++Jjt0ZiLNP3pKMYdbYLJo5YdAiYS
	bgYvaU/5e7gptBFJxdrh3tv8qKoH9G7sRJ0ZCGb8IC1nOPkX569O6yLMnepd3kpJGbgwPj14kD3sX
	E9OxbHBV89C6Qz+lBUXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvHE7-00000004Qmq-0W8R;
	Wed, 25 Feb 2026 15:55:03 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvHE3-00000004QlS-3Pl3
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 15:55:01 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B6B4CC143F2;
	Wed, 25 Feb 2026 15:55:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9603A5FDE6;
	Wed, 25 Feb 2026 15:54:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 45B1110368F3E;
	Wed, 25 Feb 2026 16:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772034895; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=pdiq6mn6L4gxkJn25+xNcL5IvX0bPmpsgCBQ2Uh6ltY=;
	b=TYNnSyRSm0vvWR9fe118q3WyE1KpARLT0IIj9bvMXW5/f531Lt5fhC2BzBgQypo6IHGKXc
	sCCwhpVReuEqTdgOYdQ79eKkfXCtAcgOpSXNDKvMDvNc6pUBS8UCmppcCjPt5hFBuzFpSk
	DkM6aARSfRPrPSg24Fl0drbqnYsE7qvMHvRSwxb/1Nu17Yc/+/r0vYJZ/b3dGKQf4yB+/6
	ASD/ak+Nw2Ovh+4HRhOWZFFBlg9qhS0QS8oFa0swXyC4PJDah1LRk4Hsc6UePn5KYb5PSt
	+RgCk7uPPL2seQyctqbVhjacGut0vUY5JZOfncEouaUNZmPXpJ6VXAr/jyZ8fw==
Mime-Version: 1.0
Date: Wed, 25 Feb 2026 16:54:50 +0100
Message-Id: <DGO5XYKELMA3.14FPOZ2FCD8NN@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: "Vladimir Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Philipp Zabel"
 <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
To: "Vinod Koul" <vkoul@kernel.org>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com> <aZ8OkJ4BH0-sVSHS@vaman>
In-Reply-To: <aZ8OkJ4BH0-sVSHS@vaman>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_075459_995771_8D1D343F 
X-CRM114-Status: GOOD (  12.09  )
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

T24gV2VkIEZlYiAyNSwgMjAyNiBhdCA0OjAwIFBNIENFVCwgVmlub2QgS291bCB3cm90ZToKPiBP
biAyNy0wMS0yNiwgMTg6MDksIFRow6lvIExlYnJ1biB3cm90ZToKPj4gRXllUTUgZW1iZWRzIGEg
c3lzdGVtLWNvbnRyb2xsZXIgY2FsbGVkIE9MQi4gSXQgZmVhdHVyZXMgbWFueSB1bnJlbGF0ZWQK
Pj4gcmVnaXN0ZXJzLCBhbmQgc29tZSBvZiB0aG9zZSBhcmUgcmVnaXN0ZXJzIHVzZWQgdG8gY29u
ZmlndXJlIHRoZQo+PiBpbnRlZ3JhdGlvbiBvZiB0aGUgUkdNSUkvU0dNSUkgQ2FkZW5jZSBQSFkg
dXNlZCBieSBNQUNCL0dFTSBpbnN0YW5jZXMuCj4+IAo+PiBXcmFwIGluIGEgbmVhdCBnZW5lcmlj
IFBIWSBwcm92aWRlciwgZXhwb3NpbmcgdHdvIFBIWXMgd2l0aCBzdGFuZGFyZAo+PiBwaHlfaW5p
dCgpIC8gcGh5X3NldF9tb2RlKCkgLyBwaHlfcG93ZXJfb24oKSBvcGVyYXRpb25zLgo+Cj4gSXMg
dGhlcmUgYSBkZXBlbmRlbmN5IG9mIHRoaXMgcGF0Y2ggd2l0aCByZXN0IG9mIHRoZSBzZXJpZXMu
IElmIG5vdAo+IHBsZWFzZSBwb3N0IGRpZmZlcmVudCBzZXJpZXMgZm9yIHN1YnN5c3RlbXMuCgpB
Q0suIEl0IGZlbHQgc2Vuc2libGUgdG8ga2VlcCBwYXRjaGVzIGNsb3NlIHRvZ2V0aGVyIHRvIHVu
ZGVyc3RhbmQgdGhlaXIKcmVhc29uaW5nLgogLSBjbGsgcGF0Y2hlcyBhcmUgdGhlcmUgYmVjYXVz
ZSB0aGV5IGltcGx5IHdlIGdldCBhIGRldi0+b2Zfbm9kZS4KICAgV2l0aG91dCB0aGVtIHdlIGRv
bid0IGFuZCB0aGVyZWZvcmUgdGhlIGRyaXZlciBpcyB1c2VsZXNzLgogLSBEVFMvTUlQUyBwYXRj
aGVzIGFyZSB0aGVyZSBiZWNhdXNlIHRoZXkgZXhwbG9pdCB0aGlzIG5ldyBkcml2ZXIuCiAgIFRo
ZXkgc2hvdyB0aGUgZmlyc3QgdXNlcnMgb2YgdGhpcyBkcml2ZXIuCgpXaWxsIHNwbGl0IGZvciBu
ZXh0IHJldmlzaW9uLgoKPj4gK3N0YXRpYyBpbnQgZXE1X3BoeV9pbml0KHN0cnVjdCBwaHkgKnBo
eSkKPj4gK3sKPj4gKwlzdHJ1Y3QgZXE1X3BoeV9pbnN0ICppbnN0ID0gcGh5X2dldF9kcnZkYXRh
KHBoeSk7Cj4+ICsJc3RydWN0IGVxNV9waHlfcHJpdmF0ZSAqcHJpdiA9IGluc3QtPnByaXY7Cj4+
ICsJc3RydWN0IGRldmljZSAqZGV2ID0gcHJpdi0+ZGV2Owo+PiArCXUzMiByZWc7Cj4+ICsKPj4g
KwlkZXZfZGJnKGRldiwgInBoeV9pbml0KGluc3Q9JXRkKVxuIiwgaW5zdCAtIHByaXYtPnBoeXMp
Owo+PiArCj4+ICsJd3JpdGVsKDAsIGluc3QtPmdwKTsKPj4gKwl3cml0ZWwoMCwgaW5zdC0+c2dt
aWkpOwo+PiArCj4+ICsJdWRlbGF5KDUpOwo+Cj4gVGhpcyBpcyBfc2FtZV8gYXMgZXhpdC4gV2h5
IG5vdCBjYWxsIHRoYXQgcm91dGluZSBoZXJlIGFuZCBkb2N1bWVudAo+IHdoeS4uLgoKQUNLIQoK
VGhhbmtzLAoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJu
ZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
