Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002E8C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 20:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbacIR6ZQYfoNJjeHMpIK4ruDqPcaSTC50DU6ui0OiI=; b=h08XeRWRsZHNwV
	KHHju51XsqCJ9ixuE9kjREkVpQj9J4nqDWzNOlfhGlsdSnWhWIlZhaNxEiNstYo4RtZFbisPcFwJ2
	yhMVlTJRFyy3Xd2aZaJgYAVyvyFxsYgz3ZY2BE/V6g2RsCvFzddyYR28GNVso1M9k16yWIFlys69o
	49dt8kAY2FsMiqQXKNxZVpwhks/IzNdoV7Fcq1Osj0tp0abZUC9I2B1frgAs3nIUD+7ndhwxjgw5E
	0I2JV5RMzVUakMfQD+2ugBPWARnpkWOkZrE2WeiKqYfTLY7UIJLvDkrPf8Tko6JbwxBavr8NoBkd9
	gdTY2ffShtIvAstHRBBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4mec-000000070CC-2KLX;
	Tue, 15 Apr 2025 20:13:10 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4mdH-00000006zwW-3RHt
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 20:11:49 +0000
Message-ID: <1bf43164-e6de-445f-9c3d-94d69a149a66@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744747904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RabZih8waE5zBMPNF2lBOJUi8w/qOpEgWhUZo/pD2tQ=;
	b=O3GVqXD9iOIsI52flwOjSVur5HU3PgOU5fbpc57OxHmva1NCjRiLS3V/gZndAcPFdSz0hH
	+3TID8Ieq7Ss4fSV6mO6ilT29CisQEvnPNElZ/+7NU9iJd3ZXH6cfIAsamwuiabctOjntG
	vY9f2nSjYZMsUyFy/Moiy45pVBhNhl0=
Date: Wed, 16 Apr 2025 01:40:51 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v3 13/17] drm/bridge: cdns-dsi: Fix REG_WAKEUP_TIME value
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jayesh Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
 <20250414-cdns-dsi-impro-v3-13-4e52551d4f07@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250414-cdns-dsi-impro-v3-13-4e52551d4f07@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_131148_002123_7CFEA09E 
X-CRM114-Status: GOOD (  28.78  )
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

