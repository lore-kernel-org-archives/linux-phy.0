Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 564F7C79F8B
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 21:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZFhI29Y2+uXNDNAybcIg+IDGziIP6l3k/oGm0I5Brs=; b=ie2Ro1Ne744d57
	KjwVjeLG9Qz3n6p5oqSoL0YZxyxG2pm+3TqyTtoFbGSMtYdQMmmFxwWZEBojmVMSiZKXtCEBeBkiW
	0ADWAJ9JZxMcHJKwiHdqVundfvB7o8/q8qoqzRrJO1H1w0YyKkFg3ov2V+0HeyEj2qCORxGMrqUZs
	ZQf+xNyMrF/2gwmMBY0KPDI/k1oJ6CdCTvoaTXXr//gN62OI5uOEujNqqptWKbkQi9NsR8kCwxxj1
	8JwIYNxatx4JUV0rJH69Sj5htN8tyJQCilEGAqFZ1lZqTTWihsjM2Rn9aF3qTUcAKMAubS6IxUyGQ
	725b3KWNiW9LJvZK/rGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xr1-00000004QM1-05cn;
	Sat, 05 Sep 2026 21:23:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xqz-00000004QLu-2bmc
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 21:23:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C8F160A86;
	Sat,  5 Sep 2026 21:23:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D081F00A3A;
	Sat,  5 Sep 2026 21:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788643391;
	bh=GaYaCLQWkUPN1UE3GQCYoH5gflndJfXs8R2bwH6Dzak=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nmRBMG9DnEBTf9Z0geNU2/+AH/EHD8TRqZ75+Eeg6+DodSoPbBfr+dZ0eLL1u3UkZ
	 UXe8kOHyk5emKCN04jVknkvtLmvpN2gz5Ibooh4O3Tg1Dt27szbC5R+Y1Gab50WKvz
	 nkfKI7ADrzsn3IusQNqNXMJrpZlEOdCcK+EgsKaVajEh4kgXGLSbU69f2EYCzEFinB
	 HJ6EDAr7glj7cR0KbHQgwZyW0q10Ump9HrTwFUweLakdx8Jcb//05K4pth7Iab8/UY
	 wCHH/Lr+1nWHXvfrKt/MOVLHtRPd//7Y5wKnnbM6tN5lgg57DAnwRT4qN5SYzT4uHS
	 SoLrQtNP8UBXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe
 TX/RX mode
To: "David Oberhollenzer" <david.oberhollenzer@sigma-star.at>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260905211555.15944-3-david.oberhollenzer@sigma-star.at>
References: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
 <20260905211555.15944-3-david.oberhollenzer@sigma-star.at>
