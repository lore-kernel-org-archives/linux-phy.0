Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6219BCD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 21:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY35Kvf1W49JM9UkTZFMqQTK86vD821mDLJ+F2ZOhSM=; b=mWArxAeLNsYlnM
	A6EGaWy6IdGosTRgCr4ApjjiCDbe2qmMoX9AMJHvUgj8ycSKj8M/HwzL8LzVvYoc5soGZGMTqjhQF
	q07j3tI6v1qF0US16MjXihNvM5clquPkI/v1jzA4ZKTCnxklS21iE+Irr4QbwxhOfj1lSNBSh+ynE
	pkOGb4eBoAHFhqgEFYtrloAgZirGC/u8O2BEIdc0o9LVpLZjYveyV71ubiZOXxt+8JQWPQ92DdadP
	fF2rGJnSyCNFwf1Q0+vqy6mFUjywlnz2xBczrK+xF1Sto3jFkcp1TFMJi/nUHZFuYcikwqBQfWJhg
	LnMhaEpKXUFxNXeLP7dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHI8-00000003qi2-44qT;
	Wed, 13 May 2026 21:38:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHI7-00000003qhr-3W4Z
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 21:38:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F29E160052;
	Wed, 13 May 2026 21:38:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F54C19425;
	Wed, 13 May 2026 21:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778708334;
	bh=nsP/pglrOjk0vzvSkGUC4T4T1GDiidk5HBWy5CNh6To=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ScIMPaLKe0nMmncJA4SllfJ6UKz3C3EHpgM+nZKikrq6H3IeM5OITQ5i/g/weubuC
	 pt3Z2X41VqGOzEcYkyIimdMDZ3DVIIp3pImLFyTZPofqfqxBG2QcZ2iBAMAJ2RWAua
	 2NNUtZQh82FAzJxdeGnHvHrGJMLqxFsHi+kqg2oiQ2tJNh2/Wt/15IBdLHcVTmms61
	 2PSqkJFB8MNKqggYiMS9lw8FeRpKEusMOeRvRX7ISxO/+KFCPjFsUuJrgLOrvncRUa
	 qndVeP/lSjUH8h8pgAH91Y7YXg+44l6J0QFKO6EnKWobQ5qhGX9O65+iyRZL5gYl6s
	 1eR/UudFuh1ZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] phy: phy-can-transceiver: Don't check for
 specific errors when parsing properties
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260512130552.272476-5-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-5-andriy.shevchenko@linux.intel.com>
Date: Wed, 13 May 2026 21:38:53 +0000
Message-Id: <20260513213854.71F54C19425@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBUaGUgZHJpdmVy
IHVuY29uZGl0aW9uYWxseSBmYWlscyBvciBjcmFzaGVzIGR1ZSB0byBpbmNvcnJlY3QgY2hlY2tp
bmcgb2YgYGRydmRhdGFgLgotLQoKY29tbWl0IDY0NzU4YjNkZTdkM2FlNzAwYWUzY2NkYWVmOTg5
ZDc0MTBhZjQ5MjEKQXV0aG9yOiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxp
bnV4LmludGVsLmNvbT4KCnBoeTogcGh5LWNhbi10cmFuc2NlaXZlcjogRG9uJ3QgY2hlY2sgZm9y
IHNwZWNpZmljIGVycm9ycyB3aGVuIHBhcnNpbmcgcHJvcGVydGllcwoKVGhpcyBjb21taXQgbW9k
aWZpZXMgdGhlIG1heC1iaXRyYXRlIHByb3BlcnR5IHBhcnNpbmcgdG8gY2hlY2sgZm9yIHRoZQpw
cm9wZXJ0eSBleGlzdGVuY2UgZmlyc3QgYmVmb3JlIGF0dGVtcHRpbmcgdG8gcmVhZCBpdC4gSXQg
YXBwbGllcyBhIGRlZmF1bHQKdmFsdWUgaWYgdGhlIHByb3BlcnR5IGlzIG1pc3NpbmcsIHJhdGhl
ciB0aGFuIHJlbHlpbmcgb24gc3BlY2lmaWMgZXJyb3IKY29kZXMuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMgYi9kcml2ZXJzL3BoeS9waHktY2FuLXRy
YW5zY2VpdmVyLmMKPiBpbmRleCAyMzY1NTk1NmFjZTgwLi45NzNjYzdjZTY1MWZiIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwo+IEBAIC0xMjgsOCArMTI4LDkgQEAgc3RhdGljIGlu
dCBjYW5fdHJhbnNjZWl2ZXJfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIAlzdHJ1Y3QgZ3Bpb19kZXNjICpzdGFuZGJ5X2dwaW87Cj4gIAlzdHJ1Y3QgZ3Bpb19kZXNj
ICplbmFibGVfZ3BpbzsKPiAgCXN0cnVjdCBtdXhfc3RhdGUgKm11eF9zdGF0ZTsKPiAtCXUzMiBt
YXhfYml0cmF0ZSA9IDA7Cj4gIAlpbnQgZXJyLCBpLCBudW1fY2ggPSAxOwo+ICsJY29uc3QgY2hh
ciAqcHJvcG5hbWU7Cj4gKwl1MzIgbWF4X2JpdHJhdGU7Cj4gIAo+ICAJZHJ2ZGF0YSA9IGRldmlj
ZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+ICAJaWYgKGRydmRhdGEpCgpJIG5vdGljZWQgYSBwb3Rl
bnRpYWwgaXNzdWUgaW4gdGhlIGNvbnRleHQgb2YgdGhpcyBkaWZmLiBJcyB0aGUgY2hlY2sgZm9y
CmRydmRhdGEgaW52ZXJ0ZWQgaGVyZT8gVGhpcyBsb2dpYyBhcHBlYXJzIHRvIGhhdmUgYmVlbiBp
bnRyb2R1Y2VkIGJ5IGEKcHJldmlvdXMgcGF0Y2ggaW4gdGhlIHNlcmllcy4KCklmIGRldmljZV9n
ZXRfbWF0Y2hfZGF0YSgpIHN1Y2Nlc3NmdWxseSBmaW5kcyBtYXRjaCBkYXRhLCB0aGUgcHJvYmUg
ZnVuY3Rpb24KYWJvcnRzIGFuZCByZXR1cm5zIC1FTk9ERVYuIElmIG5vIG1hdGNoIGRhdGEgaXMg
Zm91bmQsIGRydmRhdGEgaXMgTlVMTCBhbmQKdGhlIGZ1bmN0aW9uIHByb2NlZWRzLCB3aGljaCBs
ZWFkcyB0byBhIGRlcmVmZXJlbmNlIG9uIHRoZSBuZXh0IGNoZWNrOgoKCWRydmRhdGEgPSBkZXZp
Y2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKCWlmIChkcnZkYXRhKQoJCXJldHVybiAtRU5PREVWOwoK
CWlmIChkcnZkYXRhLT5mbGFncyAmIENBTl9UUkFOU0NFSVZFUl9EVUFMX0NIKQoJCW51bV9jaCA9
IDI7CgpDb3VsZCB0aGlzIGNhdXNlIHRoZSBkcml2ZXIgdG8gZmFpbCBvbiB2YWxpZCBwcm9iZXMs
IG9yIGRlcmVmZXJlbmNlIGEgTlVMTApwb2ludGVyIHdoZW4gbWF0Y2ggZGF0YSBpcyBtaXNzaW5n
PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDUxMjEzMDU1Mi4yNzI0NzYtMS1hbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5j
b20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
