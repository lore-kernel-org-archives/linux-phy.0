Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31728CD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHByae9byhBxGd1H/kK6DMCUV+8wfR7gIm9YyrfTaRE=; b=ZLrthiZMQ6pZLr
	QJpOIjkwQY0zheMOwX3t87i/FeM8alGrItDPphgU0xEJShj7ajDh/kcmHzvvvxYatpCbgzx27j7c6
	IT4rRxujwqS4d6kC/SNK/DMzXprnLOEt3w1CJhs7GAIyhXcQnuJeAPIuRGMQGqDCrnmtyDhDasLV7
	GBNEeNmOt2kPnrFEir/5Umpq2vXfOg1JU6EpZx8aJxWCA3j9qCak5rsrZkUGWCJwO6116oQDUSOyT
	c1UiFAhf42gbO6agCtpkHuPtiQtHMtA9vSTKGMZUcC+Ql7z9ZENRGMDZd6EetY1/xfs0vRGKf9vt5
	p2I3Z5rpSILtizMDMaVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT1pk-000000086Bm-3GZM;
	Fri, 29 May 2026 18:21:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT1pf-000000086AY-3OC8
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 18:21:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A258D40B71;
	Fri, 29 May 2026 18:21:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 007AC1F00893;
	Fri, 29 May 2026 18:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780078878;
	bh=7L4Nefg1MpJZXVjG9kFg5PWnu/7Y78YZ+KrJSEOcupk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hF5xbDl/21VvZ3i7SSIRLqLLtiAeRs0rDpj+RVxDGudhgNM6elubTG/iHFTkmbxjQ
	 VY0BoEjpWrGUfUW4/9pl3h0rr/sj2QqDkTVoySUllWwj8ajLiE+U8C4BJ0NGHWrYc6
	 5zE1WFUVK5b/Bo6i1S5ZF8LAJrPBGrNjDG1wQ7ukFgpibfSmNxSAmGXD9LYDEdOV59
	 hW5Ji30uJH9W1H04iQNHvzRB2CLO4XxviAEYaMC1rmSJoDGY+3oR46oeAFceg8Cdbo
	 soAuo5jVSlqspdOIcNuuPujAOa2JfLY/Q1qXZqBQrxD282O2Gd0zkf/5V0jKqB11u7
	 lpNCbfceLZtvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 14/15] phy: lynx-10g: new driver
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260529171509.1163787-15-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-15-vladimir.oltean@nxp.com>
Date: Fri, 29 May 2026 18:21:17 +0000
Message-Id: <20260529182118.007AC1F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_112119_886676_4B390A51 
X-CRM114-Status: GOOD (  18.66  )
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBJ
bmNvcnJlY3QgcmVzdG9yYXRpb24gb2YgdGhlIFBDQ1IgbXV4IGNvbmZpZ3VyYXRpb24gYmVjYXVz
ZSBgMGAgaXMgdHJlYXRlZCBhcyB1bmluaXRpYWxpemVkLgotIFtIaWdoXSBQb3RlbnRpYWwgdGlt
aW5nIHZpb2xhdGlvbiB3aGVuIGJyaW5naW5nIGxhbmVzIG91dCBvZiByZXNldCBhbmQgcG93ZXIg
ZG93biBzaW11bHRhbmVvdXNseS4KClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIGx5bnhf
eGxhdGUgY2FuIHJldHVybiBhIE5VTEwgcG9pbnRlciBmb3IgdW5wcm9iZWQgUEhZIGxhbmVzLCBs
ZWFkaW5nIHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHRoZSBQSFkgY29yZSBmcmFt
ZXdvcmsuCi0tCgpjb21taXQgODUxZTY4MjRkYjdiMDM5NTg3MjJiOTgwOGYzNTQ5NjA5MTY4ZGU5
OQpBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CgpwaHk6
IGx5bngtMTBnOiBuZXcgZHJpdmVyCiAgICAKSW50cm9kdWNlIGEgZHJpdmVyIGZvciB0aGUgbmV0
d29ya2luZyBsYW5lcyBvZiB0aGUgMTBHIEx5bnggU2VyRGVzCmJsb2NrLCBwcmVzZW50IG9uIHRo
ZSBtYWpvcml0eSBvZiBMYXllcnNjYXBlIGFuZCBRb3JJUSAoRnJlZXNjYWxlL05YUCkKU29Dcy4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMTBnLmMg
Yi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jCj4gaW5kZXggMDAwMDAw
MDAwMDAwMC4uOWIwNGQ2YTRiODI1YQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jClsgLi4uIF0KPiArc3RhdGljIGludCBseW54
XzEwZ19sYW5lX2VuYWJsZV9wY3Z0KHN0cnVjdCBseW54X2xhbmUgKmxhbmUsCj4gKwkJCQkgICAg
IGVudW0gbHlueF9sYW5lX21vZGUgbW9kZSkKPiArewo+ICsJc3RydWN0IGx5bnhfcHJpdiAqcHJp
diA9IGxhbmUtPnByaXY7Cj4gKwl1MzIgdmFsOwo+ICsJaW50IGVycjsKPiArCj4gKwlzcGluX2xv
Y2soJnByaXYtPnBjY19sb2NrKTsKWyAuLi4gXQo+ICsJaWYgKGxhbmUtPmRlZmF1bHRfcGNjcltt
b2RlXSkgewpbU2V2ZXJpdHk6IEhpZ2hdCkNhbiB0aGlzIGNvbmRpdGlvbiBpbmNvcnJlY3RseSBm
YWxsIHRocm91Z2ggdG8gaGFyZGNvZGVkIGRlZmF1bHRzIGlmIGEgdmFsaWQKbXV4IGNvbmZpZ3Vy
YXRpb24gb2YgMCBpcyBiYWNrZWQgdXA/CgpTaW5jZSBkZWZhdWx0X3BjY3IgaXMgemVyby1pbml0
aWFsaXplZCBieSBkZXZtX2tjYWxsb2MoKSwgYSBiYWNrZWQtdXAgdmFsdWUKb2YgMCBldmFsdWF0
ZXMgdG8gZmFsc2UuIFRoaXMgc2tpcHMgdGhlIHJlc3RvcmF0aW9uIGFuZCBhbGxvd3MgdGhlIGRy
aXZlciB0bwphcHBseSBoYXJkY29kZWQgZGVmYXVsdHMgbGF0ZXIsIHdoaWNoIGNvdWxkIHBlcm1h
bmVudGx5IHJlcm91dGUgdGhlIGhhcmR3YXJlCmxhbmVzIGFuZCBicmVhayB0aGUgbmV0d29yayBp
bnRlcmZhY2UuCgo+ICsJCWVyciA9IGx5bnhfcGNjcl93cml0ZShsYW5lLCBtb2RlLCBsYW5lLT5k
ZWZhdWx0X3BjY3JbbW9kZV0pOwo+ICsJCWdvdG8gb3V0Owo+ICsJfQo+ICsKPiArCXZhbCA9IDA7
ClsgLi4uIF0KPiArc3RhdGljIGludCBseW54XzEwZ19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkp
Cj4gK3sKPiArCXN0cnVjdCBseW54X2xhbmUgKmxhbmUgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsK
PiArCj4gKwlpZiAobGFuZS0+cG93ZXJlZF91cCkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwkvKiBU
aGUgUk0gc2F5cyB0byB3YWl0IGZvciBhdCBsZWFzdCAxMjBucyBiZXR3ZWVuIHBlciBsYW5lIHNl
dHRpbmcgaGF2ZQo+ICsJICogYmVlbiBjaGFuZ2VkIGFuZCB0aGUgbGFuZSBiZWluZyB0YWtlbiBv
dXQgb2YgcmVzZXQKPiArCSAqLwo+ICsJdXNsZWVwX3JhbmdlKDEsIDIpOwo+ICsKPiArCWx5bnhf
bGFuZV9ybXcobGFuZSwgTE5hR0NSMCwgTE5hR0NSMF9SUlNUX09GRiB8IExOYUdDUjBfVFJTVF9P
RkYsCj4gKwkJICAgICAgTE5hR0NSMF9SUlNUIHwgTE5hR0NSMF9UUlNUIHwKPiArCQkgICAgICBM
TmFHQ1IwX1JYX1BEIHwgTE5hR0NSMF9UWF9QRCk7CltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlz
IGNvZGUgdmlvbGF0ZSB0eXBpY2FsIFBIWSBoYXJkd2FyZSBzZXF1ZW5jaW5nIGJ5IGNsZWFyaW5n
IGJvdGggdGhlCnBvd2VyLWRvd24gYml0cyBhbmQgZGlnaXRhbCByZXNldCBiaXRzIHNpbXVsdGFu
ZW91c2x5PwoKUmVsZWFzaW5nIHRoZSBkaWdpdGFsIHJlc2V0IGF0IHRoZSBzYW1lIHRpbWUgYXMg
YWN0aXZhdGluZyB0aGUgYW5hbG9nCmNvbXBvbmVudHMgZG9lc24ndCBsZWF2ZSB0aW1lIGZvciB0
aGUgYW5hbG9nIGNpcmN1aXRyeSB0byBzdGFiaWxpemUuIFRoZQpwcmlvciB1c2xlZXBfcmFuZ2Uo
KSBvY2N1cnMgYmVmb3JlIHBvd2VyLXVwIGlzIGluaXRpYXRlZCwgd2hpY2ggbWlnaHQgbm90CnBy
ZXZlbnQgaGFyZHdhcmUgbG9ja3VwcyBvciB1bnJlbGlhYmxlIGJlaGF2aW9yIG9uIGxpbmsgdXAu
Cgo+ICsKPiArCWxhbmUtPnBvd2VyZWRfdXAgPSB0cnVlOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
ClsgLi4uIF0KPiArc3RhdGljIGludCBseW54XzEwZ19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICt7Cj4gKwlyZXR1cm4gbHlueF9wcm9iZShwZGV2LCBvZl9kZXZpY2VfZ2V0
X21hdGNoX2RhdGEoJnBkZXYtPmRldiksCj4gKwkJCSAgJmx5bnhfMTBnX29wcyk7Cj4gK30KW1Nl
dmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGUg
Y29yZSBQSFkgZnJhbWV3b3JrIGNyYXNoIGlmCmx5bnhfeGxhdGUoKSByZXR1cm5zIGEgTlVMTCBw
b2ludGVyIGZvciBhbiB1bnByb2JlZCBQSFkgbGFuZT8KCklmIGEgUEhZIGxhbmUgaXMgcmVxdWVz
dGVkIHZpYSBkZXZpY2UgdHJlZSBidXQgdGhlIGRyaXZlciBkaWQgbm90IHByb2JlIGl0LApwcml2
LT5sYW5lW2lkeF0ucGh5IHdpbGwgYmUgTlVMTC4gSWYgbHlueF94bGF0ZSgpIHJldHVybnMgdGhp
cyBOVUxMIHBvaW50ZXIsCnRoZSBjb3JlIFBIWSBmcmFtZXdvcmsgaW50ZXJwcmV0cyBpdCBhcyBh
IHN1Y2Nlc3NmdWwgcmV0cmlldmFsIG9mIGFuIG9wdGlvbmFsClBIWSBhbmQgbWlnaHQgYXR0ZW1w
dCB0byBkZXJlZmVyZW5jZSBpdC4gV291bGQgaXQgYmUgc2FmZXIgdG8gZXhwbGljaXRseQpyZXR1
cm4gRVJSX1BUUigtRU5PREVWKSBpbiBseW54X3hsYXRlKCkgd2hlbiB0aGUgcGh5IHBvaW50ZXIg
aXMgTlVMTD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA1MjkxNzE1MDkuMTE2Mzc4Ny0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29t
P3BhcnQ9MTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
