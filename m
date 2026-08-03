Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ECAEC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO+jDOMDhNIvSPoonIC//zxaPf84hSRpgnyTKN86/po=; b=W0xIp4UdmcgNqF
	vvO7J136uCSjQpO26MQUZQLW/yi/l382XQnD/qL40Cb+DoI6WJdxoYIkeS1wSE8fV2UM+RBHON0eH
	Z1Lh6+vuZORhqnceQEaH3imJE7TXN3lgRmOOoLT/MJdzjfozj1Vd49sp9u80gQUkXDHHRZFQala8Y
	bpwvusbOMBUnWPn88BBxpXu1B2h66ZFnFXqDh/7N1BlQv/n836SQc/+7+iKiQIe4dFNQjTqJffZDn
	j9sOSU8P4sIzDshyi+761dIs31PnFUbtg1WctKK/z5ggi59pMOvnMTSq1D8Cmmxk7a8NWO+/BY/qA
	ecsBJh4veFwc8sYLMSMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqp0Q-0000000Ggun-3kyT;
	Mon, 03 Aug 2026 09:30:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqp0Q-0000000Ggug-1eFC
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:30:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D690843893;
	Mon,  3 Aug 2026 09:30:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 548671F000E9;
	Mon,  3 Aug 2026 09:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785749445;
	bh=Q94vXQPGl/Cm4YahreUaaYMC+pJJZe33gSYxR+GoHGw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NzTYonKGHCmVfRHYOEZ4mRJ52QIOoLt8WPIEBtJXyoW3EJlRZ4ICYbYF8cOl+M9Z4
	 ux57YgHt2CjAl8R08gz+rs5iHQJv/bnIWMDlkcqmXoWiHPudbU0kPuBtyTrbqCzt1P
	 qKgevM7jLUYT90E0NSxOomelXutL3TUuR5oH0j6NAAyxX7dazMZv4aUEUhFUtKVouz
	 M8vy6mUOtZMTiEeDAd+FAfqpvPlJS/W/CMRtJUYmjzRh7pc9FjhOjBHO3QpjwWyiw1
	 xmA2wYTinmPtTXUFuf3oyE7zHDZsOTwYegmqAh6K00W/M4Q+rrHr3ORZNUkfHnThlL
	 p+/kT0dtabXLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/4] phy: qualcomm: qmp-combo: Add support for Hawi
 SoC
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260803091441.3040830-5-mukesh.ojha@oss.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-5-mukesh.ojha@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 09:30:44 +0000
Message-Id: <20260803093045.548671F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgRGlzcGxh
eVBvcnQgaW5pdGlhbGl6YXRpb24gY2FsbGJhY2tzIGluIGBoYXdpX3VzYjNkcHBoeV9jZmdgIHdp
bGwgY2F1c2UgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2hlbiB0aGUgRFAgUEhZIGlzIGlu
aXRpYWxpemVkLgotIFtIaWdoXSBUaGUgQU9OIHRvZ2dsZSByZWdpc3RlcnMgd2lsbCBub3QgYmUg
Y2xlYXJlZCBiZWNhdXNlIGBjZmctPnJlZ3NbUVBIWV9BT05fVE9HR0xFX0VOQUJMRV1gIGV2YWx1
YXRlcyB0byBmYWxzZSBmb3IgdGhlIEhhd2kgVjEwIFBIWS4KLS0KCi0tLSBQYXRjaCBbNF06IFtQ
QVRDSCB2NCA0LzRdIHBoeTogcXVhbGNvbW06IHFtcC1jb21ibzogQWRkIHN1cHBvcnQgZm9yIEhh
d2kgU29DIC0tLQpjb21taXQgNzRhN2Y4NzY0NWI0ZDZkYTBhMzQxMDE0ZjUyOTllMWFkMjBhZTBk
NQpBdXRob3I6IFJvbmFrIFJhaGVqYSA8cm9uYWsucmFoZWphQG9zcy5xdWFsY29tbS5jb20+Cgpw
aHk6IHF1YWxjb21tOiBxbXAtY29tYm86IEFkZCBzdXBwb3J0IGZvciBIYXdpIFNvQwoKQWRkIHN1
cHBvcnQgZm9yIHRoZSBVU0IzLURQIGNvbWJvIFBIWSBmb3VuZCBvbiBIYXdpIHBsYXRmb3JtLgpU
aGUgUU1QIFBIWSBmb3IgSGF3aSB1c2VzIFFTRVJERVMgVjEwIHJlZ2lzdGVyIGxheW91dHMuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggY2RjZmFk
MmU4NmIxZC4uYWU4MGVlZTYyOGM1ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jCgpbIC4uLiBdCgo+IEBAIC0yNzA1LDYgKzI4OTUsMjcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyB4MWU4MDEwMF91c2IzZHBwaHlfY2ZnID0gewo+ICAJ
LnJlZ3MJCQk9IHFtcF92Nl9uNF91c2IzcGh5X3JlZ3NfbGF5b3V0LAo+ICB9Owo+ICAKPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBoYXdpX3VzYjNkcHBoeV9jZmcgPSB7Cj4gKwku
b2Zmc2V0cwkJPSAmcW1wX2NvbWJvX29mZnNldHNfdjEwLAo+ICsKPiArCS5zZXJkZXNfdGJsCQk9
IGhhd2lfdXNiM19zZXJkZXNfdGJsLAo+ICsJLnNlcmRlc190YmxfbnVtCQk9IEFSUkFZX1NJWkUo
aGF3aV91c2IzX3NlcmRlc190YmwpLAo+ICsJLnR4X3RibAkJCT0gaGF3aV91c2IzX3R4X3RibCwK
PiArCS50eF90YmxfbnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91c2IzX3R4X3RibCksCj4gKwkucnhf
dGJsCQkJPSBoYXdpX3VzYjNfcnhfdGJsLAo+ICsJLnJ4X3RibF9udW0JCT0gQVJSQVlfU0laRSho
YXdpX3VzYjNfcnhfdGJsKSwKPiArCS5wY3NfdGJsCQk9IGhhd2lfdXNiM19wY3NfdGJsLAo+ICsJ
LnBjc190YmxfbnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91c2IzX3Bjc190YmwpLAo+ICsJLnBjc191
c2JfdGJsCQk9IGhhd2lfdXNiM19wY3NfdXNiX3RibCwKPiArCS5wY3NfdXNiX3RibF9udW0JPSBB
UlJBWV9TSVpFKGhhd2lfdXNiM19wY3NfdXNiX3RibCksCj4gKwo+ICsJLnJlZ3MJCQk9IHFtcF92
MTBfdXNiM3BoeV9yZWdzX2xheW91dCwKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvbmZp
Z3VyYXRpb24gbWlzcyB0aGUgbWFuZGF0b3J5IERpc3BsYXlQb3J0IGZ1bmN0aW9uIHBvaW50ZXJz
Cmxpa2UgZHBfYXV4X2luaXQsIGNvbmZpZ3VyZV9kcF90eCwgYW5kIGNvbmZpZ3VyZV9kcF9waHk/
CgpJZiBhIERpc3BsYXlQb3J0IGNsaWVudCBjYWxscyBwaHlfaW5pdCgpIG9yIHBoeV9wb3dlcl9v
bigpLCB0aGUgZHJpdmVyCmV4ZWN1dGVzIHFtcF9jb21ib19kcF9pbml0KCkgYW5kIHFtcF9jb21i
b19kcF9wb3dlcl9vbigpIHdoaWNoCnVuY29uZGl0aW9uYWxseSBjYWxsIHRoZXNlIGZ1bmN0aW9u
IHBvaW50ZXJzLiBCZWNhdXNlIHRoZXkgYXJlIG9taXR0ZWQgaGVyZSwKdGhleSB3aWxsIGJlIE5V
TEwgYW5kIGNhdXNlIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIHJlZ3Jlc3Npb24uCgo+ICsJ
LnJlc2V0X2xpc3QJCT0gbXNtODk5Nl91c2IzcGh5X3Jlc2V0X2wsCj4gKwkubnVtX3Jlc2V0cwkJ
PSBBUlJBWV9TSVpFKG1zbTg5OTZfdXNiM3BoeV9yZXNldF9sKSwKPiArCS52cmVnX2xpc3QJCT0g
cW1wX3BoeV92cmVnX2wsCj4gKwkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUocW1wX3BoeV92cmVn
X2wpLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTYzNTBf
dXNiM2RwcGh5X2NmZyA9IHsKPiAgCS5vZmZzZXRzCQk9ICZxbXBfY29tYm9fb2Zmc2V0c192MywK
ClsgLi4uIF0KCj4gQEAgLTM3MDYsOSArMzkyMiw5IEBAIHN0YXRpYyBpbnQgcW1wX2NvbWJvX2Nv
bV9pbml0KHN0cnVjdCBxbXBfY29tYm8gKnFtcCwgYm9vbCBmb3JjZSkKPiAgCQkJU1dfVVNCM1BI
WV9SRVNFVF9NVVggfCBTV19VU0IzUEhZX1JFU0VUKTsKPiAgCj4gIAkvKiBvdmVycmlkZSBoYXJk
d2FyZSBjb250cm9sIGZvciByZXNldCBvZiBxbXAgcGh5ICovCj4gLQlpZiAocGNzX2FvbiAmJiBj
ZmctPnJlZ3NbUVBIWV9BT05fVE9HR0xFX0VOQUJMRV0pIHsKPiAtCQlxcGh5X2NscmJpdHMocGNz
X2FvbiwgY2ZnLT5yZWdzW1FQSFlfQU9OX1RPR0dMRV9FTkFCTEVdLCAweDEpOwo+IC0JCXFwaHlf
Y2xyYml0cyhwY3NfYW9uLCBjZmctPnJlZ3NbUVBIWV9EUF9BT05fVE9HR0xFX0VOQUJMRV0sIDB4
MSk7Cj4gKwlpZiAoYW9uX3RvZ2dsZSAmJiBjZmctPnJlZ3NbUVBIWV9BT05fVE9HR0xFX0VOQUJM
RV0pIHsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIGNvbmRpdGlvbiBmYWlsIHRvIGNsZWFy
IHRoZSBBT04gdG9nZ2xlIHJlZ2lzdGVycyBmb3IgdGhlIEhhd2kgVjEwClBIWT8KClNpbmNlIFFQ
SFlfVjEwX0NPTV9BT05fVVNCM19BT05fVE9HR0xFX0VOQUJMRSBpcyBkZWZpbmVkIGFzIDB4MDAs
CmNmZy0+cmVnc1tRUEhZX0FPTl9UT0dHTEVfRU5BQkxFXSBldmFsdWF0ZXMgdG8gMC4gVGhpcyBj
YXVzZXMgdGhlIGNvbmRpdGlvbgp0byBmYWlsIGFuZCBza2lwcyB0aGUgcXBoeV9jbHJiaXRzKCkg
ZXhlY3V0aW9uLCBsZWF2aW5nIHRoZSBoYXJkd2FyZSByZXNldApjb250cm9sIGltcHJvcGVybHkg
Y29uZmlndXJlZCBhbmQgcG90ZW50aWFsbHkgY2F1c2luZyBhIHJlZ3Jlc3Npb24uCgo+ICsJCXFw
aHlfY2xyYml0cyhhb25fdG9nZ2xlLCBjZmctPnJlZ3NbUVBIWV9BT05fVE9HR0xFX0VOQUJMRV0s
IDB4MSk7Cj4gKwkJcXBoeV9jbHJiaXRzKGFvbl90b2dnbGUsIGNmZy0+cmVnc1tRUEhZX0RQX0FP
Tl9UT0dHTEVfRU5BQkxFXSwgMHgxKTsKPiAgCX0KPiAgCj4gIAkvKiBVc2Ugc29mdHdhcmUgYmFz
ZWQgcG9ydCBzZWxlY3QgYW5kIHN3aXRjaCBvbiB0eXBlYyBvcmllbnRhdGlvbiAqLwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgw
MzA5MTQ0MS4zMDQwODMwLTEtbXVrZXNoLm9qaGFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTQKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
