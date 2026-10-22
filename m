Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC101606A33B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 16:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r/NhLYh+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=abW1Dmhq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KYJ13rVW/tfOpbcUtWIZ5JEjMrJ4+gOWF2VrkHqumks=; b=r/NhLYh+qlO+XZx4rgelteEDtG
	UmfIBb8yXd3g8KxW1yEqWqhom4S71kg8eSEkTQKnX8DHbNmxr5uvUdSmFHAdBPLlkUFUEnplSHX2O
	rZJflZDXn4u3iNAwpsOnEfYS8HyUzIu8TuJiMZGT+xsoFuEHAp+Yv9fdRY2SCGlUhEQRsdvpxvtES
	Nm+k2uGGTfzXJ4voO2ROiwTHRzna1N8zFQxwQhw/if8WRCZZWZkg14L+Ll3Jcr6AeKnJb5Ye3et3l
	IWhoyPEtsdVYL2ptwsRza3gq72+urfq52x445qxo76vJVqEhaJ4sODm0wiZyJwzeMQFKuFX4GSGEw
	zkrJFCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPh-0000000ET5Y-2qey;
	Thu, 22 Oct 2026 16:13:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPg-0000000ET5C-1e7b
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 16:13:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A6EEB6143B;
	Thu, 22 Oct 2026 16:13:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F3BE1F031E0;
	Thu, 22 Oct 2026 16:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792685587;
	bh=6VnMjKMpiGmEsV8NW8gW+gz8xbXvE1RU25n4brd4kQ4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=abW1Dmhq2xsBULwQDhBd1LdemPxkwVrgHelPVvVRGy5ySZR7J8nSQF6ueI1q1Rl/d
	 1GCxiSK06osVl5hmzZM7c+2uJxmzpU0Zm2rnvutG2doRP5MykbjPGBWCUZbxzPFsM7
	 ebyeaCM91yqvb75d1NmFUWPDMa98dV9RlqJNt1SqRlQt9wwKMrrL5494tb2UpsxA2w
	 H85IFbgjtheCvoIB/c2HrxYCujNbjkh5lDXLss1Jer1hgDbT+22ZXoUq2JDPsm51D5
	 LVKldllN1otU4dV61eqP4tcSjuU2Y7ukb5F/j/t/2ArCQocPnMhe29slwUx5HjVr3N
	 0lMT9E1r3QQ/w==
