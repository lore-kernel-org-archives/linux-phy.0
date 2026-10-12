Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA211CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMr8xLjnK++VzvhgCLXfEP+4o1UpFIRSO2cRgQtUeQ0=; b=sVYW8VxeZPwCQ8
	zlSAXysluF2XS28H/HmWhIBDLdbDFc3kgAgC1FTNy74GsDPKziuWAjsoMIn58Ysm96CThCbL0hbUu
	WuGymUKfwI7ac4sg5olxRj6xVcICn4BsP2SvaUnryoIlCNgAqYi68feT5SOOaFJw9VlZMik28qb1s
	az3AiIsIIdGv5uJOkpRyBMte7fOC4ntkPoS3VDT86ss6iM0evWPUYEOpNBu+uwPVd8uH5WYAxymro
	6Ez11H8N1MEjYIDZ/D6A+pLuEcmLlGanDaoJ0DYkdu+DlwK1GcufbuluwR7YcBunpa+34iQy66K1l
	Sp18/AsMeOJxylbbq4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBCK-00000009ulR-0m8T;
	Mon, 12 Oct 2026 08:15:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBCI-00000009ukz-2dfw
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:15:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D897044859;
	Mon, 12 Oct 2026 08:15:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 518691F0089C;
	Mon, 12 Oct 2026 08:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791792949;
	bh=RPr+QclsJzPOVUXH7iy1yxBLvSkFSB9zf6ErqWEqDTg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I0rKPpdAMALZRz2yQqPMIchkRmAsy+yldNw6Uu2+YWmWJk3FhzM3ybeu9oTdVOIhj
	 Sq11gkoJTJK5E5tvt/l9BYTMgsQx3Xnqg0JRWstP4q4FT5AKcKdUw81g+7K+3KCUuh
	 7x+Ou96+y43gVIJ9myqk4DE79wYgu9Wc+/ebdoXUyCJALXMXK8XzgrOFU0w5wnTWJb
	 sgZ5mT0B+gumfBawBSI3gku9os01CEvcJothKrRHfpXJ2HU3hs9AZL+35OTWzSNis4
	 DB6MJJD3Xte8ZFROYZGeQQPEb13LI7VAvt5rtVOvqs1T787k0M53qfHNI/ItlJlQZ5
	 JEBge0jkTbn8Q==
Message-ID: <sashiko-outbox-167831@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] phy: cix: Add Sky1 DP PHY driver
To: "Luo Liu" <Luo.Liu@cixtech.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20261012080517.566920-3-Luo.Liu@cixtech.com>
References: <20261012080517.566920-1-Luo.Liu@cixtech.com>
 <20261012080517.566920-3-Luo.Liu@cixtech.com>
