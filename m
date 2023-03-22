Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02FFFC6FD1F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 12:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/90bfvWFwybo9+vnconB4auMM+X8eU2U0j8w7esCgwU=; b=e7Xh3AodXK8Dl2
	xBH7akivtmbMcWJAXF+Il0hlOZsWdY7Ji16hFhvO2bq9mxs6n2v7s0LxDgMnY0xS5FCJxn+ZLd34n
	hGAoHRP8jIvBmlxGJnzE5wZgexpUpgNQkdc43hLyqe3uvEG2MfoQwzd1RsJcHJr1LQ1dLEf+83ILI
	m2len5vHH1dHiC/weh5vC6aGdEnWd80fNRU6FXKVgOSuf3RC+INKW6+ugm/0sJWSmD4iSmUcyMion
	URANCPJL6+RIdTF8VFylLAWZJB2vV2P/+HOrakQ+FVePvMvaTk6MOfXZyeaZcgjhwa1HR+ctbJCoT
	JjBWpw2FHJX/pC7lQB+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pexNf-00FteM-23;
	Wed, 22 Mar 2023 12:15:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pexNZ-00Ftbt-0x
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 12:15:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 47C78B81C6D;
	Wed, 22 Mar 2023 12:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D206BC433EF;
	Wed, 22 Mar 2023 12:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679487342;
	bh=MJZTBV/TiIQxklEISjGR4bR/i64yEQVzbc3Njsr1RI0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=JB1EtYuWzA0LQQiZ3O9zApfzLPUvnHT14FdF+yexXrmIcyJfls70JS0w0TACVfVaN
	 dII7VuMFVBVdx9bLgDqHrnZ1kVzFqfS+rsNTD0DRIYVz7mMxDJQ2vVrQ/VYCID2/2E
	 ETK8g38plUMOOXdC3eS0DtdsdyxfQP53KgUb9xCptMPkFp5vZbN2Mw4qY0oWUAwcrD
	 9M5vCzt5Hu8tfOBEkWzYbFuDe5w0IA8pGUi6TYyI0+N1Z7CZV1qMpEnaGwfSP82o6B
	 5qcHsZEpmhB9NFw7r85SVpW87/rmWcDvajmSFgXnRb8wMilXkf3A1EM/mT7HcplgHf
	 +TLs4AKykF71g==
Date: Wed, 22 Mar 2023 13:15:36 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: <ye.xingchen@zte.com.cn>
Cc: <miquel.raynal@bootlin.com>, <kishon@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <vkoul@kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: use
 devm_platform_ioremap_resource_byname()
