Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58EFC531FC
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 07:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AbYaJJNZvYlif3T+9SuOV5JSO/04Fhv90lQyTpTghs=; b=Ev8yai05Xx4Sx+
	RXQPal079/UyCCXIWvvFJ2XirvvPDiECeK+PGMnJxHTb4G2ytZVltzIIKE4hSrOflHbAx+qzdscTI
	LRzoP8XXCZg13JDCl2N6axMMES6zSCL0Tax7SSHdx0fwZCy30kTK3Lui9nF1tneUe6JFajBilA8sK
	8jZ6KobjzLkF2yz0p7A6ByWyVLtGp3eVuj8n6P9n6TlR+lgDImVP5yEmKdqFwVR42F9M3KAoY79KY
	BaElDKfJ2mR6msrVTp6cAWhoJ6G7fuXdyD1LJIFpxobOJF459A7oZEXCnH9VEeD9k/fJIO/DhTaRT
	YQOjxXsDt+iQdVoTGMTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFKi-000000024un-1tB7;
	Mon, 27 Jul 2026 07:01:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFKh-000000024ug-0lXB
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 07:01:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A4EEA40845;
	Mon, 27 Jul 2026 07:01:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE2C1F000E9;
	Mon, 27 Jul 2026 07:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785135662;
	bh=T8k09+BpXD0159vfEH9SUs/LlHDWtVj4/WHZ+VqyadQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nY5H6lR8YM2HUcTX1ozynuXwL0AE9QwRvboxZAD6nvkugKh/jpOaOvQRruXoXG1aR
	 e3FeYS9cvtV+2SWJzQE/JCmW8UCerjE2ywJg5w/x/n6u2IqHzIg3ps1ckD7ytJRasq
	 b7DaVFRyYk6/SL0j8A5Fko7JHXu+pz19w08FcRmGzIFg9kjBm3mF91g0LzOU1FgDds
	 rlU4LTRGny9WINcIce6UbiRp9zWKor3oXY1bXAhVU3zlhBTn3TbvSPm8IkA3KwWU5Y
	 w7rR2Iv79wgGFaH8/9ZxI54jZiKttpwziIy1ZGufcCx7eMIMtVCF2aZq4noibDks0/
	 t5QKiwWBABpjg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260727064408.101-4-kernel@airkyi.com>
References: <20260727064408.101-1-kernel@airkyi.com>
 <20260727064408.101-4-kernel@airkyi.com>
Date: Mon, 27 Jul 2026 07:01:01 +0000
Message-Id: <20260727070102.2BE2C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3Npbmcgb2Zfbm9k
ZV9nZXQoKSBjYXVzZXMgcmVmY291bnQgdW5kZXJmbG93IChkb3VibGUtcHV0KSBhbmQgcG90ZW50
aWFsIHVzZS1hZnRlci1mcmVlIG9mIHRoZSBkZXZpY2Ugbm9kZS4KLS0KCi0tLSBQYXRjaCBbM106
IFtQQVRDSCB2NCAzLzVdIHBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC10eXBlYzogQWRkIERS
TSBBVVggYnJpZGdlIC0tLQpjb21taXQgMDFhYjIyNjAxNjlhOTg5N2Y3MzM5NWJkMjlmOTM0MjIw
NTQyNGMwNQpBdXRob3I6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4K
CnBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC10eXBlYzogQWRkIERSTSBBVVggYnJpZGdlCgpU
aGlzIGNvbW1pdCB1c2VzIHRoZSBEUk1fQVVYX0JSSURHRSBoZWxwZXIgdG8gY3JlYXRlIGEgdHJh
bnNwYXJlbnQgRFJNCmJyaWRnZSBkZXZpY2UgZm9yIHRoZSBkaXNwbGF5IHBvcnQgb24gUm9ja2No
aXAgVHlwZS1DIFBIWXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBl
Yy5jCj4gaW5kZXggZDk3MDFiNjEwNmQ1NS4uNDgwNzBiNTA0MTZlNSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCgpbIC4uLiBdCgo+IEBAIC0xMTYyLDE2
ICsxMTYzLDI0IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdHlwZWNfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJZm9yX2VhY2hfYXZhaWxhYmxlX2NoaWxkX29m
X25vZGUobnAsIGNoaWxkX25wKSB7Cj4gIAkJc3RydWN0IHBoeSAqcGh5Owo+ICsJCXJldCA9IDA7
Cj4gIAo+IC0JCWlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJkcC1wb3J0IikpCj4gKwkJ
aWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwgImRwLXBvcnQiKSkgewo+ICAJCQlwaHkgPSBk
ZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAgCQkJCQkgICAgICAmcm9ja2NoaXBfZHBf
cGh5X29wcyk7Cj4gLQkJZWxzZSBpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxkX25wLCAidXNiMy1w
b3J0IikpCj4gKwkJCXJldCA9IGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZShkZXYs
IGNoaWxkX25wKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgbmVlZCB0byBjYWxs
IG9mX25vZGVfZ2V0KGNoaWxkX25wKSBiZWZvcmUgcGFzc2luZyBpdCB0bwpkcm1fYXV4X2JyaWRn
ZV9yZWdpc3Rlcl9mcm9tX25vZGUoKT8KClRoZSBpdGVyYXRvciBtYWNybyBmb3JfZWFjaF9hdmFp
bGFibGVfY2hpbGRfb2Zfbm9kZSgpIGhvbGRzIGEgcmVmZXJlbmNlCmR1cmluZyB0aGUgbG9vcCB0
aGF0IGl0IGF1dG9tYXRpY2FsbHkgZHJvcHMgd2hlbiBhZHZhbmNpbmcuIEhvd2V2ZXIsIHRoZQph
dXhpbGlhcnkgZGV2aWNlIGNyZWF0ZWQgYnkgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9u
b2RlKCkgd2lsbAp1bmNvbmRpdGlvbmFsbHkgY2FsbCBvZl9ub2RlX3B1dCgpIGluIGl0cyByZWxl
YXNlIGZ1bmN0aW9uLgoKSWYgd2UgZG9uJ3QgaW5jcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQg
aGVyZSwgY291bGRuJ3QgdGhpcyByZXN1bHQgaW4gYQpyZWZjb3VudCB1bmRlcmZsb3cgYW5kIHVz
ZS1hZnRlci1mcmVlIHdoZW4gdGhlIGJyaWRnZSBpcyB1bnJlZ2lzdGVyZWQgb3IKZGVzdHJveWVk
PwoKPiArCQl9IGVsc2UgaWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwgInVzYjMtcG9ydCIp
KQo+ICAJCQlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAgCQkJCQkgICAg
ICAmcm9ja2NoaXBfdXNiM19waHlfb3BzKTsKPiAgCQllbHNlCj4gIAkJCWNvbnRpbnVlOwo+ICAK
PiArCQlpZiAocmV0KSB7Cj4gKwkJCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ICsJCQlvZl9u
b2RlX3B1dChjaGlsZF9ucCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsKPiAgCQlpZiAo
SVNfRVJSKHBoeSkpIHsKPiAgCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIHBoeTog
JXBPRm5cbiIsCj4gIAkJCQljaGlsZF9ucCk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzI3MDY0NDA4LjEwMS0xLWtlcm5lbEBh
aXJreWkuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
