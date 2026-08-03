Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F5CC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITVQsVMNLCL8gdL5qQOd5JYFaarPhTtxv7epTzTIcDI=; b=dg+2ET7+Q12Rth
	yKGy/gsvwNIzT2nkyX8wpPSgs4cpE46SifWAtWxzL2vieK+7cPo6yE76o3knbyv0wmCoK7eeX4A8s
	8ANQySt0ni7lVvGwhZ3lDMUKI/vPpyZJyetdSOwWYy086sZyjSP8uWeEvcL/bG7GBBZueDxWiraJG
	Gfz8SB5ksqGRhxnwK8/byvTslqzHLaVfKxJsZED87CqnUqk5LqkN6ZiRNVXfm6fFqSTqu7gUDcMS4
	+TjXnWPt5K5pDS0rrCRpVtP37qXwtAVe6mWohyiDAC3QwO7VoS1HEDVVsudsCz2ij0uiYjcgjgulx
	OC6bk3XN5Qg6H+j6Y9zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqySz-00000000Rkj-0Myx;
	Mon, 03 Aug 2026 19:36:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqySx-00000000Rkb-3gaO
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:36:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0344F60A68;
	Mon,  3 Aug 2026 19:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D5A71F000E9;
	Mon,  3 Aug 2026 19:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785785810;
	bh=TkqzEoQPmuaapHUpeTmgf/QK8U3d7McZYbTDe2ACdeo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUEKBFTjWXKLyblykOAkca8eZwuxfxncNrZXhW+BV92K3c1UlyctUl3fgjd112sG3
	 qTq9LJKpzV9hA98YuUs8EzWQGgDWfBsR/7JvoMJHLTKBCF46WXoHmEzPqSm+MA0ISS
	 /0fkH1gSIXVVFvwjSQgz7U7OzfStm2xKlE7uKuuKV3tvjJZwEHCvavOCSBkWV1pxfk
	 AVHN5CtM/NRQ1o+9+C4q8IPGYXVHexnOnllzpCSb8qyNeTL1i1RoTk48PbafFrLpxB
	 DIgN6mEq9kCcAzfq9QrHpKESonGoaUdPjymsXl873HcPGJONfAsMiJBovjGII1VGRV
	 etzlDsE9MNH0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy:
 add named voltage rails and deprecate phy-supply
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-1-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-1-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:36:49 +0000
Message-Id: <20260803193650.3D5A71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkZXZpY2UgdHJl
ZSBiaW5kaW5nIGRlcHJlY2F0ZXMgYHBoeS1zdXBwbHlgIGluIGZhdm9yIG9mIG5ldyBuYW1lZCBy
ZWd1bGF0b3JzIGB2ZGRhLTBwOS1zdXBwbHlgIGFuZCBgdmRkYS0xcDItc3VwcGx5YCwgYnV0IHRo
ZSBkcml2ZXIgKGBwaHktcWNvbS1zZ21paS1ldGguY2ApIHdhcyBub3QgdXBkYXRlZCB0byByZXF1
ZXN0IG9yIGVuYWJsZSB0aGVtLiBXaGVuIGRldmljZSB0cmVlcyBhcmUgdXBkYXRlZCB0byBmb2xs
b3cgdGhlIG5ldyBiaW5kaW5nIGFuZCBkcm9wIHRoZSBkZXByZWNhdGVkIGBwaHktc3VwcGx5YCwg
dGhlIFBIWSBzdWJzeXN0ZW0gY29yZSAoYHBoeS1jb3JlLmNgKSB3aWxsIG5vIGxvbmdlciBmaW5k
IGFuZCBlbmFibGUgdGhlIGdlbmVyaWMgYHBoeWAgcmVndWxhdG9yLCBsZWF2aW5nIHRoZSBQSFkg
dW5wb3dlcmVkLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHYyIDEvNl0gZHQtYmluZGluZ3M6
IHBoeTogcWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBoeTogYWRkIG5hbWVkIHZvbHRhZ2UgcmFp
bHMgYW5kIGRlcHJlY2F0ZSBwaHktc3VwcGx5IC0tLQpjb21taXQgM2NjNmFjNGQzYjM1NTcxZTg2
NTdkZDhlMzA0ZTNmN2MzM2I4MjJlYwpBdXRob3I6IE1vaGQgQXlhYW4gQW53YXIgPG1vaGQuYW53
YXJAb3NzLnF1YWxjb21tLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IHFjb20sc2E4Nzc1cC1kd21h
Yy1zZ21paS1waHk6IGFkZCBuYW1lZCB2b2x0YWdlIHJhaWxzIGFuZCBkZXByZWNhdGUgcGh5LXN1
cHBseQoKVGhlIFF1YWxjb21tIFNHTUlJIFNlckRlcyBQSFkgaGFzIHR3byBkaXN0aW5jdCB2b2x0
YWdlIHN1cHBseSByYWlscy4gVGhpcwpjb21taXQgZGVwcmVjYXRlcyB0aGUgZ2VuZXJpYyAncGh5
LXN1cHBseScgcHJvcGVydHkgYW5kIGluc3RlYWQgYWRkcyB0d28Kc3BlY2lmaWMgbmFtZWQgc3Vw
cGx5IHByb3BlcnRpZXMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1waHkueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBo
eS55YW1sCj4gaW5kZXggOTBmYzhjMDM5MjE5Yy4uZTU3M2FiY2I5MzdkZiAxMDA2NDQKPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21h
Yy1zZ21paS1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBoeS55YW1sCj4gQEAgLTM1LDYgKzM1LDE3
IEBAIHByb3BlcnRpZXM6Cj4gICAgcGh5LXN1cHBseToKPiAgICAgIGRlc2NyaXB0aW9uOgo+ICAg
ICAgICBQaGFuZGxlIHRvIGEgcmVndWxhdG9yIHRoYXQgcHJvdmlkZXMgcG93ZXIgdG8gdGhlIFBI
WS4KPiArICAgIGRlcHJlY2F0ZWQ6IHRydWUKPiArCj4gKyAgdmRkYS0wcDktc3VwcGx5Ogo+ICsg
ICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFBoYW5kbGUgdG8gYSAwLjlWIHJlZ3VsYXRvciBzdXBw
bHkgdG8gdGhlIFBIWSwgd2hpY2ggZHJhd3MgYSBwZWFrCj4gKyAgICAgIGN1cnJlbnQgb2YgNDYg
bUEuCj4gKwo+ICsgIHZkZGEtMXAyLXN1cHBseToKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAg
ICBQaGFuZGxlIHRvIGEgMS4yViByZWd1bGF0b3Igc3VwcGx5IHRvIHRoZSBQSFksIHdoaWNoIGRy
YXdzIGEgcGVhawo+ICsgICAgICBjdXJyZW50IG9mIDE1IG1BLgoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgY2hhbmdlIGNhdXNlIGEgZnVuY3Rpb25hbCByZWdyZXNzaW9uIHdoZW4gZGV2aWNl
IHRyZWVzIGFyZSB1cGRhdGVkCnRvIGZvbGxvdyB0aGUgbmV3IGJpbmRpbmc/CgpXaGVuIGRldmlj
ZSB0cmVlIGF1dGhvcnMgdXBkYXRlIHRoZWlyIG5vZGVzIHRvIHVzZSB2ZGRhLTBwOS1zdXBwbHkg
YW5kCnZkZGEtMXAyLXN1cHBseSBpbnN0ZWFkIG9mIHRoZSBkZXByZWNhdGVkIHBoeS1zdXBwbHks
IGl0IGFwcGVhcnMgdGhlCnJlZ3VsYXRvcnMgd2lsbCByZW1haW4gdW5wb3dlcmVkLgoKVGhlIFBI
WSBzdWJzeXN0ZW0gY29yZSAocGh5LWNvcmUuYykgbG9va3MgZm9yIHRoZSBnZW5lcmljIHBoeS1z
dXBwbHkgZHVyaW5nCnBoeV9jcmVhdGUoKS4gSWYgaXQgaXMgbWlzc2luZyBmcm9tIHRoZSBkZXZp
Y2UgdHJlZSwgdGhlIGNvcmUgd2lsbCBub3QKZW5hYmxlIGl0LgoKQXQgdGhlIHNhbWUgdGltZSwg
dGhlIGNvcnJlc3BvbmRpbmcgZHJpdmVyIGRvZXMgbm90IHNlZW0gdG8gaGF2ZSBiZWVuCnVwZGF0
ZWQgdG8gZmV0Y2ggYW5kIGVuYWJsZSB0aGVzZSBuZXcgc3BlY2lmaWMgcmVndWxhdG9yczoKCmRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNnbWlpLWV0aC5jOnFjb21fZHdtYWNfc2dtaWlf
cGh5X3Byb2JlKCkKClNob3VsZCBxY29tX2R3bWFjX3NnbWlpX3BoeV9wcm9iZSgpIGJlIHVwZGF0
ZWQgYWxvbmdzaWRlIHRoaXMgYmluZGluZyB0bwpyZXF1ZXN0IHRoZSBuZXcgcmVndWxhdG9ycyAo
Zm9yIGV4YW1wbGUsIHVzaW5nIGRldm1fcmVndWxhdG9yX2J1bGtfZ2V0KCkpLApzbyB0aGUgUEhZ
IGRvZXNuJ3QgZmFpbCB0byBpbml0aWFsaXplIHdoZW4gcGh5LXN1cHBseSBpcyBvbWl0dGVkPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDgwNC1iNC1zZ21paWV0aF9zZXJkZXNfcmVndWxhdG9yLXYyLTAtYzRiYzY4ODE3N2RkQG9z
cy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
