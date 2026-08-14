Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B7BFC5DF66
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vomys1uloyCgjSbkn6eZ/BpJofEiJFRclfb081XwM2g=; b=nnSGO7fqKIeBgA
	JN7xECQrOrdlTT7NOkYJsXM4QeqiRS/I8q2bz1ZkmhDg1dqDOA2jqfNq64UJC/eaBvHwATwUj+hnB
	/iGSwUtxbCHYfSHdyYVgtMjHLzKBYwm1+F3ONj4ity7TjIAxP9B79CTjBrX1akzHP4eK6hbmXXvSk
	J56DAPgQqE3Tc0yO92cU89fnLAK5QxpcUGFo2II62A6sm13jetvwh2a39HzdBpJPhKOCTlo33dXZZ
	w0g9b7IU9lV9ojWltfo9JHwJxjWR4juBd71GQTmQ2NhKE2r3Rpx9RvdgAZaUTcF3wUouTffizl6MJ
	A0mJmPw1dejCfwhj9N6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhJR-00000001pog-0Yrk;
	Fri, 14 Aug 2026 02:06:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhJP-00000001poX-3cAA
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 02:06:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B71343D06;
	Fri, 14 Aug 2026 02:06:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B28AE1F000E9;
	Fri, 14 Aug 2026 02:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786673183;
	bh=ytcy07OYll58mGNUv7bSH6a0dGOxB8RFENLaPK4k8lY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IIptuvhp78QpxcqvIDBU3X0zrpxiSm8AYzbPa6MtESn4whahalT4JnwtIgObT6XR/
	 8luGj12DTTR6JFBn6PC7sgq1badtjkYZuzS0IoUD5WC4Taoc9Hh8SHSW2tB1qm8FPz
	 jYt8NflfFnAJKxnql5D2qCus29QZvY+zKEjfNqYqhUFabOBJO6HntMEQyHWdVUd9O5
	 nLtSmzJRnnG70HRmlVf4T64d3+SYbWLNKsme+LJ0JhJ6EzzFVtfYXa3J9lnaM1ITNC
	 ExCxyWJM/msPgN7HB+vXj6hJc9KIAcSOjjF5bY9so2BRvmoihUh+XDWr0yMLwrYmN3
	 n1iqn/wwbEaLg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 06/38] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-6-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-6-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 02:06:22 +0000
