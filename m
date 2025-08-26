Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F3CCA0EE4
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKXoOPwWqFxmY2BBfQ/AvRhC5bfIz5zlTwh0Q9EQLi0=; b=ayzaSGJnX3CUKc
	68XvT7JF2DGNZNnKWasZbcWa+iGE4hHIPoGW5WAcIefI7o+mF1EylmiYLY4eGfVl+RbDuqiYL8eyq
	h2b52cfvAFK3Who+3P7piXPB2bKKe8zUvCEePNV8YlFqq1OBkPptQNCI2nGZr27bkczxcWE0S65bP
	DNojSWoDhCkWzIV8LXto++AZMcBmsq89lw6mh4yPElZ0YBFLkkFhexD90nmTgb+MLHeK4yN+IbYV9
	wIODDdYel+uewGdXKcyHr3890kG8Gb7+8KS7DaiFNlcWr2tEZfqnTCBw0sPgMrq4+NAPygBYBN3Ry
	RmUYzw0o62+KLNxJcTWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqnWs-0000000Akws-0rul;
	Tue, 26 Aug 2025 06:51:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqn2F-0000000Aflg-2iNc
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:20:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 506A840934;
	Tue, 26 Aug 2025 06:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CDA8C4CEF1;
	Tue, 26 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756189199;
	bh=DDG5Rsbax/UMy9XACIWAoumnDWbU7fr4l/OL8Vi1WqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=srk/9A0Nsgxrs/FV1BMlezxJc/Q9zPLb6YnLDAWYecPcojnL68RqIxAVVDqhkqQAh
	 z4RxA1oYArTcOsOXBj/7eSQoiftwk++oGA+nUNkrWJe5yTPEMvONQxIeBsZAWceC8e
	 EYiqeR077U4K0Q2Rlyf9povA60nU7ZA7upT1BWdiseOc8Q/MGcJQfLe2UnwwM4npMq
	 kDVGt6Z+B64W4HcP9ZYxjRs3QRECl34Y7hj4ToyKgM/WHCrbH3mMCmjCIOU0NVje0E
	 bPBGtgA6PAAF31jwTjEySxCD8nEd1EmEFoiDzTDaP7eA+SQK/zkZpkShDPbOYl+gIi
	 bdE0a8onVtg0w==
Date: Tue, 26 Aug 2025 11:49:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com, 
	qiang.yu@oss.qualcomm.com, Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <fqtq3lbdnfkzngfym3k53jkrhp4addqvltvrfh35hhiiyf4qqw@2vdhide3lux5>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
 <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_231959_731660_C719BE9D 
X-CRM114-Status: GOOD (  17.16  )
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

