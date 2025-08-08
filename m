Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E1E9C87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 12:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3Yjex7En3z9HvDARaZ04gauvUhSno+vPkBYSzndrp8=; b=gEWlQUH15HEReY
	kd5LF0E1jI+1Ygefx+1m8S+nR/8+BYVqa/f9vSnCapkeZcThXoYk7VDAR/7R0EN+q8vIPX0amIeBg
	6XB0hCko5aszjg1gMrN9TlOLF2uLtFsS5UKzLwKZPN4DoPbuTJJcH5lX4gATPIqXm5DnhFVfDOOfd
	u7ITsrYbMIhleD68hrTtpwQjSfTRcUShJ/2TEqyY13okQTB5vFyyT2gNhCWNa0ulur8bwtXatWPz0
	UH7eOkM20fB5pL6+qrDh6pufeq+OyCb5TGslFmsxL5xfLkwEdcLVgq7ibq/xq9uNT15I40Rd3W4nC
	T0b9blFZMg+iUBEcSRJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukMQN-00000002pao-0qcL;
	Fri, 08 Aug 2025 12:42:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukMIW-00000002obQ-36pq
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 12:34:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 22F2B43FE1;
	Fri,  8 Aug 2025 12:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7FEDC4CEF4;
	Fri,  8 Aug 2025 12:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754656452;
	bh=bsBWuWydjwV6gpToYD0UMemkzbOVgo4dHyaxM95+a24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S5Ejamfu2Gi5t0Qk9/oMf87Ab0zV+Wo05mqeUuf+8751FQtXtm4epsLg+1kVLl3vm
	 GN4phyce5gkDEAN1oD/0D1fI+foS4v6nGQsfljlh/WS3Tu1l2mcfIVWYhCIWXAqCd8
	 Yix5rmgPEG21gSUhwpr8P0xIjvE7YlQI9uKDuCfxGqjG8Sa+bPywAlv+P9nDBNZz30
	 xHnlxTv/cFvwlZnyZd5b9dmd4R3V3WPkTZUdKfCNuO5FJha+j1uBM45ztyjrW2yCMl
	 rFZEbTaNR2GIqwNXkBBUPr/6f8r9owNnS2Ukk6briqUjKixqWmvqmbux2GZTvFgcu1
	 LxeLeuV9JrThQ==
Date: Fri, 8 Aug 2025 18:03:46 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, conor+dt@kernel.org, 
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <xrarnbg2qmhuivqgl7vzhmvfi6sc4zp6wa6zvpv4r4nufllc3p@u4wed2orm2cq>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_053412_818520_66E9411F 
X-CRM114-Status: GOOD (  24.61  )
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

