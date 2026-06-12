Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C754CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdr9epA5PNnHXDxRI4t8b0M82Q+Sz5n/gxWitrwY9As=; b=OkXpvKxCYffyec
	rLL10nHjUF8No2aj3uKVFtygwTAfw0LNlGOmTml7eKxI9K0XsH8JHo0hfv2xht428dGpKWD/m7jb5
	0a2gOTHnSKBzkwyI7+dodpJEGJFUUJUtzLsj/ql9pzfv5yoH2fZf4Gb7DoXUUJdQd1UXC9INcbXie
	fRVowHdYbm7ecm2bRf4Cc3yeALLfxYn/+CgVyS4Rgs9XbAQHQV6DtJVWm5we8OUev66JdUuoq6dD2
	lCtgVCdD3j0/rhOFiR3t+/7XkGme3tgXs5sp6gLplQVm5Gy9icc8zrqZMcYeY6G7ZrZg5gCakYj/9
	55uY5s0W4ni5nE+iJg1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY56z-0000000BJO5-42KQ;
	Fri, 12 Jun 2026 16:52:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY56y-0000000BJNn-0pY1
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 16:52:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5BD47600AF;
	Fri, 12 Jun 2026 16:52:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A480A1F000E9;
	Fri, 12 Jun 2026 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781283123;
	bh=/xL5lxno5eFzvLuETBDtARKdEehzYZ62HoRJOsoRVi4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jHQIakx9ZCFc/edP7ZgYzIP8e5i+vrSlCqYS/fzh7QwOR6O7iSsyGkOoe8cPWvfUx
	 LFoT2XVxKwYXHeSVj1/ts7Ot53P/2pCte7VIixMdJt6I+tSLafLi+W5tV7DSF7aPFt
	 8C4I9H2Q09GptyRfwB0Jm5esupG255bJNzcItCLVJkXdUDJhNBp8pfVYBzU5L2F8gE
	 nsCsilgNmTas4+3l6uivy//PgREiQZI14J66h/sd3pnyoBL1UANZOOKUU9QWGyeSVV
	 OoWntmX7ojchlQ75hHKL1IMoQ6FVnhaeHUHE/ccwTadX19mmqrE3IeGMZj/i6whPNw
	 7xUU9Hstw4i5Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 13/18] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-13-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-13-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 16:52:02 +0000
