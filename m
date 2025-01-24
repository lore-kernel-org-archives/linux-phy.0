Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC835C02181
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jan 2025 07:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwupXF8ate5K071xnvQ4Bsd3NmWve8HWbm4pGGY7b6w=; b=LygnnWI4Kaw478
	zHw8CUe8VMANZrmeqx17XMjnDamebr6GyYo9wW9YuzcOLDxtRg/nlZEhXInflCjrj/RNmo1YECVNM
	XszBdv1XFttpzYW/OXrMy9UUtRpvsxIyw/DpXCA87qyqGayBNpPENm0CMIVLfDpp/K9CMkGa4Xiti
	4oUDf9GteiUH8Jn2yvjdqBqvyzw9QR53Od4dq+70BBZc09rQLDeWM0VS7xhFgGC1dsYKbgaQ3DSUQ
	oiD6/7H0dIv+uXTOn6/EueDJJqZ7qWf1MTL96I7XBhuSnwy5rMCkuPSU7915kqfmnV8bMBP80owHz
	zUJj0lAPuMn2q/gxhrWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDq5-0000000E4fc-29ak;
	Fri, 24 Jan 2025 07:10:49 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDq2-0000000E4f6-3eek
	for linux-phy@lists.infradead.org;
	Fri, 24 Jan 2025 07:10:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9B0B0A40CFC;
	Fri, 24 Jan 2025 07:08:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E46ACC4CED2;
	Fri, 24 Jan 2025 07:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737702645;
	bh=IrJIjEb8wVn4o399UYJ07Qnaxga6FGchkSPjWWrZUGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A8+tLVsG7hTXmsaqKxqq1X6xuXHhTDLWdnToSRZ1SI5kylEjlI5PgaFpTzd5oCMRz
	 8NTJqcd8PoMOZtnmmpYTCDZQ81K717jpajtv26Nnabro7V4ZwVsWouzKYRbX976ytD
	 0wKa6Mig7bZbwMmUTwweToEg4KwdxL8BEgRpM0YBASeg6oW0+G4uXM33KptaxlmWtw
	 KrUBHytibFSXZptcBfAkn4hnjHHVE1LUW7LT9PdzlppmYF0vavneKNRKIjprmIYxbC
	 aJuZJUHV5MCoEXOUmiYSAgPNu85u3QyJTjVd9DeDRw0vlPmf99/yzY0yURxwKMrDtR
	 wm6Hl7r9E8tow==
