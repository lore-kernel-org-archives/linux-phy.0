Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD1BC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkdzzTsfQfi2AqKNJDLluoxAeqkDPoveSckZG5NFUiQ=; b=ZsjJsoWIdIHM5S
	Gn7aXB/7aflnin+2tqAutDwG0ir0bZ4BkalaqAaoyP2weP5TdlT0PB5amTIT7qAuHXmaVwPBFSJOm
	xmQRWXbKPrQBM8Kct1Wsqphy5tzNdLUNauCf1cAWJTraizjDyGByDxH8JVkcIV9tF8j3nD86AUyhi
	yg94zpv5gROuJZ02yU8u9YlixPongBy+XhScuQ2IIgoCnUJpdwVmzERaCr6Zbnmo2qtIlIp9YiNkE
	89Jjs57N/1MYJiFEod90Xd60Pa3paybotTmB8n/c3vGF/SICusrDL7xhAgZbTdWHNEn4tGnU6P4BS
	sSEBBd2AxkvU29M0InBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDIX-00000001gnL-0dC1;
	Tue, 04 Aug 2026 11:27:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDIV-00000001gnD-3QkH
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:27:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 14C56600AB;
	Tue,  4 Aug 2026 11:27:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 497CF1F000E9;
	Tue,  4 Aug 2026 11:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785842822;
	bh=7qxKpRl7AlMwATHBh/XmTQYkGn7y72biA6cY9gH2iYI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EPuF0FM1oCSGsefGmL3r6F4shX6MejycBkBCIdthw2mCAwRLkU5jI5L4DP8B4FY1x
	 FMsOQmiC8uuNepgahGFWEdA7uGsivBSUcFT9MwQmL5f1FkQAWENrBZMxuPOtQ7qs3+
	 dgjAvIz+SudcCX4TjYy79KDMqfwb+otm91oX0IDcPfcrJzTQsNMIdjci0niTy21gwC
	 x+RpQ1bZRvVN9rUKGqvRmiv2SLEVroHG7VoSnRrEIVESqzJf6/TWd66Q7/TV1Tbzgg
	 OzzxZWkDM9HnvqWMxJf9J0QP3DhXyoDx8LbFGbOXAl1bbOWNPcQjEcMZN/irl/YLWz
	 hu6z9/lI/wa0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX
 mode
To: "David Oberhollenzer" <david.oberhollenzer@sigma-star.at>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260804111849.92046-2-david.oberhollenzer@sigma-star.at>
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
 <20260804111849.92046-2-david.oberhollenzer@sigma-star.at>
