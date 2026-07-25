Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4714EC531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mFH1dG3N4IxNAciECN0S/ns4z3pp+w2EDtFNlQMnKg=; b=wz4g/+jQCDM8I0
	nXM6rauxfZzFZYhLL+2O0aCuo6pkR0jkuk4K9Yn1LZhcemVbyu8EdGW/9k28jH/IKLzU5z4vCD9wu
	ri4A2Li/+9nzRBCPh/hz8gkJLmb2aS5L3H6FWGZ4BC9MwdifCUtYwwEJUwuciQFpUf4653rV1gL+W
	A1u5rvBkM+KLfBHzOh4PKngBphAEWAvnCFl48ypNQ+m2XTPbabF8el97eRC29kE+fxSblB32ZCwqu
	ZMXjO3I7nu2TB3C7Y458dqtaxE+/V2An8zqG+p7DLM3/BqDs4KP4scem61gAAYwM1gLMEmAzteqJO
	Mi5TS0VDgbiLHP1yqDIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcW-000000003B0-4AvE;
	Sat, 25 Jul 2026 05:08:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcV-000000003AY-3XXM
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:08:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8B20A40622;
	Sat, 25 Jul 2026 05:08:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72A21F000E9;
	Sat, 25 Jul 2026 05:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784956099;
	bh=GN6aqntHEPq5XDOXgFW8etw4HsuTNEBa3VPzvY5PKqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hv00ONOULMkkAlpWMUxcUCoLfA508BVmyB1VpzWromTSYnMrnx+zDS95OZxuM7L0W
	 MO8tuW58ZI5U/PWkC9ATIBTKBaW2AbhHH6MiShZhS0j8Hbilk1qWPZjtY0wiXqx76W
	 HH1V2xQsNQ62Qd+UMw2tfC2rtA5O6C7KEuSNZAEZcm8pTmpMYkAyLjC62tYMRsIpkn
	 MwFX2HeZjOg9u+sVyCNimyGq8GHJPskT3u59Lowa8q89eVOB4s1rT/bYl2M0UUCaCp
	 mULbGyYEKvO7I6e954TJBDF6Jb52waBnNB8WfI9GLD33yk2cckpkrJJ6EO/U2hakG/
	 TKuY6r4/A7y9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND 14/17] riscv: dts: spacemit: k3: add display
 nodes
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260725-k3-display-v1-14-6de34d80e86c@gmail.com>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-14-6de34d80e86c@gmail.com>
Date: Sat, 25 Jul 2026 05:08:18 +0000
Message-Id: <20260725050818.E72A21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBEUCBjb250cm9s
bGVyIGhhcmR3YXJlIGlzIG5vdCBpbml0aWFsaXplZCBiZWZvcmUgdGhlIGVEUCBwYW5lbCBwcm9i
ZSBpcyB0cmlnZ2VyZWQsIGNhdXNpbmcgc3luY2hyb25vdXMgQVVYIHRyYW5zZmVycyB0byBmYWls
IG9yIGhhbmcuCi0gW0hpZ2hdIFRoZSBjdXN0b20gRURJRCByZWFkIGZ1bmN0aW9uIHZpb2xhdGVz
IHRoZSBJMkMgRUVQUk9NIHByb3RvY29sIGJ5IG9taXR0aW5nIHRoZSBNaWRkbGUtb2YtVHJhbnNh
Y3Rpb24gKE1PVCkgYml0LCBicmVha2luZyBFRElEIHJlYWRzIG9uIHNpbmtzIHRoYXQgcmVxdWly
ZSBhIHJlcGVhdGVkIFNUQVJULgotLQoKLS0tIFBhdGNoIFsxNF06IFtQQVRDSCBSRVNFTkQgMTQv
MTddIHJpc2N2OiBkdHM6IHNwYWNlbWl0OiBrMzogYWRkIGRpc3BsYXkgbm9kZXMgLS0tCmNvbW1p
dCA5YjllZTM5MTk1YWQ5MGE3NmYwNTZmOWJkZGJkYWJiODM3N2I2N2VjCkF1dGhvcjogQ29keSBL
YW5nIDxjb2R5a2FuZy5oa0BnbWFpbC5jb20+CgpyaXNjdjogZHRzOiBzcGFjZW1pdDogazM6IGFk
ZCBkaXNwbGF5IG5vZGVzCgpBZGQgdGhlIFNvQy1sZXZlbCBkaXNwbGF5IG5vZGVzOiB0aGUgdHdv
IFNhdHVybiBEUFVzLCB0aGUgdHdvIERQL2VEUApjb250cm9sbGVycyB3aXRoIHRoZWlyIFBIWSBj
aGlsZHJlbi4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvYm9vdC9kdHMvc3BhY2VtaXQvazMt
ZGlzcGxheS5kdHNpIGIvYXJjaC9yaXNjdi9ib290L2R0cy9zcGFjZW1pdC9rMy1kaXNwbGF5LmR0
c2kKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjQ4OTJlZTZh
Y2RhMjIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9zcGFjZW1p
dC9rMy1kaXNwbGF5LmR0c2kKPiBAQCAtMCwwICsxLDE1NiBAQApbIC4uLiBdCj4gKyZzb2Mgewpb
IC4uLiBdCj4gKwllZHAwOiBlZHBAY2FjODQwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAic3BhY2Vt
aXQsazMtaW5uby1kcCI7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgZW5hYmxpbmcgdGhpcyBkZXZp
Y2Ugbm9kZSBjYXVzZSB0aGUgZURQIHBhbmVsIHByb2JlIHRvIGZhaWw/CgpMb29raW5nIGF0IGlu
bm9fZHBfcHJvYmUoKSBpbiBkcml2ZXJzL2dwdS9kcm0vc3BhY2VtaXQvc3BhY2VtaXRfaW5ub19k
cC5jLCBpdApwb3B1bGF0ZXMgdGhlIGVEUCBwYW5lbCBkZXZpY2Ugb24gdGhlIEFVWCBidXM6Cgog
ICAgcmV0ID0gZGV2bV9vZl9kcF9hdXhfcG9wdWxhdGVfYnVzKCZkcC0+YXV4LAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwYWNlbWl0X2RwX2VkcF9saW5rX3BhbmVsKTsK
ClRoZSBwYW5lbCBkcml2ZXIgcHJvYmVzIHN5bmNocm9ub3VzbHkgYW5kIGF0dGVtcHRzIGFuIEFV
WCB0cmFuc2ZlciB0byByZWFkIHRoZQpFRElELgoKSG93ZXZlciwgdGhlIERQIGNvbnRyb2xsZXIn
cyBoYXJkd2FyZSByZWdpc3RlcnMgKGluY2x1ZGluZyB0aGUgQVVYIGNsb2NrCmRpdmlkZXIgRFBf
QVVYX0NUUkxfQ0xLX0RJViBhbmQgc29mdCByZXNldHMpIGFyZSBub3QgaW5pdGlhbGl6ZWQgdW50
aWwgbGF0ZXI6CgpzcGFjZW1pdF9pbm5vX2RwLmM6c3BhY2VtaXRfZHBfYmluZCgpIHsKICAgIC4u
LgogICAgcmV0ID0gc3BhY2VtaXRfZHBfZGV2X2luaXQoZHApOwogICAgLi4uCn0KClRoZSB1bmlu
aXRpYWxpemVkIGNvbnRyb2xsZXIgaWdub3JlcyB0aGUgdHJhbnNmZXIgb3IgdGhlIEFVWCBzdGF0
ZSBtYWNoaW5lCmRvZXMgbm90IHN0YXJ0LCBjYXVzaW5nIGFuIHVuYXZvaWRhYmxlIHRpbWVvdXQu
Cgo+ICsJCXJlZyA9IDwweDAgMHhjYWM4NDAwMCAweDAgMHg0MDAwPjsKWyAuLi4gXQo+ICsJZHAx
OiBkcEBjYWM4ODAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJzcGFjZW1pdCxrMy1pbm5vLWRwIjsK
CltTZXZlcml0eTogSGlnaF0KV2lsbCBFRElEIHJlYWRzIGZhaWwgZm9yIHNpbmtzIGNvbm5lY3Rl
ZCB0byB0aGlzIG5vZGU/CgpXaGVuIHJlYWRpbmcgRURJRCwgdGhlIGRyaXZlciBzcGxpdHMgdGhl
IHRyYW5zYWN0aW9uIGludG8gYSB3cml0ZSBhbmQgYSByZWFkOgoKc3BhY2VtaXRfaW5ub19kcC5j
OnNwYWNlbWl0X2RwX2Nvbm5fZ2V0X2VkaWRfYmxvY2soKSB7CiAgICAuLi4KICAgIHJldCA9IHNw
YWNlbWl0X2RwX2F1eF9pMmNfd3JpdGUoZHAsIEREQ19BRERSLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmZWRpZF9vZmZzZXQsIDEpOwogICAgLi4uCn0KCkl0IGNhbGxzIHNw
YWNlbWl0X2RwX2F1eF9pMmNfd3JpdGUoKSB3aGljaCBoYXJkY29kZXMgdGhlIHJlcXVlc3Q6Cgpz
cGFjZW1pdF9pbm5vX2RwLmM6c3BhY2VtaXRfZHBfYXV4X2kyY193cml0ZSgpIHsKICAgIC4uLgog
ICAgLnJlcXVlc3QgPSBEUF9BVVhfSTJDX1dSSVRFLAogICAgLi4uCn0KClRoZSBtaXNzaW5nIE1P
VCAoTWlkZGxlLW9mLVRyYW5zYWN0aW9uKSBiaXQgZ3VhcmFudGVlcyBhbiBJMkMgU1RPUCBjb25k
aXRpb24KYWZ0ZXIgd3JpdGluZyB0aGUgb2Zmc2V0IGFkZHJlc3MuIFRoaXMgcmVzZXRzIHRoZSBp
bnRlcm5hbCBhZGRyZXNzIHBvaW50ZXIgb2YKbWFueSBzdGFuZGFyZCBFRVBST01zLCBjYXVzaW5n
IHRoZSBzdWJzZXF1ZW50IHJlYWQgdG8gcmVwZWF0ZWRseSBmZXRjaCBibG9jayAwCmluc3RlYWQg
b2YgdGhlIHJlcXVlc3RlZCBleHRlbnNpb24gYmxvY2suCgo+ICsJCXJlZyA9IDwweDAgMHhjYWM4
ODAwMCAweDAgMHg0MDAwPjsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjUtazMtZGlzcGxheS12MS0wLTZkZTM0ZDgwZTg2Y0Bn
bWFpbC5jb20/cGFydD0xNAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
