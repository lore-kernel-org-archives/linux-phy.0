Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C3B606A33B
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 15:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=43rzcUHC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CNQPhEFU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wec1VhrSgF1Xhy+Dr8tBUMdncPJuL18oydC0p+dcte0=; b=43rzcUHCc7BGfDko7519aXZoeZ
	UhiCb1g4cP7GaxtrYcU0xc66rMGM09Ixsqa1EDCOJVZBbHkN8V5nS5Mk9y9/142u+s7TCKkCeXSJx
	V1fsjSAnU5zFSoAD6WiW8sVmWizeZITDi+pojqGlI86WuQ4jYBBksyjdv9d57Uo4caZiDUXenf5LM
	azS2da6tZo/caYwCoriutS9xMS4ARwjB0BHupdsL53tglKTp/Zwbih2Dv9K8y2059vqFYORjaWA5G
	3fFLlLlV+6WuCnQCZyTPDmLIUyQOYvCnAZDx4EHuFqyIEmUcv07S0rvR6yHbCqfyKPcxrAat1PZyD
	Sewmj27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzen-00000009RFg-48kl;
	Thu, 05 Nov 2026 15:45:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzem-00000009RFI-1WWn
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 15:45:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AEAFC43542;
	Thu,  5 Nov 2026 15:45:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B13F1F00919;
	Thu,  5 Nov 2026 15:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793893539;
	bh=7Q5xvtji2Ri/c1Zq6Z72iGceQEUZzWpuTkdSGYgHdhA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CNQPhEFUqAWd+QGjSTKD2/5a8fLAReuxMf/UGv9TUxBrrq7IPRhNUQdtvqyJVLeXQ
	 ZZJWknI0ypwU2VsUOptsl9eGrDoEaRaHoRnQP5hSOa2AJob7inJDylBOKWdxIw5szx
	 1U1kBgcxbeOr2Ps3aZUua+50x9+A8JLDjG0NIYiriWRGbssNFXeMH8+iL25p1f+pvj
	 hKnPAFL9ntbclXZocYaUp2Ccs2IsVTYTapW6g4TL+a+w6zATUofX2MSE5hpNePxOia
	 Xn93R7BpUFJaaAthjaI4cx5NPVJ7wt1Pc5RIYtHriAeuA9rqQxifHhAsJ3f15FuGl7
	 ReRFVzNOP8bcQ==
Message-ID: <sashiko-outbox-199338@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: broadcom: use devm_clk_get() in
 brcm_usb_phy_dvr_init()
