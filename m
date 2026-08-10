Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57991C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfekJizjoh/mGRKUA3DTnUY9bjdnArAODUZmyY15brQ=; b=11OClJX3gJfCSL
	PY3sl/HEN5xKfZEZbZrKeeFukXEcOn4ONsBwTxt3DcmeXrcEA7iPxv5ZIWY07+8Na/qASBHiPqJhy
	mn1xvlczfNTL1j9fm02UKhtVsIt8gXWIloBJp+EPSseqS1R8DG4jINBzR9lvr6OZGWczD0x0eA1BP
	G5aLFSf/fzCDUyqHc/IM80jDQYM/c6NTYVYrq4jnVnfuNaU7r4pVGF6Jatz8yll2udmvdWbnR6Mfl
	8AuGzmtSndWMWey+uzMi6HTmlI7ft9xwGkulDXUY8emzX+0yoXkZGMGMaFxPv+zgW9wPI8Go/29H7
	YdG0gTXLIoxkcWwZMHeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKCu-0000000BBHT-1Awu;
	Mon, 10 Aug 2026 07:14:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKCs-0000000BBH7-48rI
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:13:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 95FE843481;
	Mon, 10 Aug 2026 07:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B5A41F000E9;
	Mon, 10 Aug 2026 07:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786346038;
	bh=NmJ7Agw1Vc7vCXHaea9cwMW6pGMr3UBnZbfWkK88nVg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mzmeZa30AIwPlIKZASbx4lcN7vdVQQ9bQsUIXYhhhIhqcgp+Fzvkp736jw8Uev1t4
	 JwIkSLrq6dvLQPT/kNI1JXUAFAFPoC4rBew8ag/+d8cSUVtbqdIL3r4Ebiv5BG20Ca
	 E+Eg62Xm4H36ZGUL7opJPNrhJgd9ssGKrvLgCuyIS58rqJEKeNB7dwvgzetDCf/SLg
	 XbS1rzLYIMs747XaFkY1sNVlQx2rg0qU6EyuE07Sjxyzezupc6ZVOwqbRKhwfJiVv0
	 gDxpgDUUuBVYlykSrZZIdbhHXlp2qIXQJtIX37ehwLQRVbDAewzEyuykuy5hxjMdcH
	 x2Ag3kBk/hESA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 07/12] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, mfd@lists.linux.dev, devicetree@vger.kernel.org, lee@kernel.org, robh@kernel.org
