Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31992CC6B34
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 08:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVj47sx6h59qxMl+Dx9DYSKgq+lIONR4eZIAmBLi6CQ=; b=O1MEYGMI7qgLtK
	G3jHkuhGEHvvy6fbdJmZQV3vf6NxOb6I2rB7p4tIoTp5d7MlCUWQla0cl0KVW6vhWl3AkgP0Heowc
	zoyxYzjXSe91R45Yq/chh1wZIqLoHD+kMlBvTTEhCg7VnVDsecXvvTuDnnNzY0mkY9DfyRdvuB4Gk
	TXeaP2yA8gpKPSOJ6ZgxvlRkS2VvmEjXzw8PK7xPzUgK+u7FJYW7KBeFM3UHoPsyLRvqWUIIdNZdL
	oq6ra6BaqcYp3/kvgHinxJqB299M+GxhUwhAIkQaOiVT2YGQ4V6ycU68xkti267td1i1jmh+yEKIJ
	+TpT7GXckMgCNE9pYQQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGSA-0000000H6JV-25ui;
	Thu, 15 Oct 2026 08:04:42 +0000
Received: from mail-m103131191167.xmail.ntesmail.com ([103.131.191.167])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGS6-0000000H6IY-0F1l
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 08:04:41 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51250dbfb;
	Thu, 15 Oct 2026 16:04:29 +0800 (GMT+08:00)
Message-ID: <f591b5d6-7b1a-4809-abee-cbed2bc459f0@rock-chips.com>
Date: Thu, 15 Oct 2026 16:04:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-phy@lists.infradead.org,
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
To: sashiko-reviews@lists.linux.dev
References: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
 <sashiko-outbox-172383@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <sashiko-outbox-172383@kernel.org>
