Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BA3C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAyOLhwqlkZLTnc3UQ2nSwLqSo2Qz1HghCtkUerYgLQ=; b=lsDaOZsjixTSPQ
	dDUK70sg0EloYQMoFWnBF1Ygpzc3Oyw1kcc3WTlEPQ9AaxyXbeKacJr1S+cqyrvu++a3Zv8xSkU8C
	KKg7UGm04ssdt/Qsy83IOrZHobg9Mbw8nkVCR/+7rOjkMXcSKyaDOuRgo5ch89jI8HuHjoSSwZGxf
	ac2xuJrKdDxp4iwYAZ9rSczrjG/rNSH/dGQjVD2du89pNRvjdoe6LNjVINhYyKV3p7WflbOzkrx+I
	zmFwa2m/9CT+qRcWcKrLc5KTtms6hvZit+qU3HjA9nCUBhQdOQiXLWU1rHWIZtEfXW3LfwotsH+E0
	z/RZX6BxX602iuBtqxhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx8O-00000005voo-1q0s;
	Fri, 28 Aug 2026 14:00:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx8N-00000005vof-3NW2
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:00:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 226AF601FD;
	Fri, 28 Aug 2026 14:00:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B9041F000E9;
	Fri, 28 Aug 2026 14:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925641;
	bh=OvxnZAWG3b8w/seBJ0Ni5Ij4tkuL7ZNnRXZC6ihz13s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TgRrw7smWdBQTJMoHOjjLVI0xIh+MuWd9lEvCIwKs444d+M70Hx+kTXpluHR/DI1v
	 e1p7KX36dPLHBS8fBkbU6Bo7P3AR7wswVKtKwH8zK1nAcUomnAfSHS6aHau5566vy+
	 aEFvVAkXNFXVgsMtR98NmGw/Vu5j18nmXgteU4pgVC5IVLHF2l210ily207NhqVKFF
	 Kku+ALO2i2LvzdIq5FG4f9Nkcr20wzGY8B21TsHX5GZgWkklSr0PZHHWcSrCST0h71
	 xkcItlkO1e7hMmYjj23izMAsJm46uWvayu6TOqHI8rnfL6gZZVuk12lVglmjWlhdz/
	 Rhhzfs+QWPQQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/15] phy: Add common Innosilicon HDMI PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: mfd@lists.linux.dev, lee@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260828-jh7110-clean-send-v2-11-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134833eucas1p2b3a442d07d7d86d0f82379bc4ecbe62a@eucas1p2.samsung.com>
 <20260828-jh7110-clean-send-v2-11-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 14:00:40 +0000
