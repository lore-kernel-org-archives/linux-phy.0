Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7822CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 21:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WazM+WVhRYcTMasv6zaRpLrZltoraIxwh8AGsvg2bgU=; b=eRLMVG/L6ucSIP
	DtB7j9WuEiCJ94F9/bNSvJJfc92lMTAstYwLxGxxrNyFXDO7DZYHEtHeHd6hE0cyAo09mvdLT98LE
	rqvWXzwaXQ7jtGXoEkQqgBBoIE8SnY2GhfouEyeMATZAD4rGmoQnB3aRK2VEUrc9HIog4cH4+y68n
	tOfNamvn1p8sEQ7SBvTyYkhbr4e4wvlyzGoE7IQoi50rBEAXZKCp6WK/l4lf8EcyzbX+MA8wObBN1
	QQGro6MimKRmM1Jg20CLcL5udSaFeMZfqGFKsX1lcnaw6ap6t3VmILEDaOHqXF+jF04gaiCuSpwll
	AiipsJg+YJn8NSZ4RF4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMYAA-0000000EoSy-0uf0;
	Mon, 11 May 2026 21:27:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMYA8-0000000EoSV-2k3W
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 21:27:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D2D70600CB;
	Mon, 11 May 2026 21:27:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C1D3C2BCF5;
	Mon, 11 May 2026 21:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778534859;
	bh=ZNbDk99m1uCD5hVD2eOuv+3kWyEAbb3Cf3MwVp8Svx8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Th3o640sSLYmy9xBG1UInDzR/Kp5gGklPKhhUdWQp7LiXMFK3m3rZgQNvPlghLlEC
	 bHMdb9taMM7YjGq/yACIni6EyhbJO44siostOJkIFwttS0DSEGvbmqSq3kLTp+5irX
	 +Y0hZjJJpr98cgzpZRVca7cBjuSGfSHhnlAARfm+tb9WCqAvjkR/h7V8zeud6KF6A4
	 WwPhiHg7BDLt37JQNAGUsct2OZS1qsg1c+aZnOlpWbTuUmk9NaK3ImF6PrWRfwblEp
	 Xf7Z71hSEpDxNjgheyDldgBz0DUJQB6Dqbi1khgKN/hkU+LUPXoD/jOAs0+4qLX5mC
	 3eBWq9/XMlkIg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] phy: rockchip: inno-hdmi: Add configure() and
 validate() ops
