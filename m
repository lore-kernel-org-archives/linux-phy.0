Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EDA1C79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbp0r+cMgn+MI2wnUXh9hbJmktwfMItXWSHHggim8Zw=; b=URF4hxgMqreTBK
	1YpN9AAI5KieQAIo512JluoLiTuB39AMnTWki3g/q9X96omg2aqwRDBiN0hkg/LBpO2J8UITIJRoG
	irDU9RfI2Nz4H4EBYVMKqCTEZ+K8G1W2YOh1aT0OFRWdCxJzeBbc26mXbVoeR+xtFCs+wSJsAyS3l
	AXLLP8wOn1FEgXG/hS8VhSwj4S3uiX/c0xUi+qnDKmZvSBwYf2rJTUiZbVP2AEAPtCee1c+/Ryh62
	afv4/cySBKJS2i2kh7y19Xa2K7+D33Z8H3coz+eiUxgmcGOI0M2INq7LgFnoQhn9j0gH/1Koz/Jle
	ua1waf5Nx+DhhdUll0nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Du5-000000055d4-0Wa7;
	Sun, 06 Sep 2026 14:31:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Du4-000000055cr-0NUH
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:31:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D332643E3D;
	Sun,  6 Sep 2026 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B5691F00A3A;
	Sun,  6 Sep 2026 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788705087;
	bh=4CuptVjxTn6Uqv5hvCmSefNWgwoSxTcJ8cbsetKdOUA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aevSzcukg1NL4O+Qyaqprgs7t5ZURRjIHnn8MTlFMVd3rYOBgbXf62nz4aEtFJsMZ
	 5FtR/mNyVdULMAbBXUfkmaRkHo1F88leIWNH8JSduJiWkaYzUMupWuJXXMM5Nxc35q
	 CmWZ18vMO1sfE4MJX7845QvXeDS0y0nxYHcIGGVMmA6YdJywsiu2vRKMCSJjOoRiCz
	 DySHh5h2heYO/gw1Xcx/PpMyYSesqE+x0gkxc5nVPgES3Aw8cPxn7WnsWhwvkeb7gN
	 TXxkE+EP4P/eIZTCJf3shqUr/uyRAgYF0PzahB3yHNpWh3jj8BKh2tWhl7XYGmcHti
	 HV0IK2RlNwtXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 2/5] phy: core: Add phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, media-ci@linuxtv.org, robh@kernel.org, linux-clk@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