T24gV2VkLCBBdWcgMDYsIDIwMjUgYXQgMDk6MTM6NDBQTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IEFkZCBzdXBwb3J0IGluIFFNUCBQSFkgZHJpdmVyIHRvIHJlYWQgb3B0aW9uYWwgdmRkYS1w
aHktbWF4LW1pY3JvYW1wCj4gYW5kIHZkZGEtcGxsLW1heC1taWNyb2FtcCBwcm9wZXJ0aWVzIGZy
b20gdGhlIGRldmljZSB0cmVlLgo+IAo+IFRoZXNlIHByb3BlcnRpZXMgZGVmaW5lIHRoZSBleHBl
Y3RlZCBtYXhpbXVtIGN1cnJlbnQgKGluIG1pY3JvYW1wcykgZm9yCj4gZWFjaCBzdXBwbHkuIFRo
ZSBkcml2ZXIgdXNlcyB0aGlzIGluZm9ybWF0aW9uIHRvIGNvbmZpZ3VyZSByZWd1bGF0b3JzCj4g
bW9yZSBhY2N1cmF0ZWx5IGFuZCBlbnN1cmUgdGhleSBvcGVyYXRlIGluIHRoZSBjb3JyZWN0IG1v
ZGUgYmFzZWQgb24KPiBjbGllbnQgbG9hZCByZXF1aXJlbWVudHMuCj4gCj4gSWYgdGhlIHByb3Bl
cnR5IGlzIG5vdCBwcmVzZW50LCB0aGUgZHJpdmVyIGRlZmF1bHRzIGxvYWQgdG8KPiBgUU1QX1ZS
RUdfVU5VU0VEYC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3
YUBxdWljaW5jLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVmcy5jIHwgMjIgKysrKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4gaW5kZXggOWM2OWM3N2QxMGM4Li42ZTExNmY3MzcwYzMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gQEAgLTM5LDYgKzM5LDgg
QEAKPiAgI2RlZmluZSBQSFlfSU5JVF9DT01QTEVURV9USU1FT1VUCQkxMDAwMAo+ICAKPiAgI2Rl
ZmluZSBOVU1fT1ZFUkxBWQkJCQkyCj4gKyNkZWZpbmUgUU1QX1ZSRUdfVU5VU0VECQkJCS0xCj4g
KyNkZWZpbmUgTUFYX1BST1BfTkFNRQkJCQkzMgo+ICAKPiAgLyogc2V0IG9mIHJlZ2lzdGVycyB3
aXRoIG9mZnNldHMgZGlmZmVyZW50IHBlci1QSFkgKi8KPiAgZW51bSBxcGh5X3JlZ19sYXlvdXQg
ewo+IEBAIC0xODk0LDE1ICsxODk2LDI5IEBAIHN0YXRpYyBpbnQgcW1wX3Vmc192cmVnX2luaXQo
c3RydWN0IHFtcF91ZnMgKnFtcCkKPiAgewo+ICAJY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpj
ZmcgPSBxbXAtPmNmZzsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IHFtcC0+ZGV2Owo+ICsJc3Ry
dWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiArCWNoYXIgcHJvcF9uYW1lW01B
WF9QUk9QX05BTUVdOwo+ICAJaW50IG51bSA9IGNmZy0+bnVtX3ZyZWdzOwo+IC0JaW50IGk7Cj4g
Kwljb25zdCBjaGFyICpzdXBwbHk7Cj4gKwlpbnQgaSwgcmV0Owo+ICAKPiAgCXFtcC0+dnJlZ3Mg
PSBkZXZtX2tjYWxsb2MoZGV2LCBudW0sIHNpemVvZigqcW1wLT52cmVncyksIEdGUF9LRVJORUwp
Owo+ICAJaWYgKCFxbXAtPnZyZWdzKQo+ICAJCXJldHVybiAtRU5PTUVNOwo+ICAKPiAtCWZvciAo
aSA9IDA7IGkgPCBudW07IGkrKykKPiAtCQlxbXAtPnZyZWdzW2ldLnN1cHBseSA9IGNmZy0+dnJl
Z19saXN0W2ldOwo+ICsJZm9yIChpID0gMDsgaSA8IG51bTsgaSsrKSB7Cj4gKwkJc3VwcGx5ID0g
Y2ZnLT52cmVnX2xpc3RbaV07Cj4gKwkJcW1wLT52cmVnc1tpXS5zdXBwbHkgPSBzdXBwbHk7Cj4g
Kwo+ICsJCS8qIERlZmF1bHRzIHRvIHVudXNlZCAqLwo+ICsJCXFtcC0+dnJlZ3NbaV0uaW5pdF9s
b2FkX3VBID0gUU1QX1ZSRUdfVU5VU0VEOwoKWW91IGRvbid0IG5lZWQgdG8gaW5pdGlhbGl6ZSB0
aGUgbG9hZC4gSXQgd2lsbCBiZSB6ZXJvIGluaXRpYWxpemVkIGF0IHRoaXMgcG9pbnQKYW5kIGlm
IHRoZSBwcm9wZXJ0eSBwYXJzaW5nIGZhaWxzIGJlbG93LCBpdCdzIHZhbHVlIHN0aWxsIGJlIHpl
cm8uIEFuZCB0aGUKcmVndWxhdG9yIGNvcmUgd2lsbCBhcHBseSB0aGUgbG9hZCBvbmx5IGlmIGl0
IGlzID4gMC4KCj4gKwo+ICsJCXNucHJpbnRmKHByb3BfbmFtZSwgc2l6ZW9mKHByb3BfbmFtZSks
ICIlcy1tYXgtbWljcm9hbXAiLCBzdXBwbHkpOwo+ICsJCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRf
dTMyKG5wLCBwcm9wX25hbWUsICZxbXAtPnZyZWdzW2ldLmluaXRfbG9hZF91QSk7Cj4gKwkJaWYg
KHJldCkKPiArCQkJZGV2X2RiZyhxbXAtPmRldiwgIk5vIG1heCBtaWNyb2FtcCBmb3IgJXMsIHVz
aW5nIGRlZmF1bHQgJWRcbiIsCj4gKwkJCQlzdXBwbHksIFFNUF9WUkVHX1VOVVNFRCk7CgpUaGlz
IHByaW50IGRvZXNuJ3QgbWFrZSBzZW5zZSBhcyBpdCB3aWxsIHByaW50IHRoZSBkZWZhdWx0IHZh
bHVlIG9mIC0xLiBQbGVhc2UKZHJvcCBpdC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
