Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DC14C624D0
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 03:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4VjPJBb9srgFVPa716HBYTM/9ewApG+vpM5EtwKjLw=; b=OyrWqjQhWnbZV6
	uPLsfU4Ha7IlrlkKpXSz2Ibq5WNZTmLakmIHCK83bXHW2D0jBbVJwqEa3pXxuHPyLb+kHIaUegmQW
	bntrYh6gN8bBuqI19zhgiY1yhAkByjPkOs0JMsazB3MjZf6uDMVdpTUunlbVhZtXvqI5Pw7Db1bFs
	/fRkc8N8lFKhluDdgULBJ/hZwYu0WvBVtaqK1lS3LUVjLwtU23UZ7VF56ZPIah5FlqsORWmHiwNu1
	A+A7cVobUyMSsNaTZuPnmeBfnwpiOouSiuxHOsxe3KnxAd2NHrvtmW/L5L9SiDVshL9yEccI4x/PJ
	7T2Txc0bl0p+oZwPK+Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1bhu-0000000Dj3X-30TN;
	Wed, 02 Sep 2026 03:32:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1bht-0000000Dj3C-34R8
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 03:32:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 917BB600C8;
	Wed,  2 Sep 2026 03:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED6EA1F000E9;
	Wed,  2 Sep 2026 03:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788319932;
	bh=auS/g3DXuzMvxumUHoHI3AcvLKzS4Mi6CyO60EpltJ0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jTwqGXxyo7Fm2+wDYtulYKOwphhy1GsK+PKVWbsYgM3ivM/VDGJTRkW7QnSJrjl1c
	 XM8OKNrG9j/hTRGnX2s7O2+ZGVzgxzNML2wcAeOzHIEUgVF5TZTOIH3i9U2yn8akSX
	 jWDe3mO7D46WQ8JCoSJ3QfAgRyqVLtr0nawiwHToCI95ezuhrjhM6l9IUi45Lg5VQo
	 kmLLJqk8NCwxwrELCa35NE9gTNBJFFHBFMSEtpb3x+vIrOCR4kM7PNTTiChNPSDyY0
	 0sFz+8S5fr3TkBwp+zXBK3HHaexxZ9sfnNH0GeWuVy+dGiKGYLOm/LOUISLj3iUUbH
	 fP6wjuhMhotJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] phy: cix: Add CIX Sky1 USB3 PHY driver
To: "Hongliang Yang" <hongliang.yang@cixtech.com>
Cc: robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260902032134.1182634-4-hongliang.yang@cixtech.com>
References: <20260831082309.3854507-1-hongliang.yang@cixtech.com>
 <20260902032134.1182634-4-hongliang.yang@cixtech.com>