Date: Sat, 05 Sep 2026 21:23:10 +0000
Message-Id: <20260905212310.B4D081F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgaW1w
cm9wZXJseSBoYW5kbGVzIGVycm9ycyBmcm9tIGBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFu
ZGxlX2FyZ3MoKWAsIGJyZWFraW5nIHByb2JlIGRlZmVycmFsIGFuZCBtYXNraW5nIGZhaWx1cmUg
c3RhdGVzLgotLQoKY29tbWl0IDIyMmFiYTMwMjE4NjhiZTM5NWIwYjI4MDhmNGU3MGRjMDU3OTg3
YTcKQXV0aG9yOiBEYXZpZCBPYmVyaG9sbGVuemVyIDxkYXZpZC5vYmVyaG9sbGVuemVyQHNpZ21h
LXN0YXIuYXQ+CgpwaHk6IHRpOiB0aS1waXBlMzogYWxsb3cgY29uZmlndXJpbmcgQUNTUENJZSBU
WC9SWCBtb2RlCgpGb3IgdGhlIFBDSWUgUEhZcywgcmVhZCB0aGUgcHJvcGVydHkgZnJvbSB0aGUg
ZGV2aWNlIHRyZWUgYW5kCnVwZGF0ZSB0aGUgUlgvVFggbW9kZSBzZWxlY3Rpb24gYml0cyBpbiB0
aGUgc3BlY2lmaWVkIHN5c2NvbgpyZWdpc3Rlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3RpL3BoeS10aS1waXBlMy5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBpbmRl
eCBiNTU0M2I1YzY3NGM4Li5iYzAyMDEwZGFkYjc0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3RpL3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMK
ClsgLi4uIF0KCj4gQEAgLTc4NSw2ICs3ODgsMjQgQEAgc3RhdGljIGludCB0aV9waXBlM19nZXRf
cGxsX2Jhc2Uoc3RydWN0IHRpX3BpcGUzICpwaHkpCj4gIAlyZXR1cm4gUFRSX0VSUl9PUl9aRVJP
KHBoeS0+cGxsX2N0cmxfYmFzZSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgdGlfcGlwZTNfYWNz
cGNpZV90eF9yeF9tb2RlKHN0cnVjdCB0aV9waXBlMyAqcGh5KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wID0gcGh5LT5kZXYtPm9mX25vZGU7Cj4gKwlzdHJ1Y3QgcmVnbWFwICpyZWdt
YXA7Cj4gKwl1bnNpZ25lZCBpbnQgYXJnc1syXTsKPiArCj4gKwlyZWdtYXAgPSBzeXNjb25fcmVn
bWFwX2xvb2t1cF9ieV9waGFuZGxlX2FyZ3MobnAsCj4gKwkJCQkJCSAgICAgICJ0aSxzeXNjb24t
YWNzcGNpZS10eC1yeCIsCj4gKwkJCQkJCSAgICAgIDIsIGFyZ3MpOwo+ICsJaWYgKElTX0VSUihy
ZWdtYXApKSB7Cj4gKwkJZGV2X3dhcm4ocGh5LT5kZXYsICJjYW4ndCBnZXQgdGksc3lzY29uLWFj
c3BjaWUtdHgtcnhcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgbWFzayB0aGUgb3JpZ2luYWwgZXJyb3IgY29kZSAoc3VjaCBhcyAtRVBST0JFX0RF
RkVSIG9yIC1FTk9FTlQpCmZyb20gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9hcmdz
KCkgYnkgcmV0dXJuaW5nIGEgaGFyZGNvZGVkCi1FSU5WQUw/IFVuY29uZGl0aW9uYWxseSBsb2dn
aW5nIGEgd2FybmluZyBhbmQgcmV0dXJuaW5nIC1FSU5WQUwgY291bGQKYnJlYWsgcHJvYmUgZGVm
ZXJyYWwgaWYgdGhlIHN5c2NvbiBkZXZpY2UgcHJvYmVzIGxhdGVyLgoKPiArCX0KPiArCj4gKwly
ZXR1cm4gcmVnbWFwX3VwZGF0ZV9iaXRzKHJlZ21hcCwgYXJnc1swXSwgUENJRV9UWF9SWF9DVFJM
X01BU0ssCj4gKwkJCQkgIGFyZ3NbMV0gPDwgUENJRV9UWF9SWF9DVFJMX1NISUZUKTsKPiArfQo+
ICsKPiAgc3RhdGljIGludCB0aV9waXBlM19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdGlfcGlwZTMgKnBoeTsKPiBAQCAtODA3LDYgKzgyOCwxMiBA
QCBzdGF0aWMgaW50IHRpX3BpcGUzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIAlwaHktPmRwbGxfbWFwID0gZGF0YS0+ZHBsbF9tYXA7Cj4gIAlwaHktPnNldHRpbmdzID0g
ZGF0YS0+c2V0dGluZ3M7Cj4gIAo+ICsJaWYgKHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1BDSUUp
IHsKPiArCQlyZXQgPSB0aV9waXBlM19hY3NwY2llX3R4X3J4X21vZGUocGh5KTsKPiArCQlpZiAo
cmV0KQo+ICsJCQlkZXZfd2FybihkZXYsICJmYWlsZWQgdG8gc2V0IEFDU1BDSWUgVFgvUlggbW9k
ZVxuIik7Cj4gKwl9Cj4gKwo+ICAJcmV0ID0gdGlfcGlwZTNfZ2V0X3BsbF9iYXNlKHBoeSk7Cgpb
U2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBvdmVyd3JpdGUgdGhlIHJldHVybmVkIGVycm9yIGNv
ZGUgaW4gcmV0IHdpdGggdGhlIHJlc3VsdCBvZgp0aV9waXBlM19nZXRfcGxsX2Jhc2UoKT8gSWYg
dGlfcGlwZTNfYWNzcGNpZV90eF9yeF9tb2RlKCkgZmFpbGVkIG9yCnNob3VsZCBoYXZlIGJlZW4g
ZGVmZXJyZWQsIGlnbm9yaW5nIHRoZSBlcnJvciBoZXJlIGNhdXNlcyB0aGUgcHJvYmUKZnVuY3Rp
b24gdG8gZmFsc2VseSBzdWNjZWVkIHdpdGhvdXQgY29uZmlndXJpbmcgdGhlIFBIWS4KCj4gIAlp
ZiAocmV0KQo+ICAJCXJldHVybiByZXQ7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA1MjExNTU1LjE1OTQ0LTEtZGF2aWQub2Jl
cmhvbGxlbnplckBzaWdtYS1zdGFyLmF0P3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
