Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FB1CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 21:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPEjRGZU42gKGpjdusLC79lfMyqaaIjoCCYNOFt0dv8=; b=ZHxWsSQGIR7Ew/
	fALY0+oRmAuS/NoHTS734ieYVsvHovFmV0yedhh8GupDGdwpHbaZTKczBhoKWBIt7JLPb3KYzn6gx
	elbj+bPXUTcrNb2j4HzWQIbGeqzi8BxKI68nOGUEYVKNMqWOZm6VZvJz9sSrA25JJne6nW5Tzt/c3
	zMuFxIMUpoSM7J28neFMxXKwUH62Crqp0jsgNj4JXuuKX5i/BhbOlLmEEeoapaENjY4HLZnXXVNzg
	dSmrf4Ib5m9brIN9y1KGQu1Oz/d+XYRtsMhau1gbVqodnhjSPU0WxFzFLBeyN/uBGMjTHMYmS3T93
	yseLEof3bBMUpRgG/6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9Jg-0000000BbTg-08qX;
	Fri, 12 Jun 2026 21:21:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9Je-0000000BbTa-4A8u
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 21:21:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 690B641AAC;
	Fri, 12 Jun 2026 21:21:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC1A1F000E9;
	Fri, 12 Jun 2026 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781299286;
	bh=xIOPdx0/bo1vXMdraBaUcQS/aCrDyVbwYBfVfqbqu34=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WOFdOduAhd2gmiGCufYrGjsSHCVHRLyG9dosDdrZWlo8jJmKqEhPiL9+Bc9jAtOl0
	 gsHf7WnwFuXMsvs8dTwwVXzo8jTPRTK6PSwwnXq37ZpSXITVCXNOxik3qKR4M9m78v
	 749ZosodVHl3OxcrZW2Po9g5n3XdFCUbcH+c5AvGUcj1p89zSRNjhWvYL9NpFDingY
	 j/9YfvTHfq85kZFrUdQZQJuP2mJXaz0NjvCtTMrP3nb6tYokKAoDeutnXFMMpLAzDs
	 uQu2XGX9wXTSOqv/Evr+jdB6rp14bX1C0NRt4wzC/IBKQGig8up9oSD/ty+WIE5X0B
	 bjKmRitQvSWrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 5/8] soc: fsl: guts: make fsl_soc_data
 available after fsl_guts_init()
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612210859.266759-6-vladimir.oltean@nxp.com>
References: <20260612210859.266759-6-vladimir.oltean@nxp.com>
Date: Fri, 12 Jun 2026 21:21:25 +0000
Message-Id: <20260612212125.EDC1A1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBpb21lbSBtYXBw
aW5ncyBgc29jLmRjZmdfY2NzcmAgYW5kIGBzb2MuZGNmZ19kY3NyYCBhcmUgbGVha2VkIG9uIG11
bHRpcGxlIGVycm9yIHBhdGhzIGR1cmluZyBpbml0aWFsaXphdGlvbi4KLSBbSGlnaF0gVGhlIGds
b2JhbCBgc29jLmRhdGFgLCBgc29jLmRjZmdfY2NzcmAgYW5kIGBzb2MuZGNmZ19kY3NyYCBwb2lu
dGVycyBhcmUgbm90IGNsZWFyZWQgb24gZXJyb3IgcGF0aHMsIGxlYWRpbmcgdG8gZGFuZ2xpbmcg
cG9pbnRlcnMsIFVzZS1BZnRlci1GcmVlLCBhbmQgdW5pbml0aWFsaXplZCBzcGlubG9jayBhY2Nl
c3MuCi0tCgpjb21taXQgOWY0NTAxNWQ3MDJkMmY0Y2E0MWQ5MzAxNWMyM2IzZDk5NTA3NDNhNwpB
dXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+Cgpzb2M6IGZz
bDogZ3V0czogbWFrZSBmc2xfc29jX2RhdGEgYXZhaWxhYmxlIGFmdGVyIGZzbF9ndXRzX2luaXQo
KQoKSW4gYSBmdXR1cmUgY2hhbmdlLCBzdHJ1Y3QgZnNsX3NvY19kYXRhIHdpbGwgYmUgZXh0ZW5k
ZWQgd2l0aCBtZXRob2RzCmZvciBwZXJmb3JtaW5nIFJDVyBvdmVycmlkZS4KClNpbmNlIHRoaXMg
d2lsbCBiZSBwZXJmb3JtZWQgZnJvbSBhIGNhbGxpbmcgY29udGV4dCBvdXRzaWRlCmZzbF9ndXRz
X2luaXQoKSwgd2UgbmVlZCB0byBrZWVwIHRyYWNrIG9mIHRoZSBzb2NfZGF0YSB0aGF0IHdlIGRl
dGVybWluZQphdCBmc2xfZ3V0c19pbml0KCkgdGltZSwgc28gd2UgY2FuIHJlZmVyZW5jZSBpdCBs
YXRlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMgYi9kcml2ZXJzL3Nv
Yy9mc2wvZ3V0cy5jCj4gaW5kZXggMTQ5NGI1NDViYmI0Ny4uOWYyYWZmMDdhMjc0NCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4gKysrIGIvZHJpdmVycy9zb2MvZnNsL2d1
dHMuYwo+IEBAIC0yNDMsNyArMjQzLDcgQEAgc3RhdGljIGludCBfX2luaXQgZnNsX2d1dHNfaW5p
dCh2b2lkKQo+ICAJbnAgPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIGZz
bF9ndXRzX29mX21hdGNoLCAmbWF0Y2gpOwo+ICAJaWYgKCFucCkKPiAgCQlyZXR1cm4gMDsKPiAt
CXNvY19kYXRhID0gbWF0Y2gtPmRhdGE7Cj4gKwlzb2MuZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICAK
PiAgCXNvYy5kY2ZnX2Njc3IgPSBvZl9pb21hcChucCwgRENGR19DQ1NSKTsKPiAgCWlmICghc29j
LmRjZmdfY2NzcikgewoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBsZWFrIHRoZSBz
b2MuZGNmZ19jY3NyIGFuZCBzb2MuZGNmZ19kY3NyIG1hcHBpbmdzIG9uIGVycm9yIHBhdGhzPwoK
TG9va2luZyBhdCBmc2xfZ3V0c19pbml0KCksIGlmIHRoZSBzb2NfZGV2X2F0dHIgYWxsb2NhdGlv
biBmYWlscywgdGhlIGZ1bmN0aW9uCnJldHVybnMgZGlyZWN0bHksIGxlYWtpbmcgdGhlIG1hcHBp
bmdzOgoKZnNsX2d1dHNfaW5pdCgpIHsKICAgIC4uLgoJc29jX2Rldl9hdHRyID0ga3phbGxvY19v
YmooKnNvY19kZXZfYXR0cik7CglpZiAoIXNvY19kZXZfYXR0cikKCQlyZXR1cm4gLUVOT01FTTsK
ICAgIC4uLgp9CgpJZiBzb2NfZGV2aWNlX3JlZ2lzdGVyKCkgZmFpbHMsIHRoZSBjb2RlIGp1bXBz
IHRvIHRoZSBlcnIgbGFiZWwsIHdoaWNoIGJ5cGFzc2VzCnRoZSBlcnJfbm9tZW0gYmxvY2sgd2hl
cmUgaW91bm1hcCgpIGlzIGNhbGxlZCwgYWxzbyBsZWFraW5nIHRoZSBtYXBwaW5nczoKCmZzbF9n
dXRzX2luaXQoKSB7CiAgICAuLi4KCXNvY19kZXYgPSBzb2NfZGV2aWNlX3JlZ2lzdGVyKHNvY19k
ZXZfYXR0cik7CglpZiAoSVNfRVJSKHNvY19kZXYpKSB7CgkJcmV0ID0gUFRSX0VSUihzb2NfZGV2
KTsKCQlnb3RvIGVycjsKCX0KICAgIC4uLgplcnJfbm9tZW06CglyZXQgPSAtRU5PTUVNOwoKCWlv
dW5tYXAoc29jLmRjZmdfY2Nzcik7CmVycjoKICAgIC4uLgp9CgpDb3VsZCB0aGUgZXJyb3IgcGF0
aHMgYmUgdXBkYXRlZCB0byBlbnN1cmUgaW91bm1hcCgpIGlzIGNhbGxlZCB3aGVuIHRoZXNlCmZh
aWx1cmVzIG9jY3VyPwoKW1NldmVyaXR5OiBIaWdoXQpBcmUgdGhlIGdsb2JhbCBzb2MuZGF0YSwg
c29jLmRjZmdfY2NzciwgYW5kIHNvYy5kY2ZnX2Rjc3IgcG9pbnRlcnMgY2xlYXJlZCBvbgplcnJv
ciBwYXRocz8KCkluIGZzbF9ndXRzX2luaXQoKSwgZ2xvYmFsIHN0YXRlIGlzIHNldCBlYXJseToK
CmZzbF9ndXRzX2luaXQoKSB7CiAgICAuLi4KCXNvYy5kYXRhID0gbWF0Y2gtPmRhdGE7CgoJc29j
LmRjZmdfY2NzciA9IG9mX2lvbWFwKG5wLCBEQ0ZHX0NDU1IpOwogICAgLi4uCn0KCklmIGFuIGVy
cm9yIG9jY3VycyBsYXRlciwgdGhlIG1lbW9yeSBpcyB1bm1hcHBlZCBidXQgdGhlIGdsb2JhbCBw
b2ludGVycyBhcmUKbm90IGNsZWFyZWQgdG8gTlVMTDoKCmZzbF9ndXRzX2luaXQoKSB7CiAgICAu
Li4KZXJyX25vbWVtOgoJcmV0ID0gLUVOT01FTTsKCWlmIChzb2MuZGNmZ19kY3NyKQoJCWlvdW5t
YXAoc29jLmRjZmdfZGNzcik7Cglpb3VubWFwKHNvYy5kY2ZnX2Njc3IpOwogICAgLi4uCn0KCkV4
dGVybmFsIGNhbGxlcnMgY2hlY2tpbmcgaWYgdGhlIGRyaXZlciBpcyBpbml0aWFsaXplZCB2aWEg
aWYgKCFzb2MuZGF0YSkgb3IKaWYgKCFzb2MuZGNmZ19kY3NyKSBjb3VsZCBieXBhc3MgdGhlIGNo
ZWNrcyBhbmQgYWNjZXNzIHRoZSB1bm1hcHBlZCBJTyBtZW1vcnkKb3IgYW4gdW5pbml0aWFsaXpl
ZCBzcGlubG9jazoKCmZzbF9ndXRzX2xhbmVfc2V0X21vZGUoKSB7CiAgICAuLi4KCXNwaW5fbG9j
aygmc29jLnJjd2NyX2xvY2spOwoKCWlmIChzb2MuZGF0YS0+c2VyZGVzX2luaXRfcmN3Y3IpCgkJ
c29jLmRhdGEtPnNlcmRlc19pbml0X3Jjd2NyKHNlcmRlc19pZHgpOwoKCWZzbF9ndXRzX3Jtdyhv
dmVycmlkZS5vZmZzZXQsIG92ZXJyaWRlLnZhbCA8PCBfX2JmX3NoZihvdmVycmlkZS5tYXNrKSwK
CQkgICAgIG92ZXJyaWRlLm1hc2spOwogICAgLi4uCn0KCkNvdWxkIHRoZSBlcnJvciBwYXRocyBi
ZSB1cGRhdGVkIHRvIHNldCB0aGVzZSBwb2ludGVycyB0byBOVUxMPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxMjIxMDg1OS4y
NjY3NTktMS12bGFkaW1pci5vbHRlYW5AbnhwLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