Date: Wed, 02 Sep 2026 03:32:11 +0000
Message-Id: <20260902033211.ED6EA1F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEhhcmR3YXJlIHJlc2V0
cyBhc3NlcnRlZCBhZnRlciBleHBvc2luZyB0aGUgUEhZIHByb3ZpZGVyLCByaXNraW5nIGEgcmFj
ZSBjb25kaXRpb24gd2l0aCBjb25zdW1lcnMuCi0gW01lZGl1bV0gVGVhcmRvd24gYXN5bW1ldHJ5
IGFuZCBpbnZlcnRlZCB1bnJvbGwgb3JkZXIgZm9yIGhhcmR3YXJlIGNsb2NrcyBhbmQgcmVzZXRz
LgotIFtNZWRpdW1dIFVuc2FmZSBzdHJpbmcgY29tcGFyaXNvbiB1c2luZyBgZndub2RlX2dldF9u
YW1lKClgIHdpdGhvdXQgTlVMTCBjaGVjay4KLS0KCmNvbW1pdCBkZDBlYTViZDMwMWNmNGMyOTQ2
ZjRiYjgwODQzYjM1YzdhZDFhYjY0CkF1dGhvcjogSG9uZ2xpYW5nIFlhbmcgPGhvbmdsaWFuZy55
YW5nQGNpeHRlY2guY29tPgoKcGh5OiBjaXg6IEFkZCBDSVggU2t5MSBVU0IzIFBIWSBkcml2ZXIK
ClRoaXMgY29tbWl0IGFkZHMgYSBQSFkgZHJpdmVyIGZvciB0aGUgVVNCMyBQSFkgb24gQ0lYIFNr
eTEgU29DcywgaGFuZGxpbmcKaW5pdGlhbGl6YXRpb24sIHJlc2V0LCBhbmQgY2xvY2sgbWFuYWdl
bWVudCBmb3IgdGhlIG11bHRpLXBvcnQgVVNCMyBQSFkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9jaXgvcGh5LWNpeC11c2IzLmMgYi9kcml2ZXJzL3BoeS9jaXgvcGh5LWNpeC11c2IzLmMK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3Bo
eS9jaXgvcGh5LWNpeC11c2IzLmMKWyAuLi4gXQo+ICtzdGF0aWMgaW50IHNreTFfdTNwaHlfZXhp
dChzdHJ1Y3QgY2l4X3UzcGh5ICp1M3BoeSkKPiArewo+ICsJdTNwaHktPmluaXRfY291bnQtLTsK
PiArCWlmICh1M3BoeS0+aW5pdCAmJiB1M3BoeS0+aW5pdF9jb3VudCA9PSAwKSB7Cj4gKwkJcmVz
ZXRfY29udHJvbF9hc3NlcnQodTNwaHktPnJlc2V0KTsKPiArCQlyZXNldF9jb250cm9sX2Fzc2Vy
dCh1M3BoeS0+cHJlc2V0KTsKPiArCQljbGtfZGlzYWJsZV91bnByZXBhcmUodTNwaHktPmFwYl9j
bGspOwo+ICsJCWNsa19kaXNhYmxlX3VucHJlcGFyZSh1M3BoeS0+cmVmX2Nsayk7CgpbU2V2ZXJp
dHk6IE1lZGl1bV0KRG9lcyB0aGlzIGRpc2FibGUgdGhlIGNsb2NrcyBpbiB0aGUgY29ycmVjdCBv
cmRlcj8gVGhlIGluaXRpYWxpemF0aW9uIHBhdGgKZW5hYmxlcyBhcGJfY2xrIGJlZm9yZSByZWZf
Y2xrLiBUbyBlbnN1cmUgYSBwcm9wZXIgTElGTyB0ZWFyZG93biBzZXF1ZW5jZSwKc2hvdWxkIHJl
Zl9jbGsgYmUgZGlzYWJsZWQgYmVmb3JlIGFwYl9jbGsgaGVyZT8KClsgLi4uIF0KPiArc3RhdGlj
IGludCBza3kxX3UzcGh5X2luaXQoc3RydWN0IGNpeF91M3BoeSAqdTNwaHkpCj4gK3sKWyAuLi4g
XQo+ICtkaXNhYmxlX3JlZl9jbGs6Cj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUodTNwaHktPnJl
Zl9jbGspOwo+ICtkaXNhYmxlX2FwYl9jbGs6Cj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUodTNw
aHktPmFwYl9jbGspOwo+ICthc3NlcnRfcmVzZXRfcHJlc2V0Ogo+ICsJcmVzZXRfY29udHJvbF9h
c3NlcnQodTNwaHktPnByZXNldCk7Cj4gKwlyZXNldF9jb250cm9sX2Fzc2VydCh1M3BoeS0+cmVz
ZXQpOwoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgdGhpcyBlcnJvciB1bnJvbGwgc2VxdWVuY2Ug
bGVhdmUgdGhlIGhhcmR3YXJlIGluIGFuIHVucmVjb3ZlcmFibGUgc3RhdGU/CgpUaGlzIHBhdGgg
ZGlzYWJsZXMgdGhlIGNsb2NrcyBiZWZvcmUgYXNzZXJ0aW5nIHRoZSBoYXJkd2FyZSByZXNldHMu
IFRoaXMKY29udHJhZGljdHMgdGhlIG5vcm1hbCB0ZWFyZG93biBzZXF1ZW5jZSBpbiBza3kxX3Uz
cGh5X2V4aXQoKSwgd2hpY2ggYXNzZXJ0cwp0aGUgcmVzZXRzIGJlZm9yZSBkaXNhYmxpbmcgdGhl
IGNsb2Nrcy4KClsgLi4uIF0KPiArc3RhdGljIGludCBjaXhfdTNwaHlfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiArewpbIC4uLiBdCj4gKwlkZXZpY2VfZm9yX2VhY2hfY2hp
bGRfbm9kZV9zY29wZWQoZGV2LCBjaGlsZF9mbikgewo+ICsJCWNoaWxkX25wID0gdG9fb2Zfbm9k
ZShjaGlsZF9mbik7Cj4gKwkJaWYgKCFzdHJuY21wKGZ3bm9kZV9nZXRfbmFtZShjaGlsZF9mbiks
ICJ1c2ItcG9ydCIsIDgpIHx8Cj4gKwkJICAgICFzdHJuY21wKGZ3bm9kZV9nZXRfbmFtZShjaGls
ZF9mbiksICJVU0IiLCAzKSkKCltTZXZlcml0eTogTWVkaXVtXQpDYW4gdGhpcyB0cmlnZ2VyIGEg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlPyBmd25vZGVfZ2V0X25hbWUoKSBjYW4gcmV0dXJuCk5V
TEwgZm9yIGNlcnRhaW4gc29mdHdhcmUgbm9kZXMuCgpBZGRpdGlvbmFsbHksIGRvZXMgdXNpbmcg
c3RybmNtcCgpIHdpdGggYSBmaXhlZCBsZW5ndGggaW5jb3JyZWN0bHkgbWF0Y2gKYXJiaXRyYXJ5
IHN1ZmZpeGVzIGxpa2UgInVzYi1wb3J0LWZvbyIgd2hpbGUgZmFpbGluZyB0byBwcm9wZXJseSBo
YW5kbGUKdW5pdCBhZGRyZXNzZXMgbGlrZSAidXNiLXBvcnRAMCI/IENvdWxkIGZ3bm9kZV9uYW1l
X2VxKCkgYmUgdXNlZCBoZXJlCmluc3RlYWQ/CgpbIC4uLiBdCj4gKwlwaHlfcHJvdmlkZXIgPSBk
ZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIG9mX3BoeV9zaW1wbGVfeGxhdGUpOwo+
ICsJaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpKSB7Cj4gKwkJcmV0ID0gUFRSX0VSUihwaHlfcHJv
dmlkZXIpOwo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIHBoeSBwcm92aWRl
clxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHUz
cGh5LT5yZXNldCk7Cj4gKwlyZXNldF9jb250cm9sX2Fzc2VydCh1M3BoeS0+cHJlc2V0KTsKCltT
ZXZlcml0eTogSGlnaF0KRG9lcyBhc3NlcnRpbmcgdGhlc2UgcmVzZXRzIGFmdGVyIGV4cG9zaW5n
IHRoZSBQSFkgcHJvdmlkZXIgY3JlYXRlIGEgcmFjZQpjb25kaXRpb24gd2l0aCBjb25zdW1lcnM/
CgpPbmNlIGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKCkgY29tcGxldGVzLCBhIGNvbnN1
bWVyIGRyaXZlciBjb3VsZApjb25jdXJyZW50bHkgcHJvYmUgYW5kIGNhbGwgcGh5X2luaXQoKS4g
SWYgdGhlIGNvbnN1bWVyIGluaXRpYWxpemVzIHRoZQpQSFkgYW5kIGRlYXNzZXJ0cyB0aGUgcmVz
ZXRzLCB0aGlzIHByb2JlIHRocmVhZCB3aWxsIHRoZW4gY29udGludWUgYW5kCnVuY29uZGl0aW9u
YWxseSBhc3NlcnQgdGhlIHJlc2V0cyB3aXRob3V0IGhvbGRpbmcgdTNwaHktPm11dGV4LiBUaGlz
IHdvdWxkCmRlc3Ryb3kgdGhlIGluaXRpYWxpemVkIHN0YXRlIHdoaWxlIHRoZSBjb25zdW1lciBp
cyBhY3RpdmVseSB1c2luZyB0aGUgUEhZLgoKPiArCXJldHVybiAwOwo+ICt9CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODMxMDgy
MzA5LjM4NTQ1MDctMS1ob25nbGlhbmcueWFuZ0BjaXh0ZWNoLmNvbT9wYXJ0PTMKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
