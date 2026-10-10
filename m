Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 812F0CA6004
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 12:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kPVoIIO+usAQG02upXa/1mD2Oggs+o2a48+6jSous0=; b=pzoyTgLIkgG6c/
	vgi2QYn4jSW7M+VcvMztitbgFVFWY2zpbHOICoqwpxyIUthajVfahI4XL3h4dEj/A2++SzPpAsWie
	xXJc6nrz/7TP3rtE862mPw3HuTg/EVtLIDKT7dF+HFmwf3ya5SaQoDWbcdL1HNcKH4BgUape2Kmz+
	BBIqO23pIzOBx3Z6yujixgTLKoA4qPUY/cKxG3AlE4lSaNhSfBZSBZvdTX99ybMD7vWQ0sa8wVAQx
	CPT+a5j2k4sL7wuxZGsNhq4//Xo4K1zlpRIawqem2ntsfs/Yz5NSTfOIsCV0Gu1JeafnAGzcj8WJq
	FOM9LZ6o6je2NHkNwQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVwb-000000080J9-3R2j;
	Sat, 10 Oct 2026 12:12:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVwa-000000080J2-3xeR
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 12:12:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A51460202;
	Sat, 10 Oct 2026 12:12:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 510C21F000FF;
	Sat, 10 Oct 2026 12:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791634372;
	bh=rq078x30mntqmt9YXxlBXp+2iWrDU8Zm1mGtRU3YIQc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YGfwA1/jFy9kkW5cB4jMpXUahbh1G9cvi8QtJS1V7vAUGFAC/AwpNsFeUZwqZHp3C
	 EoYKNH5dXy3SGWW8rdmlICWz9IHSTcKeuAzfmpdMsmGjW0K4mn18Q5U1dhVM+nyDYU
	 mdyjDclNIYwR7wUCmrMon7pPUsJBlO0ZhKtlcnGzd5+MM7aqtNmVePLeX2in6a3MEy
	 EHu8oM+9P5OwSeF9l54m/OLJlaNSVt7xN0+CS01DJQ3OaKVlICB9R3ZLGAyhaUenBk
	 4zYg9M6HPDUUEnRKKHXVW1JwHkesDT6iKlEYW3EXwYnZ0RpS+rnqxq7395gtn99tvJ
	 jiYorbPZwelAg==
Message-ID: <sashiko-outbox-166489@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] phy: mediatek: hdmi: Add support for mt8167
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20261010115539.9237-3-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
 <20261010115539.9237-3-l.scorcia@gmail.com>