Date: Sun, 06 Sep 2026 14:31:26 +0000
Message-Id: <20260906143127.2B5691F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5X2dldF9ieV9v
Zl9ub2RlKCkgbWlzc2VzIHRoZSBsZWdhY3kgdXNiLW5vcC14Y2VpdiB3b3JrYXJvdW5kLCBjYXVz
aW5nIGluZmluaXRlIC1FUFJPQkVfREVGRVIgbG9vcHMuCi0tCgpjb21taXQgYTAyMWI1NjFjOGE5
YmZiMzZhZGRjYTcyMGQ0OWVhOTM1YjM0YTEzMQpBdXRob3I6IEJyeWFuIE8nRG9ub2dodWUgPGJy
eWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKcGh5OiBjb3JlOiBBZGQgcGh5X2dldF9ieV9vZl9u
b2RlKCkKClRoaXMgY29tbWl0IGludHJvZHVjZXMgcGh5X2dldF9ieV9vZl9ub2RlKCkgdG8gYWxs
b3cgbG9va2luZyB1cCBhIHBoeSAKZGlyZWN0bHkgYnkgaXRzIGRldmljZSBub2RlLiBJdCByZWZh
Y3RvcnMgdGhlIGV4aXN0aW5nIGxvb2t1cCBsb2dpYyBpbiAKX29mX3BoeV9nZXQoKSBpbnRvIGEg
bmV3IHNoYXJlZCBoZWxwZXIgZnVuY3Rpb24gY2FsbGVkIApfb2ZfcGh5X2dldF93aXRoX2FyZ3Mo
KS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9w
aHktY29yZS5jCj4gaW5kZXggODlhZGRkNzMyYmZmMy4uNDkwYTdjZGU2ZDQwYSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNvcmUu
YwpbIC4uLiBdCj4gQEAgLTEwMDEsNiArMTAxNSw0MSBAQCBzdHJ1Y3QgcGh5ICpkZXZtX29mX3Bo
eV9nZXRfYnlfaW5kZXgoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
LAo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCk7Cj4g
IAo+ICsvKioKPiArICogcGh5X2dldF9ieV9vZl9ub2RlKCkgLSBsb29rdXAgYW5kIG9idGFpbiBh
IHJlZmVyZW5jZSB0byBhIHBoeSBieSBkZXZpY2Vfbm9kZQo+ICsgKiBAbnA6IG5vZGUgY29udGFp
bmluZyB0aGUgcGh5Cj4gKyAqCj4gKyAqIFJldHVybnMgdGhlIHBoeSBhc3NvY2lhdGVkIHdpdGgg
dGhlIGRldmljZSBub2RlIG9yIEVSUl9QVFIuCj4gKyAqLwo+ICtzdHJ1Y3QgcGh5ICpwaHlfZ2V0
X2J5X29mX25vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiArewo+ICsJc3RydWN0IG9mX3Bo
YW5kbGVfYXJncyBhcmdzID0geyAubnAgPSBucCwgLmFyZ3NfY291bnQgPSAwIH07Cj4gKwlzdHJ1
Y3QgcGh5ICpwaHk7Cj4gKwo+ICsJaWYgKCFucCkKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKPiArCj4gKwltdXRleF9sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICsKPiArCXBoeSA9
IF9vZl9waHlfZ2V0X3dpdGhfYXJncygmYXJncyk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0
aGlzIG5ldyBBUEkgbWlzcyB0aGUgbGVnYWN5IGNvbXBhdGliaWxpdHkgY2hlY2sgZm9yIHVzYi1u
b3AteGNlaXY/CgpJbiBfb2ZfcGh5X2dldCgpLCB0aGVyZSBpcyBhIHdvcmthcm91bmQgdGhhdCBy
ZXR1cm5zIC1FTk9ERVYgaWYgdGhlCmRldmljZSBpcyBjb21wYXRpYmxlIHdpdGggInVzYi1ub3At
eGNlaXYiLiBCZWNhdXNlIHRoaXMgd29ya2Fyb3VuZCB3YXMKbGVmdCBpbiBfb2ZfcGh5X2dldCgp
IHJhdGhlciB0aGFuIGJlaW5nIHJlbG9jYXRlZCBpbnRvIHRoZSBzaGFyZWQKX29mX3BoeV9nZXRf
d2l0aF9hcmdzKCkgaGVscGVyLCBwaHlfZ2V0X2J5X29mX25vZGUoKSBieXBhc3NlcyBpdApjb21w
bGV0ZWx5LgoKQ291bGQgdGhpcyBjYXVzZSBkcml2ZXJzIGxvb2tpbmcgdXAgYSAidXNiLW5vcC14
Y2VpdiIgbm9kZSB2aWEgdGhpcyBuZXcKQVBJIHRvIHJlY2VpdmUgLUVQUk9CRV9ERUZFUiBpbnN0
ZWFkIG9mIC1FTk9ERVYsIGxlYWRpbmcgdG8gaW5maW5pdGUKcHJvYmUgZGVmZXJyYWxzIGFuZCBi
cmVha2luZyBmYWxsYmFjayB0byB0aGUgdXNiLXBoeSBzdWJzeXN0ZW0/Cgo+ICsKPiArCWlmIChJ
U19FUlIocGh5KSkKPiArCQlnb3RvIG91dF91bmxvY2s7Cj4gKwo+ICsJaWYgKCF0cnlfbW9kdWxl
X2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gKwkJcGh5ID0gRVJSX1BUUigtRVBST0JFX0RFRkVS
KTsKPiArCQlnb3RvIG91dF91bmxvY2s7Cj4gKwl9Cj4gKwo+ICsJZ2V0X2RldmljZSgmcGh5LT5k
ZXYpOwo+ICsKPiArb3V0X3VubG9jazoKPiArCW11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211
dGV4KTsKPiArCj4gKwlyZXR1cm4gcGh5Owo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHBoeV9n
ZXRfYnlfb2Zfbm9kZSk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwOTA2LWI0LWxpbnV4LW5leHQtMjUtMDMtMTMtZHRzaS14MWU4
MDEwMC1jYW1zcy12MTctMC1lMjE5N2EzZTI1NTFAbGluYXJvLm9yZz9wYXJ0PTIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
