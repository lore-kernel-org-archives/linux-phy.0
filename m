Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EBF606A329
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KvRUHL20;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JgMuHs2a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PaW848kH/eHhHtXEp6IgxtHq8gyqwPZ67BqP70k9eUU=; b=KvRUHL20DMSt0hea5zcmw4zt+e
	MC4F1Ooc5ev1lmPyhfKBCbz/pUQBvT75U1NBQ3wG5gT55LVQW3tXpBT0ZlRpfsrSk0QpuadkdmPCz
	e7JKTxG3g727wYhigCHfabkdt/E/Xecb4KTmTGtBcODHfs6QZWI2DI04Ucxjy9C86EgdYG5DALKIA
	nzsVGjWJZH4za4SBsKqaVpLa7io96dcQtq74ULwb0ezENm3yKQfx95gcpiOqL1USzhRzG4/hAD0hL
	hoc4B6e1N2f0bU960ekcBVXJUbLo/EcMdqW71olOFym+OuFtNmwHpluKW9dMvQ9L886ZaMXUXALpS
	i3X1bkqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFQG-0000000BbUN-0WmT;
	Fri, 06 Nov 2026 08:35:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFQE-0000000BbUG-3jom
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:35:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7DE1C41AFF;
	Fri,  6 Nov 2026 08:35:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14F231F0089F;
	Fri,  6 Nov 2026 08:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793954142;
	bh=XkAD5MECA2Vbpqcg/7bx21uHwximYQD1JhpCGrttIMk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JgMuHs2aAU1YwjdB3OJmmHUq6aJ8l6yc2pBgmdUeftioAKBBhxunUsMdN3RZPS6uW
	 mUtNftLlxfAybLwSXjnWCG1jF/SHpHzztlmOy+NZ4xzdILF/zD/+dUWAzjj3Sve2NU
	 h0Joma/ktDA/jguX4+g+Vye86DuzLkJuB2iOvuC6CUWyaneNUPY50cfFHjsluqgLuZ
	 95daV1wyU0irrC1Pc6X2Zwb2M9p/F1EoI569/MPC6HDwwEQoKTCqNvzq7DvQBhfeu7
	 PKDAdv0yZa+kIXm0k/X9ImugOFctkna1DFV/uI2bNBWKhQkYtOurFsMsB1rmmyG2Il
	 mXbMMWW5q7L7Q==
Message-ID: <sashiko-outbox-201072@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] phy: qcom: qmp-combo: Select LFPS detect only when
 SS link is confirmed present
