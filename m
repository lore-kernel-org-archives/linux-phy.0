Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDD4CD98CF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 16:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXVBzmyHaTfspDsSPXMZl20Y1/VRWFb5UEoD6fIWXOs=; b=U7hLmfStbJulWg
	TqxCkohduLhpaj3rfUu4I6FLFZ5ylB5LKon9/7F3rcFLG35MQR1WcKSR1D6kKnugJvdXc8mM040av
	BoLiibi43Q4vY87tzpO7XMB20O/JODt7YCdgJtNs89iTkvMTI2qtzHo6welsvaKc7Ay1WENl3UYjw
	CrDgI+fGBjEBejdQdpDJ0fVz0VdqLQfhblj57VKLf9vL4AGO8UG3Y2oj2w8KgLDYqer+dyynAlCx0
	mFJd8r+wQgzQsAp5CQDVqBjHfbYiHLCZMbWu9YVX3DDlZDJ1gUd/4N5o/85+irbYOBmRDqHRNYu4n
	Qg6I+QF3BJ72fL1ewZqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY51b-0000000BInh-17Nm;
	Fri, 12 Jun 2026 16:46:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY51Z-0000000BInX-3Ar2
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 16:46:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A19CD406CA;
	Fri, 12 Jun 2026 16:46:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23D391F000E9;
	Fri, 12 Jun 2026 16:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282787;
	bh=UHdLI8VRDO0F5JtRLini6t2uCes9KsUFNFotlLp+HoA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lHt+T8Q6BAe5WrT/w1MT8QyW2LVY1byJ8MIXqsO8dNfzOGFdf1ltzGZeygKWvWSYX
	 wNxVnqz8bYj07NkWlpjpP+PtfZPQsxVBry9bYFLWz0PSRsLJMkT9QVEKKtQTEFlXVL
	 3e16dSUB7owrQcjriRvDOfTzJUdQ6CnIHEf8GZW/3PDtsg6o0No4ewSCDcGrJi5YF0
	 +hmZjvs4+mgg8E7W542KkH+djitSsHCCyBn2LFs94ZHhIClI+ck+RU5yhSgP2h7IGh
	 q364RIx/eKWRFsKEvXQJRabbiGETae/RiaebiPSXvLBTo/5cZdAdotC167qyr6SnUB
	 TFcbOaPLYyr4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 06/18] phy: rockchip: usbdp: Add missing mode_change
 update
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-6-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-6-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 16:46:26 +0000
Message-Id: <20260612164627.23D391F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBTdGF0ZSBsb3NzIG9uIHRyYW5zaWVudCBQSFkgaW5pdGlhbGl6YXRpb24gZmFpbHVy
ZSBsZWF2ZXMgaGFyZHdhcmUgcGVybWFuZW50bHkgaW4gcmVzZXQuCi0gW0hpZ2hdIERhdGEgcmFj
ZSBpbiBgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpYCByZWFkaW5nIHNoYXJlZCBsYW5lIG1h
cHBpbmdzIHdpdGhvdXQgaG9sZGluZyB0aGUgZHJpdmVyIG11dGV4LgotLQoKY29tbWl0IDIyNTI1
ZTI2ODhmOGNhOTA4MTA1NDJiZmEyYWQ5ZjI2MWM5NDlmMGIKQXV0aG9yOiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVz
YmRwOiBBZGQgbWlzc2luZyBtb2RlX2NoYW5nZSB1cGRhdGUKICAgIApya191ZHBoeV9zZXRfdHlw
ZWNfZGVmYXVsdF9tYXBwaW5nKCkgdXBkYXRlcyB0aGUgYXZhaWxhYmxlIG1vZGVzLApidXQgZG9l
cyBub3Qgc2V0IHRoZSBtb2RlX2NoYW5nZSBhcyByZXF1aXJlZC4gVGhpcyByZXN1bHRzIGluCm1p
c3NpbmcgcmUtaW5pdGlhbGl6YXRpb24gYW5kIHRodXMgbm9uLXdvcmtpbmcgRGlzcGxheVBvcnQu
CiAgICAKRml4IHRoaXMgaXNzdWUgYnkgaW50cm9kdWNpbmcgYSBuZXcgaGVscGVyIHRvIHVwZGF0
ZSB0aGUgYXZhaWxhYmxlCm1vZGVzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+IGluZGV4IDk3ZTUzYjkzMzIyNWYuLmZlYmMxNDhhNzU0ZTAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC02MTksNiArNjE5
LDE1IEBAIHN0YXRpYyB2b2lkIHJrX3VkcGh5X2RwX2hwZF9ldmVudF90cmlnZ2VyKHN0cnVjdCBy
a191ZHBoeSAqdWRwaHksIGJvb2wgaHBkKQo+ICAJcmtfdWRwaHlfZ3JmcmVnX3dyaXRlKHVkcGh5
LT52b2dyZiwgJmNmZy0+dm9ncmZjZmdbdWRwaHktPmlkXS5ocGRfdHJpZ2dlciwgaHBkKTsKPiAg
fQo+ICAKPiArc3RhdGljIHZvaWQgcmtfdWRwaHlfbW9kZV9zZXQoc3RydWN0IHJrX3VkcGh5ICp1
ZHBoeSwgdTggbW9kZSkKPiArewo+ICsJaWYgKHVkcGh5LT5tb2RlID09IG1vZGUpCj4gKwkJcmV0
dXJuOwo+ICsKPiArCXVkcGh5LT5tb2RlX2NoYW5nZSA9IHRydWU7CgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgaXQgc2VlbXMg
dGhlcmUgaXMgYQpwcmUtZXhpc3RpbmcgaXNzdWUgd2l0aCBob3cgdGhpcyBmbGFnIGlzIGhhbmRs
ZWQgaW4gcmtfdWRwaHlfcG93ZXJfb24oKS4KCldoZW4gdGhlIFBIWSBpcyBwYXJ0aWFsbHkgYWN0
aXZlIGFuZCBhIG5ldyBtb2RlIGlzIGJlaW5nIHBvd2VyZWQgb24sIGl0CmNoZWNrcyB0aGUgcmUt
aW5pdGlhbGl6YXRpb24gZmxhZyAoYWxzbyBrbm93biBhcyBwaHlfbmVlZHNfcmVpbml0IGluIHRo
ZQpicm9hZGVyIGNvbnRleHQpLiBJdCB1bmNvbmRpdGlvbmFsbHkgY2xlYXJzIHRoZSBmbGFnIHRv
IGZhbHNlIGJlZm9yZSBjYWxsaW5nCnJrX3VkcGh5X2luaXQoKToKCmRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X3Bvd2VyX29uKCkgewogICAgLi4uCiAg
ICB9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0KSB7CiAgICAgICAgdWRwaHktPnBo
eV9uZWVkc19yZWluaXQgPSBmYWxzZTsKICAgICAgICAuLi4KICAgICAgICByZXQgPSBya191ZHBo
eV9pbml0KHVkcGh5KTsKICAgICAgICBpZiAocmV0KQogICAgICAgICAgICByZXR1cm4gcmV0Owog
ICAgLi4uCn0KCklmIHJrX3VkcGh5X2luaXQoKSBmYWlscyBhbmQgcmV0dXJucyBhbiBlcnJvciAo
bGlrZSAtRVBST0JFX0RFRkVSIGZyb20gYSBQTEwKbG9jayB0aW1lb3V0KSwgdGhlIGZsYWcgaXMg
bGVmdCBhcyBmYWxzZS4gV291bGQgdGhlIG5leHQgcmV0cnkgYnkgdGhlCmNvbnN1bWVyIHNraXAg
aW5pdGlhbGl6YXRpb24gYW5kIGZhbHNlbHkgcmV0dXJuIHN1Y2Nlc3MsIGxlYXZpbmcgdGhlIFBI
WQpoYXJkd2FyZSBwZXJtYW5lbnRseSBoZWxkIGluIHJlc2V0PwoKPiArCXVkcGh5LT5tb2RlID0g
bW9kZTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1bHRf
bWFwcGluZyhzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5KQo+ICB7Cj4gIAlpZiAodWRwaHktPmZsaXAp
IHsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IEkg
aGF2ZSBhIHF1ZXN0aW9uIGFib3V0IGNvbmN1cnJlbnQgYWNjZXNzCnRvIHRoZSBsYW5lIG1hcHBp
bmdzLgoKVGhpcyBmdW5jdGlvbiBtdXRhdGVzIHRoZSBsYW5lIHNlbGVjdGlvbiBhcnJheXMgY29u
Y3VycmVudGx5IHdpdGgKcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHJlYWRpbmcgdGhlbToK
CmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X2RwX3Bo
eV9jb25maWd1cmUoKSB7CiAgICAuLi4KICAgIGZvciAoaSA9IDA7IGkgPCB1ZHBoeS0+bGFuZXM7
IGkrKykgewogICAgICAgIGxhbmUgPSB1ZHBoeS0+ZHBfbGFuZV9zZWxbaV07CiAgICAgICAgLi4u
CiAgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKC4uLiwgTE5fQU5BX1RYX1NFUl9UWENMS19JTlYs
CiAgICAgICAgICAgIEZJRUxEX1BSRVAoTE5fQU5BX1RYX1NFUl9UWENMS19JTlYsIHVkcGh5LT5s
YW5lX211eF9zZWxbbGFuZV0pKTsKICAgICAgICAuLi4KICAgICAgICBya191ZHBoeV9kcF9zZXRf
dm9sdGFnZSh1ZHBoeSwgdWRwaHktPmJ3LCBkcC0+dm9sdGFnZVtpXSwgZHAtPnByZVtpXSwgbGFu
ZSk7CiAgICB9CiAgICAuLi4KfQoKU2luY2UgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHJl
YWRzIHRoZXNlIGFycmF5cyB3aXRob3V0IGhvbGRpbmcKdWRwaHktPm11dGV4LCBjb3VsZCBhIHJh
Y2UgY29uZGl0aW9uIHJlc3VsdCBpbiByZWFkaW5nIHBhcnRpYWxseSB1cGRhdGVkCmxhbmUgYXNz
aWdubWVudHMgaWYgYSBUeXBlLUMgc3dpdGNoIGV2ZW50IG9jY3VycyBhdCB0aGUgc2FtZSB0aW1l
PwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYxMi1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY1LTAtZWZjODMwNjk4
NjlmQGNvbGxhYm9yYS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
