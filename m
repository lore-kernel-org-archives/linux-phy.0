Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 017EECA9ED0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 03:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlWjl1EE11b0+M1+7ngpzo6Pu5AV3Uvu1uAEiRt9dGU=; b=WmcKwJ7oltv1xI
	8bH81KjM/zP+NB4IAVq0MYbNJhaAVVSt2yWDP2aSZiFkqqeq9G/iG+6+pt84zwbf+XLCNWfGqUJSQ
	wluD5t0YSMj/FDs8c6jvAyfZXjZDuVgjx16GHlaYPNwuuNMep9edRlcHL8Fx1Mw0UMpyoSlZcZJNO
	C7K/yVsCtVT/ckIN0I2t0CPpS/sXLlYJj2UHaxT1C1pvNGK7iltUI7MIEXHkkpb8TZM+bdywygprY
	1NHAorvz/m6RheCM+WeV6sp94qDDaaAuR4s8w72VN00n920hf0YYIP6Vx50fDKqj664B9KbHtOuzd
	OMbgwUK5yhlLTh0lSTqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGSoT-0000000Br5J-2FCh;
	Tue, 13 Oct 2026 03:04:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGSoS-0000000Br5C-04oa
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 03:04:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D0653600D1;
	Tue, 13 Oct 2026 03:04:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21ED81F000FF;
	Tue, 13 Oct 2026 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791860662;
	bh=HS6a2iulqpYKpK71stfd+hIobqPQxnakrC1OmT6y3/c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g5VGMtP0KSM50g/GGiGJCLpsS2ATUwKnt3CqbeEkzq6XJlK/9qmoaPG+JI0QRiiEx
	 okxiekq2mmcKi8zqpLfHvrGDYQe7ENP/ZrK1yLjLMCmsjxgDK/FdEEy14DgMhJEk/S
	 Xqs0XBT4TpRYb8V4a/h+3M69hA+eujTVconLss1osgtckUx1ro7C3Rr97w9we9bZzt
	 iixDJs/eYTLNkeUPQIALVmrHBajIikGow9kB4ZYJOUjsRkH8yzpgtdA//dr6gSQwod
	 g8GUe4AuuwIy/dKGWdA+n0AhYkcyy/Y26yBqJo7qFKrzo6kHRhBKitR6Q2Fg2dIIRP
	 UIR3iGrOw6Ezw==
Message-ID: <sashiko-outbox-168888@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v2] phy: qcom-mipi-csi2: round the requested settle
 interval up
To: "Jizhou Tong" <fqwqf@fqwqf.xyz>
Cc: linux-phy@lists.infradead.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <010601a1332f343c-b1381230-9344-4bef-a709-99e07b18d513-000000@ap-northeast-1.amazonses.com>
References: <010601a1251fbfb9-9afc4070-5194-4714-86b1-5358791e7770-000000@ap-northeast-1.amazonses.com>
 <010601a1332f343c-b1381230-9344-4bef-a709-99e07b18d513-000000@ap-northeast-1.amazonses.com>