To: "Tapas Rana" <tapas.rana@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106082716.128968-3-tapas.rana@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
 <20261106082716.128968-3-tapas.rana@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 08:35:41 +0000
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
bm8gbmV3IGlzc3VlcwppbiB0aGlzIHBhdGNoLCBidXQgbm90aWNlZCAxIHJlbGF0ZWQgcHJlLWV4
aXN0aW5nIGlzc3VlIGl0IGRvZXMgbm90CmludHJvZHVjZToKLSBbSGlnaF0gcGh5OiBxY29tOiBx
bXAtY29tYm86IGludmFsaWQgUENTX01JU0MgY2xhbXAgcmVnaXN0ZXIgYWNjZXNzIGluCiAgYXV0
b25vbW91cyBtb2RlIFsxXQotLQoKY29tbWl0IGVlN2ZmZGM0MDg5YmZiNzRlNTlhNzc0N2M1YTJj
MWFiMmUzZjg3NTgKQXV0aG9yOiBUYXBhcyBSYW5hIDx0YXBhcy5yYW5hQG9zcy5xdWFsY29tbS5j
b20+CgpwaHk6IHFjb206IHFtcC1jb21ibzogU2VsZWN0IExGUFMgZGV0ZWN0IG9ubHkgd2hlbiBT
UyBsaW5rIGlzIGNvbmZpcm1lZCBwcmVzZW50CgpUaGlzIGNvbW1pdCBzdG9yZXMgdGhlIHFjb21f
dXNiX3NzX3N0YXRlIHN1Ym1vZGUgaW4gcW1wX2NvbWJvX3VzYl9zZXRfbW9kZSgpCmFuZCB1c2Vz
IGl0IGluIHFtcF9jb21ib19lbmFibGVfYXV0b25vbW91c19tb2RlKCkgdG8gZW5hYmxlIExGUFMg
ZGV0ZWN0aW9uCm9ubHkgd2hlbiBhIFN1cGVyU3BlZWQgbGluayBpcyBjb25maXJtZWQgcHJlc2Vu
dC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21i
by5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiBpbmRleCAx
ODdmMGNkMTFmNmMzLi4wNWQ0OGJhODE3MTlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLWNvbWJvLmMKClsgLi4uIF0KCj4gQEAgLTQ2NTcsMTEgKzQ2NjksMjAgQEAg
c3RhdGljIHZvaWQgcW1wX2NvbWJvX2VuYWJsZV9hdXRvbm9tb3VzX21vZGUoc3RydWN0IHFtcF9j
b21ibyAqcW1wKQo+ICAJdm9pZCBfX2lvbWVtICpwY3NfYW9uID0gcW1wLT5wY3NfYW9uOwo+ICAJ
dTMyIGludHJfbWFzazsKPiAgCj4gLQlpZiAocW1wLT5waHlfbW9kZSA9PSBQSFlfTU9ERV9VU0Jf
SE9TVF9TUyB8fAo+IC0JICAgIHFtcC0+cGh5X21vZGUgPT0gUEhZX01PREVfVVNCX0RFVklDRV9T
UykKPiArCS8qCj4gKwkgKiBVc2UgTEZQUyBkZXRlY3Rpb24gb25seSB3aGVuIGEgU3VwZXJTcGVl
ZCBkZXZpY2UgaXMga25vd24gdG8gYmUKPiArCSAqIHByZXNlbnQuIEZvciBhYnNlbnQgb3IgdW5r
bm93biBzdGF0ZSwgdXNlIHJlY2VpdmVyIGRldGVjdGlvbi4KPiArCSAqLwo+ICsJc3dpdGNoIChx
bXAtPnNzX3N0YXRlKSB7Cj4gKwljYXNlIFFDT01fVVNCX1NTX1BSRVNFTlQ6Cj4gIAkJaW50cl9t
YXNrID0gQVJDVlJfRFRDVF9FTiB8IEFMRlBTX0RUQ1RfRU47Cj4gLQllbHNlCj4gKwkJYnJlYWs7
Cj4gKwljYXNlIFFDT01fVVNCX1NTX0FCU0VOVDoKPiArCWNhc2UgUUNPTV9VU0JfU1NfVU5LTk9X
TjoKPiArCWRlZmF1bHQ6Cj4gIAkJaW50cl9tYXNrID0gQVJDVlJfRFRDVF9FTiB8IEFSQ1ZSX0RU
Q1RfRVZFTlRfU0VMOwo+ICsJCWJyZWFrOwo+ICsJfQo+ICAKPiAgCS8qIENsZWFyIGFueSBwZW5k
aW5nIGludGVycnVwdHMgc3RhdHVzICovCj4gIAlxcGh5X3NldGJpdHMocGNzX3VzYiwgY2ZnLT5y
ZWdzW1FQSFlfUENTX0xGUFNfUlhURVJNX0lSUV9DTEVBUl0sIElSUV9DTEVBUik7CgpbU2V2ZXJp
dHk6IEhpZ2hdClRoaXMgcHJvYmxlbSB3YXNuJ3QgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBi
dXQgY2FuCnFtcF9jb21ib19lbmFibGVfYXV0b25vbW91c19tb2RlKCkgYW5kIHFtcF9jb21ib19k
aXNhYmxlX2F1dG9ub21vdXNfbW9kZSgpCmNvcnJ1cHQgdGhlIFBDU19NSVNDIGJsb2NrIFsxXSBv
biBWNiBwbGF0Zm9ybXMgdGhhdCBkbyBub3QgZGVmaW5lCnVzYjNfcGNzX2Fvbj8KCmRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jOnFtcF9jb21ib19lbmFibGVfYXV0b25v
bW91c19tb2RlKCkgewoJLi4uCglpZiAocGNzX2FvbikgewoJCWlmIChxbXAtPnFtcHBoeV9tb2Rl
ID09IFFNUFBIWV9NT0RFX1VTQjQpCgkJCXFwaHlfY2xyYml0cyhwY3NfYW9uLCBjZmctPnJlZ3Nb
UVBIWV9QQ1NfVVNCNF9DTEFNUF9FTkFCTEVdLCBDTEFNUF9FTik7CgkJZWxzZQoJCQlxcGh5X2Ns
cmJpdHMocGNzX2FvbiwgY2ZnLT5yZWdzW1FQSFlfUENTX0NMQU1QX0VOQUJMRV0sIENMQU1QX0VO
KTsKCX0gZWxzZSBpZiAocGNzX21pc2MpCgkJcXBoeV9jbHJiaXRzKHBjc19taXNjLCBjZmctPnJl
Z3NbUVBIWV9QQ1NfQ0xBTVBfRU5BQkxFXSwgQ0xBTVBfRU4pOwp9CgpDb25maWdzIHN1Y2ggYXMg
c204NTUwX3VzYjNkcHBoeV9jZmcgYW5kIHgxZTgwMTAwX3VzYjNkcHBoeV9jZmcgcGFpcgpxbXBf
djZfdXNiM3BoeV9yZWdzX2xheW91dCBvciBxbXBfdjZfbjRfdXNiM3BoeV9yZWdzX2xheW91dCAo
d2hlcmUKUVBIWV9QQ1NfQ0xBTVBfRU5BQkxFIGlzIFFQSFlfVjZfUENTX0FPTl9DTEFNUF9FTkFC
TEUsIDB4MDApIHdpdGggb2Zmc2V0CnRhYmxlcyB0aGF0IGxlYXZlIHVzYjNfcGNzX2FvbiBhdCAw
LiAgSW4gcW1wX2NvbWJvX3BhcnNlX2R0KCksIHFtcC0+cGNzX2FvbgpyZW1haW5zIE5VTEwgd2hp
bGUgcW1wLT5wY3NfbWlzYyBpcyBwb3B1bGF0ZWQgdW5jb25kaXRpb25hbGx5LgoKRHVyaW5nIHJ1
bnRpbWUgc3VzcGVuZCBhbmQgcmVzdW1lLCB0aGUgZWxzZSBpZiAocGNzX21pc2MpIGZhbGxiYWNr
IHdyaXRlcwpDTEFNUF9FTiB0byBvZmZzZXQgMHgwMCBvZiBwY3NfbWlzYyAoUVBIWV9WNF9QQ1Nf
TUlTQ19UWVBFQ19DVFJMKSwKY29ycnVwdGluZyB0aGUgVHlwZS1DIGNvbnRyb2wgcmVnaXN0ZXIg
aW5zdGVhZCBvZiB0b2dnbGluZyB0aGUgaGFyZHdhcmUKSS9PIGNsYW1wLgoKWzFdIGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9idWcvbGludXgtOTc1ZTA3MDktMWYyYy00ZGNmLWJlYjktYWUzZjBlMDMy
YWE5CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYxMTA2MDgyNzE2LjEyODk2OC0xLXRhcGFzLnJhbmFAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
