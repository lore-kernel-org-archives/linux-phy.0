Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDEDCD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 12:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MCgPKh32fFR3P9/t6OjGhn6igPRIacues1p10SeYXI=; b=YEeFdWjE5qnyRp
	LcFMSgRIM777dHkdg3Ou6hzSkSnn1SROa33hARUdHWv6CJRnOhl3Z/J6zpWWkcaXD011DJ0A/bYbG
	2Ag6vI/l1hpxw7JU1DIuj8LbpsqRYTWeZkYVZn/9zrhnoDmyOEmx0ZtAdow4Z/bOdf0QszswVnKXG
	FFx1G7IIyE+okCY/C2R8zAxs672urHVlTk//SEUkeolUKJRKWlb+wBSdEWEvbJOqhGDcTAVcTXnR2
	yxGwJAof1ZJi0IPm7wmzxU/O9KfgfJMoO6yL378RfPE+0/1sRC/F0SsS1qtS4A5WEsjMxGP3c0inK
	/Aoxe3Ro8efsGMjQZWuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNVYi-00000005WHA-3azy;
	Thu, 14 May 2026 12:53:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNVYg-00000005WG1-1FkE
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 12:52:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BBC2E43B9B;
	Thu, 14 May 2026 12:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78EB5C2BCB3;
	Thu, 14 May 2026 12:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763177;
	bh=7BcAX27xjr2pPp5tvFDoX6DqrmU5yLDBk+GGVOVgJUw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=oWql75Ahkh1InVUuabW7hjhFvsQFpmGWMwrX5+655FAwp+APXbb9Dho4dR31CnCp+
	 Ss6NCGngvVWkHGSiLnGefAm0GYHM9vjZDkJZCkBLq9OLAH8NBY80jqL5yDXAtkrW9q
	 V6zBGS6rDwQzEi7UyJFq1VKT7SDEpQkvk6jI4l+msgDqXBGjlGU7R14yMhWDoBB5x1
	 wA6GK/RUIiJNtutwrd4eZ4t7JzHL6mQRDsoUtco7ZCGWWnK88oorG8+WvUwR2ybdc0
	 XAnWYapShREHOjMYjXEKW5wJX7VAyCnuipA3x4ZfzpkcDFZZw70XFEZa+ulVe+chiB
	 p9INaAdAUozIg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260514-pci-phy-v1-2-482429192746@oss.qualcomm.com>
