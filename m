Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B3D0CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 16:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRcOFwzBNU8LJnBBQgy+XiKFoOhVx/dIkXqiU6RxtpY=; b=uHCMxwzScC9Bx/
	5AmduESiMWD9udHmpOPpR1zeFHQKsW8153uL/u57qPUu78DoQlQbRsNtgivHoLuVHiGmXeQIYTRAC
	AmRFOLc1CM9PFmstdL5oX5qwNr4ml2DfvzHGK/TeqmMEJyz2r8GcSH8M3UEhQu6/Sma8djuw9qBf9
	hx1BkLTqfs0RZ2OeClyoEVuquG9nnvSX4j77Y5A6VwMCcXcY2qOkK4S1uQW8vFRVY7xECUvQyTALa
	0QGXQfoShi+1cAfGeddUAuRXhyne1iIlDs8qZrfcjg1qlwp4x0lhmw2NoytklwpJPWTYR1lI6AFkc
	NKgvSdd7g49dkh3K6Pvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLru-000000087O3-14TI;
	Wed, 10 Jun 2026 16:33:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLrs-000000087NT-2Adu
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 16:33:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BABDC600AF;
	Wed, 10 Jun 2026 16:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36C271F00893;
	Wed, 10 Jun 2026 16:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109207;
	bh=FxnVevndojbb7nQC8MpRONtdha/Dnzj2fOsHmbalLgU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=McbVfDpbTTO60qRlAkXZCYdgWFXcaU+iwxeW554l7Kh5M3ivuSfaGxfYfbUbyGiZx
	 ITln7l3udwNLvL6YI99ujBPgA4MH6YGHd97BTUi9ugipcUMWRE+bigl9hWan8GleOj
	 Evw+wSEvebdEFFRAYC7LGchTAhbeP9Ps/QEBlEXmgXLsaGxFGqFWLpLsjVMn48X7/1
	 /W4dES++MVX2z98agI+5a1JEbuBkZiyVIT2ZeN5d/Ndy2aj9anNr8Op5D+dVAOkTzg
	 V1pjfKxPYlh2HGbr/sw/5RmArU3Fl86XH5/XzajpWp4gi+j7yGkRqLnkv9e7WO/q/G
	 9mgyabbARwOmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 phy-next 11/16] phy: lynx-28g: add support for big
 endian register maps
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260610151952.2141019-12-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-12-vladimir.oltean@nxp.com>
Date: Wed, 10 Jun 2026 16:33:26 +0000
Message-Id: <20260610163327.36C271F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmV0dXJuaW5nIGEgdm9p
ZCBleHByZXNzaW9uIGZyb20gYSBmdW5jdGlvbiB3aXRoIGEgdm9pZCByZXR1cm4gdHlwZSBpbiBg
bHlueF93cml0ZWAgdmlvbGF0ZXMgdGhlIEMgc3RhbmRhcmQgYW5kIGtlcm5lbCBjb2RpbmcgYmVz
dCBwcmFjdGljZXMsIGFuZCBjYW4gY2F1c2UgaGFyZCBidWlsZCBmYWlsdXJlcyBvbiBjZXJ0YWlu
IGFyY2hpdGVjdHVyZXMuCi0tCgpjb21taXQgOTdkYzU2MDJkMDk1NWEwZGE5NjgyMjM2ZDNkZmJj
MjMzOWJlNzQ1MgpBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5j
b20+CgpwaHk6IGx5bngtMjhnOiBhZGQgc3VwcG9ydCBmb3IgYmlnIGVuZGlhbiByZWdpc3RlciBt
YXBzCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIGJpZy1lbmRpYW4gcmVnaXN0ZXIgbWFw
cyBpbiB0aGUgTHlueCAyOEcgUEhZCmRyaXZlci4gSXQgaW50cm9kdWNlcyBlbmRpYW4tYXdhcmUg
bHlueF9yZWFkKCkgYW5kIGx5bnhfd3JpdGUoKSBoZWxwZXJzIHRoYXQKY29uZGl0aW9uYWxseSBh
cHBseSBieXRlLXN3YXBwaW5nIGJhc2VkIG9uIGEgZGV2aWNlIHRyZWUgcHJvcGVydHkuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LWNvcmUuaCBiL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtY29yZS5oCj4gLS0tIGEvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1jb3JlLmgKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1seW54LWNvcmUuaAoKWyAuLi4gXQoKPiArc3RhdGljIGlubGluZSB2b2lk
IGx5bnhfd3JpdGUoc3RydWN0IGx5bnhfcHJpdiAqcHJpdiwgdW5zaWduZWQgbG9uZyBvZmYsIHUz
MiB2YWwpCj4gK3sKPiArCXZvaWQgX19pb21lbSAqcmVnID0gcHJpdi0+YmFzZSArIG9mZjsKPiAr
Cj4gKwlpZiAocHJpdi0+YmlnX2VuZGlhbikKPiArCQlyZXR1cm4gaW93cml0ZTMyYmUodmFsLCBy
ZWcpOwo+ICsKPiArCXJldHVybiBpb3dyaXRlMzIodmFsLCByZWcpOwo+ICt9CgpbU2V2ZXJpdHk6
IExvd10KSXMgaXQgc2FmZSB0byB1c2UgdGhlIHJldHVybiBrZXl3b3JkIGZvciB0aGVzZSB2b2lk
IEkvTyBhY2Nlc3NvcnM/CgpXaGlsZSB0aGUgY29tcGlsZXIgbWlnaHQgcGVybWl0IHJldHVybmlu
ZyBhIHZvaWQgZXhwcmVzc2lvbiwgaXQgdGVjaG5pY2FsbHkKdmlvbGF0ZXMgdGhlIEMgc3RhbmRh
cmQuIElmIGlvd3JpdGUzMmJlKCkgb3IgaW93cml0ZTMyKCkgYXJlIGltcGxlbWVudGVkIGFzCm5v
bi1leHByZXNzaW9uIG1hY3JvcyAoc3VjaCBhcyBhIGRvIHsgLi4uIH0gd2hpbGUoMCkgYmxvY2sp
IG9uIGNlcnRhaW4KYXJjaGl0ZWN0dXJlcywgY291bGRuJ3QgdGhpcyBleHBhbmQgaW50byBhIHN5
bnRheCBlcnJvciBhbmQgY2F1c2UgYSBidWlsZApyZWdyZXNzaW9uPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxMDE1MTk1Mi4y
MTQxMDE5LTEtdmxhZGltaXIub2x0ZWFuQG54cC5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
