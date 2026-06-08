Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FA35CD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 07:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DggzcVOq62U4tJKVFkxsgtJOY3gDyLvkEOuWb8czTdw=; b=0vQLsGv1bcvdWU
	37BXFiqXLhQf0aDtH4ZmUMu2m0E8YKopMa/jIDf6qvWADgJ4W74lEXk65QpBVz7QyXNq2EgekXVCj
	CbucqLbjWdTYs4T0gIkcY5MCklTj9BWY2v8Z3hpgPTjTB7+fuOzgJ1NoJnp67S9FD04yHB2YftfT8
	sb76Ts7H7TDDuUvQhC8SWwlYQAmt7t2awgQKLWy7SoK640kg4WVBeIu1t68RSUZb5ItT8sS7HTYov
	0mlyhW7/uoCPu8yZ40FJGOji5OHG6KmF1913ILfXfn+q6Edusp/as2fMQ5/B6zg7rHz5sq70UiSro
	3+COnoo0pnW2hHESe/Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWULr-00000002yR7-04vL;
	Mon, 08 Jun 2026 07:24:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWULq-00000002yR1-1dXl
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 07:24:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AB916001D;
	Mon,  8 Jun 2026 07:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C65F61F00893;
	Mon,  8 Jun 2026 07:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780903489;
	bh=wTdREXOe6KftoM5aRL0DAAx/CeBU/II+OQDB3vdmgW4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MpmeJxzKb67NN36hQhDGuNkChToafl1q1+7DYmdeTzgc+rvTW22Lysyljq0M1x9uQ
	 tkIcAbSP9L4WuVTIqQstT8pss0oFoH9ipOGzsC0N5iytVq+VORzLPv01aPDiEVYJbZ
	 n4y3I6AsUnaM/hL56e0JafBYMeojVWcPLi/aWmkjI8MoDIrv2qIPRCJAMC5+Xc/FoN
	 D/Ct99FhjWKC8oNPB7jXYbnN+QmkiUqUYFqP5X2v2Deuj/1mVHSg+zggeGSsmBH/gx
	 7nDt8N97qy0M24vGs8nwCf7q62IlID6nyrX+jV6GqrEgJko9DYt9Ht5EV+68rx8QX1
	 VOg6ApnkigGCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260608070805.88-4-kernel@airkyi.com>