References: <20260514-pci-phy-v1-2-482429192746@oss.qualcomm.com>
Date: Thu, 14 May 2026 12:52:55 +0000
Message-Id: <20260514125256.78EB5C2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_055258_380027_29C7318A 
X-CRM114-Status: GOOD (  12.66  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVkdW5kYW50IGFycmF5
IGR1cGxpY2F0aW9uIGFuZCBtaXNsZWFkaW5nIG5hbWluZyBmb3IgUEhZIGluaXQgdGFibGVzCi0t
Cgpjb21taXQgMWE0ZmI2NWE4NDQ5NDQxNWVhMmMxNTFlZjdlMWE2YzQzMjhkM2Q3ZgpBdXRob3I6
IFZhcmFkYXJhamFuIE5hcmF5YW5hbiA8dmFyYWRhcmFqYW4ubmFyYXlhbmFuQG9zcy5xdWFsY29t
bS5jb20+CgpwaHk6IHFjb20tcW1wLXBjaWU6IEFkZCBzdXBwb3J0IGZvciBpcHE1MjEwIFBDSWUg
cGh5cwoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgUENJZSBQSFlzIGZvdW5kIG9u
IHRoZSBRdWFsY29tbQppcHE1MjEwIHBsYXRmb3JtLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1wY2llLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtcGNpZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUu
Ywo+IEBAIC01MTQsNiArNTE0LDEwNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5p
dF90YmwgaXBxODA3NF9wY2llX2dlbjNfcGNzX21pc2NfdGJsW10gPSB7ClsgLi4uIF0KPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBf
dHhfdGJsW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjRfVFhfUkVTX0NPREVf
TEFORV9PRkZTRVRfVFgsIDB4MDIpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y0X1RY
X0xBTkVfTU9ERV8xLCAweDA2KSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNF9UWF9S
Q1ZfREVURUNUX0xWTF8yLCAweDEyKSwKPiArfTsKCkRvZXMgdGhpcyBuZXcgdGFibGUgZHVwbGlj
YXRlIHRoZSBleGlzdGluZyBpcHE2MDE4X3BjaWVfdHhfdGJsPyBDb3VsZCB3ZQpyZXVzZSB0aGUg
ZXhpc3RpbmcgdGFibGUgaW5zdGVhZCBvZiBjcmVhdGluZyBhIHJlZHVuZGFudCBjb3B5PwoKWyAu
Li4gXQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgaXBxNTIxMF9nZW4z
eDFfcGNpZV9lcF9wY3NfdGJsW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjRfUENT
X0ZMTF9DTlRSTDEsIDB4MDEpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y0X1BDU19SRUZH
RU5fUkVRX0NPTkZJRzEsIDB4MGQpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y0X1BDU19H
MTJTMV9UWERFRU1QSF9NM1A1REIsIDB4MTApLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y0
X1BDU19SWF9TSUdERVRfTFZMLCAweGFhKSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNF9Q
Q1NfUDJVM19XQUtFVVBfRExZX1RJTUVfQVVYQ0xLX0wsIDB4MDEpLAo+ICsJUU1QX1BIWV9JTklU
X0NGRyhRUEhZX1Y0X1BDU19SWF9EQ0NfQ0FMX0NPTkZJRywgMHgwMSksCj4gKwlRTVBfUEhZX0lO
SVRfQ0ZHKFFQSFlfVjRfUENTX0VRX0NPTkZJRzUsIDB4MDEpLAo+ICt9OwoKSXMgaXQgcG9zc2li
bGUgdGhpcyBpcyBhbiBleGFjdCBkdXBsaWNhdGUgb2YgaXBxNjAxOF9wY2llX3Bjc190Ymw/Cgpb
IC4uLiBdCj4gQEAgLTY1NCw2ICs3NTMsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5
X2luaXRfdGJsIGlwcTk1NzRfZ2VuM3gyX3BjaWVfc2VyZGVzX3RibFtdID0gewpbIC4uLiBdCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBpcHE5NTc0X3BjaWVfdHhfdGJs
W10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjRfVFhfUkVTX0NPREVfTEFORV9P
RkZTRVRfVFgsIDB4MDIpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y0X1RYX1JDVl9E
RVRFQ1RfTFZMXzIsIDB4MTIpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y0X1RYX0hJ
R0haX0RSVlJfRU4sIDB4MTApLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y0X1RYX0xB
TkVfTU9ERV8xLCAweDA2KSwKPiArfTsKCkNvdWxkIHRoaXMgdGFibGUgYmUgZW50aXJlbHkgcmVw
bGFjZWQgYnkgaXBxODA3NF9wY2llX2dlbjNfdHhfdGJsPwoKQWxzbywgZG9lcyB0aGUgbmFtZSBp
cHE5NTc0X3BjaWVfdHhfdGJsIGFjY3VyYXRlbHkgcmVmbGVjdCBpdHMgdXNhZ2U/IEl0CnNlZW1z
IHRvIGJlIHVzZWQgZXhjbHVzaXZlbHkgYnkgdGhlIG5ld2x5IGFkZGVkIGlwcTUyMTBfZ2VuM3gx
X3BjaWVwaHlfY2ZnLAp3aGlsZSB0aGUgYWN0dWFsIElQUTk1NzQgY29uZmlndXJhdGlvbnMgcmV0
YWluIHRoZWlyIHVzZSBvZiB0aGUgaXBxODA3NCB0YWJsZS4KClsgLi4uIF0KPiBAQCAtMzYxMyw2
ICszNzE5LDQ5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgaXBxNjAxOF9wY2ll
cGh5X2NmZyA9IHsKWyAuLi4gXQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIGlw
cTUyMTBfZ2VuM3gxX3BjaWVwaHlfY2ZnID0gewo+ICsJLmxhbmVzCQkJPSAxLAo+ICsKPiArCS5v
ZmZzZXRzCQk9ICZxbXBfcGNpZV9vZmZzZXRzX3Y0eDEsCj4gKwo+ICsJLnRibHMgPSAgewo+ICsJ
CS5zZXJkZXMJCT0gaXBxOTU3NF9nZW4zeDFfcGNpZV9zZXJkZXNfdGJsLAo+ICsJCS5zZXJkZXNf
bnVtCT0gQVJSQVlfU0laRShpcHE5NTc0X2dlbjN4MV9wY2llX3NlcmRlc190YmwpLAo+ICsJCS50
eAkJPSBpcHE5NTc0X3BjaWVfdHhfdGJsLAo+ICsJCS50eF9udW0JCT0gQVJSQVlfU0laRShpcHE5
NTc0X3BjaWVfdHhfdGJsKSwKCklmIGlwcTk1NzRfcGNpZV90eF90YmwgaXMgaWRlbnRpY2FsIHRv
IGlwcTgwNzRfcGNpZV9nZW4zX3R4X3RibCwgc2hvdWxkCnRoaXMgcmVmZXJlbmNlIHRoZSBleGlz
dGluZyBpcHE4MDc0X3BjaWVfZ2VuM190eF90YmwgaW5zdGVhZD8KCj4gKwkJLnJ4CQk9IGlwcTk1
NzRfcGNpZV9yeF90YmwsCj4gKwkJLnJ4X251bQkJPSBBUlJBWV9TSVpFKGlwcTk1NzRfcGNpZV9y
eF90YmwpLApbIC4uLiBdCj4gKwkudGJsc19lcCA9ICYoY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
X3RibHMpIHsKPiArCQkuc2VyZGVzCQk9IGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfc2VyZGVzX3Ri
bCwKPiArCQkuc2VyZGVzX251bQk9IEFSUkFZX1NJWkUoaXBxNTIxMF9nZW4zeDFfcGNpZV9lcF9z
ZXJkZXNfdGJsKSwKPiArCQkudHgJCT0gaXBxNTIxMF9nZW4zeDFfcGNpZV9lcF90eF90YmwsCj4g
KwkJLnR4X251bQkJPSBBUlJBWV9TSVpFKGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfdHhfdGJsKSwK
PiArCQkucngJCT0gaXBxNTIxMF9nZW4zeDFfcGNpZV9lcF9yeF90YmwsCj4gKwkJLnJ4X251bQkJ
PSBBUlJBWV9TSVpFKGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfcnhfdGJsKSwKPiArCQkucGNzCQk9
IGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfcGNzX3RibCwKPiArCQkucGNzX251bQk9IEFSUkFZX1NJ
WkUoaXBxNTIxMF9nZW4zeDFfcGNpZV9lcF9wY3NfdGJsKSwKClNpbWlsYXJseSwgY291bGQgdGhl
c2UgcG9pbnQgdG8gaXBxNjAxOF9wY2llX3R4X3RibCBhbmQKaXBxNjAxOF9wY2llX3Bjc190Ymwg
cmVzcGVjdGl2ZWx5PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDUxNC1wY2ktcGh5LXYxLTAtNDgyNDI5MTkyNzQ2QG9zcy5xdWFs
Y29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
