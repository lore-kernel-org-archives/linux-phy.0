Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D0D0CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBEA34CUwodadAIlQcqv6p1cDx9BSygTW2tQEOLE0zQ=; b=CcLJdwlnrqk0Jw
	eAVBRR9+tsqFrSktn/G0uPZGqp7yETt4YZ+VBeOiHVxvJ+M8WlTGBcvQzYwMjfifVxSDpvL151QST
	6dfKaApwRWwnn4FIVa+EfzwG3KqIK6KHkqbEphpJCZnH0RzFU8b9HJEH+JO7O1fZhIfMBKtE90GnK
	+//xwiiOtcptocG5VnucvxM0tAJS3KlLxr+A7JS8FaqthFOjwJsZ57c+ptbs2LEhmO72chteyod2A
	QCqFjRirbUDGwijyphkkjDhB2UY641pMv7Pq5R5Sj5x640k/vVlarpkFsHNkZfDhZpDBL+/DW9vgi
	WnsC/kSN40J8r9G2K8ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL6f-000000083Pp-2iTJ;
	Wed, 10 Jun 2026 15:44:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL6e-000000083PX-0ZYJ
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:44:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 94A5D442D5;
	Wed, 10 Jun 2026 15:44:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 329BE1F00899;
	Wed, 10 Jun 2026 15:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781106279;
	bh=R0Te2LLbWgHj5/inYWHNQLPEm5uM6m59Z7YG4ygHacw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N+7yGUmf19y3c3OPpCMMw5hYK3/3Ldbkt1hn85GkQMwFR8tBWAkzAZUh8gcGuPwSH
	 9WjJZEqClZ3+56sH+/bNAgnDPO7k6QFXruGMKwsuMKVXY8BK18fAPnqBPszi8nI4eb
	 /+PZuTo2Vgf0vXHsGpwhlM4QoJbCC9nvCG/SJoXJmdwmqO3o0loaolT/Oc9LqHX8zl
	 A+euEJ8IDtI8ddSVhdTuj90Xipb6uAlPRG8prj5bOQJgQA8D8rsh5R3wnQKC8MYzRl
	 /+WbZAZtfKk5QLDk2nK+042v6+x0s8kbybD9JQRW94Se9Gr7DSzEWMqU+e+tpCt5AN
	 KrwLHTV7TNemQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 phy-next 03/16] phy: lynx-28g: move lane mode helpers
 to new core module
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260610151952.2141019-4-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-4-vladimir.oltean@nxp.com>
Date: Wed, 10 Jun 2026 15:44:38 +0000
Message-Id: <20260610154439.329BE1F00899@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGVudW0gY29uc3Rh
bnRzIGZvciBgbHlueF9sYW5lX21vZGVgIGxhY2sgYSBzdWJzeXN0ZW0gb3IgZHJpdmVyIHByZWZp
eCwgcG9sbHV0aW5nIHRoZSBnbG9iYWwgbmFtZXNwYWNlLgotIFtMb3ddIFRoZSBuZXdseSBleHBv
cnRlZCBmdW5jdGlvbiBgcGh5X2ludGVyZmFjZV90b19sYW5lX21vZGVgIGxhY2tzIGEgZHJpdmVy
LXNwZWNpZmljIHByZWZpeC4KLS0KCmNvbW1pdCBmYjkzMWE5ZTA5ZWJlNDJkNmY3NjljNTljZDFh
ODY5OGUwMTMxMmM5CkF1dGhvcjogVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5Abnhw
LmNvbT4KCnBoeTogbHlueC0yOGc6IG1vdmUgbGFuZSBtb2RlIGhlbHBlcnMgdG8gbmV3IGNvcmUg
bW9kdWxlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IGNvcmUgbW9kdWxlIGZvciB0aGUg
THlueCBTZXJEZXMgUEhZIHRvIHNoYXJlCmNvZGUgYmV0d2VlbiB0aGUgMjhHIGFuZCB1cGNvbWlu
ZyAxMEcgZHJpdmVycy4gSXQgbW92ZXMgdGhlIGxhbmUgbW9kZQpkZWZpbml0aW9ucyB0byBhIHB1
YmxpYyBoZWFkZXIgYW5kIGV4cG9ydHMgaGVscGVyIGZ1bmN0aW9ucy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtY29yZS5jIGIvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1jb3JlLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLmQ1NmYxODljMTYyZGMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1jb3JlLmMKWyAuLi4gXQo+ICtlbnVt
IGx5bnhfbGFuZV9tb2RlIHBoeV9pbnRlcmZhY2VfdG9fbGFuZV9tb2RlKHBoeV9pbnRlcmZhY2Vf
dCBpbnRmKQo+ICt7Cj4gKwlzd2l0Y2ggKGludGYpIHsKCltTZXZlcml0eTogTG93XQpEb2VzIHRo
aXMgZnVuY3Rpb24gbmFtZSBuZWVkIGEgZHJpdmVyLXNwZWNpZmljIHByZWZpeCBub3cgdGhhdCBp
dCBpcyBleHBvcnRlZD8KClByZXZpb3VzbHksIHBoeV9pbnRlcmZhY2VfdG9fbGFuZV9tb2RlKCkg
d2FzIGEgc3RhdGljIGZ1bmN0aW9uLCBidXQgc2luY2UgaXQKaXMgbm93IGV4cG9ydGVkIHdpdGgg
YSBnZW5lcmljIG5hbWUsIGNvdWxkIHRoaXMgY2F1c2UgbGlua2VyIGNvbGxpc2lvbnMgaWYKYW5v
dGhlciBkcml2ZXIgaW1wbGVtZW50cyBhIGZ1bmN0aW9uIHdpdGggdGhlIHNhbWUgbmFtZT8KCj4g
KwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSToKPiArCWNhc2UgUEhZX0lOVEVSRkFDRV9N
T0RFXzEwMDBCQVNFWDoKPiArCQlyZXR1cm4gTEFORV9NT0RFXzEwMDBCQVNFWF9TR01JSTsKWyAu
Li4gXQoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2MvZnNsL3BoeS1mc2wtbHlueC5oIGIvaW5j
bHVkZS9zb2MvZnNsL3BoeS1mc2wtbHlueC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAwLi45MmU4MjcyZDVhZTE1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2lu
Y2x1ZGUvc29jL2ZzbC9waHktZnNsLWx5bnguaAo+IEBAIC0wLDAgKzEsMTYgQEAKPiArLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCj4gKy8qIENvcHlyaWdodCAyMDIzLTIw
MjYgTlhQICovCj4gKwo+ICsjaWZuZGVmIF9fUEhZX0ZTTF9MWU5YX0hfCj4gKyNkZWZpbmUgX19Q
SFlfRlNMX0xZTlhfSF8KPiArCj4gK2VudW0gbHlueF9sYW5lX21vZGUgewo+ICsJTEFORV9NT0RF
X1VOS05PV04sCj4gKwlMQU5FX01PREVfMTAwMEJBU0VYX1NHTUlJLAoKW1NldmVyaXR5OiBMb3dd
CldvdWxkIGl0IGJlIHNhZmVyIHRvIGFkZCBhIHByZWZpeCB0byB0aGVzZSBlbnVtIGNvbnN0YW50
cyAobGlrZSBMWU5YXyBvcgpGU0xfTFlOWF8pIHNpbmNlIHRoZXkgYXJlIG5vdyBleHBvc2VkIGlu
IGEgZ2xvYmFsIGhlYWRlcj8gCgpHZW5lcmljIG5hbWVzIGxpa2UgTEFORV9NT0RFX1VOS05PV04g
YW5kIExBTkVfTU9ERV9NQVggbWlnaHQgY29uZmxpY3Qgd2l0aApvdGhlciBkZWZpbml0aW9ucyBp
biB0aGUgZ2xvYmFsIG5hbWVzcGFjZS4KCj4gKwlMQU5FX01PREVfMTBHQkFTRVIsCj4gKwlMQU5F
X01PREVfVVNYR01JSSwKPiArCUxBTkVfTU9ERV8yNUdCQVNFUiwKPiArCUxBTkVfTU9ERV9NQVgs
Cj4gK307Cj4gKwo+ICsjZW5kaWYgLyogX19QSFlfRlNMX0xZTlhfSF8gKi8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MTAxNTE5
NTIuMjE0MTAxOS0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