References: <20260608070805.88-4-kernel@airkyi.com>
Date: Mon, 08 Jun 2026 07:24:48 +0000
Message-Id: <20260608072448.C65F61F00893@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIG9m
IGRldmljZSBub2RlIGBjaGlsZF9ucGAgZHVlIHRvIG1pc3NpbmcgYG9mX25vZGVfZ2V0KClgCi0g
W01lZGl1bV0gTG9naWMgZXJyb3IgYW5kIHBvdGVudGlhbCBlcnJvciBtYXNraW5nIGR1ZSB0byBp
bmNvcnJlY3QgY2hlY2sgb3JkZXJpbmcKLS0KCmNvbW1pdCAzNTEwMDAzM2Q4Y2MxOTZkY2RmNTg4
MGRlNTViOGMzNzgwZmZmZDExCkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2st
Y2hpcHMuY29tPgpTdWJqZWN0OiBwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtdHlwZWM6IEFk
ZCBEUk0gQVVYIGJyaWRnZQoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUgUm9ja2NoaXAgVHlwZS1D
IFBIWSBkcml2ZXIgdG8gdXNlIHRoZSBEUk1fQVVYX0JSSURHRQpoZWxwZXIuIEl0IHJlZ2lzdGVy
cyBhIHRyYW5zcGFyZW50IERSTSBicmlkZ2UgZGV2aWNlIGZvciB0aGUgRFAgcG9ydCBkZWZpbmVk
CmluIHRoZSBkZXZpY2UgdHJlZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC10eXBlYy5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXR5cGVjLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jClsgLi4u
IF0KPiBAQCAtMTE2MiwxNiArMTE2MywyNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3R5cGVjX3Bo
eV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgCWZvcl9lYWNoX2F2
YWlsYWJsZV9jaGlsZF9vZl9ub2RlKG5wLCBjaGlsZF9ucCkgewo+ICAJCXN0cnVjdCBwaHkgKnBo
eTsKPiArCQlyZXQgPSAwOwo+ICAKPiAtCQlpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxkX25wLCAi
ZHAtcG9ydCIpKQo+ICsJCWlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJkcC1wb3J0Iikp
IHsKPiAgCQkJcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgY2hpbGRfbnAsCj4gIAkJCQkJICAg
ICAgJnJvY2tjaGlwX2RwX3BoeV9vcHMpOwo+IC0JCWVsc2UgaWYgKG9mX25vZGVfbmFtZV9lcShj
aGlsZF9ucCwgInVzYjMtcG9ydCIpKQo+ICsJCQlyZXQgPSBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rl
cl9mcm9tX25vZGUoZGV2LCBjaGlsZF9ucCk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBj
YXVzZSBhIGRvdWJsZS1mcmVlIG9mIHRoZSBjaGlsZF9ucCBkZXZpY2Ugbm9kZT8KClRoZSBsb29w
IG1hY3JvIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKCkgcHJvdmlkZXMgYSB0ZW1w
b3JhcnkKcmVmZXJlbmNlIHRvIGNoaWxkX25wIHRoYXQgaXMgYXV0b21hdGljYWxseSByZWxlYXNl
ZCB3aGVuIHRoZSBsb29wIGFkdmFuY2VzLgoKSG93ZXZlciwgZHJtX2F1eF9icmlkZ2VfcmVnaXN0
ZXJfZnJvbV9ub2RlKCkgcGFzc2VzIHRoaXMgbm9kZSB0bwpkZXZpY2Vfc2V0X25vZGUoKSB3aGlj
aCBhc3NpZ25zIHRoZSBub2RlIHdpdGhvdXQgaW5jcmVtZW50aW5nIGl0cyByZWZlcmVuY2UKY291
bnQuCgpXaGVuIHRoZSBhdXhpbGlhcnkgYnJpZGdlIGlzIGxhdGVyIHVucmVnaXN0ZXJlZCwgZHJt
X2F1eF9icmlkZ2VfcmVsZWFzZSgpCnVuY29uZGl0aW9uYWxseSBjYWxscyBvZl9ub2RlX3B1dCgp
IG9uIHRoaXMgbm9kZToKCmRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jOmRybV9h
dXhfYnJpZGdlX3JlbGVhc2UoKSB7CgkuLi4KCW9mX25vZGVfcHV0KGRldi0+b2Zfbm9kZSk7Cgku
Li4KfQoKQmVjYXVzZSBhbiBhZGRpdGlvbmFsIHJlZmVyZW5jZSB3YXMgbmV2ZXIgYWNxdWlyZWQs
IHRoaXMgY2FuIGNhdXNlIGEgcmVmZXJlbmNlCmNvdW50IHVuZGVyZmxvdyBhbmQgYSB1c2UtYWZ0
ZXItZnJlZSBvZiB0aGUgZGV2aWNlIG5vZGUgc3RydWN0dXJlLgoKU2hvdWxkIHdlIGNhbGwgb2Zf
bm9kZV9nZXQoY2hpbGRfbnApIGJlZm9yZSBwYXNzaW5nIGl0IHRvCmRybV9hdXhfYnJpZGdlX3Jl
Z2lzdGVyX2Zyb21fbm9kZSgpPwoKPiArCQl9IGVsc2UgaWYgKG9mX25vZGVfbmFtZV9lcShjaGls
ZF9ucCwgInVzYjMtcG9ydCIpKQo+ICAJCQlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGls
ZF9ucCwKPiAgCQkJCQkgICAgICAmcm9ja2NoaXBfdXNiM19waHlfb3BzKTsKPiAgCQllbHNlCj4g
IAkJCWNvbnRpbnVlOwo+ICAKPiArCQlpZiAocmV0KSB7Cj4gKwkJCXBtX3J1bnRpbWVfZGlzYWJs
ZShkZXYpOwo+ICsJCQlvZl9ub2RlX3B1dChjaGlsZF9ucCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4g
KwkJfQo+ICsKCltTZXZlcml0eTogTWVkaXVtXQpJZiBkZXZtX3BoeV9jcmVhdGUoKSBmYWlscywg
d2lsbCB0aGlzIGVycm9yIGJlIG1hc2tlZCBpZgpkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9t
X25vZGUoKSBhbHNvIGZhaWxzPwoKSWYgZGV2bV9waHlfY3JlYXRlKCkgcmV0dXJucyBhbiBFUlJf
UFRSLCBidXQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkKZmFpbHMgYW5kIHJl
dHVybnMgYSBub24temVybyB2YWx1ZSwgdGhlIGVycm9yIGNoZWNrIGhlcmUgY2FwdHVyZXMKdGhl
IGJyaWRnZSBlcnJvciBpbnN0ZWFkIG9mIHRoZSBQSFkgZXJyb3IuCgpUaGlzIHdvdWxkIHJldHVy
biBhbiBpbmNvcnJlY3QgZXJyb3IgY29kZSBhbmQgc2tpcCB0aGUgImZhaWxlZCB0byBjcmVhdGUg
cGh5IgpkZWJ1ZyBsb2cgZW50aXJlbHkuIEFsc28sIGlmIHRoZSBQSFkgZmFpbHMgYnV0IHRoZSBi
cmlkZ2Ugc3VjY2VlZHMsIHRoZSBjb2RlCnJlZ2lzdGVycyBhbiB1bm5lY2Vzc2FyeSBhdXhpbGlh
cnkgZGV2aWNlIG9ubHkgZm9yIGRldnJlcyB0byBpbW1lZGlhdGVseSB0ZWFyCml0IGRvd24uCgpX
b3VsZCBpdCBiZSBiZXR0ZXIgdG8gY2hlY2sgSVNfRVJSKHBoeSkgaW1tZWRpYXRlbHkgYWZ0ZXIg
ZGV2bV9waHlfY3JlYXRlKCkKYW5kIGJlZm9yZSByZWdpc3RlcmluZyB0aGUgYnJpZGdlPwoKPiAg
CQlpZiAoSVNfRVJSKHBoeSkpIHsKPiAgCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRl
IHBoeTogJXBPRm5cbiIsCj4gIAkJCQljaGlsZF9ucCk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4MDcwODA1Ljg4LTEta2Vy
bmVsQGFpcmt5aS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
