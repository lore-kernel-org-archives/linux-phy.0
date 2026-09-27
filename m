Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFBCDC98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 21:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWW0Yi6cf+nkCwIQtOotFhFWeQdTMRZVmYl0Jv7uzag=; b=Fp4sPgIlhbEapM
	ac4GjYIBcTaIqIvQFul+65EzpsAFHs1b/Z8iaH58o5/AbzidCYjdjFthYN/xVasFwWoOzPSMEXgNl
	QNCzRBGgjYkc68fAc3CwCRqZFi3K8Py/jm8SGgNQ8XDgCTw1bKN8hxPD6ToWcYHDvECsbMGLind8U
	4OdIsHHtZxVgWGTDLMIKpxoOCMIbXVjLdNzmexgs0ze1CNdjVUomRhebJgEzhAhkm1sbyc9SOrsNK
	kIfKNY3rxZNRXMtsj9lrZUMh45idEGP9cqMAc4Jz4kNxMRCZCJfDgYER0dvMyvsF9E4lplboMQd+b
	J1rD8I8PJVNSpJgwNKHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAw3t-0000000GrlG-1SJU;
	Sun, 27 Sep 2026 21:05:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAw3s-0000000Grl1-1vC3
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 21:05:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8185060052;
	Sun, 27 Sep 2026 21:05:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A632B1F000FF;
	Sun, 27 Sep 2026 21:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790543127;
	bh=E56r9AJFQyJKksoqgtO02DwFpMWfx3pLf3SSN9eIVNQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MTvn3IuLLUwBvTGDSZ18ifxFNqKvbYU+Tm5atPKmxIf4xtaJOcXU5yvtUnQ87316u
	 E17GBVmCfqpmUqe8Xamuv5mApqzdWj3l3eI9snvqK2gxPWTFd0uFYL531+E4Yjl29/
	 WuQsQetvSts80GP+aVCaCUEU2pfVDmjYsx61RsRH8Ne2DncsLJ8A2prJIxlwIWfjC9
	 wrE/UwOeLj0onzx6VsCZqt2bkH1xmlhnrhPu2cRgH/JSkBLZ5Gubsp2gjV7TlQRirL
	 fWX/yB1sid244jHR8asdcbzktyKLKa8kQ+nZfXNBrw2NVXRCQY1tqlBRQOMTXfH7ix
	 ePuWNeJYlxGkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 10/13] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, robh@kernel.org, lee@kernel.org