Message-Id: <20260814020622.B28AE1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIElmIFBIWSBzZXR1cCBm
YWlscyBkdXJpbmcgYSBtb2RlIGNoYW5nZSwgdGhlIGRyaXZlciByZXR1cm5zIGFuIGVycm9yIGJ1
dCBsZWF2ZXMgdGhlIHNvZnR3YXJlIHN0YXRlIGB1ZHBoeS0+c3RhdHVzYCBpbmNvcnJlY3RseSBp
bmRpY2F0aW5nIHRoYXQgdGhlIFBIWSBpcyBzdGlsbCBwb3dlcmVkIG9uLCBsZWFkaW5nIHRvIGFu
IHVuYmFsYW5jZWQgY2xvY2sgZGlzYWJsZSBsYXRlci4KLSBbSGlnaF0gVGhlIGRyaXZlciBubyBs
b25nZXIgYXNzZXJ0cyB0aGUgUEhZIHJlc2V0cyBkdXJpbmcgcHJvYmUsIGxlYXZpbmcgdGhlIGhh
cmR3YXJlIGluIGFuIHVua25vd24sIHBvdGVudGlhbGx5IGFjdGl2ZSBzdGF0ZSBpbmhlcml0ZWQg
ZnJvbSB0aGUgYm9vdGxvYWRlci4gSWYgdGhlIGJvb3Rsb2FkZXIgbGVmdCB0aGUgUEhZIGVuYWJs
ZWQsIHRoZSBDQ0Ygd2lsbCBjdXQgaXRzIGNsb2NrcyBkdXJpbmcgbGF0ZSBpbml0Y2FsbCwgd2hp
Y2ggY2FuIGNhdXNlIGEgYnVzIGxvY2t1cC4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2MTQg
MDYvMzhdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIHNlYW1sZXNzIERQIHRha2VvdmVyIC0t
LQpjb21taXQgNTBiNDlmOWE0MDMwNGZlMjcwYzFkMzQ5NTIxNzM4NDUwNzQ3NmIxZApBdXRob3I6
IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgpTdWJq
ZWN0OiBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCBzZWFtbGVzcyBEUCB0YWtlb3ZlcgoKVGhp
cyBjb21taXQgcmVtb3ZlcyBzZWFtbGVzcyBEaXNwbGF5UG9ydCB0YWtlb3ZlciBmdW5jdGlvbmFs
aXR5IGZyb20gdGhlCnJvY2tjaGlwIHVzYmRwIGRyaXZlciwgYXMgaXQgaXMgaW5jb21wbGV0ZSBh
bmQgdW50ZXN0YWJsZS4gSXQgcmVtb3ZlcyB0aGUKaW5pdGlhbCBzdGF0dXMgY2hlY2tpbmcgYW5k
IHJlc2V0IGRlYXNzZXJ0aW9uIGxvZ2ljIGR1cmluZyBwcm9iZS4KCkNsb3NlczogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjYwNjEyMTY0MTA3LkM3REIyMUYwMDBFOUBzbXRw
Lmtlcm5lbC5vcmcvCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
Cj4gaW5kZXggM2ZjODIyMmZjYWVjMi4uNmNiOWY2YjRkYmY2ZCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xNDk1LDEwICsx
NDY4LDYgQEAgc3RhdGljIGludCBya191ZHBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAtCXJldCA9IHJrX3Vk
cGh5X2dldF9pbml0aWFsX3N0YXR1cyh1ZHBoeSk7Cj4gLQlpZiAocmV0KQo+IC0JCXJldHVybiBy
ZXQ7Cj4gLQoKW1NldmVyaXR5OiBIaWdoXQpTaW5jZSBya191ZHBoeV9nZXRfaW5pdGlhbF9zdGF0
dXMoKSBpcyByZW1vdmVkLCB0aGUgZHJpdmVyIG5vIGxvbmdlciBtYW5hZ2VzCnRoZSBpbml0aWFs
IGJvb3Rsb2FkZXIgc3RhdGUgb2YgdGhlIFBIWS4gSWYgdGhlIGJvb3Rsb2FkZXIgbGVmdCB0aGUg
UEhZCmVuYWJsZWQsIGNvdWxkIHRoZSBjbG9jayBmcmFtZXdvcmsncyBsYXRlIGluaXRjYWxsIGRp
c2FibGUgdGhlIGNsb2NrcyB3aGlsZQp0aGUgaGFyZHdhcmUgaXMgc3RpbGwgYWN0aXZlPwoKU2hv
dWxkIGEgZm9yY2VmdWwgcmtfdWRwaHlfcmVzZXRfYXNzZXJ0X2FsbCh1ZHBoeSkgYmUgYWRkZWQg
aGVyZSB0byBlbnN1cmUKdGhlIFBIWSBpcyBjbGVhbmx5IHN1c3BlbmRlZCBhbmQgcHJldmVudCBh
IGJ1cyBsb2NrdXAgd2hlbiB1bnVzZWQgY2xvY2tzCmFyZSBkaXNhYmxlZD8KCj4gIAltdXRleF9p
bml0KCZ1ZHBoeS0+bXV0ZXgpOwo+ICAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgdWRwaHkp
OwoKWyAuLi4gXQoKPiAJCXJrX3VkcGh5X2Rpc2FibGUodWRwaHkpOwo+IAkJcmV0ID0gcmtfdWRw
aHlfc2V0dXAodWRwaHkpOwo+IAkJaWYgKHJldCkKPiAJCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5
OiBIaWdoXQpJZiBya191ZHBoeV9zZXR1cCgpIGZhaWxzIGR1cmluZyBhIG1vZGUgY2hhbmdlLCBk
b2VzIHJldHVybmluZyBoZXJlIGxlYXZlCnVkcGh5LT5zdGF0dXMgaW5jb3JyZWN0bHkgaW5kaWNh
dGluZyB0aGUgUEhZIGlzIHN0aWxsIHBvd2VyZWQgb24/CgpJZiB0aGUgc3RhdHVzIGlzIG5vdCBj
bGVhcmVkLCBjb3VsZCBhIHN1YnNlcXVlbnQgdGVhcmRvd24gdmlhCnJrX3VkcGh5X3Bvd2VyX29m
ZigpIG9ic2VydmUgdGhlIHN0YWxlIHVkcGh5LT5zdGF0dXMgYW5kIGNhbGwKcmtfdWRwaHlfZGlz
YWJsZSgpIGFnYWluLCByZXN1bHRpbmcgaW4gYW4gdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDgxMy1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxNC0wLWI1YWQ5YzY4ZmExMUBjb2xsYWJv
cmEuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
