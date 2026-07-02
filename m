Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E44C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dsDVBtWaEWJe0CVHxwmW4oroEy2TbQyj/V4UTkmEmU=; b=Z+zlevtUhL/EUj
	2gHhlBgktnzPkU+SSkEqvXt258BtPhKiHF6a4tcxWzqezEtJLeNyMe3C1vJmaEppRVClx6ZRXVPWf
	4AoSMBbM4qQd8n6ID+DJZ7sDjkzngUGGV2S/SE3wNUL1PM/KIa0MDFNaAARa9TrEPJSV2ZZPQfVKD
	yH35DmhXP/hSnA8qcSiXHBVOl5BowzGKosWz0d8dUqHi/QOTOUPzbt09V966wSSEQNfihrYf/lJ+c
	Es+O04e+j8JKRWSKIqs41Rp3N15VwgAGeg9YxKDMQltU16N6CBxCghgxtYcZdoKjs4Wk3VVe24h/J
	NGA+uA9Ip5mzi9WZvdmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4xE-00000003Gf4-2mp5;
	Thu, 02 Jul 2026 00:06:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4xC-00000003Gew-45dW
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:06:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 25C976001D;
	Thu,  2 Jul 2026 00:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B7D71F000E9;
	Thu,  2 Jul 2026 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950813;
	bh=BQwRPwZ8hEdTWdaM4RjwFdd6tjVYQo+WdFyfomYDeGg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ivnOIbTCX6RUa/TKl0ikH9xhA5qTigoAnFRII6dzRtN6b3HoMn8b4NlYgPChPkHAI
	 7HrD8jtp8uxOF1lWaERYlRKAkl09LfDKr9V1OiSLfQfcNylYrbw+f0t8ae41N+bhb0
	 8PnDcd9TCzETpPIPJTOIJ1J5f2ZbyIljCNUAFIbEHQ3BhXgFJacvg7RPqtZLwr2nC8
	 r9NJc4C3z4HPRH2IQUQC9hSLqIWYW6wIg73ZvaR2ScMPgcNb90efhfAewOAPAM3gCC
	 H743HvipfpflAVkFB8YPbsKNjYmFbtZwLmtiXpEnmjb7rL4dg8RYk2t/Y0kOC5rhoa
	 UIZ8lh60eKqxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 31/38] phy: core: add notifier infrastructure
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-31-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-31-e31efbb62d2e@collabora.com>
Date: Thu, 02 Jul 2026 00:06:52 +0000
Message-Id: <20260702000653.5B7D71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gYHBoeV9ub3RpZnlf
cmVzZXRgIHJldHVybnMgdGhlIHJhdyBub3RpZmllciBjaGFpbiBzdGF0dXMgaW5zdGVhZCBvZiBh
IHN0YW5kYXJkIG5lZ2F0aXZlIGVycm9yIGNvZGUsIHZpb2xhdGluZyBpdHMgZG9jdW1lbnRlZCBy
ZXR1cm4gdmFsdWVzIGFuZCBicmVha2luZyBlcnJvciBjaGVja2luZyBmb3IgY2FsbGVycy4KLS0K
CmNvbW1pdCA2ZDhjNjZhNjlmMGE4NGNkYzM0YjViMDU2YzQyZDNjYzM1Y2I3NzFlCkF1dGhvcjog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6
IGNvcmU6IGFkZCBub3RpZmllciBpbmZyYXN0cnVjdHVyZQoKVGhpcyBjb21taXQgYWRkcyBhIG5l
dyBQSFkgbm90aWZpZXIgQVBJIHRvIGFsbG93IGNvbnN1bWVyIGRyaXZlcnMgdG8gaG9vawppbnRv
IHJlc2V0IGV2ZW50cyBjb21pbmcgZnJvbSBhIFBIWSBkZXZpY2UuIFRoaXMgaGVscHMgZ3JhY2Vm
dWxseSBoYW5kbGUKc2l0dWF0aW9ucyB3aGVyZSBQSFkgZGV2aWNlcyByZXF1aXJlIGEgcmVzZXQg
ZHVlIHRvIGNvbmZpZ3VyYXRpb24gb3IgY2FibGUKb3JpZW50YXRpb24gY2hhbmdlcy4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5j
Cj4gaW5kZXggMjFhYWYyZjc2ZTUzZS4uNTMzNDczZDk3NWQzNyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IEBAIC01
NDIsNiArNTQyLDYyIEBAIGludCBwaHlfbm90aWZ5X3N0YXRlKHN0cnVjdCBwaHkgKnBoeSwgdW5p
b24gcGh5X25vdGlmeSBzdGF0ZSkKWyAuLi4gXQo+ICsvKioKPiArICogcGh5X25vdGlmeV9yZXNl
dCgpIC0gbm90aWZ5IGNvbnN1bWVycyBvZiBhIFBIWSByZXNldCBldmVudAo+ICsgKiBAcGh5OiB0
aGUgcGh5IHRoYXQgaXMgYmVpbmcgcmVzZXQKPiArICogQGV2ZW50OiB0aGUgbm90aWZpY2F0aW9u
IGV2ZW50IChQUkVfUkVTRVQgb3IgUE9TVF9SRVNFVCkKPiArICoKPiArICogQ2FsbGVkIGJ5IFBI
WSBwcm92aWRlcnMgdG8gbm90aWZ5IGNvbnN1bWVycyB0aGF0IHRoZSBQSFkgaXMgYWJvdXQgdG8K
PiArICogYmUgcmVzZXQgb3IgaGFzIGNvbXBsZXRlZCBhIHJlc2V0LiBUaGlzIGFsbG93cyBjb25z
dW1lcnMgdG8gcXVpZXNjZQo+ICsgKiBoYXJkd2FyZSBiZWZvcmUgdGhlIFBIWSBiZWNvbWVzIHVu
YXZhaWxhYmxlLgo+ICsgKgo+ICsgKiBSZXR1cm5zOiAlMCBpZiBzdWNjZXNzZnVsIG9yIG5vIG5v
dGlmaWVycyByZWdpc3RlcmVkLCBhIG5lZ2F0aXZlIGVycm9yCj4gKyAqIGNvZGUgaWYgYSBub3Rp
ZmllciByZXR1cm5zIGFuIGVycm9yIChmb3IgUFJFX1JFU0VUIG9ubHkpCj4gKyAqLwo+ICtpbnQg
cGh5X25vdGlmeV9yZXNldChzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X25vdGlmaWNhdGlvbiBl
dmVudCkKPiArewo+ICsJaWYgKCFwaHkpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJcmV0dXJuIGJs
b2NraW5nX25vdGlmaWVyX2NhbGxfY2hhaW4oJnBoeS0+bm90aWZpZXIsIGV2ZW50LCBwaHkpOwoK
W1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyByZXR1cm4gdGhlIHJhdyBub3RpZmllciBjaGFp
biBzdGF0dXMgKGxpa2UgTk9USUZZX09LIG9yIE5PVElGWV9CQUQpCmluc3RlYWQgb2YgdGhlIGRv
Y3VtZW50ZWQgbmVnYXRpdmUgZXJyb3IgY29kZT8KCklmIGNhbGxlcnMgY2hlY2sgdGhlIHJldHVy
biB2YWx1ZSB3aXRoIGBpZiAocmV0IDwgMClgLCB0aGV5IHdpbGwgZmFpbCB0bwpkZXRlY3QgZXJy
b3JzIHNpbmNlIE5PVElGWV9CQUQgYW5kIG5vdGlmaWVyX2Zyb21fZXJybm8oKSByZXN1bHRzIGFy
ZSBwb3NpdGl2ZQppbnRlZ2Vycy4gQWxzbywgY2hlY2tpbmcgYGlmIChyZXQpYCBtaWdodCBmYWxz
ZWx5IGRldGVjdCBhbiBlcnJvciBvbiBzdWNjZXNzCmJlY2F1c2UgTk9USUZZX09LIGlzIDEuCgpT
aG91bGQgdGhpcyB1c2Ugbm90aWZpZXJfdG9fZXJybm8oKSB0byBjb252ZXJ0IHRoZSByZXR1cm4g
dmFsdWUgYmVmb3JlIHBhc3NpbmcKaXQgYmFjayB0byB0aGUgY2FsbGVyPwoKPiArfQo+ICtFWFBP
UlRfU1lNQk9MX0dQTChwaHlfbm90aWZ5X3Jlc2V0KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDItcm9ja2NoaXAtdXNiZHAt
Y2xlYW51cC12OS0wLWUzMWVmYmI2MmQyZUBjb2xsYWJvcmEuY29tP3BhcnQ9MzEKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