In-Reply-To: <20260810-zx29clk-v10-7-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-7-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:13:57 +0000
Message-Id: <20260810071357.9B5A41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRHVlIHRvIGludGVn
ZXIgZGl2aXNpb24gdHJ1bmNhdGlvbiwgdmFsaWQgUExMIGNvbmZpZ3VyYXRpb25zIGFyZSBmYWxz
ZWx5IHJlamVjdGVkIGR1cmluZyBjbGtfc2V0X3JhdGUoKSwgY2F1c2luZyBmcmVxdWVuY3kgY2hh
bmdlcyB0byBmYWlsIHdoZW4gdGhlIGNhbGN1bGF0ZWQgVkNPIGZhbGxzIHNsaWdodGx5IGJlbG93
IHRoZSBtaW5pbXVtIGxpbWl0LgotLQoKLS0tIFBhdGNoIFs3XTogW1BBVENIIHYxMCAwNy8xMl0g
Y2xrOiB6dGU6IEFkZCB6eCBQTEwgc3VwcG9ydCBpbmZyYXN0cnVjdHVyZSAtLS0KY29tbWl0IDAy
YWQxOGYyMWJiZDliNDFiNWRiZDkxMDQyNWI5MzRlNDhkOGVjZDkKQXV0aG9yOiBTdGVmYW4gRMO2
c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKY2xrOiB6dGU6IEFkZCB6eCBQTEwg
c3VwcG9ydCBpbmZyYXN0cnVjdHVyZQoKVGhpcyBjb21taXQgYWRkcyBQTEwgc3VwcG9ydCBpbmZy
YXN0cnVjdHVyZSBmb3IgWlRFIFpYLXNlcmllcyBwbGF0Zm9ybXMuCkl0IGltcGxlbWVudHMgdGhl
IHN0YW5kYXJkIGNsb2NrIEFQSSBvcGVyYXRpb25zIGluY2x1ZGluZyByYXRlIGNhbGN1bGF0aW9u
LApwYXJlbnQgc2VsZWN0aW9uLCBhbmQgY29uZmlndXJhdGlvbiBvZiBmcmFjdGlvbmFsIGFuZCBw
b3N0IGRpdmlkZXJzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvenRlL3BsbC16eC5jIGIv
ZHJpdmVycy9jbGsvenRlL3BsbC16eC5jCj4gaW5kZXggZmM3NmM2NTI0YTE2My4uZThkNTdkZDEz
ODZmMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay96dGUvcGxsLXp4LmMKPiArKysgYi9kcml2
ZXJzL2Nsay96dGUvcGxsLXp4LmMKClsgLi4uIF0KCj4gK3N0YXRpYyB1MzIgengyOV9wbGxfY2Fs
Y192YWx1ZXMoY29uc3Qgc3RydWN0IHp4MjlfY2xrX3BsbCAqcGxsLCB1bnNpZ25lZCBsb25nIHBh
cmVudF9yYXRlLAo+ICsJCQkJdW5zaWduZWQgbG9uZyByYXRlLCB1bnNpZ25lZCBsb25nIG1pbl9y
YXRlLCB1bnNpZ25lZCBsb25nIG1heF9yYXRlKQo+ICt7CgpbIC4uLiBdCgo+ICsJZm9yIChqID0g
MTsgaiA8PSBwb3N0ZGl2Ml9tYXg7IGorKykgewo+ICsJCWZvciAoaSA9IDE7IGkgPD0gcG9zdGRp
djFfbWF4OyBpKyspIHsKPiArCQkJdTY0IHZjbyA9ICh1NjQpcmF0ZSAqIGkgKiBqOwo+ICsJCQl1
bnNpZ25lZCBsb25nIG91dDsKPiArCj4gKwkJCWlmICh2Y28gPiBaWDI5X1BMTF9WQ09fTUFYX0ZS
RVEgfHwgdmNvIDwgWlgyOV9QTExfVkNPX01JTl9GUkVRKQo+ICsJCQkJY29udGludWU7CgpbU2V2
ZXJpdHk6IE1lZGl1bV0KQ2FuIHRoaXMgc3RyaWN0IGxvd2VyIGJvdW5kIGNoZWNrIHJlamVjdCB2
YWxpZCBjb25maWd1cmF0aW9ucz8gCgpJZiBhIGZyZXF1ZW5jeSBpcyByZXF1ZXN0ZWQgd2hlcmUg
dGhlIGNob3NlbiBkaXZpZGVycyBwcm9kdWNlIGEgVkNPIGF0IG9yCmp1c3QgYWJvdmUgdGhlIDkw
MCBNSHogbWluaW11bSwgaW50ZWdlciBkaXZpc2lvbiB0cnVuY2F0aW9uIG1pZ2h0IGNhdXNlIHRo
ZQpyZWNhbGN1bGF0ZWQgdmNvIHRvIGZhbGwgc2xpZ2h0bHkgYmVsb3cgWlgyOV9QTExfVkNPX01J
Tl9GUkVRLCBmYWxzZWx5CnJlamVjdGluZyB0aGUgY29uZmlndXJhdGlvbi4KClsgLi4uIF0KCj4g
K3N0YXRpYyBpbnQgengyOV9wbGxfc2V0X3JhdGUoc3RydWN0IGNsa19odyAqaHcsIHVuc2lnbmVk
IGxvbmcgcmF0ZSwKPiArCQkJICAgICB1bnNpZ25lZCBsb25nIHBhcmVudF9yYXRlKQo+ICt7Cj4g
KwlzdHJ1Y3QgengyOV9jbGtfcGxsICpwbGwgPSB0b196eDI5X2Nsa19wbGwoaHcpOwo+ICsJdTMy
IHNldHRpbmc7Cj4gKwo+ICsJLyoKPiArCSAqIFRPRE86IEltcGxlbWVudCBncmFkdWFsIFBMTCBy
YXRlIGNoYW5nZS4gUExMcyBjYW4gYmUgY2hhbmdlZCB3aGlsZSB0aGV5IGFyZSBydW5uaW5nIGFu
ZAo+ICsJICogZG93bnN0cmVhbSBoYXJkd2FyZSBpcyBnZW5lcmFsbHkgZmluZSB3aXRoIHRoYXQu
IFRoZSBleGNlcHRpb24gaXMgRFJBTSwgd2hpY2ggcmVhZHMKPiArCSAqIGluY29ycmVjdCB2YWx1
ZXMgaWYgY2hhbmdlZCB0b28gZmFzdC4KPiArCSAqCj4gKwkgKiBDaGFuZ2luZyB0aGUgbXBsbCBy
YXRlIGlzIHBvdGVudGlhbGx5IHVzZWZ1bCBmb3Igb3Zlci91bmRlcmNsb2NraW5nLiBHYXRpbmcg
bXBsbCBpcwo+ICsJICogdW5yZWFsaXN0aWMgYmVjYXVzZSB0b28gbWFueSBkZXZpY2VzIGRlcGVu
ZCBvbiBpdC4KPiArCSAqLwo+ICsJc2V0dGluZyA9IHp4MjlfcGxsX2NhbGNfdmFsdWVzKHBsbCwg
cGFyZW50X3JhdGUsIHJhdGUsIHJhdGUsIHJhdGUpOwo+ICsJaWYgKCFzZXR0aW5nKQo+ICsJCXJl
dHVybiAtRUlOVkFMOwoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgengyOV9wbGxfc2V0X3JhdGUo
KSB1bmV4cGVjdGVkbHkgZmFpbCBoZXJlIGZvciB2YWxpZCByYXRlcyBpdCBwcmV2aW91c2x5CmFk
dmVydGlzZWQgdmlhIHp4MjlfcGxsX2RldGVybWluZV9yYXRlKCk/CgpJZiB0aGUgcmVxdWVzdGVk
IHJhdGUgd2FzIHNsaWdodGx5IHRydW5jYXRlZCBkdWUgdG8gaW50ZWdlciBkaXZpc2lvbiwgcGFz
c2luZwppdCBiYWNrIGludG8gengyOV9wbGxfY2FsY192YWx1ZXMoKSB3aXRoIHN0cmljdCBleGFj
dC1tYXRjaCBib3VuZHMgd2hlcmUKbWluX3JhdGUgYW5kIG1heF9yYXRlIGVxdWFsIHRoZSB0cnVu
Y2F0ZWQgcmF0ZSBtaWdodCB0cmlnZ2VyIHRoZSBtaW5pbXVtIFZDTwpsaW1pdCBjaGVjayBzaG93
biBhYm92ZS4gVGhpcyB3b3VsZCByZXN1bHQgaW4gcmV0dXJuaW5nIC1FSU5WQUwgYW5kIGJyZWFr
aW5nCnRoZSBmcmVxdWVuY3kgY2hhbmdlLgoKPiArCj4gKwlkZXZfZGJnKHBsbC0+ZGV2LCAiJXM6
IFNldHRpbmcgbmV3IGNvbmZpZ3VyYXRpb246IDB4JTA4eFxuIiwgY2xrX2h3X2dldF9uYW1lKGh3
KSwgc2V0dGluZyk7Cj4gKwo+ICsJcmV0dXJuIHJlZ21hcF91cGRhdGVfYml0cyhwbGwtPm1hcCwg
cGxsLT5yZWcsIDB4MDBmZmZmZmYsIHNldHRpbmcpOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLXp4MjljbGstdjEw
LTAtNjM4NDY0OTA3MTJjQGdtYWlsLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