Message-ID: <sashiko-outbox-181773@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/27] gpio: rockchip: Add RK3572 GPIO support
To: "Cunhao Lu" <1579567540@qq.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org
In-Reply-To: <20261022-add-board-ok3572-c-v1-9-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-9-0b0fd85a31ee@qq.com>
Date: Thu, 22 Oct 2026 16:13:05 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZ3Bpbzogcm9ja2No
aXA6IGludmVydGVkIGZhY3RvciBvZiAyIGluIHJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKCkK
LS0KCmNvbW1pdCA3NzllNDdjM2VkZTA1NzU1NTYzMWU0Zjg0MzNlMDFjMjM0ZDNlN2UzCkF1dGhv
cjogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KCmdwaW86IHJvY2tjaGlwOiBBZGQgUksz
NTcyIEdQSU8gc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgcmszNTcy
IGdwaW8gY29udHJvbGxlciAodmVyc2lvbiAyLjcpLAppbmNsdWRpbmcgaGFuZGxpbmcgZm91ciBw
YXJlbnQgaW50ZXJydXB0cyBwZXIgYmFuayBhbmQgcXVlcnlpbmcgZmlybXdhcmUKZm9yIGludGVy
cnVwdC1ncm91cCBwaW4gbWFza3MgdmlhIHNtY2NjLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBpbmRl
eCA3N2IyMzlhOWE2MDFlLi4zNTg5NGE2OGI1NDQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bp
by9ncGlvLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCgpb
IC4uLiBdCgo+IEBAIC0yMDksMTIgKzIxMiwyNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dwaW9f
c2V0X2RlYm91bmNlKHN0cnVjdCBncGlvX2NoaXAgKmdjLAo+ICAJaWYgKGJhbmstPmdwaW9fdHlw
ZSA9PSBHUElPX1RZUEVfVjIgJiYgIUlTX0VSUihiYW5rLT5kYl9jbGspKSB7Cj4gIAkJZGl2X2Rl
Ym91bmNlX3N1cHBvcnQgPSB0cnVlOwo+ICAJCWZyZXEgPSBjbGtfZ2V0X3JhdGUoYmFuay0+ZGJf
Y2xrKTsKPiAtCQltYXhfZGVib3VuY2UgPSAoR0VOTUFTSygyMywgMCkgKyAxKSAqIDIgKiAxMDAw
MDAwIC8gZnJlcTsKPiAtCQlpZiAoZGVib3VuY2UgPiBtYXhfZGVib3VuY2UpCj4gLQkJCXJldHVy
biAtRUlOVkFMOwo+ICAKPiAtCQlkaXYgPSBkZWJvdW5jZSAqIGZyZXE7Cj4gLQkJZGl2X3JlZyA9
IERJVl9ST1VORF9DTE9TRVNUX1VMTChkaXYsIDIgKiBVU0VDX1BFUl9TRUMpIC0gMTsKPiArCQlp
ZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUoYmFuay0+b2Zfbm9kZSwgInJvY2tjaGlwLHJrMzU3
Mi1ncGlvLWJhbmsiKSkgewo+ICsJCQlpZiAoIWZyZXEpCj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsK
PiArCj4gKwkJCWRpdiA9ICh1NjQpKEdFTk1BU0soMjMsIDApICsgMSkgKiBVU0VDX1BFUl9TRUM7
Cj4gKwkJCW1heF9kZWJvdW5jZSA9IGRpdl91NjQoZGl2LCAyICogZnJlcSk7Cj4gKwkJCWlmIChk
ZWJvdW5jZSA+IG1heF9kZWJvdW5jZSkKPiArCQkJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCQkJ
ZGl2ID0gKHU2NClkZWJvdW5jZSAqIGZyZXEgKiAyOwo+ICsJCQlkaXZfcmVnID0gRElWX1JPVU5E
X0NMT1NFU1RfVUxMKGRpdiwgVVNFQ19QRVJfU0VDKTsKPiArCQkJZGl2X3JlZyA9IGRpdl9yZWcg
PyBkaXZfcmVnIC0gMSA6IDA7Cj4gKwkJfSBlbHNlIHsKPiArCQkJbWF4X2RlYm91bmNlID0gKEdF
Tk1BU0soMjMsIDApICsgMSkgKiAyICogMTAwMDAwMCAvIGZyZXE7Cj4gKwkJCWlmIChkZWJvdW5j
ZSA+IG1heF9kZWJvdW5jZSkKPiArCQkJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCQkJZGl2ID0g
ZGVib3VuY2UgKiBmcmVxOwo+ICsJCQlkaXZfcmVnID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKGRp
diwgMiAqIFVTRUNfUEVSX1NFQykgLSAxOwo+ICsJCX0KCltTZXZlcml0eTogTWVkaXVtXQpJcyB0
aGUgZmFjdG9yIG9mIDIgaW52ZXJ0ZWQgaW4gdGhlIG5ldyAicm9ja2NoaXAscmszNTcyLWdwaW8t
YmFuayIgYnJhbmNoIG9mCnJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKCk/CgpJbiB0aGUgZXhp
c3RpbmcgdjIgZGVib3VuY2UgY2FsY3VsYXRpb24gaW4gdGhlIGVsc2UgYnJhbmNoLCBlYWNoIHN0
ZXAgb2YgdGhlCjI0LWJpdCBkZWJvdW5jZSBjbG9jayBkaXZpZGVyIGRpdmlkZXMgZGJfY2xrIGJ5
IDIgKiAoZGl2X3JlZyArIDEpLCBnaXZpbmcgYQpwZXJpb2Qgb2YgMiAqIChkaXZfcmVnICsgMSkg
LyBmcmVxIHNlY29uZHM6CgoJbWF4X2RlYm91bmNlID0gKEdFTk1BU0soMjMsIDApICsgMSkgKiAy
ICogMTAwMDAwMCAvIGZyZXE7CgkuLi4KCWRpdiA9IGRlYm91bmNlICogZnJlcTsKCWRpdl9yZWcg
PSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoZGl2LCAyICogVVNFQ19QRVJfU0VDKSAtIDE7CgpJbiB0
aGUgbmV3IGJyYW5jaCBmb3IgInJvY2tjaGlwLHJrMzU3Mi1ncGlvLWJhbmsiLCBtYXhfZGVib3Vu
Y2UgZGl2aWRlcyBieQoyICogZnJlcSBpbnN0ZWFkIG9mIG11bHRpcGx5aW5nIGJ5IDIgKG1ha2lu
ZyBtYXhfZGVib3VuY2UgNHggc21hbGxlciksIGFuZApkaXZfcmVnIG11bHRpcGxpZXMgZGVib3Vu
Y2UgKiBmcmVxIGJ5IDIgaW5zdGVhZCBvZiBkaXZpZGluZyBieQoyICogVVNFQ19QRVJfU0VDICht
YWtpbmcgdGhlIHByb2dyYW1tZWQgZGl2aWRlciA0eCBsYXJnZXIsIHdoaWNoIGNhbiBhbHNvCnRy
dW5jYXRlIHRoZSAyNC1iaXQgZGl2aWRlciBmb3IgbGFyZ2VyIGRlYm91bmNlIHZhbHVlcyBhbmQg
aW1wbGllcyBhCmhhbGYtY3ljbGUgcmVzb2x1dGlvbiBvZiAxIC8gKDIgKiBmcmVxKSBhdCBkaXZf
cmVnID09IDApLiBUaGUgY29tbWl0IG1lc3NhZ2UKYWxzbyBkb2VzIG5vdCBtZW50aW9uIGEgZGlm
ZmVyZW50IGhhcmR3YXJlIGRlYm91bmNlIGRpdmlkZXIgZm9ybXVsYSBmb3IgdGhpcwp2YXJpYW50
LgoKTm90ZSB0aGF0IGluIHRoZSBleGlzdGluZyBlbHNlIGJyYW5jaCwgdGhlIHJlYXNvbiBkaXZf
cmVnIHVuZGVyZmxvd3Mgd2hlbgpkYl9jbGsgaXMgc2xvdyAoc3VjaCBhcyAzMi43Njgga0h6KSBp
cyB0aGF0IHJvY2tjaGlwX2dwaW9fc2V0X2NvbmZpZygpIHBhc3Nlcwp0cnVlICgxIHVzKSBhcyB0
aGUgZGVib3VuY2UgYXJndW1lbnQ6Cgpkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jOnJvY2tj
aGlwX2dwaW9fc2V0X2NvbmZpZygpIHsKCXN3aXRjaCAocGFyYW0pIHsKCWNhc2UgUElOX0NPTkZJ
R19JTlBVVF9ERUJPVU5DRToKCQlyb2NrY2hpcF9ncGlvX3NldF9kZWJvdW5jZShnYywgb2Zmc2V0
LCB0cnVlKTsKCmNhdXNpbmcgRElWX1JPVU5EX0NMT1NFU1RfVUxMKGRpdiwgMiAqIFVTRUNfUEVS
X1NFQykgdG8gZXZhbHVhdGUgdG8gMCBiZWZvcmUKc3VidHJhY3RpbmcgMSAod2hpbGUgKEdFTk1B
U0soMjMsIDApICsgMSkgKiAyICogMTAwMDAwMCBhbHNvIG92ZXJmbG93cyBhCjMyLWJpdCB1bnNp
Z25lZCBsb25nLCBhbmQgdGhlIHJlZ2lzdGVyIHVwZGF0ZSBiZWxvdyBpbgpyb2NrY2hpcF9ncGlv
X3NldF9kZWJvdW5jZSgpIHVzZXMgcmF3IHJlYWRsKCkgYW5kIHdyaXRlbCgpIG9uCnJlZy0+ZGJj
bGtfZGl2X2NvbiBpbnN0ZWFkIG9mIHJvY2tjaGlwX2dwaW9fcmVhZGwoKSBhbmQKcm9ja2NoaXBf
Z3Bpb193cml0ZWwoKSkuCgpTaG91bGQgdGhlIDY0LWJpdCBjYWxjdWxhdGlvbiBhbmQgdGhlIGRp
dl9yZWcgPyBkaXZfcmVnIC0gMSA6IDAgY2xhbXAga2VlcAp0aGUgbm9uLWludmVydGVkIDIgKiAo
ZGl2X3JlZyArIDEpIGRpdmlkZXIgZm9ybXVsYT8KCj4gIAl9IGVsc2Ugewo+ICAJCWRpdl9kZWJv
dW5jZV9zdXBwb3J0ID0gZmFsc2U7Cj4gIAl9CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDIyLWFkZC1ib2FyZC1v
azM1NzItYy12MS0wLTBiMGZkODVhMzFlZUBxcS5jb20/cGFydD05CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