SGkgVG9taSwKCk9uIDE0LzA0LzI1IDE2OjQxLCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPiBUaGUg
ZHJpdmVyIHRyaWVzIHRvIGNhbGN1bGF0ZSB0aGUgdmFsdWUgZm9yIFJFR19XQUtFVVBfVElNRS4g
SG93ZXZlciwKPiB0aGUgY2FsY3VsYXRpb24gaXRzZWxmIGlzIG5vdCBjb3JyZWN0LCBhbmQgdG8g
YWRkIG9uIGl0LCB0aGUgcmVzdWx0aW5nCj4gdmFsdWUgaXMgYWxtb3N0IGFsd2F5cyBsYXJnZXIg
dGhhbiB0aGUgZmllbGQncyBzaXplLCBzbyB0aGUgYWN0dWFsCj4gcmVzdWx0IGlzIG1vcmUgb3Ig
bGVzcyByYW5kb20uPgo+IEFjY29yZGluZyB0byB0aGUgZG9jcywgZmlndXJpbmcgb3V0IHRoZSB2
YWx1ZSBmb3IgUkVHX1dBS0VVUF9USU1FCj4gcmVxdWlyZXMgSFcgY2hhcmFjdGVyaXphdGlvbiBh
bmQgdGhlcmUncyBubyB3YXkgdG8gaGF2ZSBhIGdlbmVyaWMKPiBhbGdvcml0aG0gdG8gY29tZSB1
cCB3aXRoIHRoZSB2YWx1ZS4gVGhhdCBkb2Vzbid0IGhlbHAgYXQgYWxsLi4uCj4gCj4gSG93ZXZl
ciwgd2Uga25vdyB0aGF0IHRoZSB2YWx1ZSBtdXN0IGJlIHNtYWxsZXIgdGhhbiB0aGUgbGluZSB0
aW1lLCBhbmQsCj4gYXQgbGVhc3QgaW4gbXkgdW5kZXJzdGFuZGluZywgdGhlIHByb3BlciB2YWx1
ZSBmb3IgaXQgaXMgcXVpdGUgc21hbGwuCj4gVGVzdGluZyBzaG93cyB0aGF0IHNldHRpbmcgaXQg
dG8gMS8xMCBvZiB0aGUgbGluZSB0aW1lIHNlZW1zIHRvIHdvcmsKPiB3ZWxsLiBBbGwgdmlkZW8g
bW9kZXMgZnJvbSBteSBIRE1JIG1vbml0b3Igd29yayB3aXRoIHRoaXMgYWxnb3JpdGhtLgo+IAo+
IEhvcGVmdWxseSB3ZSdsbCBnZXQgbW9yZSBpbmZvcm1hdGlvbiBvbiBob3cgdG8gY2FsY3VsYXRl
IHRoZSB2YWx1ZSwgYW5kCj4gd2UgY2FuIHRoZW4gdXBkYXRlIHRoaXMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1jb3JlLmMgfCA4
ICsrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMt
ZHNpLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1jb3Jl
LmMKPiBpbmRleCAxODI4NDVjNTRjM2QuLmZiMDYyM2QzZjg1NCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1kc2ktY29yZS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYwo+IEBAIC03ODYsNyArNzg2
LDEzIEBAIHN0YXRpYyB2b2lkIGNkbnNfZHNpX2JyaWRnZV9hdG9taWNfcHJlX2VuYWJsZShzdHJ1
Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+ICAKPiAgCXR4X2J5dGVfcGVyaW9kID0gRElWX1JPVU5E
X0RPV05fVUxMKCh1NjQpTlNFQ19QRVJfU0VDICogOCwKPiAgCQkJCQkgICAgcGh5X2NmZy0+aHNf
Y2xrX3JhdGUpOwo+IC0JcmVnX3dha2V1cCA9IChwaHlfY2ZnLT5oc19wcmVwYXJlICsgcGh5X2Nm
Zy0+aHNfemVybykgLyB0eF9ieXRlX3BlcmlvZDsKCkkgdGhpbmsgdGhlIHByaW1hcnkgcG9pbnQg
b2YgZmFpbHVyZSBpbiB0aGUgb3JpZ2luYWwgY2FsY3VsYXRpb24gaXMgZHVlCnRvIGZhY3QgdGhh
dCB0aGUgaHNfcHJlcGFyZSBhbmQgaHNfemVybyBhcmUgZGVmaW5lZCBpbiBwaWNvc2Vjb25kcyAo
cHMpLAphbmQgdGhlIHR4X2J5dGVfcGVyaW9kIGlzIGluIG5hbm9zZWNvbmRzIChucykgYXMgZXZp
ZGVudCBieSB0aGUgdXNhZ2Ugb2YKTlNFQ19QRVJfU0VDIG1hY3JvLgoKVGhlIHJlc3VsdGluZyB0
eF9ieV9wZXJpb2QgaXMgMTAwMCB0aW1lcyBzbWFsbGVyLCBhbmQgdGhlIHJlZ193YWtldXAgLSBh
CjEwMDAgdGltZXMgbGFyZ2VyLiA9KQoKRnVydGhlciwgdGhlIFRSTSBkb2VzIGluZGVlZCBtZW50
aW9uIHRoYXQgc29tZSBjaGFyYWN0ZXJpemF0aW9uIGlzCnJlcXVpcmVkIHRvIGZpbmUgdHVuZSB0
aGUgZXhhY3QgcmVnX3dha2V1cCB2YWx1ZSwgYnV0IGl0IGVuZHMgdXAgZ2l2aW5nCmEgdmFndWUt
aXNoIGZvcm11bGEgLQoKLT4gcmVnX3dha2V1cF90aW1lID0gd2FrZXVwX3RpbWVfZHNpICsgd2Fr
ZXVwX3RpbWVfY2wgKyB3YWtldXBfdGltZV9kbCArCgkJICAgICAoaHNfaG9zdF9lb3Qgw5cgNCAv
IGxhbmVfbmIpCgpJIHRoaW5rIHRoZSBjaGFyYWN0ZXJpemF0aW9uIG1heSBvbmx5IGJlIHJlcXVp
cmVkIGZvciB0aGUKd2FrZXVwX3RpbWVfZHNpIGNvbXBvbmVudC4gVGhlIGV4aXN0aW5nIGZvcm11
bGEgaW4gdGhlIGRyaXZlciAoYWZ0ZXIKY29ycmVjdGVkIGZvciB0aW1lIHVuaXQpIGlzIHRoZSB3
YWtldXBfdGltZV9kbCBjb21wb25lbnQuIHdha2V1cF90aW1lX2NsCnNlZW1zIHRvIGJlIGEgcmFu
Z2Ugb2YgY29uc3RhbnRzLCB3aGljaCB0aGUgcGh5LWNvcmUgaXMgYXV0by1zZXR0bGluZyBvbgpk
ZWZhdWx0cy4gVGhlIGRvY3VtZW50IG5ldmVyIHNwZWNpZmljYWxseSBtZW50aW9ucyAiaHNfaG9z
dF9lb3QiIG90aGVyCnRoYW4gdGhlIGVxdWF0aW9uLCBidXQgb24gdGhlIG9mZi1jaGFuY2UgaXQg
aXMgc2FtZSBhcyBwaHlfY2ZnLT5lb3QsCnRoZW4gdGhhdCdzIDAgYW5kIGF2b2lkYWJsZS4KCj4g
Kwo+ICsJLyoKPiArCSAqIEVzdGltYXRlZCB0aW1lIFtpbiBjbG9jayBjeWNsZXNdIHRvIHBlcmZv
cm0gTFAtPkhTIG9uIEQtUEhZLgo+ICsJICogSXQgaXMgbm90IGNsZWFyIGhvdyB0byBjYWxjdWxh
dGUgdGhpcywgc28gZm9yIG5vdywKPiArCSAqIHNldCBpdCB0byAxLzEwIG9mIHRoZSB0b3RhbCBu
dW1iZXIgb2YgY2xvY2tzIGluIGEgbGluZS4KPiArCSAqLwo+ICsJcmVnX3dha2V1cCA9IGRzaV9j
ZmcuaHRvdGFsIC8gbmxhbmVzIC8gMTA7Cj4gIAl3cml0ZWwoUkVHX1dBS0VVUF9USU1FKHJlZ193
YWtldXApIHwgUkVHX0xJTkVfRFVSQVRJT04odG1wKSwKPiAgCSAgICAgICBkc2ktPnJlZ3MgKyBW
SURfRFBIWV9USU1FKTsKPiAgCj4gCgotLSAKUmVnYXJkcwpBcmFkaHlhCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
