Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A07A0C531FC
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 06:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2SjBXmI60QRwhL/ONAOAjs4O/eKO02mBuqd50H4sps=; b=kO7OCIloO2WWfE
	8sqsrPc0GsC+WGKhH1izvNLCjLHi/kWBvcw3fOq3aY5OOhGF3ms0r7Do591fDy7mb2P1NwehxIzn4
	maZmwYKaiM+OR5n+gKKB7ghKDFxQtiuHNVp1SQrQR8a46lF8LG+NatTw9Skwest2T53T39q0EaXZJ
	oerySJKoMz6G4ndggFK3euSL9XbtDpnwbl5RSLuIT3kmQdoHqdqQylODFNlUX9CNggfnmKNC3PqZm
	/kJ8tZ++PYi01CWfA/9rhLEyqe3YDUs3ANUNpHnFSUFy2jrkm3QiZv6/5em20rC21LdxJYHtJQhDr
	j1r3wmuE4O13H27Q/Q2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFDf-000000024An-1T9m;
	Mon, 27 Jul 2026 06:53:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFDe-000000024Af-3gqs
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 06:53:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 84E02404A7;
	Mon, 27 Jul 2026 06:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1800B1F00A3E;
	Mon, 27 Jul 2026 06:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785135226;
	bh=e9GNOrQphyn192Gugo2YKKH78IXZhqo50MoeQ1Jl6KI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EQq2H0hvyZm8qrpxqrNlpA0o6rw1fKZBR3mwtqwWeOwezI/LJXGUkems4ewONVBcd
	 TU0m/N5EEZSnQKayQrhtaRon1SpyVulXe1aOnrU/CW+H2oMzJR/+kYKzZDYDde49vq
	 3IGUIevcKOaoSkJUam2CxT/bPT9bUO9Fyd5aVUZUxd4YyUCn5SrvCuQts2zXbRfQfY
	 ljdn5KNYcwhOOfZ4hMXoa9PS4uHm2js9y2X1O6rp23982gvPVzvbKfawiN4bctI2xi
	 /qC0gbsnXWYRedG3qpcfn/m6d/qJhQJnBpDG7B36dG+k4v/VDw5A/y/ZV92wcaV/+O
	 n9UeKvcnJEXUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260727064408.101-3-kernel@airkyi.com>
References: <20260727064408.101-1-kernel@airkyi.com>
 <20260727064408.101-3-kernel@airkyi.com>
Date: Mon, 27 Jul 2026 06:53:45 +0000
Message-Id: <20260727065346.1800B1F00A3E@smtp.kernel.org>
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
ZV9nZXQoKSB3aGVuIHNldHRpbmcgdGhlIGRldmljZSBub2RlIGZyb20gYG5wYCBpbiBgZHJtX2F1
eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKClgIGxlYWRzIHRvIGEgcmVmZXJlbmNlIGNvdW50
IHVuZGVyZmxvdywgYXMgY2xlYW51cCBhbmQgcmVsZWFzZSBwYXRocyB1bmNvbmRpdGlvbmFsbHkg
ZHJvcCB0aGUgcmVmZXJlbmNlLgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHY0IDIvNV0gZHJt
L2JyaWRnZTogYXV4OiBBZGQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgLS0t
CmNvbW1pdCBkN2IxZWI3NmUzN2NiOTFiZmRiZTRiODYzNDkxNjU0MTdlMTA5Nzc2CkF1dGhvcjog
Q2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKZHJtL2JyaWRnZTogYXV4
OiBBZGQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkKClRoaXMgY29tbWl0IGlu
dHJvZHVjZXMgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgdG8gYWxsb3cKc3Bl
Y2lmeWluZyB0aGUgb2Zfbm9kZSBjb3JyZXNwb25kaW5nIHRvIHRoZSBicmlkZ2Ugd2hlbiByZWdp
c3RlcmluZwphbiBhdXhpbGlhcnkgYnJpZGdlIGRldmljZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
dXgtYnJpZGdlLmMKPiBpbmRleCAxNjk5MzlkMjMzMTAyLi4yYjQ4NjEyZDZkMWJhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMKWyAuLi4gXQo+IEBAIC02Myw3ICs2NCwxMCBA
QCBpbnQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50KQo+ICAJ
YWRldi0+ZGV2LnBhcmVudCA9IHBhcmVudDsKPiAgCWFkZXYtPmRldi5yZWxlYXNlID0gZHJtX2F1
eF9icmlkZ2VfcmVsZWFzZTsKPiAgCj4gLQlkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoJmFk
ZXYtPmRldiwgcGFyZW50KTsKPiArCWlmIChucCkKPiArCQlkZXZpY2Vfc2V0X25vZGUoJmFkZXYt
PmRldiwgb2ZfZndub2RlX2hhbmRsZShucCkpOwoKW1NldmVyaXR5OiBIaWdoXQpXaGVuIG5wIGlz
IHByb3ZpZGVkLCBkZXZpY2Vfc2V0X25vZGUoKSBpcyB1c2VkLiBVbmxpa2UgCmRldmljZV9zZXRf
b2Zfbm9kZV9mcm9tX2RldigpLCBkZXZpY2Vfc2V0X25vZGUoKSBkb2VzIG5vdCBhcHBlYXIgdG8K
aW5jcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgb2YgdGhlIHRhcmdldCBub2RlLgoKPiArCWVs
c2UKPiArCQlkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoJmFkZXYtPmRldiwgcGFyZW50KTsK
PiAgCj4gIAlyZXQgPSBhdXhpbGlhcnlfZGV2aWNlX2luaXQoYWRldik7Cj4gIAlpZiAocmV0KSB7
CgpDb3VsZCB0aGlzIGxlYWQgdG8gYSByZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IGZvciB0aGUg
cHJvdmlkZWQgbnA/CgpUaGUgZXJyb3IgcGF0aCBoZXJlIHVuY29uZGl0aW9uYWxseSBjYWxscyBv
Zl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSkuCkFkZGl0aW9uYWxseSwgdGhlIGRybV9hdXhf
YnJpZGdlX3JlbGVhc2UoKSBjYWxsYmFjayBhbHNvIHVuY29uZGl0aW9uYWxseQpkcm9wcyBhIHJl
ZmVyZW5jZSB0byB0aGUgZGV2aWNlJ3Mgb2Zfbm9kZSB3aGVuIHRoZSBkZXZpY2UgaXMgZGVzdHJv
eWVkLgoKU2luY2UgZGV2aWNlX3NldF9ub2RlKCkgZG9lc24ndCB0YWtlIGFuIGluaXRpYWwgcmVm
ZXJlbmNlIG9uIG5wLCB3aWxsCnRoZXNlIHB1dCBvcGVyYXRpb25zIHJlc3VsdCBpbiBhIHVzZS1h
ZnRlci1mcmVlIGZvciB0aGUgZGV2aWNlIHRyZWUgbm9kZT8KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjcwNjQ0MDguMTAxLTEt
a2VybmVsQGFpcmt5aS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