Date: Tue, 04 Aug 2026 11:27:01 +0000
Message-Id: <20260804112702.497CF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByb2JlIGRlZmVycmFs
IGlzIGJyb2tlbiBhbmQgZXJyb3JzIGFyZSBtYXNrZWQgYW5kIGlnbm9yZWQgd2hlbiBmZXRjaGlu
ZyB0aGUgc3lzY29uLWFjc3BjaWUtdHgtcnggcHJvcGVydHkuCi0tCgotLS0gUGF0Y2ggWzFdOiBb
UEFUQ0ggMS8yXSBwaHk6IHRpOiB0aS1waXBlMzogYWxsb3cgY29uZmlndXJpbmcgQUNTUENJZSBU
WC9SWCBtb2RlIC0tLQpjb21taXQgMDMzZGRiYTliZDhjMDdiOGY3MjJhZTdkOTI4NWRhNWZiZDk0
ZDg4ZQpBdXRob3I6IERhdmlkIE9iZXJob2xsZW56ZXIgPGRhdmlkLm9iZXJob2xsZW56ZXJAc2ln
bWEtc3Rhci5hdD4KCnBoeTogdGk6IHRpLXBpcGUzOiBhbGxvdyBjb25maWd1cmluZyBBQ1NQQ0ll
IFRYL1JYIG1vZGUKClRoaXMgY29tbWl0IGFkZHMgYSBkZXZpY2UgdHJlZSBzZXR0aW5nIHRvIGNv
bmZpZ3VyZSB0aGUgQUNTUENJZSBUWC9SWCBtb2RlCmZvciB0aGUgT01BUCBQQ0llIFBIWSBzdWJz
eXN0ZW0uIEl0IHVzZXMgYSBzeXNjb24gcmVnbWFwIHRvIGFwcGx5IHRoZQpjb25maWd1cmF0aW9u
IGR1cmluZyBwcm9iZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBl
My5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBpbmRleCBiNTU0M2I1YzY3NGM4
Li44MDFhNjIzOTMyOGUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBl
My5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKClsgLi4uIF0KCj4gQEAg
LTc4NSw2ICs3ODgsMjQgQEAgc3RhdGljIGludCB0aV9waXBlM19nZXRfcGxsX2Jhc2Uoc3RydWN0
IHRpX3BpcGUzICpwaHkpCj4gIAlyZXR1cm4gUFRSX0VSUl9PUl9aRVJPKHBoeS0+cGxsX2N0cmxf
YmFzZSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgdGlfcGlwZTNfYWNzcGNpZV90eF9yeF9tb2Rl
KHN0cnVjdCB0aV9waXBlMyAqcGh5KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0g
cGh5LT5kZXYtPm9mX25vZGU7Cj4gKwlzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4gKwl1bnNpZ25l
ZCBpbnQgYXJnc1syXTsKPiArCj4gKwlyZWdtYXAgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9w
aGFuZGxlX2FyZ3MobnAsCj4gKwkJCQkJCSAgICAgICJzeXNjb24tYWNzcGNpZS10eC1yeCIsCj4g
KwkJCQkJCSAgICAgIDIsIGFyZ3MpOwo+ICsJaWYgKElTX0VSUihyZWdtYXApKSB7Cj4gKwkJZGV2
X3dhcm4ocGh5LT5kZXYsICJjYW4ndCBnZXQgc3lzY29uLWFjc3BjaWUtdHgtcnhcbiIpOwo+ICsJ
CXJldHVybiAtRUlOVkFMOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBpbmFkdmVy
dGVudGx5IGJyZWFrIHByb2JlIGRlZmVycmFsPwoKSWYgdGhlIHN5c2NvbiBwcm92aWRlciBpcyBu
b3QgeWV0IHJlYWR5LCBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlX2FyZ3MoKQp3aWxs
IHJldHVybiAtRVBST0JFX0RFRkVSLiBNYXNraW5nIHRoaXMgYWN0dWFsIGVycm9yIGNvZGUgaW50
byAtRUlOVkFMIGNvdWxkCnByZXZlbnQgdGhlIGRyaXZlciBmcm9tIHByb2JpbmcgbGF0ZXIuCgo+
ICsJfQo+ICsKPiArCXJldHVybiByZWdtYXBfdXBkYXRlX2JpdHMocmVnbWFwLCBhcmdzWzBdLCBQ
Q0lFX1RYX1JYX0NUUkxfTUFTSywKPiArCQkJCSAgYXJnc1sxXSA8PCBQQ0lFX1RYX1JYX0NUUkxf
U0hJRlQpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHRpX3BpcGUzX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiAgCXN0cnVjdCB0aV9waXBlMyAqcGh5Owo+IEBAIC04
MDcsNiArODI4LDEyIEBAIHN0YXRpYyBpbnQgdGlfcGlwZTNfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgCXBoeS0+ZHBsbF9tYXAgPSBkYXRhLT5kcGxsX21hcDsKPiAgCXBo
eS0+c2V0dGluZ3MgPSBkYXRhLT5zZXR0aW5nczsKPiAgCj4gKwlpZiAocGh5LT5tb2RlID09IFBJ
UEUzX01PREVfUENJRSkgewo+ICsJCXJldCA9IHRpX3BpcGUzX2Fjc3BjaWVfdHhfcnhfbW9kZShw
aHkpOwo+ICsJCWlmIChyZXQpCj4gKwkJCWRldl93YXJuKGRldiwgImZhaWxlZCB0byBzZXQgQUNT
UENJZSBUWC9SWCBtb2RlXG4iKTsKPiArCX0KPiArCj4gIAlyZXQgPSB0aV9waXBlM19nZXRfcGxs
X2Jhc2UocGh5KTsKCltTZXZlcml0eTogSGlnaF0KSXMgaXQgaW50ZW50aW9uYWwgdGhhdCB0aGUg
ZXJyb3IgcmV0dXJuZWQgZnJvbSB0aV9waXBlM19hY3NwY2llX3R4X3J4X21vZGUoKQppcyBpZ25v
cmVkPwoKVGhlIHZhbHVlIG9mIHJldCBpcyBjYXB0dXJlZCBidXQgaW1tZWRpYXRlbHkgb3Zlcndy
aXR0ZW4gYnkKdGlfcGlwZTNfZ2V0X3BsbF9iYXNlKCkuIFRoaXMgY2F1c2VzIHRoZSBwcm9iZSB0
byBwcm9jZWVkIGV2ZW4gaWYgdGhlIHN5c2Nvbgpsb29rdXAgZmFpbHMgb3IgcmVxdWlyZXMgZGVm
ZXJyYWwuCgo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0OwoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwNDExMTg0OS45MjA0
Ni0xLWRhdmlkLm9iZXJob2xsZW56ZXJAc2lnbWEtc3Rhci5hdD9wYXJ0PTEKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