To: "Wentao Liang" <vulab@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261103104240.1373792-1-vulab@iscas.ac.cn>
References: <20261103104240.1373792-1-vulab@iscas.ac.cn>
Date: Thu, 05 Nov 2026 15:45:38 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBicm9hZGNv
bTogdW5iYWxhbmNlZCBjbGtfcHJlcGFyZV9lbmFibGUoKSBpbiBicmNtX3VzYl9waHlfZHZyX2lu
aXQoKQotLQoKY29tbWl0IDM0ZmY1MDE3OWE4ZDc5MDA2NzM3MDAwZjVhNjUzOTE5NzJlMzE0N2IK
QXV0aG9yOiBXZW50YW8gTGlhbmcgPHZ1bGFiQGlzY2FzLmFjLmNuPgoKcGh5OiBicm9hZGNvbTog
dXNlIGRldm1fY2xrX2dldCgpIGluIGJyY21fdXNiX3BoeV9kdnJfaW5pdCgpCgpUaGlzIGNvbW1p
dCByZXBsYWNlcyBvZl9jbGtfZ2V0X2J5X25hbWUoKSBhbmQgY2xrX2dldCgpIHdpdGggZGV2bV9j
bGtfZ2V0KCkKaW4gYnJjbV91c2JfcGh5X2R2cl9pbml0KCkgc28gY2xvY2sgcmVmZXJlbmNlcyBh
cmUgYXV0b21hdGljYWxseSByZWxlYXNlZCBvbgpwcm9iZSBmYWlsdXJlIGFuZCBkcml2ZXIgcmVt
b3ZhbCwgYW5kIGRyb3BzIHRoZSB1bnVzZWQgZGV2aWNlX25vZGUgcGFyYW1ldGVyLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLmMgYi9kcml2ZXJzL3Bo
eS9icm9hZGNvbS9waHktYnJjbS11c2IuYwo+IGluZGV4IGU2MDZkYjQ4OTY5OGEuLmMwY2I3MDFl
NDE5YWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYnJjbS11c2IuYwo+IEBAIC00MDEsMTQg
KzQwMSwxMyBAQCBzdGF0aWMgaW50IGJyY21fdXNiX2dldF9yZWdzKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsCj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgYnJjbV91c2JfcGh5X2R2cl9pbml0
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gLQkJCQkgc3RydWN0IGJyY21fdXNiX3Bo
eV9kYXRhICpwcml2LAo+IC0JCQkJIHN0cnVjdCBkZXZpY2Vfbm9kZSAqZG4pCj4gKwkJCQkgc3Ry
dWN0IGJyY21fdXNiX3BoeV9kYXRhICpwcml2KQo+ICB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGRldi0+ZGV2Owo+ICAJc3RydWN0IHBoeSAqZ3BoeSA9IE5VTEw7Cj4gIAlpbnQgZXJyOwo+
ICAKPiAtCXByaXYtPnVzYl8yMF9jbGsgPSBvZl9jbGtfZ2V0X2J5X25hbWUoZG4sICJzd191c2Ii
KTsKPiArCXByaXYtPnVzYl8yMF9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAic3dfdXNiIik7Cj4g
IAlpZiAoSVNfRVJSKHByaXYtPnVzYl8yMF9jbGspKSB7Cj4gIAkJaWYgKFBUUl9FUlIocHJpdi0+
dXNiXzIwX2NsaykgPT0gLUVQUk9CRV9ERUZFUikKPiAgCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7
Cj4gQEAgLTQ0MCw3ICs0MzksNyBAQCBzdGF0aWMgaW50IGJyY21fdXNiX3BoeV9kdnJfaW5pdChz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAJCXByaXYtPnBoeXNbQlJDTV9VU0JfUEhZ
XzNfMF0uaWQgPSBCUkNNX1VTQl9QSFlfM18wOwo+ICAJCXBoeV9zZXRfZHJ2ZGF0YShncGh5LCAm
cHJpdi0+cGh5c1tCUkNNX1VTQl9QSFlfM18wXSk7Cj4gIAo+IC0JCXByaXYtPnVzYl8zMF9jbGsg
PSBvZl9jbGtfZ2V0X2J5X25hbWUoZG4sICJzd191c2IzIik7Cj4gKwkJcHJpdi0+dXNiXzMwX2Ns
ayA9IGRldm1fY2xrX2dldChkZXYsICJzd191c2IzIik7Cj4gIAkJaWYgKElTX0VSUihwcml2LT51
c2JfMzBfY2xrKSkgewo+ICAJCQlpZiAoUFRSX0VSUihwcml2LT51c2JfMzBfY2xrKSA9PSAtRVBS
T0JFX0RFRkVSKQo+ICAJCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gQEAgLTQ1Myw3ICs0NTIs
NyBAQCBzdGF0aWMgaW50IGJyY21fdXNiX3BoeV9kdnJfaW5pdChzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2LAo+ICAJCQlyZXR1cm4gZXJyOwo+ICAJfQo+ICAKPiAtCXByaXYtPnN1c3BlbmRf
Y2xrID0gY2xrX2dldChkZXYsICJ1c2IwX2ZyZWVydW4iKTsKPiArCXByaXYtPnN1c3BlbmRfY2xr
ID0gZGV2bV9jbGtfZ2V0KGRldiwgInVzYjBfZnJlZXJ1biIpOwo+ICAJaWYgKElTX0VSUihwcml2
LT5zdXNwZW5kX2NsaykpIHsKPiAgCQlpZiAoUFRSX0VSUihwcml2LT5zdXNwZW5kX2NsaykgPT0g
LUVQUk9CRV9ERUZFUikKPiAgCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7CgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KRG9lcyBzd2l0Y2hpbmcgdG8gZGV2bV9jbGtfZ2V0KCkgaW4gYnJjbV91c2JfcGh5X2R2
cl9pbml0KCkgY2F1c2UgZGV2cmVzIHRvCmNhbGwgY2xrX3B1dCgpIG9uIHByaXYtPnVzYl8yMF9j
bGsgYW5kIHByaXYtPnVzYl8zMF9jbGsgd2hpbGUgdGhleSBhcmUgc3RpbGwKcHJlcGFyZWQgYW5k
IGVuYWJsZWQgaWYgYSBsYXRlciBzdGVwIGluIGJyY21fdXNiX3BoeV9kdnJfaW5pdCgpIGZhaWxz
PwoKSW4gYnJjbV91c2JfcGh5X2R2cl9pbml0KCksIHByaXYtPnVzYl8yMF9jbGsgYW5kIHByaXYt
PnVzYl8zMF9jbGsgYXJlIGVuYWJsZWQKd2l0aCBjbGtfcHJlcGFyZV9lbmFibGUoKToKCiAgICBw
cml2LT51c2JfMjBfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInN3X3VzYiIpOwogICAgLi4uCiAg
ICBlcnIgPSBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+dXNiXzIwX2Nsayk7CiAgICBpZiAoZXJy
KQogICAgICAgIHJldHVybiBlcnI7CgphbmQgZm9yIFhIQ0k6CgogICAgcHJpdi0+dXNiXzMwX2Ns
ayA9IGRldm1fY2xrX2dldChkZXYsICJzd191c2IzIik7CiAgICAuLi4KICAgIGVyciA9IGNsa19w
cmVwYXJlX2VuYWJsZShwcml2LT51c2JfMzBfY2xrKTsKICAgIGlmIChlcnIpCiAgICAgICAgcmV0
dXJuIGVycjsKCkluIHRoZSBub3JtYWwgcHJvYmUgZmxvdywgdGhvc2UgY2xvY2tzIGFyZSBvbmx5
IGRpc2FibGVkIGFuZCB1bnByZXBhcmVkIG5lYXIKdGhlIGVuZCBvZiBicmNtX3VzYl9waHlfcHJv
YmUoKToKCiAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+dXNiXzIwX2Nsayk7CiAgICBj
bGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+dXNiXzMwX2Nsayk7CgpJZiBhIHN1YnNlcXVlbnQg
c3RlcCBpbiBicmNtX3VzYl9waHlfZHZyX2luaXQoKSBmYWlscyAoc3VjaCBhcwpkZXZtX3BoeV9j
cmVhdGUoKSwgZGV2bV9jbGtfZ2V0KCkgcmV0dXJuaW5nIC1FUFJPQkVfREVGRVIgZm9yIHN3X3Vz
YjMgb3IKdXNiMF9mcmVlcnVuLCBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+dXNiXzMwX2Nsayks
IG9yIGRldm1fcmVxdWVzdF9pcnEoKSksCmJyY21fdXNiX3BoeV9kdnJfaW5pdCgpIHJldHVybnMg
dGhlIGVycm9yIGRpcmVjdGx5IHdpdGhvdXQgY2FsbGluZwpjbGtfZGlzYWJsZV91bnByZXBhcmUo
KSBvbiB0aGUgYWxyZWFkeS1lbmFibGVkIGNsb2Nrcy4KCkJlY2F1c2UgZGV2bV9jbGtfZ2V0KCkg
b25seSByZWdpc3RlcnMgY2xrX3B1dCgpIG9uIGRldnJlcyByZWxlYXNlLCB1bndpbmRpbmcKcHJv
YmUgZmFpbHVyZSB3aWxsIGNhbGwgY2xrX3B1dCgpIG9uIGNsb2NrcyB3aG9zZSBwcmVwYXJlIGFu
ZCBlbmFibGUgY291bnRzCndlcmUgbmV2ZXIgYmFsYW5jZWQuCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTAzMTA0MjQwLjEzNzM3
OTItMS12dWxhYkBpc2Nhcy5hYy5jbj9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