Message-Id: <20260612165202.A480A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJZiBgcmtfdWRwaHlfaW5pdCgpYCBmYWlscyBkdXJpbmcgYSBtb2RlIGNoYW5nZSBv
ciBvcmllbnRhdGlvbiBzd2l0Y2gsIHRoZSBQSFkgaXMgbGVmdCBpbiBhIHJlc2V0IHN0YXRlIGJ1
dCBgdWRwaHktPnN0YXR1c2AgaXMgbm90IHVwZGF0ZWQgYW5kIGBwaHlfbmVlZHNfcmVpbml0YCBp
cyBwZXJtYW5lbnRseSBsb3N0LiBTdWJzZXF1ZW50IG9wZXJhdGlvbnMgd2lsbCBzaWxlbnRseSBm
YWlsIHRvIHJlaW5pdGlhbGl6ZSB0aGUgUEhZLgotLQoKY29tbWl0IGM0NjE4ZDFiMGI0YTQyZDQ1
MDVmYjI1NWEzMmVmNTEzZGMyMWU3NTkKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZW5hbWUg
bW9kZV9jaGFuZ2UgdG8gcGh5X25lZWRzX3JlaW5pdAoKVGhpcyBwYXRjaCByZW5hbWVzIHRoZSBt
b2RlX2NoYW5nZSBwcm9wZXJ0eSB0byBwaHlfbmVlZHNfcmVpbml0LiBUaGUgcmVuYW1lCnByZXBh
cmVzIHRoZSBkcml2ZXIgdG8gYWxzbyB0cmlnZ2VyIGEgUEhZIHJlLWluaXRpYWxpemF0aW9uIHdo
ZW4gdGhlIGNhYmxlCm9yaWVudGF0aW9uIGNoYW5nZXMsIG5vdCBqdXN0IHdoZW4gdGhlIG1vZGUg
Y2hhbmdlcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBp
bmRleCA3MjU1YzgwZTBmZTJmLi5hM2I0ZTJlMGY1Nzg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKWyAuLi4gXQo+IEBAIC05NjgsMTUgKzk2OCwxNSBA
QCBzdGF0aWMgaW50IHJrX3VkcGh5X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4
IG1vZGUpCj4gIAl9Cj4gIAo+ICAJaWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQSFlfTU9ERV9OT05F
KSB7Cj4gLQkJdWRwaHktPm1vZGVfY2hhbmdlID0gZmFsc2U7Cj4gKwkJdWRwaHktPnBoeV9uZWVk
c19yZWluaXQgPSBmYWxzZTsKPiAgCQlyZXQgPSBya191ZHBoeV9zZXR1cCh1ZHBoeSk7Cj4gIAkJ
aWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCj4gIAkJaWYgKHVkcGh5LT5tb2RlICYgVURQ
SFlfTU9ERV9VU0IpCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2Up
Owo+IC0JfSBlbHNlIGlmICh1ZHBoeS0+bW9kZV9jaGFuZ2UpIHsKPiAtCQl1ZHBoeS0+bW9kZV9j
aGFuZ2UgPSBmYWxzZTsKPiArCX0gZWxzZSBpZiAodWRwaHktPnBoeV9uZWVkc19yZWluaXQpIHsK
PiArCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICAJCWlmICh1ZHBoeS0+bW9k
ZSA9PSBVRFBIWV9NT0RFX0RQKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHks
IHRydWUpOwo+ICAKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2Vk
IGJ5IHRoaXMgcGF0Y2gsIGJ1dCBpZiBya191ZHBoeV9pbml0KCkgZmFpbHMKaW1tZWRpYXRlbHkg
YWZ0ZXIgdGhpcyBibG9jaywgdGhlIFBIWSBpcyBsZWZ0IGluIGEgcmVzZXQgc3RhdGUgd2hpbGUg
dGhlCnVkcGh5LT5waHlfbmVlZHNfcmVpbml0IGZsYWcgaXMgcGVybWFuZW50bHkgbG9zdC4KCldo
ZW4gY2hhbmdpbmcgbW9kZXMgb24gYW4gYWxyZWFkeSBhY3RpdmUgUEhZLCBya191ZHBoeV9wb3dl
cl9vbigpIGNhbGxzCnJrX3VkcGh5X2luaXQoKSB3aGljaCBpbW1lZGlhdGVseSBhc3NlcnRzIGFs
bCBQSFkgcmVzZXRzLiBJZiBya191ZHBoeV9pbml0KCkKc3Vic2VxdWVudGx5IGZhaWxzIChlLmcu
LCBkdWUgdG8gYSBQTEwgbG9jayB0aW1lb3V0KSwgaXQgbGVhdmVzIHRoZSByZXNldHMKYXNzZXJ0
ZWQgYW5kIHJldHVybnMgYW4gZXJyb3IuCgpIb3dldmVyLCB1ZHBoeS0+cGh5X25lZWRzX3JlaW5p
dCBpcyBjbGVhcmVkIHJpZ2h0IGJlZm9yZSB0aGlzLCBhbmQKdWRwaHktPnN0YXR1cyBpcyBub3Qg
cm9sbGVkIGJhY2suIEFzIGEgcmVzdWx0LCB0aGUgZHJpdmVyJ3Mgc3RhdGUgdHJhY2tlcgpzdGls
bCBiZWxpZXZlcyB0aGUgcHJldmlvdXNseSBhY3RpdmUgbW9kZXMgYXJlIG9wZXJhdGlvbmFsLCBi
dXQgdGhlIGhhcmR3YXJlIGlzCmNvbXBsZXRlbHkgaW4gcmVzZXQuCgpXaWxsIGZ1dHVyZSBjYWxs
cyB0byBya191ZHBoeV9wb3dlcl9vbigpIHNlZSBwaHlfbmVlZHNfcmVpbml0ID09IGZhbHNlIGFu
ZApza2lwIGluaXRpYWxpemF0aW9uLCBwZXJtYW5lbnRseSBicmVha2luZyB0aGUgYWN0aXZlIGlu
dGVyZmFjZXMgdW50aWwgYSBmdWxsCnN5c3RlbSByZWJvb3Qgb3IgbW9kdWxlIHJlbG9hZD8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA2MTItcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12NS0wLWVmYzgzMDY5ODY5ZkBjb2xsYWJvcmEu
Y29tP3BhcnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