Date: Tue, 13 Oct 2026 03:04:21 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tLW1p
cGktY3NpMjogdmFsaWQgMC12YWx1ZSBzZXR0bGUgY291bnQgcmVqZWN0ZWQgYXMgZXJyb3IKLS0K
CmNvbW1pdCAxZjhjYzJmOWFhOTU5ODAxYThmNzA5NTI1ZjcxZGY0NWM2MzAwYzA5CkF1dGhvcjog
Sml6aG91IFRvbmcgPGZxd3FmQGZxd3FmLnh5ej4KCnBoeTogcWNvbS1taXBpLWNzaTI6IHJvdW5k
IHRoZSByZXF1ZXN0ZWQgc2V0dGxlIGludGVydmFsIHVwCgpUaGUgc2V0dGxpbmcgY291bnRlciBy
ZXByZXNlbnRzIHRoZSByZXF1ZXN0ZWQgaW50ZXJ2YWwgaW4gdGltZXIgdGlja3MsCndpdGggdGhl
IGV4aXN0aW5nIHNpeC10aWNrIGhhcmR3YXJlIG9mZnNldC4gVHJ1bmNhdGluZyB0aGUgZGl2aXNp
b24KcHJvZ3JhbXMgZmV3ZXIgdGlja3MgdGhhbiByZXF1ZXN0ZWQgd2hlbiB0aGUgaW50ZXJ2YWwg
aXMgbm90IGFuIGV4YWN0Cm11bHRpcGxlIG9mIHRoZSB0aW1lciBwZXJpb2QuIFJvdW5kaW5nIHRo
ZSBmaW5hbCBkaXZpc2lvbiBhbG9uZSBpcwppbnN1ZmZpY2llbnQsIGFzIHRoZSBlYXJsaWVyIHVu
aXQgaW50ZXJ2YWwgY2FsY3VsYXRpb24gYWxyZWFkeSByb3VuZHMgZG93bi4KCkxpbms6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC9zYXNoaWtvLW91dGJveC0xNjYzOTlAa2VybmVsLm9yZy8K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0z
cGgtZHBoeS5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1k
cGh5LmMKPiBpbmRleCA5NjZkNzljOThmOWIyLi5mMDc2OTliYTFmZGU2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCj4gKysr
IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMKPiBA
QCAtMjIwLDIzICsyMjEsMTkgQEAgc3RhdGljIHZvaWQgcGh5X3Fjb21fbWlwaV9jc2kyX3Jlc2V0
KHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlICpjc2kycGh5KQo+ICAgKi8KPiAgc3RhdGljIHU4
IHBoeV9xY29tX21pcGlfY3NpMl9zZXR0bGVfY250X2NhbGMoczY0IGxpbmtfZnJlcSwgdTMyIHRp
bWVyX2Nsa19yYXRlKQo+ICB7ClsgLi4uIF0KPiAtCWlmICgodF9oc19zZXR0bGVfcHMgLyB0aW1l
cl9wZXJpb2RfcHMpIDwgNikKPiArCWlmIChkaXZfdTY0KHRfaHNfc2V0dGxlX3BzLCB0aW1lcl9w
ZXJpb2RfcHMpIDwgNikKPiAgCQlyZXR1cm4gMDsKPiAgCj4gLQlzZXR0bGVfY250ID0gdF9oc19z
ZXR0bGVfcHMgLyB0aW1lcl9wZXJpb2RfcHMgLSA2Owo+ICsJc2V0dGxlX2NudCA9IERJVl9VNjRf
Uk9VTkRfVVAodF9oc19zZXR0bGVfcHMsIHRpbWVyX3BlcmlvZF9wcykgLSA2Owo+ICAKPiAgCXJl
dHVybiBzZXR0bGVfY250Owo+ICB9CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSWYgdGhlIHJlcXVpcmVk
IHNldHRsZSB0aW1lIGV2YWx1YXRlcyB0byBleGFjdGx5IDYgdGltZXIgcGVyaW9kcywKRElWX1U2
NF9ST1VORF9VUCh0X2hzX3NldHRsZV9wcywgdGltZXJfcGVyaW9kX3BzKSB3aWxsIGVxdWFsIDYs
IGFuZApzZXR0bGVfY250IHdpbGwgY29ycmVjdGx5IGV2YWx1YXRlIHRvIDAuCgpIb3dldmVyLCB0
aGUgY2FsbGVyIHBoeV9xY29tX21pcGlfY3NpMl9sYW5lc19lbmFibGUoKSB0cmVhdHMgYSAwIHJl
dHVybgp2YWx1ZSBhcyBhbiBlcnJvcjoKCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1p
cGktY3NpMi0zcGgtZHBoeS5jOnBoeV9xY29tX21pcGlfY3NpMl9sYW5lc19lbmFibGUoKSB7CiAg
ICAuLi4KCXNldHRsZV9jbnQgPSBwaHlfcWNvbV9taXBpX2NzaTJfc2V0dGxlX2NudF9jYWxjKGNm
Zy0+bGlua19mcmVxLCBjc2kycGh5LT50aW1lcl9jbGtfcmF0ZSk7CglpZiAoIXNldHRsZV9jbnQp
CgkJcmV0dXJuIC1FTk9ERVY7CiAgICAuLi4KfQoKQmVjYXVzZSBhIDAgY291bnQgaXMgYSB2YWxp
ZCBoYXJkd2FyZSBjb25maWd1cmF0aW9uIChpbmRpY2F0aW5nIG5vIGFkZGl0aW9uYWwKdGltZXIg
dGlja3MgYXJlIG5lZWRlZCBiZXlvbmQgdGhlIGJhc2VsaW5lIDYpLCBkb2VzIHRoaXMgd3Jvbmdm
dWxseSBmYWlsCmRldmljZSBpbml0aWFsaXphdGlvbiBmb3IgY29tYmluYXRpb25zIG9mIGxpbmsg
ZnJlcXVlbmNpZXMgYW5kIHRpbWVyIGNsb2Nrcwp0aGF0IGV4YWN0bHkgcmVxdWlyZSA2IHRpbWVy
IHBlcmlvZHM/CgpDb3VsZCB0aGUgY2FsbGVyJ3MgZXJyb3IgaGFuZGxpbmcgYmUgdXBkYXRlZCB0
byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gYSB2YWxpZAowIGNvdW50IGFuZCBhbiBhY3R1YWwgZXJy
b3IsIHBlcmhhcHMgYnkgaGF2aW5nCnBoeV9xY29tX21pcGlfY3NpMl9zZXR0bGVfY250X2NhbGMo
KSByZXR1cm4gYSBuZWdhdGl2ZSBlcnJvciBjb2RlIGZvciBpbnZhbGlkCmNvbmZpZ3VyYXRpb25z
PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8wMTA2MDFhMTMzMmYzNDNjLWIxMzgxMjMwLTkzNDQtNGJlZi1hNzA5LTk5ZTA3YjE4ZDUxMy0w
MDAwMDBAYXAtbm9ydGhlYXN0LTEuYW1hem9uc2VzLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
