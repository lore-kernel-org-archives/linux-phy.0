Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B52CD98CF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 21:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQq/HXkJnG/6Py3wUDHbdlwvaVjz+v9HOYiYC/EGTRs=; b=uB/nRbv9KeOoM8
	HCDzpRPzdl3+XkqohiTsQW1Hf4ORxUl3sfKmnGAW3A0JHFhoPgsaZpLAJ7tEODOcmDRs2FE9di6OL
	JkN9ZJIEf+KzwoN5gpZLfPZNFFUqnRv1+AAZaORySpLph3gt5BwC+H2AF3aONXbcC75ZncIRIky7N
	54YdCvYJmDUhxWL+VBZGVM85SeO7udyQLszL6hBLp0clMBY+/xYNjcgZ6ZuyArASwOGwEaPMSbPTo
	zTfkrybLDIUMeNr6HpyXKpG2FAqNu7H7bmc7HrmUXCGS5TDhz0vcdimohqZuDEE5La9n1ctuMcS/C
	aMYhHpwXMMhIHoB6Uxlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9GU-0000000BbKa-48EF;
	Fri, 12 Jun 2026 21:18:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9GT-0000000BbJx-34df
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 21:18:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CA7BD601F0;
	Fri, 12 Jun 2026 21:18:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FC841F00A3F;
	Fri, 12 Jun 2026 21:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781299088;
	bh=B9RZRB9H4X0305K+mVhn7TcTK57e/5Xqb9XkO7I15M4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bblrr6VOswsvVqn1qBQ0cwJzZfEBA4MtnJUT+OJfShGt19Ax6AZE/MyHL1ImThnCV
	 8KQnvqJvcoXpwd6HsrNBkhUh7D54izrlt7Si4EFq5VPAYo/tXdhrvpV6WV/VHdba9t
	 ynEyCaY4sGVYw1bv8rtuNqg6QV2ZhCqHcy8jhhjPsB+wS3OnW1vRdT+UlhrHxfTMvQ
	 ndrUNVoul9H3rjKkVuPu8DeDKQw06QNyF8K6mmMDarjAF6vTOAsbgVffKGMZLl9pNv
	 4limAF/p7BAunrmo7vD2ZQZnxMJCpsA6uqlH+IkqCvrHWTzPYMQQlVYSXm5wGUFhox
	 rDDk/cH9uR5Ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 2/8] soc: fsl: guts: add a global structure
 to hold state
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260612210859.266759-3-vladimir.oltean@nxp.com>
References: <20260612210859.266759-3-vladimir.oltean@nxp.com>
Date: Fri, 12 Jun 2026 21:18:07 +0000
Message-Id: <20260612211808.1FC841F00A3F@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBnbG9iYWwgYHNv
Yy5kY2ZnX2Njc3JgIHBvaW50ZXIgaXMgbm90IGNsZWFyZWQgYWZ0ZXIgYmVpbmcgdW5tYXBwZWQg
b24gdGhlIGVycm9yIHBhdGgsIHJlc3VsdGluZyBpbiBhIGRhbmdsaW5nIHBvaW50ZXIuCi0gW01l
ZGl1bV0gVGhlIGdsb2JhbGx5IG1hcHBlZCBgc29jLmRjZmdfY2NzcmAgaXMgbGVha2VkIG9uIG11
bHRpcGxlIGVycm9yIHBhdGhzIGR1cmluZyBpbml0aWFsaXphdGlvbi4KLS0KCmNvbW1pdCAyODky
N2E2YzUwZGI5YWRjN2RkYjhiMTMxZDVlMDhhMzY2Mjk4ZmIzCkF1dGhvcjogSW9hbmEgQ2lvcm5l
aSA8aW9hbmEuY2lvcm5laUBueHAuY29tPgoKc29jOiBmc2w6IGd1dHM6IGFkZCBhIGdsb2JhbCBz
dHJ1Y3R1cmUgdG8gaG9sZCBzdGF0ZQoKQWRkIHRoZSBmc2xfc29jX2d1dHMgc3RydWN0dXJlIGlu
IG9yZGVyIHRvIHBhc3MgaW5mb3JtYXRpb24gbGlrZSBiYXNlCmFkZHJlc3NlcywgZW5kaWFubmVz
cyBldGMgYmV0d2VlbiB0aGUgaW5pdCB0aW1lIGFuZCB0aGUgcnVudGltZQpvcGVyYXRpb25zLiBU
aGVyZSBpcyBubyBwb2ludCBpbiBtYXBwaW5nIGFuZCB1bm1hcHBpbmcgdGhlIERDRkcgQ0NTUgpz
cGFjZSBldmVyeSB0aW1lIHdlIG5lZWQgdG8gbWFrZSBhIHJlYWQsIGp1c3QgbWFwIGl0IG9uY2Ug
YW5kIGtlZXAgaXRzCnJlZmVyZW5jZSBpbiB0aGlzIG5ldyBnbG9iYWwgc3RydWN0dXJlLgoKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL2d1dHMuYyBiL2RyaXZlcnMvc29jL2ZzbC9ndXRz
LmMKPiBpbmRleCBmODdlZTQ3YzE1MDM1Li5hMGE1MmE1NjAzYTVmIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvc29jL2ZzbC9ndXRzLmMKPiArKysgYi9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCgpbIC4u
LiBdCgo+IEBAIC0xOTksMTggKzIwMiwxNyBAQCBzdGF0aWMgaW50IF9faW5pdCBmc2xfZ3V0c19p
bml0KHZvaWQpCj4gIAkJcmV0dXJuIDA7Cj4gIAlzb2NfZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICAK
PiAtCXJlZ3MgPSBvZl9pb21hcChucCwgRENGR19DQ1NSKTsKPiAtCWlmICghcmVncykgewo+ICsJ
c29jLmRjZmdfY2NzciA9IG9mX2lvbWFwKG5wLCBEQ0ZHX0NDU1IpOwo+ICsJaWYgKCFzb2MuZGNm
Z19jY3NyKSB7Cj4gIAkJb2Zfbm9kZV9wdXQobnApOwo+ICAJCXJldHVybiAtRU5PTUVNOwo+ICAJ
fQo+ICAKPiAtCWxpdHRsZV9lbmRpYW4gPSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJsaXR0
bGUtZW5kaWFuIik7Cj4gLQlpZiAobGl0dGxlX2VuZGlhbikKPiAtCQlzdnIgPSBpb3JlYWQzMigm
cmVncy0+c3ZyKTsKPiArCXNvYy5saXR0bGVfZW5kaWFuID0gb2ZfcHJvcGVydHlfcmVhZF9ib29s
KG5wLCAibGl0dGxlLWVuZGlhbiIpOwo+ICsJaWYgKHNvYy5saXR0bGVfZW5kaWFuKQo+ICsJCXN2
ciA9IGlvcmVhZDMyKCZzb2MuZGNmZ19jY3NyLT5zdnIpOwo+ICAJZWxzZQo+IC0JCXN2ciA9IGlv
cmVhZDMyYmUoJnJlZ3MtPnN2cik7Cj4gLQlpb3VubWFwKHJlZ3MpOwo+ICsJCXN2ciA9IGlvcmVh
ZDMyYmUoJnNvYy5kY2ZnX2Njc3ItPnN2cik7Cj4gIAlvZl9ub2RlX3B1dChucCk7Cj4gIAo+ICAJ
LyogUmVnaXN0ZXIgc29jIGRldmljZSAqLwoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIHRoZSBp
b3VubWFwKCkgd2FzIHJlbW92ZWQgaGVyZSB0byBrZWVwIHNvYy5kY2ZnX2Njc3IgbWFwcGVkLCB3
aGF0CmhhcHBlbnMgaWYgdGhlIHN1YnNlcXVlbnQgc29jX2Rldl9hdHRyIGFsbG9jYXRpb24gZmFp
bHM/Cgpmc2xfZ3V0c19pbml0KCkKCS8qIFJlZ2lzdGVyIHNvYyBkZXZpY2UgKi8KCXNvY19kZXZf
YXR0ciA9IGt6YWxsb2Nfb2JqKCpzb2NfZGV2X2F0dHIpOwoJaWYgKCFzb2NfZGV2X2F0dHIpCgkJ
cmV0dXJuIC1FTk9NRU07CgpEb2VzIHRoaXMgZGlyZWN0IHJldHVybiBsZWFrIHRoZSBzb2MuZGNm
Z19jY3NyIG1hcHBpbmc/CgpBbHNvLCBpZiBzb2NfZGV2aWNlX3JlZ2lzdGVyKCkgZmFpbHMgbGF0
ZXIgaW4gdGhpcyBmdW5jdGlvbiwgdGhlIGNvZGUgZG9lcyBhCmdvdG8gZXJyOgoKCXNvY19kZXYg
PSBzb2NfZGV2aWNlX3JlZ2lzdGVyKHNvY19kZXZfYXR0cik7CglpZiAoSVNfRVJSKHNvY19kZXYp
KSB7CgkJcmV0ID0gUFRSX0VSUihzb2NfZGV2KTsKCQlnb3RvIGVycjsKCX0KCkJlY2F1c2UgdGhp
cyBieXBhc3NlcyB0aGUgZXJyX25vbWVtIGxhYmVsLCBkb2VzIGl0IGFsc28gbGVhayB0aGUKc29j
LmRjZmdfY2NzciBtYXBwaW5nPwoKPiBAQCAtMjYzLDYgKzI2NSw4IEBAIHN0YXRpYyBpbnQgX19p
bml0IGZzbF9ndXRzX2luaXQodm9pZCkKPiAgCj4gIGVycl9ub21lbToKPiAgCXJldCA9IC1FTk9N
RU07Cj4gKwo+ICsJaW91bm1hcChzb2MuZGNmZ19jY3NyKTsKCltTZXZlcml0eTogSGlnaF0KU2lu
Y2Ugc29jIGlzIGEgc3RhdGljIGdsb2JhbCBzdHJ1Y3R1cmUsIGRvZXMgY2FsbGluZyBpb3VubWFw
KCkgaGVyZSBsZWF2ZQpzb2MuZGNmZ19jY3NyIHdpdGggYSBkYW5nbGluZywgbm9uLU5VTEwgcG9p
bnRlcj8KCklmIGEgY2xpZW50IGRyaXZlciBsYXRlciBhdHRlbXB0cyB0byB1c2UgdGhlIEFQSSBh
bmQgY2hlY2tzIHRoaXMgcG9pbnRlcgphZnRlciBhbiBpbml0aWFsaXphdGlvbiBmYWlsdXJlLCBj
b3VsZCBpdCBsZWFkIHRvIGEga2VybmVsIG9vcHM/Cgo+ICBlcnI6Cj4gIAlrZnJlZShzb2NfZGV2
X2F0dHItPmZhbWlseSk7Cj4gIAlrZnJlZShzb2NfZGV2X2F0dHItPnNvY19pZCk7CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjEy
MjEwODU5LjI2Njc1OS0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9MgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