To: "Jonas Karlman" <jonas@kwiboo.se>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260510095731.1222705-2-jonas@kwiboo.se>
References: <20260510095731.1222705-2-jonas@kwiboo.se>
Date: Mon, 11 May 2026 21:27:38 +0000
Message-Id: <20260511212739.4C1D3C2BCF5@smtp.kernel.org>
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENhY2hpbmcgYHRtZHNf
Y2hhcl9yYXRlYCBhcyBhbiBhYnNvbHV0ZSBmcmVxdWVuY3kgaW4gYHBoeV9jb25maWd1cmUoKWAg
YnJlYWtzIHN1YnNlcXVlbnQgYGNsa19zZXRfcmF0ZSgpYCBjYWxscyBkdXJpbmcgcmVzb2x1dGlv
biBjaGFuZ2VzLgotIFtNZWRpdW1dIGBpbm5vX2hkbWlfcGh5X3ZhbGlkYXRlKClgIGFydGlmaWNp
YWxseSByZXN0cmljdHMgY29uZmlndXJhdGlvbnMgdG8gOC1iaXQgY29sb3IgbW9kZXMgYnkgZW5m
b3JjaW5nIHRoYXQgdGhlIFRNRFMgY2hhcmFjdGVyIHJhdGUgZXF1YWxzIHRoZSBwaXhlbCBjbG9j
ay4KLS0KCmNvbW1pdCAyODlmOTliZWFkZWU5YWI4MTcyZTJkNDA0ZGM0NGUxYThkZTViYzUzCkF1
dGhvcjogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKcGh5OiByb2NrY2hpcDogaW5u
by1oZG1pOiBBZGQgY29uZmlndXJlKCkgYW5kIHZhbGlkYXRlKCkgb3BzCgpUaGlzIGNvbW1pdCBh
ZGRzIGNvbmZpZ3VyZSgpIGFuZCB2YWxpZGF0ZSgpIG9wZXJhdGlvbnMgdG8gdGhlIElubm8gSERN
SQpQSFkgZHJpdmVyLiBJdCBhbGxvd3MgY29uc3VtZXJzIHRvIGNvbmZpZ3VyZSB0aGUgVE1EUyBj
aGFyYWN0ZXIgcmF0ZSB2aWEKcGh5X2NvbmZpZ3VyZSgpLCB3aGlsZSBtYWludGFpbmluZyBmYWxs
YmFjayBzdXBwb3J0IGZvciB0aGUgbGVnYWN5IGJ1cwp3aWR0aCBtZXRob2QuCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1oZG1pLmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1oZG1pLmMKPiBpbmRleCAxNDgzOTA3
NDEzZmFhLi45Y2ZlOTU2ZmVmZTcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1pbm5vLWhkbWkuYwo+IEBAIC01NTQsNyArNTU1LDEyIEBAIHN0YXRpYyBpbmxp
bmUgdm9pZCBpbm5vX3VwZGF0ZV9iaXRzKHN0cnVjdCBpbm5vX2hkbWlfcGh5ICppbm5vLCB1OCBy
ZWcsCj4gIHN0YXRpYyB1bnNpZ25lZCBsb25nIGlubm9faGRtaV9waHlfZ2V0X3RtZHNjbGsoc3Ry
dWN0IGlubm9faGRtaV9waHkgKmlubm8sCj4gIAkJCQkJICAgICAgIHVuc2lnbmVkIGxvbmcgcmF0
ZSkKPiAgewo+IC0JaW50IGJ1c193aWR0aCA9IHBoeV9nZXRfYnVzX3dpZHRoKGlubm8tPnBoeSk7
Cj4gKwlpbnQgYnVzX3dpZHRoOwo+ICsKPiArCWlmIChpbm5vLT5oZG1pX2NmZy50bWRzX2NoYXJf
cmF0ZSkKPiArCQlyZXR1cm4gaW5uby0+aGRtaV9jZmcudG1kc19jaGFyX3JhdGU7CgpDYW4gY2Fj
aGluZyB0aGUgYWJzb2x1dGUgdG1kc19jaGFyX3JhdGUgaGVyZSBicmVhayBzdWJzZXF1ZW50IGNs
a19zZXRfcmF0ZSgpCmNhbGxzIGR1cmluZyByZXNvbHV0aW9uIGNoYW5nZXM/CgpEdXJpbmcgYSB0
eXBpY2FsIERSTSBkaXNwbGF5IG1vZGUgY2hhbmdlLCB0aGUgQ1JUQyB1cGRhdGVzIHRoZSBwaXhl
bCBjbG9jawp2aWEgY2xrX3NldF9yYXRlKCkgYmVmb3JlIHRoZSBIRE1JIGJyaWRnZSBjYWxscyBw
aHlfY29uZmlndXJlKCkgdG8gYXBwbHkKdGhlIG5ldyBQSFkgb3B0aW9ucy4KCldoZW4gY2xrX3Nl
dF9yYXRlKCkgaXMgY2FsbGVkIHdpdGggdGhlIG5ldyBwaXhlbCBjbG9jaywgdGhpcyBmdW5jdGlv
biB3aWxsCmlnbm9yZSB0aGUgcmF0ZSBwYXJhbWV0ZXIgYW5kIHJldHVybiB0aGUgb2xkIGNhY2hl
ZCB0bWRzX2NoYXJfcmF0ZS4KCldpbGwgdGhpcyBtaXNtYXRjaGVkIGNvbWJpbmF0aW9uIG9mIG5l
dyBwaXhjbG9jayBhbmQgb2xkIFRNRFMgY2xvY2sgZmFpbCB0bwpmaW5kIGEgdmFsaWQgZW50cnkg
aW4gcHJlX3BsbF9jZmdfdGFibGUsIGNhdXNpbmcgY2xrX3NldF9yYXRlKCkgdG8gcmV0dXJuCi1F
SU5WQUwgYW5kIGFib3J0IHRoZSByZXNvbHV0aW9uIGNoYW5nZT8KClsgLi4uIF0KCj4gK3N0YXRp
YyBpbnQgaW5ub19oZG1pX3BoeV92YWxpZGF0ZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21v
ZGUgbW9kZSwKPiArCQkJCSAgaW50IHN1Ym1vZGUsIHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyAq
b3B0cykKPiArewo+ICsJY29uc3Qgc3RydWN0IHByZV9wbGxfY29uZmlnICpjZmcgPSBwcmVfcGxs
X2NmZ190YWJsZTsKPiArCXVuc2lnbmVkIGxvbmcgdG1kc2Nsb2NrOwo+ICsKPiArCWlmICghKG1v
ZGUgPT0gUEhZX01PREVfSERNSSAmJiBzdWJtb2RlID09IFBIWV9IRE1JX01PREVfVE1EUykpCj4g
KwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJaWYgKCFvcHRzLT5oZG1pLnRtZHNfY2hhcl9yYXRl
IHx8IG9wdHMtPmhkbWkudG1kc19jaGFyX3JhdGUgPiA1OTQwMDAwMDApCj4gKwkJcmV0dXJuIC1F
SU5WQUw7Cj4gKwo+ICsJdG1kc2Nsb2NrID0gb3B0cy0+aGRtaS50bWRzX2NoYXJfcmF0ZTsKPiAr
CWZvciAoOyBjZmctPnBpeGNsb2NrICE9IDA7IGNmZysrKQo+ICsJCWlmIChjZmctPnBpeGNsb2Nr
ID09IHRtZHNjbG9jayAmJiBjZmctPnRtZHNjbG9jayA9PSB0bWRzY2xvY2spCj4gKwkJCXJldHVy
biAwOwoKRG9lcyB0aGlzIHJlc3RyaWN0IGNvbmZpZ3VyYXRpb25zIHRvIDgtYml0IGNvbG9yIG1v
ZGVzIGJ5IGVuZm9yY2luZyB0aGF0IHRoZQpUTURTIGNoYXJhY3RlciByYXRlIGVxdWFscyB0aGUg
cGl4ZWwgY2xvY2s/CgpGb3IgZGVlcCBjb2xvciBtb2RlcyAoZS5nLiwgMTAtYml0KSwgdGhlIFRN
RFMgY2hhcmFjdGVyIHJhdGUgaXMgc3RyaWN0bHkKZ3JlYXRlciB0aGFuIHRoZSBwaXhlbCBjbG9j
ay4KCkJlY2F1c2UgdGhlIHZhbGlkYXRpb24gaW5zaXN0cyB0aGF0IGNmZy0+cGl4Y2xvY2sgbXVz
dCBhbHNvIGVxdWFsIHRoZQpyZXF1ZXN0ZWQgdG1kc19jaGFyX3JhdGUsIHdpbGwgdmFsaWQgZGVl
cCBjb2xvciBjb25maWd1cmF0aW9ucyBmYWlsIHRoaXMKY2hlY2sgYW5kIHJldHVybiAtRUlOVkFM
PwoKPiArCj4gKwlyZXR1cm4gLUVJTlZBTDsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMDA5NTczMS4xMjIyNzA1LTEt
am9uYXNAa3dpYm9vLnNlP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
