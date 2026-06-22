Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2DDCDB466
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 23:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ917n6JadJZ6RJF+QQz8AxThhtO+Z+dXKxTokP/HmU=; b=UOYf033DkI7b7G
	NlaUBTrnnRty7CpdJZqAA2iB+wbzB98mcgacZAHpVf2db1Rbf8lXWi0GX5qJhiPEMogmak6OtpyZn
	Y7jndO9SbP12HhnFwuOLtExqP7xsYLaBXuF4EhO3oZ7YjQUKa++pzxZZOgZS87Zg+Gl9/+mflLvNa
	1Zmb1RTsqPKnyYFhy1D6LDXWO+zdkAktWBXabeRquUOT8qbgchzpHw3SLWiH0PAhLO4GsGY9xG95E
	6pXScHKtVmt5sLUbSZddlnOGAhq1UEFM0W2sn9dAGjswvC46uz0Hj82b/AXO2eSiNiSX21pfceo8M
	Qedbw7433VW8iOgpXCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wboGl-00000005TLg-2pUU;
	Mon, 22 Jun 2026 23:41:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wboGk-00000005TLW-22ua
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 23:41:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9A4F56001D;
	Mon, 22 Jun 2026 23:41:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BD251F000E9;
	Mon, 22 Jun 2026 23:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782171693;
	bh=QWpZKYCEVpbIwC+gH9KMasjrsmmVhAoa9/ht6JobPzc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FpjUL8MRbyRwIH6l0Wnwt8LpmCaxy7Z8Kdv0bwHplFjzA/7FAmJIdSUa+S8Jyql9k
	 vLaBnxqF5aQmReKh9gfMwBe3rOTDWEFhIhbPy9TAs8HN6eSfxBlxbnGSJyEX5fyejM
	 DrZYIYEVqk0veiDBBoI8kY0356SagVU24naCT04j5Cm2QyJMnMLDLO2Ptl9UcaFd/P
	 kMoGH5gx6qLFrEsKSl0L6bn3t80DS8D8mjxEVJTWF+XSrTjINs08aC/cly2IWXsv+a
	 IbseH/ilGn4+spaNLD4aUQ8apAWX5QI0F2RSitc/jSaDQlHe5Dnct0d6eDIeG5n4nx
	 Bp5bG5y0Llc6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: edp: update v8 power-on programming
 sequence
To: "Bjorn Andersson" <bjorn.andersson@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com>
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
 <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 23:41:32 +0000