In-Reply-To: <20260927-zx29clk-v13-10-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-10-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 21:05:26 +0000
Message-Id: <20260927210526.A632B1F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGNsazogengyOTc1MjB2
Mzogb3JwaGFuZWQgZmlybXdhcmUgY2xvY2tzIGR1ZSB0byBOVUxMIGRldi0+b2Zfbm9kZQotIFtM
b3ddIGNsazogengyOTc1MjB2MzogY29tcGlsYXRpb24gZmFpbHVyZSBkdWUgdG8gY29uc3QgaW5p
dGlhbGl6ZXJzCi0tCgpjb21taXQgMWYwNWQ1ZTgwMmZjN2MyNzY1ZGY3YWE5YjBhMWFjNTRmZjEw
MGU0NQpBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+
CgogICAgY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1MjB2MyBtYXRyaXgg
Y2xvY2tzCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgY2xvY2sgY29udHJvbGxlciBkcml2ZXIg
Zm9yIHRoZSB6eDI5NzUyMHYzIG1hdHJpeApjbG9ja3MsIGNvdmVyaW5nIGhpZ2gtc3BlZWQgZGV2
aWNlcyBsaWtlIENQVSwgRE1BLCBSQU0sIFNESU8sIGFuZCBFdGhlcm5ldC4KSXQgZGVmaW5lcyBm
aXhlZCBkaXZpZGVycywgbXV4ZXMsIGFuZCBnYXRlcyBmb3IgdGhlIG1hdHJpeCBjbG9jayB0cmVl
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMgYi9kcml2
ZXJzL2Nsay96dGUvY2xrLXp4Mjk3NTIwdjMuYwo+IGluZGV4IDY4YmZlYWI4NGQ3NDUuLmQ1Zjhi
YzQwNjRiZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMK
PiArKysgYi9kcml2ZXJzL2Nsay96dGUvY2xrLXp4Mjk3NTIwdjMuYwpbIC4uLiBdCj4gQEAgLTgx
Miw2ICs4MTIsNTI4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgenhfY2xrX2RhdGEgengyOTc1MjB2
M190b3BjbGtfZGF0YSA9IHsKWyAuLi4gXQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHp4X3BhcmVu
dF9kZXNjIG1hdHJpeF91bmsgPSBQQVJFTlRfRlcoIndjbGstb3NjMjZtIik7ClsgLi4uIF0KPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCB6eF9jbG9jayB6eDI5NzUyMHYzX21hdHJpeF9jbG9ja3NbXSA9
IHsKWyAuLi4gXQo+ICsJW1pYX0NMS19DUFVfV0NMS10gICAgICAgICA9IEdBVEUoImNwdS13Y2xr
IiwgUEFSRU5UX0lEKFpYX0NMS19DUFVfTVVYKSwgMHgyNCwgMSwKPiArCQkJCQkgQ0xLX0lTX0NS
SVRJQ0FMKSwKPiArCVtaWF9DTEtfQ1BVX1BDTEtdICAgICAgICAgPSBHQVRFKCJjcHUtcGNsayIs
IGNsa19tYWluWzBdLCAweDI0LCAyLCBDTEtfSVNfQ1JJVElDQUwpLAoKW1NldmVyaXR5OiBMb3dd
CklzIHRoaXMgY29kZSB2YWxpZCBDPwoKVGhlIGFycmF5IGVsZW1lbnQgY2xrX21haW5bMF0gaXMg
YmVpbmcgdXNlZCBhcyBhIHN0YXRpYyBzdHJ1Y3QgaW5pdGlhbGl6ZXIuCkluIEMsIHVubGlrZSBD
KyssIGFycmF5IGVsZW1lbnRzIGFuZCBjb25zdCB2YXJpYWJsZXMgYXJlIG5vdCBjb25zdGFudApl
eHByZXNzaW9ucywgd2hpY2ggd2lsbCBwcm9kdWNlIGEgZmF0YWwgImluaXRpYWxpemVyIGVsZW1l
bnQgaXMgbm90IGNvbnN0YW50IgpidWlsZCBlcnJvci4KClsgLi4uIF0KPiArCVtaWF9DTEtfUERD
RkdfV0NMS10gICAgICAgPSBHQVRFKCJwZGNmZy13Y2xrIiwgbWF0cml4X3VuaywgMHg4OCwgMCwg
Q0xLX0lTX0NSSVRJQ0FMKSwKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgaW5pdGlhbGl6ZXIg
YWxzbyBmYWlsIHRvIGJ1aWxkPwoKU2ltaWxhciB0byB0aGUgYWJvdmUsIG1hdHJpeF91bmsgaXMg
YSBjb25zdCB2YXJpYWJsZSBhbmQgY2Fubm90IGJlIHVzZWQKYXMgYSBzdGF0aWMgc3RydWN0IGlu
aXRpYWxpemVyIGluIEMuCgpbIC4uLiBdCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgenhfY2xrX2Rh
dGEgengyOTc1MjB2M19tYXRyaXhjbGtfZGF0YSA9IHsKPiArCS5pbml0ID0gengyOTc1MjB2M19t
YXRyaXhfaW5pdCwKPiArCS5jbG9ja3MgPSB6eDI5NzUyMHYzX21hdHJpeF9jbG9ja3MsCj4gKwku
bnVtX2Nsb2NrcyA9IEFSUkFZX1NJWkUoengyOTc1MjB2M19tYXRyaXhfY2xvY2tzKSwKPiArCS5l
eHBvcnRzID0gengyOTc1MjB2M19tYXRyaXhfZXhwb3J0cywKPiArCS5udW1fZXhwb3J0cyA9IEFS
UkFZX1NJWkUoengyOTc1MjB2M19tYXRyaXhfZXhwb3J0cyksCj4gK307Cj4gKwo+ICBzdGF0aWMg
aW50IGNsa196eDI5NzUyMHYzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
IHsKPiAgCWNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2VfaWQgKmlkID0gcGxhdGZvcm1fZ2V0
X2RldmljZV9pZChwZGV2KTsKPiAgCj4gIAlpZiAoIWlkKQo+ICAJCXJldHVybiAtRU5PREVWOwo+
ICAKPiAgCXJldHVybiB6eF9jbGtfY29tbW9uX3Byb2JlKCZwZGV2LT5kZXYsIHBkZXYtPmRldi5w
YXJlbnQtPm9mX25vZGUsCj4gIAkJCQkgICAoY29uc3Qgc3RydWN0IHp4X2Nsa19kYXRhICopaWQt
PmRyaXZlcl9kYXRhKTsKPiAgfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBsZWF2
ZSBhbGwgZmlybXdhcmUtYmFzZWQgY2xvY2tzIG9ycGhhbmVkPwoKVGhlIHBhcmVudCdzIG9mX25v
ZGUgaXMgcGFzc2VkIGV4cGxpY2l0bHkgdG8genhfY2xrX2NvbW1vbl9wcm9iZSgpIGZvcgp2YWxp
ZGF0aW9uIGFuZCBwcm92aWRlciByZWdpc3RyYXRpb24sIGJ1dCBpdCBpcyBuZXZlciBhc3NpZ25l
ZCB0bwpwZGV2LT5kZXYub2Zfbm9kZS4gU2luY2UgdGhlIG1hdHJpeCBjbG9jayBjb250cm9sbGVy
IGlzIGFuIE1GRCBjaGlsZCBkZXZpY2UKd2l0aG91dCBhbiBvZl9jb21wYXRpYmxlLCBpdHMgcGRl
di0+ZGV2Lm9mX25vZGUgd2lsbCBiZSBOVUxMLgoKV2hlbiByZWdpc3RlcmluZyB0aGUgY2xvY2tz
LCB0aGUgQ29tbW9uIENsb2NrIEZyYW1ld29yayByZWxpZXMgb24gZGV2LT5vZl9ub2RlCnRvIHJl
c29sdmUgZndfbmFtZSBwYXJlbnRzLiBGb3IgZXhhbXBsZSwgaW4genhfY2xrX3JlZ2lzdGVyX2Zp
eGVkX2RpdigpIGluCmRyaXZlcnMvY2xrL3p0ZS9jbGstenguYzoKCgljYXNlIFpYX1BBUkVOVF9G
VzoKCQlyZXR1cm4gZGV2bV9jbGtfaHdfcmVnaXN0ZXJfZml4ZWRfZmFjdG9yX2Z3bmFtZShkZXYs
IE5VTEwsCgkJCQlkZXNjLT5uYW1lLCBwLT5md19uYW1lLAoJCQkJQ0xLX1NFVF9SQVRFX1BBUkVO
VCwgMSwgZGVzYy0+ZGl2KTsKCkJlY2F1c2UgZGV2LT5vZl9ub2RlIGlzIE5VTEwsIGNsa19jb3Jl
X2ZpbGxfcGFyZW50KCkncyBvZl9jbGtfZ2V0X2J5X25hbWUoKQp3aWxsIGluc3RhbnRseSByZXR1
cm4gLUVOT0VOVC4KClNob3VsZCBwZGV2LT5kZXYub2Zfbm9kZSBiZSBhc3NpZ25lZCBiZWZvcmUg
cHJvYmluZyBzbyB0aGUgQ0NGIGNhbiByZXNvbHZlCnRoZSBjbG9jayB0cmVlPwoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyNy16
eDI5Y2xrLXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/cGFydD0xMAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
