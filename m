Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF3DC79F9F
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIYUbNisy7R+gwSsUxXqDJH4ns9YztNctgM21veXQoU=; b=Uy9AKTDoGfNzI8
	u0Ilj1DaKGCJlAQ/eCRA35OlFPrm/ErGOYMC6QnkRoZ3KWzoZuJYimmtJ7WMaFt0umEY7lSp4M/5W
	juzd/L/StNJt8OEDk1Cu2kMW59nIB/TttNTLFpka22WwMXU5B8N2YukCollLKpPVKw9kDq1AG91Ge
	8FXgt62Jy2UwtABGwv1oZPy4J8UnLpaXBOa0sOFF92s1khZoyU5uWjxeVCEBpDp7E6p9K7XQX7DNz
	uOyBTqcZ5ONRpxiPnDZbt4KuZZr8cy78GS9wFear/n9P8CqxUOm3npAfAGqNf06BqQB5m9ugq2u/q
	GH3KGeaocDbxUwuy4Sgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Drd-000000055Rh-4B5D;
	Sun, 06 Sep 2026 14:28:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Drc-000000055RV-3z1a
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:28:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F56B43592;
	Sun,  6 Sep 2026 14:28:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A65671F00A3A;
	Sun,  6 Sep 2026 14:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788704936;
	bh=w/ZmBhLbd2wbuX5jnD+b2+29r0xl5zGiTs7r+EGjcVs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Av2oOkHD0y7WI3GuA9nfTGwMJ/ZFwFqVdCLe8fSU81xS2nN1HGulpySA8nH9McoaZ
	 J0IIF1BEP84c95SeXSe7wg3WxXmQJrbeepXkdWyQWnImcSsRaHE40COv/Mx7zGx8A6
	 mAUd23FMlp1QZuiHp/tXoHoP0aRNrs/CC9JW9VpS4BquAqmYyQVGncbrduu+MzciR+
	 gwLpzlkWffJS4VnTsGJA341b1+C1rdHeF0uhBvcrdqFqpRo2O9iKrvJ3XAuGcT+k4V
	 JrAuQI7j7FU7JymAzK40+lXOYnJQK1Z7ChurSQn0cRUtF8EzBw4zSv01tvLR54taol
	 n7bQarMmjcrBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 5/5] media: qcom: camss: Use data-lanes starting at
 1 for new CSIPHY mode
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: linux-clk@vger.kernel.org, media-ci@linuxtv.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
Date: Sun, 06 Sep 2026 14:28:55 +0000
Message-Id: <20260906142855.A65671F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBib3Vu
ZHMgY2hlY2sgZm9yIHBoeXNpY2FsIGxhbmUgaW5kZXggYWdhaW5zdCB0aGUgYWN0aXZlIGxhbmUg
Y291bnQgYnJlYWtzIHNwYXJzZSBsYW5lIGNvbmZpZ3VyYXRpb25zLgotIFtNZWRpdW1dIE1pc3Np
bmcgYHBoeV9leGl0KClgIGNhbGxzIGZvciBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQgUEhZcyBv
biBlcnJvciBwYXRocy4KLS0KCmNvbW1pdCA5ZmZlNGMxMGM2NjZkMDFlMDUyMjMzNDA4MmRmYzhj
ZmMxZTliMjViCkF1dGhvcjogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFy
by5vcmc+CgptZWRpYTogcWNvbTogY2Ftc3M6IFVzZSBkYXRhLWxhbmVzIHN0YXJ0aW5nIGF0IDEg
Zm9yIG5ldyBDU0lQSFkgbW9kZQoKVGhpcyBwYXRjaCB1cGRhdGVzIHRoZSBjYW1zcyBkcml2ZXIg
dG8gc3VwcG9ydCBpbmRleGluZyBkYXRhLWxhbmVzIHN0YXJ0aW5nIGF0CjEgZm9yIHRoZSBuZXcg
Q1NJUEhZIG1vZGUuIEl0IGludHJvZHVjZXMgYSBmbGFnIHRvIGRpZmZlcmVudGlhdGUgYmV0d2Vl
biB0aGUKbGVnYWN5IDAtYmFzZWQgaW5kZXhpbmcgYW5kIHRoZSBuZXcgMS1iYXNlZCBpbmRleGlu
Zywgbm9ybWFsaXppbmcgdGhlIGlucHV0cwpmb3IgdGhlIENTSUQgZGVjb2Rlci4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBpbmRleCA4NDA5N2Q4MmQ5OWM5
Li4wN2IzY2RkY2E1ODQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLmMKPiBAQCAtNDc3Nyw3ICs0Nzc4LDE0IEBAIHN0YXRpYyBpbnQgY2Ftc3NfcGFyc2Vf
ZW5kcG9pbnRfbm9kZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4g
IAo+ICAJZm9yIChpID0gMDsgaSA8IGxuY2ZnLT5udW1fZGF0YTsgaSsrKSB7Cj4gLQkJbG5jZmct
PmRhdGFbaV0ucG9zID0gbWlwaV9jc2kyLT5kYXRhX2xhbmVzW2ldOwo+ICsJCXU4IGxhbmUgPSBt
aXBpX2NzaTItPmRhdGFfbGFuZXNbaV07Cj4gKwo+ICsJCWlmIChsYW5lIDwgbGFuZV9iYXNlIHx8
IGxhbmUgLSBsYW5lX2Jhc2UgPj0gbG5jZmctPm51bV9kYXRhKSB7CltTZXZlcml0eTogSGlnaF0K
RG9lcyB0aGlzIGJvdW5kcyBjaGVjayBlcnJvbmVvdXNseSByZWplY3QgdmFsaWQgc3BhcnNlIGRh
dGEtbGFuZQpjb25maWd1cmF0aW9ucz8KCklmIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVzIG5vbi1j
b250aWd1b3VzIGxhbmVzLCB0aGUgcGh5c2ljYWwgbGFuZSBpbmRleApjYW4gYmUgZ3JlYXRlciB0
aGFuIG9yIGVxdWFsIHRvIHRoZSB0b3RhbCBjb3VudCBvZiBhY3RpdmUgbGFuZXMuIEZvciBleGFt
cGxlLAppZiBkYXRhLWxhbmVzID0gPDAgMj4sIG51bV9kYXRhIGlzIDIsIGJ1dCB0aGUgbGFuZSBp
bmRleCBpcyAyLCB3aGljaCB0cmlnZ2Vycwp0aGUgMiA+PSAyIGNvbmRpdGlvbi4KCldpbGwgdGhp
cyB1bmNvbmRpdGlvbmFsbHkgcmV0dXJuIC1FSU5WQUwgYW5kIGJyZWFrIHRoZSBkZXZpY2UgcHJv
YmUgZm9yIHZhbGlkCnNwYXJzZSBjb25maWd1cmF0aW9ucz8KCj4gKwkJCWRldl9lcnIoZGV2LCAi
aW52YWxpZCBkYXRhLWxhbmUgJXVcbiIsIGxhbmUpOwo+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiAr
CQl9Cj4gKwo+ICsJCWxuY2ZnLT5kYXRhW2ldLnBvcyA9IG1pcGlfY3NpMi0+ZGF0YV9sYW5lc1tp
XSAtIGxhbmVfYmFzZTsKPiAgCQlsbmNmZy0+ZGF0YVtpXS5wb2wgPSBtaXBpX2NzaTItPmxhbmVf
cG9sYXJpdGllc1tpICsgMV07Cj4gIAl9CgpbIC4uLiBdCgpDYW4gaW5pdGlhbGl6ZWQgUEhZIGNs
b2NrcyBhbmQgcmVndWxhdG9ycyBsZWFrIG9uIGVycm9yIHBhdGhzPwoKTG9va2luZyBhdCBjYW1z
c19pbml0X3N1YmRldmljZXMoKToKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy5jOmNhbXNzX2luaXRfc3ViZGV2aWNlcygpIHsKICAgIC4uLgoJZm9yIChpID0gMDsgaSA8
IGNhbXNzLT5yZXMtPmNzaXBoeV9udW07IGkrKykgewogICAgICAgIC4uLgoJCWlmIChyZXQgPCAw
KSB7CgkJCWRldl9lcnIoY2Ftc3MtPmRldiwgImNzaXBoeSAlZCBpbml0IGZhaWxcbiIsCgkJCQly
ZXMtPmNzaXBoeV9yZXNbaV0uY3NpcGh5LmlkKTsKCQkJcmV0dXJuIHJldDsKCQl9Cgl9CiAgICAu
Li4KfQoKW1NldmVyaXR5OiBNZWRpdW1dCklmIG1zbV9jc2lwaHlfc3ViZGV2X2luaXQoKSBmYWls
cyBmb3IgYSBDU0lQSFkgaW5zdGFuY2UgYWZ0ZXIgdGhlIGZpcnN0LCBkb2VzCnRoaXMgZXJyb3Ig
cGF0aCByZXR1cm4gaW1tZWRpYXRlbHkgd2l0aG91dCBjYWxsaW5nIHBoeV9leGl0KCkgdG8gY2xl
YW4gdXAgdGhlCmNsb2NrcyBhbmQgcmVndWxhdG9ycyBmb3IgUEhZcyB0aGF0IHdlcmUgc3VjY2Vz
c2Z1bGx5IGluaXRpYWxpemVkIChmcm9tIGluZGV4CjAgdG8gaS0xKT8KClRoaXMgYWxzbyBhcHBl
YXJzIHRvIGhhcHBlbiBkdXJpbmcgcmVnaXN0cmF0aW9uIGZhbGxiYWNrOgoKZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmM6Y2Ftc3NfcmVnaXN0ZXJfZW50aXRpZXMoKSB7
CiAgICAuLi4KZXJyX3JlZ19jc2lwaHk6Cglmb3IgKGktLTsgaSA+PSAwOyBpLS0pIHsKCQlpZiAo
Y3NpcGh5X2VuYWJsZWQoY2Ftc3MsICZjYW1zcy0+Y3NpcGh5W2ldKSkKCQkJbXNtX2NzaXBoeV91
bnJlZ2lzdGVyX2VudGl0eSgmY2Ftc3MtPmNzaXBoeVtpXSk7Cgl9CiAgICAuLi4KfQoKW1NldmVy
aXR5OiBNZWRpdW1dCldoZW4gQ1NJUEhZIHJlZ2lzdHJhdGlvbiBmYWlscywgdGhpcyByb2xsYmFj
ayBsb29wIG9ubHkgY2xlYW5zIHVwIHRoZSBQSFlzCnRoYXQgd2VyZSBzdWNjZXNzZnVsbHkgcmVn
aXN0ZXJlZCB0byBWNEwyLiAKCkJlY2F1c2UgYWxsIFBIWXMgd2VyZSBwcmV2aW91c2x5IGluaXRp
YWxpemVkIGJ5IGNhbXNzX2luaXRfc3ViZGV2aWNlcygpLCBkbwp0aGUgUEhZcyBmcm9tIHRoZSBm
YWlsaW5nIGluZGV4IG9ud2FyZHMgbGVhayB0aGVpciBjbG9ja3MgYW5kIHJlZ3VsYXRvcnMgc2lu
Y2UKdGhlaXIgcGh5X2V4aXQoKSBpcyBuZXZlciBjYWxsZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA2LWI0LWxpbnV4LW5l
eHQtMjUtMDMtMTMtZHRzaS14MWU4MDEwMC1jYW1zcy12MTctMC1lMjE5N2EzZTI1NTFAbGluYXJv
Lm9yZz9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