Message-Id: <20260828140041.3B9041F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQb3NzaWJsZSB1c2Ugb2YgdW5pbml0aWFsaXplZCBzdGFjayBtZW1vcnkgaW4gYGlu
bm9fcmVhZCgpYCBpZiBgcmVnbWFwX3JlYWQoKWAgZmFpbHMuCi0gW0hpZ2hdIEtlcm5lbCBwYW5p
YyBmcm9tIGRpdmlzaW9uIGJ5IHplcm8gaW4gY2xvY2sgcmF0ZSByZWNhbGN1bGF0aW9uIGlmIFBI
WSByZWdpc3RlcnMgYXJlIHVuaW5pdGlhbGl6ZWQuCi0tCgpjb21taXQgNWIzZGFhMWM3OTM3MDAz
MGMzNjVhMWNiZDcxMGYzOGQzMGFiMjYzMApBdXRob3I6IE1pY2hhbCBXaWxjenluc2tpIDxtLndp
bGN6eW5za2lAc2Ftc3VuZy5jb20+CgpwaHk6IEFkZCBjb21tb24gSW5ub3NpbGljb24gSERNSSBQ
SFkgaGVscGVycwoKVGhlIElubm9zaWxpY29uIEhETUkgUEhZIElQIGlzIHVzZWQgYnkgc2V2ZXJh
bCBTb0NzLiBUaGV5IGRpZmZlciBpbgp3aGVyZSB0aGUgUEhZIHJlZ2lzdGVyIGJsb2NrIHNpdHMg
aW4gdGhlIHJlZ2lzdGVyIHNwYWNlIGFuZCBpbiB3aGljaApwaXhlbCBjbG9ja3MgdGhleSBzdXBw
b3J0LCBidXQgdGhlIHByZS1QTEwgcHJvZ3JhbW1pbmcgc2VxdWVuY2UgYW5kIHRoZQpsYXlvdXQg
b2YgaXRzIHJlZ2lzdGVycyBhcmUgdGhlIHNhbWUuCgpBZGQgYSBzbWFsbCBsaWJyYXJ5IGhvbGRp
bmcgdGhhdCBzaGFyZWQgcGFydDogdGhlIHByZS1QTEwgY29uZmlndXJhdGlvbgp0YWJsZSBmb3Jt
YXQsIGEgbG9va3VwLCBjbGtfb3BzIGRldGVybWluZV9yYXRlIGFuZCByZWNhbGNfcmF0ZSBoZWxw
ZXJzLAphbmQgdGhlIHByZS1QTEwgcmVnaXN0ZXIgcHJvZ3JhbW1pbmcuIENhbGxlcnMgcGFzcyBh
IHJlZ21hcCwgYSByZWdpc3RlcgpvZmZzZXQgZm9yIHRoZSBQSFkgYmxvY2ssIGFuZCB0aGVpciBv
d24gcGl4ZWwgY2xvY2sgdGFibGUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktaW5u
by1oZG1pLmMgYi9kcml2ZXJzL3BoeS9waHktaW5uby1oZG1pLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmRlYjJiNzNhODZmNWQKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWlubm8taGRtaS5jClsgLi4uIF0KPiArc3RhdGljIHU4
IGlubm9fcmVhZChjb25zdCBzdHJ1Y3QgaW5ub19oZG1pX3BoeV9wcmVfcGxsICpwbGwsIHVuc2ln
bmVkIGludCByZWcpCj4gK3sKPiArCXVuc2lnbmVkIGludCB2YWw7Cj4gKwo+ICsJcmVnbWFwX3Jl
YWQocGxsLT5yZWdtYXAsIGlubm9fcmVnKHBsbCwgcmVnKSwgJnZhbCk7Cj4gKwo+ICsJcmV0dXJu
IHZhbDsKPiArfQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQg
YnkgdGhpcyBwYXRjaCwgYXMgaXQgd2FzIGluaGVyaXRlZCBmcm9tCmRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkuYywgYnV0IGlzIGl0IHBvc3NpYmxlIGZvcgpyZWdt
YXBfcmVhZCgpIHRvIGZhaWwgaGVyZT8KCklmIHJlZ21hcF9yZWFkKCkgcmV0dXJucyBhbiBlcnJv
ciBjb2RlLCBpdCBsZWF2ZXMgdGhlIHN0YWNrIHZhcmlhYmxlIHZhbAp1bmluaXRpYWxpemVkLCB3
aGljaCBpcyB0aGVuIHJldHVybmVkIHRvIHRoZSBjYWxsZXIuCgpDb3VsZCB3ZSBjaGVjayB0aGUg
cmV0dXJuIHZhbHVlIG9mIHJlZ21hcF9yZWFkKCkgdG8gYXZvaWQgbGVha2luZwp1bmluaXRpYWxp
emVkIG1lbW9yeT8KClsgLi4uIF0KPiArdW5zaWduZWQgbG9uZwo+ICtpbm5vX2hkbWlfcGh5X3By
ZV9wbGxfcmVjYWxjX3JhdGUoY29uc3Qgc3RydWN0IGlubm9faGRtaV9waHlfcHJlX3BsbCAqcGxs
LAo+ICsJCQkJICB1bnNpZ25lZCBsb25nIHBhcmVudF9yYXRlKQo+ICt7Cj4gKwl1OCBuZCwgbm9f
YSwgbm9fYiwgbm9fZDsKPiArCXVuc2lnbmVkIGxvbmcgZnJhYzsKPiArCXU2NCB2Y287Cj4gKwl1
MTYgbmY7Cj4gKwo+ICsJbmQgPSBpbm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRElWXzEpICYg
SU5OT19QUkVfUExMX1BSRV9ESVZfTUFTSzsKWyAuLi4gXQo+ICsJaWYgKGlubm9fcmVhZChwbGws
IElOTk9fUFJFX1BMTF9DT05UUk9MKSAmIElOTk9fUENMS19WQ09fRElWXzVfTUFTSykgewo+ICsJ
CWRvX2Rpdih2Y28sIG5kICogNSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYWxzbyBhIHBy
ZS1leGlzdGluZyBpc3N1ZSBmcm9tIHRoZSBvcmlnaW5hbCBkcml2ZXIsIGJ1dCBpZiB0aGUgUEhZ
CnJlZ2lzdGVycyBhcmUgdW5pbml0aWFsaXplZCAoY29udGFpbmluZyBkZWZhdWx0IDBzKSBvciBp
ZiBpbm5vX3JlYWQoKSBmYWlscwphbmQgcmV0dXJucyBhbiB1bmluaXRpYWxpemVkIDAsIHRoZSBu
ZCB2YXJpYWJsZSB3aWxsIGJlIDAuCgpEb2Vzbid0IHBhc3NpbmcgYSAwIGRpdmlzb3IgdG8gZG9f
ZGl2KCkgY2F1c2UgYSBkaXZpZGUtYnktemVybyBleGNlcHRpb24KbGVhZGluZyB0byBhIGtlcm5l
bCBwYW5pYz8KCj4gKwl9IGVsc2Ugewo+ICsJCW5vX2EgPSBpbm5vX3JlYWQocGxsLCBJTk5PX1BD
TEtfRElWX0FCKSAmIElOTk9fUENMS19ESVZfQV9NQVNLOwo+ICsJCW5vX2IgPSBGSUVMRF9HRVQo
SU5OT19QQ0xLX0RJVl9CX01BU0ssCj4gKwkJCQkgaW5ub19yZWFkKHBsbCwgSU5OT19QQ0xLX0RJ
Vl9BQikpICsgMjsKPiArCQlub19kID0gaW5ub19yZWFkKHBsbCwgSU5OT19QQ0xLX0RJVl9DRCkg
JiBJTk5PX1BDTEtfRElWX0RfTUFTSzsKPiArCj4gKwkJZG9fZGl2KHZjbywgbmQgKiAobm9fYSA9
PSAxID8gbm9fYiA6IG5vX2EpICogbm9fZCAqIDIpOwoKW1NldmVyaXR5OiBIaWdoXQpTaW1pbGFy
bHksIGlmIG5kLCBub19hLCBvciBub19kIGV2YWx1YXRlIHRvIDAgZHVlIHRvIHJlZ2lzdGVyIHJl
YWQgZmFpbHVyZXMKb3IgdW5pbml0aWFsaXplZCBoYXJkd2FyZSwgY2FuIHRoaXMgZG9fZGl2KCkg
Y2FsbCBhbHNvIHRyaWdnZXIgYSBkaXZpc2lvbiBieQp6ZXJvIHBhbmljIGR1cmluZyBib290IHdo
ZW4gdGhlIGNvbW1vbiBjbG9jayBmcmFtZXdvcmsgY2FsbHMgcmVjYWxjX3JhdGUoKT8KCj4gKwl9
Cj4gKwo+ICsJcmV0dXJuIERJVl9ST1VORF9DTE9TRVNUKCh1bnNpZ25lZCBsb25nKXZjbywgMTAw
MCkgKiAxMDAwOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwODI4LWpoNzExMC1jbGVhbi1zZW5kLXYyLTAtMzMxNjgwYzhi
OWQxQHNhbXN1bmcuY29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