Date: Fri, 24 Jan 2025 12:40:33 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
Message-ID: <20250124071033.nda66hp3pumekozz@thinkpad>
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-2-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250121094140.4006801-2-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_231047_052438_ACF886B5 
X-CRM114-Status: GOOD (  18.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMDU6NDE6MzlQTSArMDgwMCwgV2VuYmluIFlhbyB3cm90
ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+
Cj4gCj4gRGVjaWRlIHRoZSBpbi1kcml2ZXIgbG9naWMgYmFzZWQgb24gd2hldGhlciB0aGUgbm9j
c3IgcmVzZXQgaXMgcHJlc2VudAo+IGFuZCBkZWZlciBjaGVja2luZyB0aGUgYXBwcm9wcmlhdGVu
ZXNzIG9mIHRoYXQgdG8gZHQtYmluZGluZ3MgdG8gc2F2ZQo+IG9uIGJvaWxlcnBsYXRlLgo+IAo+
IFJlc2V0IGNvbnRyb2xsZXIgQVBJcyBhcmUgZmluZSBjb25zdW1pbmcgYSBudWxscHRyLCBzbyBu
byBhZGRpdGlvbmFsCj4gY2hlY2tzIGFyZSBuZWNlc3NhcnkgdGhlcmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHF1aWNfd2VuYnlhb0BxdWljaW5jLmNvbT4KClJldmll
d2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5h
cm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtcGNpZS5jIHwgMTggKysrKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXBjaWUuYwo+IGluZGV4IDg3M2YyZjk4NDRjNi4uYWM0MmU0YjAxMDY1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gQEAgLTI3OTMsOCAr
Mjc5Myw2IEBAIHN0cnVjdCBxbXBfcGh5X2NmZyB7Cj4gIAo+ICAJYm9vbCBza2lwX3N0YXJ0X2Rl
bGF5Owo+ICAKPiAtCWJvb2wgaGFzX25vY3NyX3Jlc2V0Owo+IC0KPiAgCS8qIFFNUCBQSFkgcGlw
ZSBjbG9jayBpbnRlcmZhY2UgcmF0ZSAqLwo+ICAJdW5zaWduZWQgbG9uZyBwaXBlX2Nsb2NrX3Jh
dGU7Cj4gIAo+IEBAIC0zNjg1LDcgKzM2ODMsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9w
aHlfY2ZnIHNtODU1MF9xbXBfZ2VuNHgyX3BjaWVwaHlfY2ZnID0gewo+ICAKPiAgCS5wd3Jkbl9j
dHJsCQk9IFNXX1BXUkROIHwgUkVGQ0xLX0RSVl9EU0JMLAo+ICAJLnBoeV9zdGF0dXMJCT0gUEhZ
U1RBVFVTXzRfMjAsCj4gLQkuaGFzX25vY3NyX3Jlc2V0CT0gdHJ1ZSwKPiAgCj4gIAkvKiAyME1I
eiBQSFkgQVVYIENsb2NrICovCj4gIAkuYXV4X2Nsb2NrX3JhdGUJCT0gMjAwMDAwMDAsCj4gQEAg
LTM3MTgsNyArMzcxNSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc204NjUw
X3FtcF9nZW40eDJfcGNpZXBoeV9jZmcgPSB7Cj4gIAo+ICAJLnB3cmRuX2N0cmwJCT0gU1dfUFdS
RE4gfCBSRUZDTEtfRFJWX0RTQkwsCj4gIAkucGh5X3N0YXR1cwkJPSBQSFlTVEFUVVNfNF8yMCwK
PiAtCS5oYXNfbm9jc3JfcmVzZXQJPSB0cnVlLAo+ICAKPiAgCS8qIDIwTUh6IFBIWSBBVVggQ2xv
Y2sgKi8KPiAgCS5hdXhfY2xvY2tfcmF0ZQkJPSAyMDAwMDAwMCwKPiBAQCAtMzgzNiw3ICszODMy
LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyB4MWU4MDEwMF9xbXBfZ2VuNHgy
X3BjaWVwaHlfY2ZnID0gewo+ICAKPiAgCS5wd3Jkbl9jdHJsCQk9IFNXX1BXUkROIHwgUkVGQ0xL
X0RSVl9EU0JMLAo+ICAJLnBoeV9zdGF0dXMJCT0gUEhZU1RBVFVTXzRfMjAsCj4gLQkuaGFzX25v
Y3NyX3Jlc2V0CT0gdHJ1ZSwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3Bo
eV9jZmcgeDFlODAxMDBfcW1wX2dlbjR4NF9wY2llcGh5X2NmZyA9IHsKPiBAQCAtMzg3MCw3ICsz
ODY1LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyB4MWU4MDEwMF9xbXBfZ2Vu
NHg0X3BjaWVwaHlfY2ZnID0gewo+ICAKPiAgCS5wd3Jkbl9jdHJsCQk9IFNXX1BXUkROIHwgUkVG
Q0xLX0RSVl9EU0JMLAo+ICAJLnBoeV9zdGF0dXMJCT0gUEhZU1RBVFVTXzRfMjAsCj4gLQkuaGFz
X25vY3NyX3Jlc2V0CT0gdHJ1ZSwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1w
X3BoeV9jZmcgeDFlODAxMDBfcW1wX2dlbjR4OF9wY2llcGh5X2NmZyA9IHsKPiBAQCAtMzkwMiw3
ICszODk2LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyB4MWU4MDEwMF9xbXBf
Z2VuNHg4X3BjaWVwaHlfY2ZnID0gewo+ICAKPiAgCS5wd3Jkbl9jdHJsCQk9IFNXX1BXUkROIHwg
UkVGQ0xLX0RSVl9EU0JMLAo+ICAJLnBoeV9zdGF0dXMJCT0gUEhZU1RBVFVTXzRfMjAsCj4gLQku
aGFzX25vY3NyX3Jlc2V0CT0gdHJ1ZSwKPiAgfTsKPiAgCj4gIHN0YXRpYyB2b2lkIHFtcF9wY2ll
X2luaXRfcG9ydF9iKHN0cnVjdCBxbXBfcGNpZSAqcW1wLCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9j
ZmdfdGJscyAqdGJscykKPiBAQCAtNDIwMywxMSArNDE5NiwxNCBAQCBzdGF0aWMgaW50IHFtcF9w
Y2llX3Jlc2V0X2luaXQoc3RydWN0IHFtcF9wY2llICpxbXApCj4gIAlpZiAocmV0KQo+ICAJCXJl
dHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGdldCByZXNldHNcbiIpOwo+
ICAKPiAtCWlmIChjZmctPmhhc19ub2Nzcl9yZXNldCkgewo+IC0JCXFtcC0+bm9jc3JfcmVzZXQg
PSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShkZXYsICJwaHlfbm9jc3IiKTsKPiAt
CQlpZiAoSVNfRVJSKHFtcC0+bm9jc3JfcmVzZXQpKQo+ICsJcW1wLT5ub2Nzcl9yZXNldCA9IGRl
dm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKGRldiwgInBoeV9ub2NzciIpOwo+ICsJaWYg
KElTX0VSUihxbXAtPm5vY3NyX3Jlc2V0KSkgewo+ICsJCWlmIChQVFJfRVJSKHFtcC0+bm9jc3Jf
cmVzZXQpID09IC1FTk9FTlQgfHwKPiArCQkgICAgUFRSX0VSUihxbXAtPm5vY3NyX3Jlc2V0KSA9
PSAtRUlOVkFMKQo+ICsJCQlxbXAtPm5vY3NyX3Jlc2V0ID0gTlVMTDsKPiArCQllbHNlCj4gIAkJ
CXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihxbXAtPm5vY3NyX3Jlc2V0KSwKPiAt
CQkJCQkJImZhaWxlZCB0byBnZXQgbm8tY3NyIHJlc2V0XG4iKTsKPiArCQkJCQkgICAgICJmYWls
ZWQgdG8gZ2V0IG5vLWNzciByZXNldFxuIik7Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gLS0g
Cj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
