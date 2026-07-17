Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF55C44517
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 07:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7nac8q23wAxc9gr2b9x8U5xe1unUABhctaPWSNcVlw=; b=iXmRuuwqlYpeN3
	pBCSHK71uG/YVnxR4+P6AnheyETuEoYew6NGUej+vn1I86eqRQkctEXdjuGh8jhBstdY/4Oz8Wc70
	8/zDlbckV66+NHw2/7CtqOQlBNR/GFOkPzNLOH2p2zWcdsBJ3eT8vbvTWpWTU1t8S/4YWAcwrva+2
	ZLhzO3p6sOAimxA5B+0RGg3L0wU/O/sSPY3TlL9DIDR2pELIuOMEmvnvxLmoA+0I+A2j72s5NpLla
	7rnSiuNlNDYOcf9dfHnCFRlsEhj4FXFtVUBK9RfBIeZ0Y5UE8hh/B4hxBU6UoDXYgmvAz5Z/NQJm8
	71R6KkKbQONLA3XXS6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd7d-00000001Tcf-0AiE;
	Fri, 17 Jul 2026 07:36:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd7b-00000001TcQ-21ea
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 07:36:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 106C9418D7;
	Fri, 17 Jul 2026 07:36:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 915271F000E9;
	Fri, 17 Jul 2026 07:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784273794;
	bh=BIsp1ltMnRr84xlghlTilwM82ZDWiQ3SKYI7CyJYQHA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C1PAPEpuH1lQj4CbatXZ7srbjMTUF5cZ5GmE95anTg/pPRFIyQ94GFIw2jMKSFqJ0
	 TY9ZWtScNVFUfbhgtRV9dOcLBmJ4wgIjKpKHK+Igkulc3iFDDHylZykj49RO+hm4O8
	 yrdq+ivAux0cHha+uNFqFK2BFWt5HplccUn/931X+vlXar58akKCnDoNkp+CV/Vnz5
	 raOUVwpIUewTXy/i07Mm6AB6l3uO8gGLrWFjH2ycHZPEK4aIQMll9HSTNd+du3GQM1
	 PQaOG6CyhRX7g8V05akTT8sXKYad0N558PjKBkgeG/XyGJe9jRCWvxn47pnAxOZ7z5
	 Q8FwRV7aog8CA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/5] drm/bridge: Implement generic USB Type-C DP HPD
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
In-Reply-To: <20260717072323.96-2-kernel@airkyi.com>
References: <20260717072323.96-1-kernel@airkyi.com>
 <20260717072323.96-2-kernel@airkyi.com>
