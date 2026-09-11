Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D51C88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxUlU37lLp1JZ49rVEWLB2+qyZA5y5suptAEHUrM4FA=; b=PBIKQOCkdvthbF
	d1YZ3vLzAL1ZHpvQrkWvuXlSVGVKXt/0dt+IOKkCqXeFIubwFEbmpqJMZLtDLH62js0ChpVmPyFdM
	IEEyKxShwpbXks3iq5BvA+2ylAwSrexF1yMeexoQJ5KVZ542eA9cEIimICr1bkKJPcxIlKM2q62zO
	RyZq9mYytQN7P3xokhMZCNRf7u5XX6HNS/ZanJKgBAky11NdbtBSsyU1JNrinW7Qz4JmCQ+6LT9RU
	eNmm8/rl284QQaZaMhe83ZiRMZ4Wk2REEJnFPzoW/xMcFmSAlOWCLlNG1MjC21/aak/ZGgUyc027q
	zFqU0sPgboDv6v2fWlSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53V0-0000000H8KQ-2jR6;
	Fri, 11 Sep 2026 15:49:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Uz-0000000H8Js-3ULY
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:49:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7560841B00;
	Fri, 11 Sep 2026 15:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC8FD1F00893;
	Fri, 11 Sep 2026 15:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141749;
	bh=baLZca9m/jVhaS+WTiyTOtwD2+JJChaOsn8UfHM6UuI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bzox/uuO/qApBgZ74WOd2twhbzder3sxYgJfJUqMG4esgt1Av3hVVp2K20PaREAWH
	 djpjcJIqNIWhWSRJ8HIFiv8SphKvr4p1WCfWrL2fXVnXHExhM6xRmx/h//8Y8kBnew
	 E+7VZ6raclQzSamDUur4fBWDd/5ud5pe8B0t3YCohTroV2twvLAXCSyxwNXBJe3WXz
	 mFne69DbX1UVExko3PVr1A0xJmuXuRkIjV1JZErmXka3NsMuTzNroWo7QSHAazSqjN
	 YGSfErEyzf2ev382xqrubZEoxWiteIo1iKLT9uwOuJl5mdixPWaxuXqGR1saq/iN/G
	 f8gsYTiNQM34g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 12/17] phy: qcom: edp: Add Nord bias and clock buffer
 enable callback
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260911-nord-drv-dt-v1-12-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-12-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:49:08 +0000
Message-Id: <20260911154908.DC8FD1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gUmVkdW5kYW50IGZ1
bmN0aW9uIGFkZGVkIGR1ZSB0byBhbiBpbmNvcnJlY3QgY29tbWl0IG1lc3NhZ2UgY2xhaW0KLS0K
CmNvbW1pdCAzYmM4ODQxMTljOGUzOTRlMTFkYWE1Mjc2ZDgzMGI4ODgxMzc5ZDY2CkF1dGhvcjog
Uml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTog
ZWRwOiBBZGQgTm9yZCBiaWFzIGFuZCBjbG9jayBidWZmZXIgZW5hYmxlIGNhbGxiYWNrCgpUaGlz
IGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IGNhbGxiYWNrIGZvciB0aGUgTm9yZCBwbGF0Zm9ybSB0
byBlbmFibGUgdGhlCmludGVybmFsIGJpYXMgZ2VuZXJhdG9yIGFuZCBjbG9jayBidWZmZXIuIEl0
IHdyaXRlcyAweDFmIHRvIHRoZQpCSUFTX0VOX0NMS0JVRkxSX0VOIHJlZ2lzdGVyLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+IGluZGV4IDZjYWM0YjU1YjY2ZjYuLmVjNDIyMGNm
ZmU2OTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+IEBAIC0xNjM3LDYg
KzE2MzcsMTQgQEAgc3RhdGljIGludCBxY29tX2VkcF9waHlfY29tX3Jlc2V0c21fY250cmxfbm9y
ZChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPiAgfQo+ICAKPiAgCj4gK3N0YXRpYyBpbnQg
cWNvbV9lZHBfY29tX2JpYXNfZW5fY2xrYnVmbHJfbm9yZChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAg
KmVkcCkKPiArewo+ICsJd3JpdGVsKDB4MWYsIGVkcC0+cGxsICsgRFBfUVNFUkRFU19WOF9DT01f
QklBU19FTl9DTEtCVUZMUl9FTik7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gKwoKW1Nl
dmVyaXR5OiBNZWRpdW1dClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhhdCBzZXR0aW5nIEJJ
QVNfRU5fQ0xLQlVGTFJfRU4gdG8gMHgxZiAiZGlmZmVycyAKZnJvbSB0aGUgdmFsdWUgdXNlZCBv
biBleGlzdGluZyBTb0NzIi4gSXMgdGhpcyBkZXNjcmlwdGlvbiBhY2N1cmF0ZT8KClRoZSBleGlz
dGluZyBxY29tX2VkcF9jb21fYmlhc19lbl9jbGtidWZscl92OCgpIGZ1bmN0aW9uIGFscmVhZHkg
d3JpdGVzIGV4YWN0bHkgCjB4MWYgdG8gdGhlIHNhbWUgRFBfUVNFUkRFU19WOF9DT01fQklBU19F
Tl9DTEtCVUZMUl9FTiByZWdpc3Rlci4KCkRvZXMgdGhpcyBuZXcgcWNvbV9lZHBfY29tX2JpYXNf
ZW5fY2xrYnVmbHJfbm9yZCgpIGZ1bmN0aW9uIGludHJvZHVjZSByZWR1bmRhbnQgCmNvZGU/IENv
dWxkIHRoZSBleGlzdGluZyB2OCB2YXJpYW50IGJlIHJldXNlZCB0byBhdm9pZCBkdXBsaWNhdGlv
biwgb3Igc2hvdWxkIAp0aGUgY29tbWl0IG1lc3NhZ2UgYmUgdXBkYXRlZCB0byBleHBsYWluIHdo
eSBhIHNlcGFyYXRlIGlkZW50aWNhbCBjYWxsYmFjayBpcyAKcmVxdWlyZWQ/CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTExLW5v
cmQtZHJ2LWR0LXYxLTAtZTI1YzA3M2NmMWI2QG9zcy5xdWFsY29tbS5jb20/cGFydD0xMgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