Date: Sat, 10 Oct 2026 12:12:50 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGNsazogZGV0ZXJtaW5l
X3JhdGUgY2FsbGJhY2sgZmFpbHMgdG8gcHJvcGFnYXRlIGJlc3RfcGFyZW50X3JhdGUgYW5kIG11
dGF0ZXMgcGVyc2lzdGVudCBzdGF0ZQotIFtNZWRpdW1dIGNsazogcGh5LW10ay1oZG1pOiByZWNh
bGNfcmF0ZSByZXR1cm5zIGludGVybmFsIHJhdGUgaW5zdGVhZCBvZiBsb2dpY2FsIFRNRFMgY2xv
Y2sKLS0KCmNvbW1pdCBjOWE2NzAxYTM2NWYyMjY4ZmIzMmY1MTE0MTgyMWNjYzkzN2RlMDkxCkF1
dGhvcjogTHVjYSBMZW9uYXJkbyBTY29yY2lhIDxsLnNjb3JjaWFAZ21haWwuY29tPgoKcGh5OiBt
ZWRpYXRlazogaGRtaTogQWRkIHN1cHBvcnQgZm9yIG10ODE2NwogICAgCkFkZCBzdXBwb3J0IGZv
ciB0aGUgSERNSSBQSFkgZm91bmQgaW4gTWVkaWFUZWsgbXQ4MTY3LgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE2Ny5jIGIvZHJpdmVycy9waHkv
bWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE2Ny5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAwLi4yNDM1MDU0ZDRlMTc2Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxNjcuYwoKWyAuLi4gXQoKPiAr
c3RhdGljIGludCBtdGtfaGRtaV9wbGxfZGV0ZXJtaW5lX3JhdGUoc3RydWN0IGNsa19odyAqaHcs
Cj4gKwkJCQkgICAgICAgc3RydWN0IGNsa19yYXRlX3JlcXVlc3QgKnJlcSkKPiArewo+ICsJc3Ry
dWN0IG10a19oZG1pX3BoeSAqaGRtaV9waHkgPSB0b19tdGtfaGRtaV9waHkoaHcpOwo+ICsKPiAr
CWhkbWlfcGh5LT5wbGxfcmF0ZSA9IHJlcS0+cmF0ZTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoK
W1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY2FsbGJhY2sgZmFpbCB0byBjYWxjdWxhdGUgYW5k
IHNldCByZXEtPmJlc3RfcGFyZW50X3JhdGU/CgpUaGlzIGNsb2NrIGlzIHJlZ2lzdGVyZWQgd2l0
aCB0aGUgQ0xLX1NFVF9SQVRFX1BBUkVOVCBmbGFnIHNldC4gRmFpbGluZyB0bwp1cGRhdGUgcmVx
LT5iZXN0X3BhcmVudF9yYXRlIG1lYW5zIHRoZSBwYXJlbnQgY2xvY2sncyByYXRlIG1pZ2h0IG5l
dmVyIGJlCmFkanVzdGVkIHRvIHN1cHBvcnQgcmVxdWlyZWQgcGl4ZWwgY2xvY2sgZnJlcXVlbmNp
ZXMsIHN1Y2ggYXMgMTQ4LjVNSHogb3IKMTA4TUh6LiBUaGUgaGFyZHdhcmUgZGl2aWRlcnMgY29u
ZmlndXJlZCBpbiBzZXRfcmF0ZSB3b3VsZCBiZSBhcHBsaWVkIHRvIGFuCnVuc2NhbGVkIHBhcmVu
dCBmcmVxdWVuY3ksIHlpZWxkaW5nIGFuIGluY29ycmVjdCBIRE1JIHBpeGVsIGNsb2NrLgoKQWxz
bywgc2luY2UgZGV0ZXJtaW5lX3JhdGUgaXMgYSBkcnktcnVuIENDRiBxdWVyeSBjYWxsYmFjayAo
ZS5nLiwgaW52b2tlZCBieQpjbGtfcm91bmRfcmF0ZSksIGlzIGl0IHNhZmUgdG8gbXV0YXRlIHBl
cnNpc3RlbnQgZHJpdmVyIHN0YXRlCihoZG1pX3BoeS0+cGxsX3JhdGUpIGhlcmU/CgpbIC4uLiBd
Cgo+ICtzdGF0aWMgdW5zaWduZWQgbG9uZyBtdGtfaGRtaV9wbGxfcmVjYWxjX3JhdGUoc3RydWN0
IGNsa19odyAqaHcsCj4gKwkJCQkJICAgICAgdW5zaWduZWQgbG9uZyBwYXJlbnRfcmF0ZSkKPiAr
ewo+ICsJc3RydWN0IG10a19oZG1pX3BoeSAqaGRtaV9waHkgPSB0b19tdGtfaGRtaV9waHkoaHcp
Owo+ICsKPiArCXVuc2lnbmVkIGxvbmcgb3V0X3JhdGUsIHZhbDsKPiArCXUzMiB0bXA7CgpbIC4u
LiBdCgo+ICsJdG1wID0gcmVhZGwoaGRtaV9waHktPnJlZ3MgKyBIRE1JX0NPTjIpOwo+ICsJdmFs
ID0gRklFTERfR0VUKFJHX0hETUlUWF9UWF9QT1NESVYsIHRtcCk7Cj4gKwlvdXRfcmF0ZSA+Pj0g
dmFsOwo+ICsKPiArCWlmICh0bXAgJiBSR19IRE1JVFhfRU5fVFhfUE9TRElWKQo+ICsJCW91dF9y
YXRlIC89IDU7Cj4gKwo+ICsJcmV0dXJuIG91dF9yYXRlOwo+ICt9CgpbU2V2ZXJpdHk6IE1lZGl1
bV0KRG9lcyB0aGlzIG1hdGhlbWF0aWNhbGx5IGNvbXB1dGUgdGhlIGludGVybmFsIFBIWSBvdXRw
dXQgcmF0ZSBpbnN0ZWFkIG9mIHRoZQpsb2dpY2FsIFRNRFMgcGl4ZWwgY2xvY2sgcmVxdWVzdGVk
IGJ5IHRoZSBIRE1JIGNvbnRyb2xsZXI/CgpJdCBhcHBlYXJzIHRoaXMgY2FsY3VsYXRlcyBhIGZy
YWN0aW9uIG9mIHRoZSBUTURTIGNsb2NrIChlLmcuLCAzNy4xMjVNSHogZm9yIGEKNzQuMjVNSHog
Y2xvY2spLiBTaW5jZSB0aGUgSERNSSBjb250cm9sbGVyIGRyaXZlciByZXF1ZXN0cyB0aGUgVE1E
UyBwaXhlbCBjbG9jawpyYXRlLCByZXR1cm5pbmcgdGhlIGludGVybmFsIHJhdGUgY291bGQgbGVh
ZCB0byBDQ0YgcmF0ZSBtaXNtYXRjaGVzIGFuZAp3YXJuaW5ncyBsaWtlICJXYW50IFBMTCA3NDI1
MDAwMCBIeiwgZ290IDM3MTI1MDAwIEh6Ii4KCkNvbWJpbmVkIHdpdGggbXRrX2hkbWlfcGxsX2Rl
dGVybWluZV9yYXRlKCkgZmFpbGluZyB0byBjb25maWd1cmUgdGhlCmFwcHJvcHJpYXRlIHNjYWxl
ZCByYXRlIGZvciB0aGUgcGFyZW50IGNsb2NrLCBjb3VsZCB0aGlzIGNlbWVudCB0aGUgZnJhbWV3
b3JrCm1pc21hdGNoIGFuZCB2aW9sYXRlIHRoZSBjbG9jayBmcmFtZXdvcmsgQVBJIGNvbnRyYWN0
PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MTAxMDExNTUzOS45MjM3LTEtbC5zY29yY2lhQGdtYWlsLmNvbT9wYXJ0PTIKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