T24gTW9uLCBBdWcgMjUsIDIwMjUgYXQgMTE6MDE6NTBQTSBHTVQsIFdlbmJpbiBZYW8gd3JvdGU6
Cj4gRnJvbTogUHJ1ZGh2aSBZYXJsYWdhZGRhIDxxdWljX3B5YXJsYWdhQHF1aWNpbmMuY29tPgo+
IAo+IEFkZCBzdXBwb3J0IGZvciBHZW41IHg0IFBDSWUgUU1QIFBIWSBmb3VuZCBvbiBHbHltdXIg
cGxhdGZvcm0uCj4gCj4gU2lnbmVkLW9mZi1ieTogUHJ1ZGh2aSBZYXJsYWdhZGRhIDxxdWljX3B5
YXJsYWdhQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHdlbmJpbi55
YW9Ab3NzLnF1YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bmlAa2VybmVsLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXBjaWUuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcGNpZS5jCj4gaW5kZXggOTU4MzBkY2ZkZWM5YjFmNjhmZDU1ZDFjYzNj
MTAyOTg1Y2ZhZmNjMS4uMDExNjg3ZTYxOTFlN2E0OTZiNTZjZDg1YTE0OWIxMGY3ZjAwYTc0OSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+IEBAIC05Myw2
ICs5MywxMiBAQCBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHBjaWVwaHlfdjZfcmVnc19sYXlv
dXRbUVBIWV9MQVlPVVRfU0laRV0gPSB7Cj4gIAlbUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9M
XQk9IFFQSFlfVjZfUENTX1BPV0VSX0RPV05fQ09OVFJPTCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBj
b25zdCB1bnNpZ25lZCBpbnQgcGNpZXBoeV92OF81MF9yZWdzX2xheW91dFtRUEhZX0xBWU9VVF9T
SVpFXSA9IHsKPiArCVtRUEhZX1NUQVJUX0NUUkxdCQk9IFFQSFlfVjhfNTBfUENTX1NUQVJUX0NP
TlRST0wsCj4gKwlbUVBIWV9QQ1NfU1RBVFVTXQkJPSBRUEhZX1Y4XzUwX1BDU19TVEFUVVMxLAo+
ICsJW1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0gICA9IFFQSFlfVjhfNTBfUENTX1BPV0VS
X0RPV05fQ09OVFJPTCwKPiArfTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9p
bml0X3RibCBtc204OTk4X3BjaWVfc2VyZGVzX3RibFtdID0gewo+ICAJUU1QX1BIWV9JTklUX0NG
RyhRU0VSREVTX1YzX0NPTV9CSUFTX0VOX0NMS0JVRkxSX0VOLCAweDE0KSwKPiAgCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19WM19DT01fQ0xLX1NFTEVDVCwgMHgzMCksCj4gQEAgLTI5NjMsNiAr
Mjk2OSw3IEBAIHN0cnVjdCBxbXBfcGNpZV9vZmZzZXRzIHsKPiAgCXUxNiByeDI7Cj4gIAl1MTYg
dHh6Owo+ICAJdTE2IHJ4ejsKPiArCXUxNiB0eHJ4ejsKPiAgCXUxNiBsbl9zaHJkOwo+ICB9Owo+
ICAKPiBAQCAtMzIyOSw2ICszMjM2LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BjaWVf
b2Zmc2V0cyBxbXBfcGNpZV9vZmZzZXRzX3Y2XzMwID0gewo+ICAJLmxuX3NocmQJPSAweDgwMDAs
Cj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9wY2llX29mZnNldHMgcW1wX3Bj
aWVfb2Zmc2V0c192OF81MCA9IHsKPiArCS5zZXJkZXMgICAgID0gMHg4MDAwLAo+ICsJLnBjcyAg
ICAgICAgPSAweDkwMDAsCj4gKwkudHhyeHogICAgICA9IDB4ZDAwMCwKPiArfTsKPiArCj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgaXBxODA3NF9wY2llcGh5X2NmZyA9IHsKPiAg
CS5sYW5lcwkJCT0gMSwKPiAgCj4gQEAgLTQyNTgsNiArNDI3MSwyMiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnIHFtcF92Nl9nZW40eDRfcGNpZXBoeV9jZmcgPSB7Cj4gIAkucGh5
X3N0YXR1cyAgICAgICAgICAgICA9IFBIWVNUQVRVU180XzIwLAo+ICB9Owo+ICAKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBnbHltdXJfcW1wX2dlbjV4NF9wY2llcGh5X2NmZyA9
IHsKPiArCS5sYW5lcyA9IDQsCj4gKwo+ICsJLm9mZnNldHMgICAgICAgID0gJnFtcF9wY2llX29m
ZnNldHNfdjhfNTAsCj4gKwo+ICsJLnJlc2V0X2xpc3QgICAgID0gc2RtODQ1X3BjaWVwaHlfcmVz
ZXRfbCwKPiArCS5udW1fcmVzZXRzICAgICA9IEFSUkFZX1NJWkUoc2RtODQ1X3BjaWVwaHlfcmVz
ZXRfbCksCj4gKwkudnJlZ19saXN0ICAgICAgPSBxbXBfcGh5X3ZyZWdfbCwKPiArCS5udW1fdnJl
Z3MgICAgICA9IEFSUkFZX1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ICsKPiArCS5yZWdzICAgICAg
ICAgICA9IHBjaWVwaHlfdjhfNTBfcmVnc19sYXlvdXQsCj4gKwo+ICsJLnB3cmRuX2N0cmwgICAg
ID0gU1dfUFdSRE4gfCBSRUZDTEtfRFJWX0RTQkwsCj4gKwkucGh5X3N0YXR1cyAgICAgPSBQSFlT
VEFUVVNfNF8yMCwKPiArfTsKPiArCj4gIHN0YXRpYyB2b2lkIHFtcF9wY2llX2luaXRfcG9ydF9i
KHN0cnVjdCBxbXBfcGNpZSAqcW1wLCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGJscyAqdGJs
cykKPiAgewo+ICAJY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiBA
QCAtNTAwNCw2ICs1MDMzLDkgQEAgc3RhdGljIGludCBxbXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgcW1wX3BjaWVfb2ZfbWF0Y2hfdGFibGVbXSA9IHsKPiAgCXsKPiArCQkuY29tcGF0aWJsZSA9
ICJxY29tLGdseW11ci1xbXAtZ2VuNXg0LXBjaWUtcGh5IiwKPiArCQkuZGF0YSA9ICZnbHltdXJf
cW1wX2dlbjV4NF9wY2llcGh5X2NmZywKPiArCX0sIHsKPiAgCQkuY29tcGF0aWJsZSA9ICJxY29t
LGlwcTYwMTgtcW1wLXBjaWUtcGh5IiwKPiAgCQkuZGF0YSA9ICZpcHE2MDE4X3BjaWVwaHlfY2Zn
LAo+ICAJfSwgewo+IAo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
