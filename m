Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E96BCD4F21
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 23:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzFgEbPiDmVesv6Nl3l71p9DhFXR6Furq9uOmvevrh4=; b=Xkvr8H1dRx5J4b
	+cyj/rz7y7FaJe3o41lBTFL+Rgpl+vO/VFE87jX19PRsPmar0Ag9cKOnxtaEvQcOpXBQGgDiBSAp/
	NZaMq7vJ59KMMx7S01iF7T0IA3fYKouNyzIceeb7HRjWvIpFZcDqLbTMn5wMREtdQFxc+PhjFbA6G
	layYk5sZemLxK5vmeZeSCHhnUGN8m8hqQ9J5ab8joox9ek3C7Y0Ft0tnJrjiNWN3vemZiKanAwIvF
	PMFSgPjnixejAiLrhCELfwRLJgfAVKQtV0BifEIYQKul6FXC9Ba0zYyCm26jwCjgx6UQCayjizCqI
	aTeV+1LEh6Fk05cdRxLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXv-00000000hEK-1Prj;
	Tue, 12 May 2026 23:29:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXu-00000000hDt-1wxh
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 23:29:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E3EA96012A;
	Tue, 12 May 2026 23:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D5AC2BCB0;
	Tue, 12 May 2026 23:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628589;
	bh=Phvim/89ff0uCEi93PKL577+gi18W7Cu7eVSwxkmdjA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AvR+BrRBpZ+cRdNRTOuQTGj325oL81MQOlk3Th9FIH558WlQDO7380LYLLgzWVQuj
	 HHyhpK6LcNKTXbnZewCoZyYjAKbthAb83YCY3QnTmQHRacI1L+f46BKIn/WWEyPPa5
	 fPESS/UqJoGF8nHOGNJPaXp0X2A6AeluxTCuJqBzzZ9LHbWwhRylm+J/hH+HN9923+
	 xL3Z0ssvwnO/AEdYLHHMowi4Uti5Zl7VHlvOFBxIwYBjqtAbcnLNjd+V0/70NJ3a+i
	 ToNkMZp4IVUuLSw6+z8bWrSHouww9NBbKEK0ZOKoW5oq+znUGo8jRrQPbC9pNp2KZN
	 ZDtcrty9yrtQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init
 if bus is externally controlled
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260511135703.62470-3-clamor95@gmail.com>
References: <20260511135703.62470-3-clamor95@gmail.com>
Date: Tue, 12 May 2026 23:29:48 +0000
Message-Id: <20260512232949.35D5AC2BCB0@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuYmluZGluZyB0aGUg
YHRlZ3JhX3VzYmAgZHJpdmVyIHdoZW4gYG52aWRpYSxleHRlcm5hbC1jb250cm9sYCBpcyBwcmVz
ZW50IGNhdXNlcyBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KLSBbTWVkaXVtXSBVbmNvbmRp
dGlvbmFsIGNhbGwgdG8gYHVzYl9waHlfc2h1dGRvd24oKWAgaW4gYHRlZ3JhX3VzYl9yZW1vdmUo
KWAgb24gYW4gdW5pbml0aWFsaXplZCBQSFkgdHJpZ2dlcnMgYSBrZXJuZWwgd2FybmluZy4KLS0K
CmNvbW1pdCAzODI2Njk3YzNhYjUwMzM4YWRkOGUyYzg4OWMxMTlmM2RhZTZiNTcwCkF1dGhvcjog
U3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21haWwuY29tPgoKdXNiOiBjaGlwaWRlYTogdGVn
cmE6IEF2b2lkIGNvbnRyb2xsZXIvUEhZIGluaXQgaWYgYnVzIGlzIGV4dGVybmFsbHkgY29udHJv
bGxlZAoKSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQSFkgYXJlIGV4dGVybmFsbHkgY29udHJv
bGxlZCwgdGhlIHJlZ2lzdHJhdGlvbgpvZiB0aGUgY29udHJvbGxlciBhbmQgdGhlIFBIWSBpbml0
aWFsaXphdGlvbiBhcmUgc2tpcHBlZC4gVGhpcyBkZWxlZ2F0ZXMKY29uZmlndXJhdGlvbiB0byB0
aGUgZGV2aWNlIHRoYXQgY29udHJvbHMgdGhlIGJ1cy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dXNiL2NoaXBpZGVhL2NpX2hkcmNfdGVncmEuYyBiL2RyaXZlcnMvdXNiL2NoaXBpZGVhL2NpX2hk
cmNfdGVncmEuYwo+IGluZGV4IDM3Mjc4OGYwZjk3MDEuLjU5MzM5MGE4MThkMTIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jCj4gKysrIGIvZHJpdmVy
cy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jCgpbIC4uLiBdCgo+IEBAIC0zNDIsMTIgKzM0
OCwxNCBAQCBzdGF0aWMgaW50IHRlZ3JhX3VzYl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJaWYgKG9mX3VzYl9nZXRfcGh5X21vZGUocGRldi0+ZGV2Lm9mX25vZGUpID09
IFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9VTFBJKQo+ICAJCXVzYi0+ZGF0YS5mbGFncyAmPSB+Q0lf
SERSQ19TVVBQT1JUU19SVU5USU1FX1BNOwo+ICAKPiAtCXVzYi0+ZGV2ID0gY2lfaGRyY19hZGRf
ZGV2aWNlKCZwZGV2LT5kZXYsIHBkZXYtPnJlc291cmNlLAo+IC0JCQkJICAgICAgcGRldi0+bnVt
X3Jlc291cmNlcywgJnVzYi0+ZGF0YSk7Cj4gLQlpZiAoSVNfRVJSKHVzYi0+ZGV2KSkgewo+IC0J
CWVyciA9IGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUih1c2ItPmRldiksCj4gLQkJ
CQkgICAgImZhaWxlZCB0byBhZGQgSERSQyBkZXZpY2UiKTsKPiAtCQlnb3RvIHBoeV9zaHV0ZG93
bjsKPiArCWlmICghdXNiLT5leHRlcm5hbGx5X2NvbnRyb2xsZWQpIHsKPiArCQl1c2ItPmRldiA9
IGNpX2hkcmNfYWRkX2RldmljZSgmcGRldi0+ZGV2LCBwZGV2LT5yZXNvdXJjZSwKPiArCQkJCQkg
ICAgICBwZGV2LT5udW1fcmVzb3VyY2VzLCAmdXNiLT5kYXRhKTsKPiArCQlpZiAoSVNfRVJSKHVz
Yi0+ZGV2KSkgewo+ICsJCQllcnIgPSBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIo
dXNiLT5kZXYpLAo+ICsJCQkJCSAgICAiZmFpbGVkIHRvIGFkZCBIRFJDIGRldmljZSIpOwo+ICsJ
CQlnb3RvIHBoeV9zaHV0ZG93bjsKPiArCQl9Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7CgpXaGVu
IG52aWRpYSxleHRlcm5hbC1jb250cm9sIGlzIHByZXNlbnQsIHVzYi0+ZGV2IGlzIGxlZnQgdW5p
bml0aWFsaXplZAphbmQgcmVtYWlucyBOVUxMLiBEb2VzIHRoZSB1bmJpbmQgcGF0aCBzdGlsbCB0
cnkgdG8gdXNlIGl0PwoKTG9va2luZyBhdCB0ZWdyYV91c2JfcmVtb3ZlKCksIGl0IHVuY29uZGl0
aW9uYWxseSBjYWxscwpjaV9oZHJjX3JlbW92ZV9kZXZpY2UoKSB3aXRoIHVzYi0+ZGV2OgoKICAg
IHN0YXRpYyB2b2lkIHRlZ3JhX3VzYl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKICAgIHsKICAgICAgICBzdHJ1Y3QgdGVncmFfdXNiICp1c2IgPSBwbGF0Zm9ybV9nZXRfZHJ2
ZGF0YShwZGV2KTsKCiAgICAgICAgY2lfaGRyY19yZW1vdmVfZGV2aWNlKHVzYi0+ZGV2KTsKICAg
ICAgICAuLi4KClRoaXMgbG9va3MgbGlrZSBpdCBjb3VsZCBsZWFkIHRvIGEgTlVMTCBwb2ludGVy
IGRlcmVmZXJlbmNlLCBhcwpjaV9oZHJjX3JlbW92ZV9kZXZpY2UoKSBkZXJlZmVyZW5jZXMgdGhl
IHBvaW50ZXIgaW1tZWRpYXRlbHkgd2l0aG91dCBjaGVja2luZzoKCiAgICB2b2lkIGNpX2hkcmNf
cmVtb3ZlX2RldmljZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogICAgewogICAgICAg
IGludCBpZCA9IHBkZXYtPmlkOwogICAgICAgIC4uLgoKQ291bGQgdGhpcyByZWdyZXNzaW9uIGNh
dXNlIGEgY3Jhc2ggb24gZGV2aWNlIHVuYmluZCBvciBtb2R1bGUgcmVtb3ZhbAp3aGVuIHRoZSBj
b250cm9sbGVyIGlzIGV4dGVybmFsbHkgY29udHJvbGxlZD8KCkFkZGl0aW9uYWxseSwgd2hlbiB0
aGUgUEhZIGluaXRpYWxpemF0aW9uIGlzIHNraXBwZWQgZHVyaW5nIHByb2JlLCBkb2VzCnRlZ3Jh
X3VzYl9yZW1vdmUoKSBzdGlsbCBhdHRlbXB0IHRvIHNodXQgaXQgZG93bj8KCiAgICBzdGF0aWMg
dm9pZCB0ZWdyYV91c2JfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAgICB7
CiAgICAgICAgLi4uCiAgICAgICAgdXNiX3BoeV9zaHV0ZG93bih1c2ItPnBoeSk7CiAgICAgICAg
Li4uCgpTaW5jZSB0aGUgUEhZIHdhc24ndCBpbml0aWFsaXplZCwgaXRzIGZyZXF1ZW5jeSB3aWxs
IGJlIDAuIENhbGxpbmcKdGVncmFfdXNiX3BoeV9zaHV0ZG93bigpIG9uIHRoaXMgdW5pbml0aWFs
aXplZCBQSFkgYXBwZWFycyB0byB0cmlnZ2VyCmEgd2FybmluZyByZWdyZXNzaW9uOgoKICAgIHN0
YXRpYyB2b2lkIHRlZ3JhX3VzYl9waHlfc2h1dGRvd24oc3RydWN0IHVzYl9waHkgKnVfcGh5KQog
ICAgewogICAgICAgIHN0cnVjdCB0ZWdyYV91c2JfcGh5ICpwaHkgPSB0b190ZWdyYV91c2JfcGh5
KHVfcGh5KTsKCiAgICAgICAgaWYgKFdBUk5fT04oIXBoeS0+ZnJlcSkpCiAgICAgICAgICAgIHJl
dHVybjsKICAgICAgICAuLi4KClNob3VsZCB0ZWdyYV91c2JfcmVtb3ZlKCkgYmUgdXBkYXRlZCB0
byBjaGVjayBpZiBpdCBpcyBleHRlcm5hbGx5CmNvbnRyb2xsZWQgYmVmb3JlIGNhbGxpbmcgdGhl
IHNodXRkb3duIGFuZCByZW1vdmUgZnVuY3Rpb25zPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMTEzNTcwMy42MjQ3MC0xLWNs
YW1vcjk1QGdtYWlsLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