X-HM-Tid: 0aa13e975c6503a4kunm47e1739f3d6e66
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ0sdVhpKTR9JGBlIHUpKHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=cJMO0VweG/T5yRt7FErK+SVAwidYKvcb5nc7uNQI7YeWUNmqA16c3B61biCv4LwosDKYjk3uSWAzLMpk0yjfMGaSXGc2CKK9qb17IqBWLt05JqTuoGKoekrqXiDT3/Vfykr+S1UYcgHlYEX5GAL44M8ROK8K+pTSjZsxBsMVpUg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qErlt+Zfw58/S/txB3SmkUfodQ0lNxdV+wY7hQt4lk8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_010438_787004_81DD925C 
X-CRM114-Status: GOOD (  12.82  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDE1OjEyLCBzYXNoaWtvLWJvdEBrZXJuZWwub3JnIOWG
memBkzoKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmll
dyBmb3VuZCAxIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtNZWRpdW1dIHBo
eTogcm9ja2NoaXA6IDIwbXMgYnVzeS13YWl0IGxvb3AgaW4gU1JBTSBpbml0IHBvbGxpbmcgc3Rh
bGxzIENQVQo+IC0tCj4gCgouLi4KCj4+IC0JCQkJICAgICAgIDAsIDUwMCk7Cj4+ICsJCQkJICAg
ICAgIDAsIFJLX1BDSUVfU1JBTV9JTklUX1RJTUVPVVQpOwo+IAo+IFtTZXZlcml0eTogTWVkaXVt
XQo+IFdoZW4gdGhlIHNsZWVwX3VzIHBhcmFtZXRlciBpcyAwLCByZWdtYXBfcmVhZF9wb2xsX3Rp
bWVvdXQoKSB1c2VzIGNwdV9yZWxheCgpCj4gYW5kIHRpZ2h0LWxvb3BzIGluc3RlYWQgb2Ygc2xl
ZXBpbmcuCj4gCj4gV2l0aCB0aGUgdGltZW91dCBpbmNyZWFzZWQgZnJvbSA1MDB1cyB0byAyMCww
MDB1cyAoMjBtcyksIGRvZXMgdGhpcyBjcmVhdGUgYW4KPiBleGNlc3NpdmVseSBsb25nIGJ1c3kt
d2FpdCB0aGF0IGNvdWxkIHN0YWxsIHRoZSBDUFU/Cj4gCj4gU2luY2UgdGhpcyBpbml0aWFsaXph
dGlvbiBydW5zIGR1cmluZyBkcml2ZXIgcHJvYmUgb3IgUEhZIHBvd2VyLW9uLCB3aGljaAo+IGhh
cHBlbiB1bmRlciBhIG11dGV4IHdoZXJlIHNsZWVwaW5nIGlzIHBlcm1pdHRlZCwgd291bGQgaXQg
YmUgYmV0dGVyIHRvIHByb3ZpZGUKPiBhIG5vbi16ZXJvIHNsZWVwIGludGVydmFsIChsaWtlIDEw
MDApIHNvIHRoZSBDUFUgY2FuIGJlIHlpZWxkZWQgZHVyaW5nIHRoaXMKPiBleHRlbmRlZCAyMG1z
IHdhaXQ/Cj4gCgpHb29kIGNhdGNoLCB3aWxsIHJlc3BpbiB2MiB0byBhZGRyZXNzIGl0LgoKPj4g
ICAJaWYgKHJldCkKPj4gICAJCWRldl9lcnIoJnByaXYtPnBoeS0+ZGV2LCAiJXM6IGxvY2sgZmFp
bGVkIDB4JXgsIGNoZWNrIGlucHV0IHJlZmNsayBhbmQgcG93ZXIgc3VwcGx5XG4iLAoKLi4uCgo+
PiAgIAlyZXQgfD0gcmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0KHByaXYtPnBoeV9ncmYsCj4+ICAg
CQkJCQlSSzM1ODhfUENJRTNQSFlfR1JGX1BIWTFfU1RBVFVTMSwKPj4gICAJCQkJCXJlZywgUksz
NTg4X1NSQU1fSU5JVF9ET05FKHJlZyksCj4+IC0JCQkJCTAsIDUwMCk7Cj4+ICsJCQkJCTAsIFJL
X1BDSUVfU1JBTV9JTklUX1RJTUVPVVQpOwo+IAo+IFtTZXZlcml0eTogTWVkaXVtXQo+IEFuZCBz
aW5jZSB0aGlzIHNlY29uZCBwb2xsIHJ1bnMgaW1tZWRpYXRlbHkgYWZ0ZXIgdGhlIGZpcnN0IG9u
ZSwgY291bGQgd2UgZW5kCj4gdXAgYnVzeS13YWl0aW5nIGZvciB1cCB0byA0MG1zIGluIHRvdGFs
IGlmIGJvdGggbGFuZXMgYXJlIHNsb3cgdG8gbG9jaz8KPiAKClRoZSB0d28gUEhZIGxhbmVzIHNo
YXJlIG1vc3Qgb2YgdGhlaXIgY2lyY3VpdHJ5IGluIGJvdGggYWdncmVnYXRpb24gYW5kCmJpZnVy
Y2F0aW9uIG1vZGUsIHNvIGluIHByYWN0aWNlIG9uY2UgdGhlIGZpcnN0IFBIWSBsb2NrcyB0aGUg
c2Vjb25kIG9uZQpjYW4gYmUgYXNzdW1lZCB0byBsb2NrIGFzIHdlbGwuIFRoZSB0d28gc2VxdWVu
dGlhbCBwb2xscyB0aGVyZWZvcmUgZG8Kbm90IGFkZCBhbnkgbm90aWNlYWJsZSBkZWxheS4gSSB3
aWxsIGFkZCBhIGNvbW1lbnQgaW50byB0aGUgY29tbWl0Cm1lc3NhZ2UgZm9yIHJlZmVyZW5jZS4K
Cgo+PiAgIAlpZiAocmV0KQo+PiAgIAkJZGV2X2VycigmcHJpdi0+cGh5LT5kZXYsICJsb2NrIGZh
aWxlZCAweCV4LCBjaGVjayBpbnB1dCByZWZjbGsgYW5kIHBvd2VyIHN1cHBseVxuIiwKPj4gICAJ
CQlyZWcpOwo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