Message-Id: <20260622234133.1BD251F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBoYW5k
bGluZyBmb3IgMS1sYW5lIGVEUC9EUCBjb25maWd1cmF0aW9uIGluIHRoZSB2OCBQSFkgc2VxdWVu
Y2UsIHJlc3VsdGluZyBpbiBhbiBpbmNvbnNpc3RlbnQgZmFsbGJhY2sgdG8gNC1sYW5lIGNvbmZp
Z3VyYXRpb24gZm9yIHR4MS4KLS0KCmNvbW1pdCA4NjY5MmVmYjA0MDY0MjhlNzg1N2EyZmU5MGY1
Nzk3YTczODVkNWU2CkF1dGhvcjogQmpvcm4gQW5kZXJzc29uIDxiam9ybi5hbmRlcnNzb25Ab3Nz
LnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTogZWRwOiB1cGRhdGUgdjggcG93ZXItb24gcHJvZ3Jh
bW1pbmcgc2VxdWVuY2UKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIHY4IGVEUCBQSFkgcHJvZ3Jh
bW1pbmcgc2VxdWVuY2UgdG8gbWF0Y2ggZG9jdW1lbnRlZCAKaGFyZHdhcmUgcmVxdWlyZW1lbnRz
LiBJdCBhZGp1c3RzIHNldHRpbmdzIGFjcm9zcyBzZXZlcmFsIGNvbmZpZ3VyYXRpb24gc3RhZ2Vz
CmluY2x1ZGluZyBBVVgsIFRYIGxhbmVzLCBQQ1MsIFBMTCwgYW5kIERDQyB0byBpbXByb3ZlIHN1
cHBvcnQgZm9yIHZhcmlvdXMgbGluawpyYXRlcyBhbmQgbGFuZSBjb25maWd1cmF0aW9ucy4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiBpbmRleCA2NTg4NDE5ZDQ4NjBiLi5jNWQx
ZmEwYWU2Y2I3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVk
cC5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKWyAuLi4gXQo+
IEBAIC00MjcsNiArNDkxLDE0NSBAQCBzdGF0aWMgaW50IHFjb21fZWRwX2NvbmZpZ3VyZV9wbGwo
Y29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApClsgLi4uIF0KPiArc3RhdGljIHZvaWQgcWNvbV9l
ZHBfY29uZmlndXJlX2xhbmVzX2FmdGVyX3BsbF92OChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVk
cCkKPiArewo+ICsJaWYgKGVkcC0+ZHBfb3B0cy5sYW5lcyA9PSAyKSB7Cj4gKwkJd3JpdGVsKDB4
MWIsIGVkcC0+dHgwICsgVFhuX0hJR0haX0RSVlJfRU4pOwpbIC4uLiBdCj4gKwl9IGVsc2Ugewo+
ICsJCXdyaXRlbCgweDFmLCBlZHAtPnR4MCArIFRYbl9ISUdIWl9EUlZSX0VOKTsKPiArCQl3cml0
ZWwoMHgwMywgZWRwLT50eDAgKyBUWG5fVFJBTlNDRUlWRVJfQklBU19FTik7Cj4gKwkJd3JpdGVs
KDB4MDQsIGVkcC0+dHgwICsgVFhuX0hJR0haX0RSVlJfRU4pOwo+ICsJCXdyaXRlbCgweDAwLCBl
ZHAtPnR4MCArIFRYbl9UWF9QT0xfSU5WKTsKPiArCj4gKwkJd3JpdGVsKDB4MWYsIGVkcC0+dHgx
ICsgVFhuX0hJR0haX0RSVlJfRU4pOwo+ICsJCXdyaXRlbCgweDAzLCBlZHAtPnR4MSArIFRYbl9U
UkFOU0NFSVZFUl9CSUFTX0VOKTsKCltTZXZlcml0eTogTWVkaXVtXQpXaGF0IGhhcHBlbnMgaWYg
dGhlIERQIGZyYW1ld29yayByZXF1ZXN0cyBhIDEtbGFuZSBjb25maWd1cmF0aW9uLCBzdWNoIGFz
CmR1cmluZyBhIGxpbmsgdHJhaW5pbmcgZmFsbGJhY2s/CgpTaW5jZSB0aGVyZSBpcyBubyBleHBs
aWNpdCBjaGVjayBmb3IgZWRwLT5kcF9vcHRzLmxhbmVzID09IDEsIGEgMS1sYW5lCmNvbmZpZ3Vy
YXRpb24gd2lsbCBmYWxsIGludG8gdGhpcyBlbHNlIGJsb2NrLCB3aGljaCBjb25maWd1cmVzIHR4
MSBhcyBpZiBpdAp3ZXJlIGluIGEgNC1sYW5lIHNldHVwIGJ5IGVuYWJsaW5nIGl0cyB0cmFuc2Nl
aXZlciBkcml2ZXIgYW5kIGJpYXMuCgpIb3dldmVyLCBhcyBzZWVuIGluIHFjb21fZWRwX2xkb19j
b25maWdfdjgoKSBiZWxvdywgdGhlIHR4MSBMRE8gaXMgY29ycmVjdGx5CmtlcHQgdW5wb3dlcmVk
ICgweDAwKSBmb3IgbGFuZXMgPD0gMi4gQ291bGQgdGhpcyBjcmVhdGUgYW4gZWxlY3RyaWNhbCBj
b25mbGljdApvciBjYXVzZSBsaW5rIHRyYWluaW5nIHRvIGZhaWwsIGJlY2F1c2UgdGhlIHR4MSB0
cmFuc2NlaXZlcnMgYXJlIGVuYWJsZWQgd2hpbGUKdGhlIExETyByZW1haW5zIHVucG93ZXJlZD8K
ClNob3VsZCAxLWxhbmUgbW9kZSBiZSBleHBsaWNpdGx5IGhhbmRsZWQgaGVyZSBvciByZWplY3Rl
ZCB3aXRoIC1FSU5WQUwgZWFybHkKaW4gdGhlIHBvd2VyLW9uIHNlcXVlbmNlPwoKPiArCQl3cml0
ZWwoMHgwNCwgZWRwLT50eDEgKyBUWG5fSElHSFpfRFJWUl9FTik7Cj4gKwkJd3JpdGVsKDB4MDAs
IGVkcC0+dHgxICsgVFhuX1RYX1BPTF9JTlYpOwo+ICsJfQo+ICt9ClsgLi4uIF0KPiBAQCAtOTEx
LDYgKzExMTQsMjIgQEAgc3RhdGljIGludCBxY29tX2VkcF9sZG9fY29uZmlnX3Y2KGNvbnN0IHN0
cnVjdCBxY29tX2VkcCAqZWRwKQpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgcWNvbV9lZHBfbGRvX2Nv
bmZpZ192OChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPiArewo+ICsJY29uc3Qgc3RydWN0
IHBoeV9jb25maWd1cmVfb3B0c19kcCAqZHBfb3B0cyA9ICZlZHAtPmRwX29wdHM7Cj4gKwl1MzIg
bGRvX2NvbmZpZzsKPiArCj4gKwlpZiAoZWRwLT5pc19lZHApCj4gKwkJbGRvX2NvbmZpZyA9IDB4
ZDA7Cj4gKwllbHNlCj4gKwkJbGRvX2NvbmZpZyA9IDB4MDA7Cj4gKwo+ICsJd3JpdGVsKGxkb19j
b25maWcsIGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcpOwo+ICsJd3JpdGVsKGRwX29wdHMtPmxh
bmVzID4gMiA/IGxkb19jb25maWcgOiAweDAwLCBlZHAtPnR4MSArIFRYbl9MRE9fQ09ORklHKTsK
PiArCj4gKwlyZXR1cm4gMDsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyMi1nbHltdXItZWRwLXBoeS12MS0wLTgxNGI0
NTA4OWFjOUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