Message-ID: <20230322131536.2b43010f@dellmb>
In-Reply-To: <202303221007049346627@zte.com.cn>
References: <202303221007049346627@zte.com.cn>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.35; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_051545_647894_CB05CBCF 
X-CRM114-Status: GOOD (  14.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyMiBNYXIgMjAyMyAxMDowNzowNCArMDgwMCAoQ1NUKQo8eWUueGluZ2NoZW5AenRl
LmNvbS5jbj4gd3JvdGU6Cgo+IEZyb206IFllIFhpbmdjaGVuIDx5ZS54aW5nY2hlbkB6dGUuY29t
LmNuPgo+IAo+IENvbnZlcnQgcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZSgpLGRldm1faW9y
ZW1hcF9yZXNvdXJjZSgpIHRvIGEgc2luZ2xlCj4gY2FsbCB0byBkZXZtX3BsYXRmb3JtX2lvcmVt
YXBfcmVzb3VyY2VfYnluYW1lKCksIGFzIHRoaXMgaXMgZXhhY3RseSB3aGF0Cj4gdGhpcyBmdW5j
dGlvbiBkb2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFllIFhpbmdjaGVuIDx5ZS54aW5nY2hlbkB6
dGUuY29tLmNuPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1j
b21waHkuYyB8IDE2ICsrKystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21h
cnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jIGIvZHJpdmVycy9waHkvbWFydmVsbC9waHkt
bXZlYnUtYTM3MDAtY29tcGh5LmMKPiBpbmRleCBkNjQxYjM0NWFmYTMuLjlhZWVlZGY1OWY0NCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHku
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jCj4g
QEAgLTEyNDEsNyArMTI0MSw2IEBAIHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlzdHJ1Y3QgbXZlYnVfYTM3MDBfY29t
cGh5X3ByaXYgKnByaXY7Cj4gIAlzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwcm92aWRlcjsKPiAgCXN0
cnVjdCBkZXZpY2Vfbm9kZSAqY2hpbGQ7Cj4gLQlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAgCXN0
cnVjdCBjbGsgKmNsazsKPiAgCWludCByZXQ7Cj4gCj4gQEAgLTEyNTEsMjYgKzEyNTAsMTkgQEAg
c3RhdGljIGludCBtdmVidV9hMzcwMF9jb21waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAKPiAgCXNwaW5fbG9ja19pbml0KCZwcml2LT5sb2NrKTsKPiAKPiAtCXJlcyA9
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sICJjb21w
aHkiKTsKPiAtCXByaXYtPmNvbXBoeV9yZWdzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2
LT5kZXYsIHJlcyk7Cj4gKwlwcml2LT5jb21waHlfcmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImNvbXBoeSIpOwo+ICAJaWYgKElTX0VSUihwcml2LT5j
b21waHlfcmVncykpCj4gIAkJcmV0dXJuIFBUUl9FUlIocHJpdi0+Y29tcGh5X3JlZ3MpOwo+IAo+
IC0JcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZShwZGV2LCBJT1JFU09VUkNFX01F
TSwKPiAtCQkJCQkgICAibGFuZTFfcGNpZV9nYmUiKTsKPiAtCXByaXYtPmxhbmUxX3BoeV9yZWdz
ID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4gKwlwcml2LT5sYW5l
MV9waHlfcmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwg
ImxhbmUxX3BjaWVfZ2JlIik7Cj4gIAlpZiAoSVNfRVJSKHByaXYtPmxhbmUxX3BoeV9yZWdzKSkK
PiAgCQlyZXR1cm4gUFRSX0VSUihwcml2LT5sYW5lMV9waHlfcmVncyk7Cj4gCj4gLQlyZXMgPSBw
bGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLAo+IC0JCQkJ
CSAgICJsYW5lMF91c2IzX2diZSIpOwo+IC0JcHJpdi0+bGFuZTBfcGh5X3JlZ3MgPSBkZXZtX2lv
cmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiArCXByaXYtPmxhbmUwX3BoeV9yZWdz
ID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LCAibGFuZTBfdXNi
M19nYmUiKTsKPiAgCWlmIChJU19FUlIocHJpdi0+bGFuZTBfcGh5X3JlZ3MpKQo+ICAJCXJldHVy
biBQVFJfRVJSKHByaXYtPmxhbmUwX3BoeV9yZWdzKTsKPiAKPiAtCXJlcyA9IHBsYXRmb3JtX2dl
dF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sCj4gLQkJCQkJICAgImxhbmUy
X3NhdGFfdXNiMyIpOwo+IC0JcHJpdi0+bGFuZTJfcGh5X2luZGlyZWN0ID0gZGV2bV9pb3JlbWFw
X3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4gKwlwcml2LT5sYW5lMl9waHlfaW5kaXJlY3Qg
PSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKHBkZXYsICJsYW5lMl9zYXRh
X3VzYjMiKTsKPiAgCWlmIChJU19FUlIocHJpdi0+bGFuZTJfcGh5X2luZGlyZWN0KSkKPiAgCQly
ZXR1cm4gUFRSX0VSUihwcml2LT5sYW5lMl9waHlfaW5kaXJlY3QpOwo+IAoKUmV2aWV3ZWQtYnk6
IE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