Date: Fri, 17 Jul 2026 07:36:34 +0000
Message-Id: <20260717073634.915271F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBtb2R1bGUgcmVn
aXN0ZXJzIGEgYnVzIG5vdGlmaWVyIHRvIGNhdGNoIGRldmljZSBhZGRpdGlvbnMgYnV0IGZhaWxz
IHRvIGl0ZXJhdGUgb3ZlciBhbHJlYWR5LXJlZ2lzdGVyZWQgZGV2aWNlcywgaWdub3JpbmcgYW55
IFR5cGUtQyBwb3J0cyBwcmVzZW50IGJlZm9yZSB0aGUgbW9kdWxlIHdhcyBsb2FkZWQuCi0gW0hp
Z2hdIFRoZSBtb2R1bGUgYXR0YWNoZXMgZGV2bS1tYW5hZ2VkIGJyaWRnZXMgdG8gYSBmb3JlaWdu
IFVTQi1DIGNvbnRyb2xsZXIgZGV2aWNlIGJ1dCBmYWlscyB0byBjbGVhbiB0aGVtIHVwIG9uIG1v
ZHVsZSB1bmxvYWQgb3IgZGV2aWNlIHJlbW92YWwsIGxlYWRpbmcgdG8gcmVzb3VyY2UgbGVha3Mg
YW5kIGFuIGV4ZWN1dGUtYWZ0ZXItZnJlZSBrZXJuZWwgcGFuaWMuCi0gW01lZGl1bV0gVGhlIHJl
dHVybiB2YWx1ZSBvZiBgYnVzX3JlZ2lzdGVyX25vdGlmaWVyKClgIGlzIGlnbm9yZWQuCi0tCgot
LS0gUGF0Y2ggWzFdOiBbUEFUQ0ggdjMgMS81XSBkcm0vYnJpZGdlOiBJbXBsZW1lbnQgZ2VuZXJp
YyBVU0IgVHlwZS1DIERQIEhQRCBicmlkZ2UgLS0tCmNvbW1pdCA1YzNjMTljYmI0NDkxYzU3MmZk
ZDM4NmM3OTdkZmJhOTQxMmFmMmIzCkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJv
Y2stY2hpcHMuY29tPgoKZHJtL2JyaWRnZTogSW1wbGVtZW50IGdlbmVyaWMgVVNCIFR5cGUtQyBE
UCBIUEQgYnJpZGdlCgpUaGlzIHBhdGNoIGltcGxlbWVudHMgYSBnZW5lcmljIERQIEhQRCBicmlk
Z2UgYmFzZWQgb24gYXV4LWhwZC1icmlkZ2UuYy4KSXQgbW9uaXRvcnMgVHlwZS1DIGJ1cyBldmVu
dHMgYW5kIGF1dG9tYXRpY2FsbHkgY3JlYXRlcyBhbiBIUEQgYnJpZGdlIHdoZW4KYSBUeXBlLUMg
cG9ydCBkZXZpY2UgY29udGFpbmluZyB0aGUgRFAgc3ZpZCBpcyByZWdpc3RlcmVkLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLXR5cGVjLWRwLWJyaWRnZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLXR5cGVjLWRwLWJyaWRnZS5jCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hdXgtaHBkLXR5cGVjLWRwLWJyaWRnZS5jCj4gQEAgLTAsMCArMSw1NCBAQApbIC4u
LiBdCj4gK3N0YXRpYyBpbnQgZHJtX3R5cGVjX2J1c19ldmVudChzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sgKm5iLAo+ICsJCQkgICAgICAgdW5zaWduZWQgbG9uZyBhY3Rpb24sIHZvaWQgKmRhdGEpCj4g
K3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IChzdHJ1Y3QgZGV2aWNlICopZGF0YTsKPiArCXN0
cnVjdCB0eXBlY19hbHRtb2RlICphbHQgPSB0b190eXBlY19hbHRtb2RlKGRldik7Cj4gKwo+ICsJ
aWYgKGFjdGlvbiAhPSBCVVNfTk9USUZZX0FERF9ERVZJQ0UpCj4gKwkJcmV0dXJuIE5PVElGWV9P
SzsKPiArCj4gKwkvKgo+ICsJICogYWx0LT5kZXYucGFyZW50LT5wYXJlbnQgOiBVU0ItQyBjb250
cm9sbGVyIGRldmljZQo+ICsJICogYWx0LT5kZXYucGFyZW50ICAgICAgICAgOiBVU0ItQyBjb25u
ZWN0b3IgZGV2aWNlCj4gKwkgKi8KPiArCWlmIChpc190eXBlY19wb3J0X2FsdG1vZGUoJmFsdC0+
ZGV2KSAmJiBhbHQtPnN2aWQgPT0gVVNCX1RZUEVDX0RQX1NJRCkKPiArCQlkcm1fZHBfaHBkX2Jy
aWRnZV9yZWdpc3RlcihhbHQtPmRldi5wYXJlbnQtPnBhcmVudCwKPiArCQkJCQkgICB0b19vZl9u
b2RlKGFsdC0+ZGV2LnBhcmVudC0+Zndub2RlKSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldpbGwgdGhp
cyBsZWFrIGRldm0gcmVzb3VyY2VzIG9uIHRoZSBjb250cm9sbGVyIGRldmljZSB3aGVuIGEgcG9y
dCBpcyByZW1vdmVkCmFuZCByZS1hZGRlZCwgc2luY2UgQlVTX05PVElGWV9ERUxfREVWSUNFIGlz
IGlnbm9yZWQ/CgpBbHNvLCBiZWNhdXNlIHRoZSBkZXZtIGNsZWFudXAgY2FsbGJhY2tzIGFyZSB0
aWVkIHRvIHRoZSBjb250cm9sbGVyIGRldmljZQpyYXRoZXIgdGhhbiB0aGlzIG1vZHVsZSwgY291
bGQgdGhpcyBjYXVzZSBhbiBleGVjdXRlLWFmdGVyLWZyZWUgcGFuaWM/CklmIHRoaXMgbW9kdWxl
IGFuZCBhdXgtaHBkLWJyaWRnZSBhcmUgdW5sb2FkZWQsIHRoZSBkZXZyZXMgY2FsbGJhY2tzIG9u
IHRoZQpjb250cm9sbGVyIHdpbGwgcG9pbnQgdG8gdW5tYXBwZWQgbWVtb3J5IHdoZW4gdGhlIGNv
bnRyb2xsZXIgaXMgbGF0ZXIgdW5ib3VuZC4KClsgLi4uIF0KPiArc3RhdGljIGludCBfX2luaXQg
ZHJtX2F1eF9ocGRfdHlwZWNfZHBfYnJpZGdlX21vZHVsZV9pbml0KHZvaWQpCj4gK3sKPiArCWJ1
c19yZWdpc3Rlcl9ub3RpZmllcigmdHlwZWNfYnVzLCAmZHJtX3R5cGVjX2V2ZW50X25iKTsKCltT
ZXZlcml0eTogTWVkaXVtXQpJcyBpdCBzYWZlIHRvIGlnbm9yZSB0aGUgcmV0dXJuIHZhbHVlIG9m
IGJ1c19yZWdpc3Rlcl9ub3RpZmllcigpIGhlcmU/CgpJZiB0aGUgbm90aWZpZXIgcmVnaXN0cmF0
aW9uIGZhaWxzLCB0aGUgbW9kdWxlIGluaXRpYWxpemF0aW9uIHdpbGwgc3VjY2VlZCBidXQKcmVt
YWluIG5vbi1mdW5jdGlvbmFsLgoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBtaXNz
IGV4aXN0aW5nIFR5cGUtQyBEUCBwb3J0cyB0aGF0IHdlcmUgcHJvYmVkIGJlZm9yZSB0aGlzCm1v
ZHVsZSB3YXMgbG9hZGVkPwoKYnVzX3JlZ2lzdGVyX25vdGlmaWVyKCkgb25seSB0cmlnZ2VycyBu
b3RpZmljYXRpb25zIGZvciBkZXZpY2VzIGFkZGVkIGFmdGVyCnJlZ2lzdHJhdGlvbi4gU2luY2Ug
dGhlcmUgaXMgbm8gYnVzX2Zvcl9lYWNoX2RldigpIGl0ZXJhdGlvbiBvdmVyIGV4aXN0aW5nCmRl
dmljZXMgb24gdGhlIHR5cGVjX2J1cyBhZnRlciByZWdpc3RlcmluZyB0aGUgbm90aWZpZXIsIHBy
ZS1leGlzdGluZyBwb3J0cwptaWdodCBuZXZlciBnZXQgYW4gSFBEIGJyaWRnZSBjcmVhdGVkLgoK
PiArCj4gKwlyZXR1cm4gMDsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNzA3MjMyMy45Ni0xLWtlcm5lbEBhaXJreWku
Y29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
