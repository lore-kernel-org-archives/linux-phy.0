Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FA60C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7L0NMXEisNvHray7ralCL+ZthYIg3GWX6ML5lu2xXw=; b=wXObgNlAav6JyE
	FJPw0O2hOrrgfFw/ZIrCqB89hcxaJb4C1O4Qn2IvsLM33mR8sQF0k8SeS0YunX8JCPo2WuhaQvixg
	vzxKUzrAqgQyQ6OnRHLJ2/EdBvK9hfMcej71gSpXsmyql7KeVnc09Kf/EA/tTWEr3HUM77Nk4Zuva
	DqIzZTG86+uD6QK3nTV03zFmFrO8K4TBiDRiwVhDm3EPp5m8wCTeiYLf9AlpX7zSQbjLMM+6B+aoB
	ZecN+bp5cCye4r8Vh8qKEgHBoYoB4SHF+ewC1/GzyLGm0dFKFcSZ+G0Cu0AaFhwtJ6nibBsfj7uRM
	pksAH7+Qqg35xM0OlyBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOVu-0000000Bfja-3kOf;
	Mon, 10 Aug 2026 11:49:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOVs-0000000Bfiw-0Gqz
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:49:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A643341A9E;
	Mon, 10 Aug 2026 11:49:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE5F1F000E9;
	Mon, 10 Aug 2026 11:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786362589;
	bh=jlalvyiyDmb2SBE4WzGkySfWGm/AjNpIU++rR7WIYuY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bg0A/QRwHamFcdKLmlQEaZjemUvFP/dbca3XFNqP6/hXHlrZ61u8o22zGa2EmEZBx
	 WwP3IbC9pGbAv4HxkqnBtYcYdQptXCHkh0TgQfY893+DL1KQQYlqY+1Nkkzsxf0GE0
	 NH+bZUdAEIaWmynFUciSnG3x2pPzNbuMP4FiKAHevfYPxKZuoLV4vHpLUVCsVWtVqL
	 VWKxqb/QNZ66m2WUsBEqg19lFB+Ibt0RGbJShWpw4YUoaXz35zGCdstI5p9jhyRKmg
	 EVcIE5UTlo/pebAOg+z5PqeKCI3pr+nrCInWpq70LVv9GURWOI9IbzQXtrHpXkQWdG
	 Tcnqas0Fphl+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/10] phy: qcom-ipq806x-usb: parse the tx-deamp-3_5db
 property as documented
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:49:47 +0000
Message-Id: <20260810114948.5EE5F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBUaGUgcGF0Y2gg
YnJlYWtzIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCBleGlzdGluZyBkZXZpY2UgdHJlZXMg
YnkgcmVwbGFjaW5nIHRoZSBgcWNvbSx0eC1kZWFtcF8zXzVkYmAgcHJvcGVydHkgd2l0aCBgcWNv
bSx0eC1kZWFtcC0zXzVkYmAgd2l0aG91dCBwcm92aWRpbmcgYSBmYWxsYmFjay4gVGhlIGNvbW1p
dCBtZXNzYWdlIGluY29ycmVjdGx5IGNsYWltcyB0aGF0IG5vIGluLXRyZWUgZGV2aWNlIHRyZWUg
dXNlcyBlaXRoZXIgc3BlbGxpbmcsIGJ1dCBgYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS9xY29tLWlw
cTgwNjQtdjIuMC5kdHNpYCBhY3RpdmVseSBzZXRzIGBxY29tLHR4LWRlYW1wXzNfNWRiID0gPDMy
PjtgLiBDb25zZXF1ZW50bHksIHRoZSBkcml2ZXIgd2lsbCBzaWxlbnRseSBmYWlsIHRvIHJlYWQg
dGhpcyBwcm9wZXJ0eSBmcm9tIGV4aXN0aW5nIGRlcGxveWVkIERUQnMgYW5kIGZhbGwgYmFjayB0
byB0aGUgZGVmYXVsdCB2YWx1ZSwgbGVhZGluZyB0byBhbiB1bmludGVuZGVkIGhhcmR3YXJlIGNv
bmZpZ3VyYXRpb24gY2hhbmdlLgotLQoKLS0tIFBhdGNoIFs3XTogW1BBVENIIDA3LzEwXSBwaHk6
IHFjb20taXBxODA2eC11c2I6IHBhcnNlIHRoZSB0eC1kZWFtcC0zXzVkYiBwcm9wZXJ0eSBhcyBk
b2N1bWVudGVkIC0tLQpjb21taXQgMGQ3MzAzNDBkZjgwODY1NjQ5ZTQzODE3MjJjYTM1ZTE2MDNm
MWNhZApBdXRob3I6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxj
b21tLmNvbT4KCnBoeTogcWNvbS1pcHE4MDZ4LXVzYjogcGFyc2UgdGhlIHR4LWRlYW1wLTNfNWRi
IHByb3BlcnR5IGFzIGRvY3VtZW50ZWQKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIGRyaXZlciB0
byBwYXJzZSB0aGUgInFjb20sdHgtZGVhbXAtM181ZGIiIHByb3BlcnR5LAptYXRjaGluZyB0aGUg
ZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uLiBJdCByZXBsYWNlcyB0aGUgb2xkCiJx
Y29tLHR4LWRlYW1wXzNfNWRiIiBzcGVsbGluZy4KCj4gVGhlIGRyaXZlciByZWFkcyB0aGUgdHJh
bnNtaXQgZGUtZW1waGFzaXMgb3ZlcnJpZGUgZnJvbQo+IHFjb20sdHgtZGVhbXBfM181ZGIgd2hp
bGUgdGhlIGJpbmRpbmcgZG9jdW1lbnRzIHFjb20sdHgtZGVhbXAtM181ZGIsCj4gc28gYSBkZXZp
Y2UgdHJlZSBmb2xsb3dpbmcgdGhlIGJpbmRpbmcgaXMgc2lsZW50bHkgaWdub3JlZCBhbmQgdGhl
Cj4gZGVmYXVsdCBpcyB1c2VkIGluc3RlYWQuIE5vIGluLXRyZWUgZGV2aWNlIHRyZWUgdXNlcyBl
aXRoZXIgc3BlbGxpbmcuCgpJcyB0aGUgc3RhdGVtZW50IGFib3V0IGluLXRyZWUgZGV2aWNlIHRy
ZWVzIGFjY3VyYXRlPyBMb29raW5nIGF0IHRoZSBzb3VyY2UsCmFyY2gvYXJtL2Jvb3QvZHRzL3Fj
b20vcWNvbS1pcHE4MDY0LXYyLjAuZHRzaSBhY3RpdmVseSBzZXRzCiJxY29tLHR4LWRlYW1wXzNf
NWRiID0gPDMyPjsiLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20taXBxODA2eC11c2IuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWlwcTgwNngt
dXNiLmMKPiBpbmRleCAzZDNlOWQ2ZGEyOThjLi44NmU4ZTg2OWE3NDNmIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWlwcTgwNngtdXNiLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4LXVzYi5jCj4gQEAgLTU2MSw3ICs1NjEs
NyBAQCBzdGF0aWMgaW50IHFjb21faXBxODA2eF91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gIAkJCQkgICAgICZwaHlfZHdjMy0+cnhfZXEpKQo+ICAJCXBoeV9k
d2MzLT5yeF9lcSA9IFNTUEhZX1JYX0VRX1ZBTFVFOwo+ICAKPiAtCWlmIChkZXZpY2VfcHJvcGVy
dHlfcmVhZF91MzIoJnBkZXYtPmRldiwgInFjb20sdHgtZGVhbXBfM181ZGIiLAo+ICsJaWYgKGRl
dmljZV9wcm9wZXJ0eV9yZWFkX3UzMigmcGRldi0+ZGV2LCAicWNvbSx0eC1kZWFtcC0zXzVkYiIs
CgpbU2V2ZXJpdHk6IENyaXRpY2FsXQpEb2VzIHJlcGxhY2luZyB0aGlzIHByb3BlcnR5IHdpdGhv
dXQgYSBmYWxsYmFjayBpbnRyb2R1Y2UgYSByZWdyZXNzaW9uIGZvcgpiYWNrd2FyZCBjb21wYXRp
YmlsaXR5IHdpdGggZXhpc3RpbmcgZGV2aWNlIHRyZWVzPwoKU2luY2UgZGV2aWNlIHRyZWUgYmlu
ZGluZ3MgYXJlIGEgc3RhYmxlIGtlcm5lbCBBQkksIHN5c3RlbXMgYm9vdGluZyB3aXRoIGFuCm9s
ZGVyIERUQiAob3IgdGhlIGN1cnJlbnQgaW4tdHJlZSBEVEIpIG1pZ2h0IHNpbGVudGx5IGZhaWwg
dG8gcmVhZCB0aGlzCnByb3BlcnR5IGFuZCBmYWxsIGJhY2sgdG8gdGhlIGRlZmF1bHQgdmFsdWUg
aW5zdGVhZCBvZiB0aGUgY29uZmlndXJlZCB2YWx1ZS4KClNob3VsZCBxY29tX2lwcTgwNnhfdXNi
X3BoeV9wcm9iZSgpIG1haW50YWluIHN1cHBvcnQgZm9yIHRoZSBsZWdhY3kKdW5kZXJzY29yZSBw
cm9wZXJ0eSBhcyBhIGZhbGxiYWNrPwoKPiAgCQkJCSAgICAgJnBoeV9kd2MzLT50eF9kZWFtcF8z
XzVkYikpCj4gIAkJcGh5X2R3YzMtPnR4X2RlYW1wXzNfNWRiID0gU1NQSFlfVFhfREVFTVBIXzNf
NURCOwo+CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwODEwLW1zbTg5NzQtdXNiMy12MS0wLTFhNDdlMTE4NTUyNEBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9NwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