Date: Mon, 12 Oct 2026 08:15:48 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBjaXg6IHBy
ZW1hdHVyZSBoYXJkd2FyZSByZWFkeSBwb2xsaW5nIGluIENEQiB0cmFuc2FjdGlvbnMKLS0KCmNv
bW1pdCA5YTU2ZTYzMjg3ZjMxZTE3YjZlOGMwZGQxODczZjg0YjBjMDRiOGQxCkF1dGhvcjogTHVv
IExpdSA8THVvLkxpdUBjaXh0ZWNoLmNvbT4KCnBoeTogY2l4OiBBZGQgU2t5MSBEUCBQSFkgZHJp
dmVyCgpBZGQgYSBQSFkgZHJpdmVyIGZvciB0aGUgQ0lYIFNreTEgZGVkaWNhdGVkIERpc3BsYXlQ
b3J0IFBNQS4gU3VwcG9ydApsaW5rIHJhdGUsIGxhbmUgY291bnQsIFNTQyBhbmQgdm9sdGFnZSBz
d2luZyB2aWEgdGhlIGdlbmVyaWMgUEhZIERQCm9wcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L2NpeC9waHktY2l4LWRwLmMgYi9kcml2ZXJzL3BoeS9jaXgvcGh5LWNpeC1kcC5jCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5iNWFkYzljMjk1MDYwCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2NpeC9waHktY2l4LWRwLmMKWyAuLi4g
XQo+ICtzdGF0aWMgaW50IGNpeF9kcF9waHlfY2RiX3dyaXRlKHN0cnVjdCBjaXhfZHAgKmRwLCB1
MzIgb2Zmc2V0LCB1MzIgZGF0YSkKPiArewo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSBjaXhf
ZHBfcGh5X2NkYl9yZWFkeShkcCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+
ICsJd3JpdGVsKG9mZnNldCwgZHAtPmJhc2UgKyBDSVhfRFBfQ0RCX0FERFIpOwo+ICsJd3JpdGVs
KGRhdGEsIGRwLT5iYXNlICsgQ0lYX0RQX0NEQl9XREFUQSk7Cj4gKwl3cml0ZWwoQ0lYX0RQX0NE
Ql9TRUxfV1JJVEUsIGRwLT5iYXNlICsgQ0lYX0RQX0NEQl9TRUxfV1IpOwo+ICsJd3JpdGVsKDEs
IGRwLT5iYXNlICsgQ0lYX0RQX0NEQl9FTkFCTEUpOwo+ICsKPiArCXJldHVybiBjaXhfZHBfcGh5
X2NkYl9yZWFkeShkcCk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSXMgdGhlcmUgYSByaXNrIG9mIGEg
cmFjZSBjb25kaXRpb24gaGVyZSBpZiB0aGUgaGFyZHdhcmUgdGFrZXMgYSBmZXcgY2xvY2sKY3lj
bGVzIHRvIHB1bGwgdGhlIENJWF9EUF9DREJfUkVBRFkgYml0IGxvdyBhZnRlciBDSVhfRFBfQ0RC
X0VOQUJMRSBpcyBzZXQ/CgpCZWNhdXNlIGNpeF9kcF9waHlfY2RiX3JlYWR5KCkgdXNlcyByZWFk
bF9wb2xsX3RpbWVvdXQoKSwgaXQgaW1tZWRpYXRlbHkKcGVyZm9ybXMgYSByZWFkLiBJZiB0aGUg
UEhZIElQIGRyb3BzIHRoZSByZWFkeSBiaXQgYXN5bmNocm9ub3VzbHkgKGUuZy4sCmR1ZSB0byBh
IGNsb2NrIGRvbWFpbiBjcm9zc2luZyksIHRoZSBDUFUgbWlnaHQgcmVhZCB0aGUgc3RhbGUgaWRs
ZSBzdGF0ZQp3aGVyZSB0aGUgcmVhZHkgYml0IGlzIHN0aWxsIDEgYW5kIHJldHVybiBzdWNjZXNz
IGluc3RhbnRseS4KClRoaXMgY291bGQgY2F1c2UgdGhlIHdyaXRlIG9wZXJhdGlvbiB0byByZXR1
cm4gYmVmb3JlIHRoZSBoYXJkd2FyZQp0cmFuc2FjdGlvbiBhY3R1YWxseSBjb21wbGV0ZXMsIHBv
dGVudGlhbGx5IG92ZXJsYXBwaW5nIHdpdGggdGhlIG5leHQKdHJhbnNhY3Rpb24gYW5kIGNvcnJ1
cHRpbmcgUEhZIGNvbmZpZ3VyYXRpb24uCgo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGNpeF9kcF9w
aHlfY2RiX3JlYWQoc3RydWN0IGNpeF9kcCAqZHAsIHUzMiBvZmZzZXQpCj4gK3sKPiArCWludCBy
ZXQ7Cj4gKwo+ICsJcmV0ID0gY2l4X2RwX3BoeV9jZGJfcmVhZHkoZHApOwo+ICsJaWYgKHJldCkK
PiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXdyaXRlbChvZmZzZXQsIGRwLT5iYXNlICsgQ0lYX0RQ
X0NEQl9BRERSKTsKPiArCXdyaXRlbChDSVhfRFBfQ0RCX1NFTF9SRUFELCBkcC0+YmFzZSArIENJ
WF9EUF9DREJfU0VMX1dSKTsKPiArCXdyaXRlbCgxLCBkcC0+YmFzZSArIENJWF9EUF9DREJfRU5B
QkxFKTsKPiArCj4gKwlyZXQgPSBjaXhfZHBfcGh5X2NkYl9yZWFkeShkcCk7Cj4gKwlpZiAocmV0
KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0dXJuIHJlYWRsKGRwLT5iYXNlICsgQ0lYX0RQ
X0NEQl9SREFUQSkgJiBHRU5NQVNLKDE1LCAwKTsKCltTZXZlcml0eTogTWVkaXVtXQpTaW1pbGFy
bHksIGNvdWxkIHRoaXMgZWFybHkgcmVhZHkgY2hlY2sgY2F1c2UgY2l4X2RwX3BoeV9jZGJfcmVh
ZCgpIHRvCnJlYWQgc3RhbGUgZGF0YT8KCklmIHRoZSBoYXJkd2FyZSBoYXNuJ3QgcHVsbGVkIHRo
ZSByZWFkeSBiaXQgdG8gMCB5ZXQsCmNpeF9kcF9waHlfY2RiX3JlYWR5KCkgd2lsbCByZXR1cm4g
MCBpbW1lZGlhdGVseSBhbmQgd2Ugd2lsbCByZWFkCkNJWF9EUF9DREJfUkRBVEEgYmVmb3JlIHRo
ZSBoYXJkd2FyZSBoYXMgYWN0dWFsbHkgcG9wdWxhdGVkIGl0LgoKPiArfQpbIC4uLiBdCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYx
MDEyMDgwNTE3LjU2NjkyMC0xLUx1by5MaXVAY2l4dGVjaC5jb20/cGFydD0yCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
