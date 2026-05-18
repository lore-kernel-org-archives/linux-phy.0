Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59911CD4F3D
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 02:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEolFMooYnGlg8HKBhrVbTMuCGJjQdP0zYWUY2rzYLA=; b=ed5XuSyyJ74f5a
	fGgcCs7iC5hFHQVvv/ejGekcOfRcrx28X7AvgyzjPyCoeIrGUxjG4iZ0Bw+QMSUeAqd9shVWkB5X+
	EtpJ54217HKlYRCoiRRsYYT8bOtA4kCvSoTIfzBfq0txUJrXMVMzcIm7l7IbTSbB5tbHC/+sqd3WR
	Cvxe6N3M9mpmHi43RNsZEhGdl+8niftHs0LC4E5q/Jp7wV7wDAZiAi3IGNc1On2NtAmicbD9u71vl
	ySGz+qbUE/ErAWIi7p71A/SkmkGCtk7mKCd2eP630NgJ1fm6mg8Kycrd+I4OarBsVtetmcv+2V442
	yltPbq9FZDR7i03YsMSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOoCP-0000000Dzly-0VpP;
	Mon, 18 May 2026 02:59:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOoCN-0000000Dzkx-3Zmw
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 02:59:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2398A60125;
	Mon, 18 May 2026 02:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B78C2BCB0;
	Mon, 18 May 2026 02:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779073158;
	bh=6FcgOzO/MUe0lXcCGDugozt+RFlBZEG3jGac04moKqs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=c+S7Vbq4IohOi+Ae84l3uY27y2pEwGf5PetOExji34AyF7oI8u0NsPcIjy66CUw3O
	 U10+fmL+7Nk+tz/UAOd/AAmMrwpIvS2wEJbRv0nMdOWUECNt7ZpFTLJxJNxu/UNeRW
	 25+boo/XeMGL0mUd4S7ULWxM6lHxLfs8aPJJSd+wBptvKNfgaiTTqagvuxl9Gyif2M
	 K1w+o+6HGF7HS+UMhvGvbvGUSexNisiS8gZyjvPxG2g7G7pSclaBTzDD4M4f5M214m
	 sLJxv8brIYrPh/cjgS4ebxbqEoz5rDt/gsRqhKTA3g/Hu27xupXm/kdDYR4p5Cv03K
	 fjbiLMH1yBr6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] phy: ti-pipe3: Fix EPROBE_DEFER handling for
 clock resources
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260518021539.14890-3-zenghongling@kylinos.cn>
References: <20260518021539.14890-3-zenghongling@kylinos.cn>
Date: Mon, 18 May 2026 02:59:18 +0000
Message-Id: <20260518025918.92B78C2BCB0@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTG9nIHNwYW0gZHVy
aW5nIGJvb3QgZHVlIHRvIGxhY2sgb2YgZGV2X2Vycl9wcm9iZSgpIGZvciBkZWZlcnJlZCBjbG9j
a3MuCi0gW0xvd10gVW5uZWNlc3NhcnkgYnJhY2VzIHVzZWQgZm9yIHNpbmdsZS1zdGF0ZW1lbnQg
aWYvZWxzZSBicmFuY2hlcy4KLS0KCmNvbW1pdCBlNWZiOGU4MTBmNzI0NWU3MmE4ZThjMTI5ZWMz
NGI0MDM4MWM1YTMzCkF1dGhvcjogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3Mu
Y24+CgpwaHk6IHRpLXBpcGUzOiBGaXggRVBST0JFX0RFRkVSIGhhbmRsaW5nIGZvciBjbG9jayBy
ZXNvdXJjZXMKClRoaXMgY29tbWl0IGZpeGVzIHByb2JlIGRlZmVycmFsIGhhbmRsaW5nIGluIHRo
ZSB0aS1waXBlMyBkcml2ZXIgYnkgcmV0dXJuaW5nCnRoZSBhY3R1YWwgZXJyb3IgY29kZSBmb3Ig
c3lzY2xrIGZhaWx1cmVzIGluc3RlYWQgb2YgbWFza2luZyBpdC4gSXQgYWxzbwpwcm9wYWdhdGVz
IG5vbi1FTk9FTlQgZXJyb3JzIGZvciB0aGUgU0FUQSByZWZjbGsuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBl
My5jCj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJz
L3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC02MDUsMTQgKzYwNSwyMSBAQCBzdGF0aWMgaW50
IHRpX3BpcGUzX2dldF9jbGsoc3RydWN0IHRpX3BpcGUzICpwaHkpCj4gIAlzdHJ1Y3QgY2xrICpj
bGs7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwaHktPmRldjsKPiAgCj4gLQlwaHktPnJlZmNs
ayA9IGRldm1fY2xrX2dldChkZXYsICJyZWZjbGsiKTsKPiArCS8qCj4gKwkgKiByZWZjbGsgaXMg
b3B0aW9uYWwgZm9yIFNBVEEgUEhZIHRvIHN1cHBvcnQgb2xkZXIgRFRCcywgYnV0Cj4gKwkgKiBy
ZXF1aXJlZCBmb3Igb3RoZXIgbW9kZXMuIFVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoKSBmb3Ig
U0FUQQo+ICsJICogd2hpY2ggcmV0dXJucyBOVUxMIGZvciAtRU5PRU5ULCBhbGxvd2luZyB1cyB0
byBwcm9wYWdhdGUgYWxsCj4gKwkgKiBvdGhlciBlcnJvcnMgaW5jbHVkaW5nIC1FUFJPQkVfREVG
RVIuCj4gKwkgKi8KPiArCWlmIChwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9TQVRBKSB7Cj4gKwkJ
cGh5LT5yZWZjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoZGV2LCAicmVmY2xrIik7Cj4gKwl9
IGVsc2Ugewo+ICsJCXBoeS0+cmVmY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZmNsayIpOwo+
ICsJfQoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGlzIGl0IG5lY2Vzc2FyeSB0byB1c2UgYnJhY2Vz
IGhlcmU/IFRoZSBMaW51eCBrZXJuZWwKY29kaW5nIHN0eWxlIHR5cGljYWxseSByZWNvbW1lbmRz
IG9taXR0aW5nIGJyYWNlcyBmb3Igc2luZ2xlLXN0YXRlbWVudAppZi9lbHNlIGJyYW5jaGVzLgoK
PiArCj4gIAlpZiAoSVNfRVJSKHBoeS0+cmVmY2xrKSkgewo+ICAJCWRldl9lcnIoZGV2LCAidW5h
YmxlIHRvIGdldCByZWZjbGtcbiIpOwo+IC0JCS8qIG9sZGVyIERUQnMgaGF2ZSBtaXNzaW5nIHJl
ZmNsayBpbiBTQVRBIFBIWQo+IC0JCSAqIHNvIGRvbid0IGJhaWwgb3V0IGluIGNhc2Ugb2YgU0FU
QSBQSFkuCj4gLQkJICovCj4gLQkJaWYgKHBoeS0+bW9kZSAhPSBQSVBFM19NT0RFX1NBVEEpCj4g
LQkJCXJldHVybiBQVFJfRVJSKHBoeS0+cmVmY2xrKTsKPiArCQlyZXR1cm4gUFRSX0VSUihwaHkt
PnJlZmNsayk7Cj4gIAl9CgpTaW5jZSBQVFJfRVJSKCkgbm93IGNvcnJlY3RseSBwcm9wYWdhdGVz
IC1FUFJPQkVfREVGRVIgd2hlbiB0aGUgY2xvY2sgaXMgbm90CnlldCBhdmFpbGFibGUsIHdpbGwg
dGhpcyBkZXZfZXJyKCkgY2FsbCBjYXVzZSByZXBldGl0aXZlIGxvZyBzcGFtIHJlZ3Jlc3Npb25z
CmR1cmluZyBub3JtYWwgYm9vdCBzZXF1ZW5jZSBkZWZlcnJhbHM/CgpDb3VsZCB0aGlzIGJlIHJl
cGxhY2VkIHdpdGggZGV2X2Vycl9wcm9iZSgpIHRvIHByb3Blcmx5IHN1cHByZXNzIHRoZSBlcnJv
cgptZXNzYWdlIHdoZW4gdGhlIGNsb2NrIHByb3ZpZGVyIGlzIHNpbXBseSBkZWZlcnJlZD8KClsg
Li4uIF0KCj4gQEAgLTYyOSw3ICs2MzYsNyBAQCBzdGF0aWMgaW50IHRpX3BpcGUzX2dldF9jbGso
c3RydWN0IHRpX3BpcGUzICpwaHkpCj4gIAkJcGh5LT5zeXNfY2xrID0gZGV2bV9jbGtfZ2V0KGRl
diwgInN5c2NsayIpOwo+ICAJCWlmIChJU19FUlIocGh5LT5zeXNfY2xrKSkgewo+ICAJCQlkZXZf
ZXJyKGRldiwgInVuYWJsZSB0byBnZXQgc3lzY2xrXG4iKTsKPiAtCQkJcmV0dXJuIC1FSU5WQUw7
Cj4gKwkJCXJldHVybiBQVFJfRVJSKHBoeS0+c3lzX2Nsayk7Cj4gIAkJfQo+ICAJfQoKRG9lcyB0
aGUgc2FtZSBsb2cgc3BhbSByZWdyZXNzaW9uIGFwcGx5IGhlcmUgbm93IHRoYXQgc3lzY2xrIGVy
cm9ycywKaW5jbHVkaW5nIC1FUFJPQkVfREVGRVIsIGFyZSBjb3JyZWN0bHkgcHJvcGFnYXRlZD8K
ClVzaW5nIGRldl9lcnJfcHJvYmUoKSBoZXJlIG1pZ2h0IGFsc28gaGVscCBrZWVwIHRoZSBrZXJu
ZWwgbG9nIGNsZWFuIGR1cmluZwpwcm9iZSBkZWZlcnJhbC4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTgwMjE1MzkuMTQ4OTAt
MS16ZW5naG9uZ2xpbmdAa3lsaW5vcy5jbj9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
