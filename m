Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789EAC5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx3c9jOY9zPsCXAr08U3LgxnYSUlqBxPSxHhDdG2zBw=; b=r8gLl8oedpqrtR
	bn6tVoak8ek3U6oSykwIBKbieQHZbY1IeOz6Hk2Z6iA10DNR/p4Yq4QlnmADxEO/ZTNDeP7t3Elgf
	H5z0LLKrQXgOPZR2p2aWcCp4Q+4l1zVrxLsnRO2l+FzCfhXKabWxejKGGsLbfjI6wFT5Lpova4HfA
	/PzwvTgh2e37lmVuNfaxQkGI7oy2bOwBR+Om23RpokPjWrwPVcrmvPZcKkf0ZfqDGiqwtVQkr0EpA
	7+Z+7yZnN7ZUgywpC/1Lr1genza04LIAAEno7Zdlbainj0JPTYoQVnstoKagNXkcNNNGcJ24Q292W
	wqT4+foVSO/IkjgiI+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ie-0000000FpT8-2VK7;
	Wed, 12 Aug 2026 09:57:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5iW-0000000FpSY-1heY
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:57:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 21E6943DD7;
	Wed, 12 Aug 2026 09:57:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3631D1F000E9;
	Wed, 12 Aug 2026 09:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528668;
	bh=P33XxggVjyiU7AlmiFxI1p/GMWAmhvTFjt6wN+CHGd8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HPOC5B5TI/9vB+q6/ASeuzUGUIzJoQpb3h7icvD1u8fCGRq8qbb+dxy6535HV0jys
	 9hFVbL/+x/wG5Qf2oJVYYVWVWchwh1Rpe0ya/W29DjwKVNx0m2ferpmgjpYut8CWuh
	 BTJUJoiB7EyL15xhwgjGrNKgjXslqr8rnJKNj5BLXqXQmgutr6p2p4dTzafRWrEtvh
	 46auUUd06NQK6u3JVokJWQzmnuA47cBnh1yY8hKNkd2UdxbeF1XdCVEqMXPztKVI6/
	 fnYMYfMdTwLvoJod6iiFbkyj62RgIegVGe3FR6dR8haIbCxocXxi44/1fPPYjsx6sf
	 dNEYlL5jOXNZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/14] arm64: dts: qcom: ipq5018: Add Super-Speed
 UNIPHY to USB node
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-11-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-11-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:57:46 +0000
Message-Id: <20260812095747.3631D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlbW92aW5nIGBxY29t
LHNlbGVjdC11dG1pLWFzLXBpcGUtY2xrYCBmcm9tIHRoZSBiYXNlIGAuZHRzaWAgYnJlYWtzIFVT
QiBpbml0aWFsaXphdGlvbiBvbiBib2FyZHMgdGhhdCBkbyBub3QgZW5hYmxlIGB1c2JwaHkxYCAo
VVNCIDIuMC1vbmx5IGNvbmZpZ3VyYXRpb25zKS4KLS0KCi0tLSBQYXRjaCBbMTFdOiBbUEFUQ0gg
djIgMTEvMTRdIGFybTY0OiBkdHM6IHFjb206IGlwcTUwMTg6IEFkZCBTdXBlci1TcGVlZCBVTklQ
SFkgdG8gVVNCIG5vZGUgLS0tCmNvbW1pdCBjYWQ0MjhmZmFjNGU2YTA3Nzc0OGJmMGEzNDJhNWQ2
OTMzZmVhMzFiCkF1dGhvcjogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1vdXNzYWxlbUBvdXRs
b29rLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IGlwcTUwMTg6IEFkZCBTdXBlci1TcGVlZCBVTklQ
SFkgdG8gVVNCIG5vZGUKClRoaXMgY29tbWl0IGFkZHMgdGhlIFVTQjMgVU5JUEhZIG5vZGUgdG8g
dGhlIFVTQiBjb250cm9sbGVyIG5vZGUgaW4gdGhlCklQUTUwMTggZGV2aWNlIHRyZWUuIEl0IGFs
c28gcmVtb3ZlcyB0aGUgcHJvcGVydHkgdGhhdCBzZWxlY3RzIHRoZSBVVE1JCmNsb2NrIGFzIHRo
ZSBwaXBlIGNsb2NrLCBleHBlY3RpbmcgdGhlIHBpcGUgY2xvY2sgdG8gYmUgc3VwcGxpZWQgYnkg
dGhlClVTQjMgVU5JUEhZIGluc3RlYWQuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vaXBxNTAxOC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTgu
ZHRzaQo+IGluZGV4IDgyZTliYTYwMjBlYmQuLjg3YzNhZGU3MDIxN2YgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiBAQCAtNjE4LDEwICs2MTgsOCBAQCB1c2I6IHVz
YkA4YTAwMDAwIHsKPiAgCj4gIAkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19VU0IwX0JDUj47Cj4gIAo+
IC0JCQlwaHlzID0gPCZ1c2JwaHkwPjsKPiAtCQkJcGh5LW5hbWVzID0gInVzYjItcGh5IjsKPiAt
Cj4gLQkJCXFjb20sc2VsZWN0LXV0bWktYXMtcGlwZS1jbGs7CgpbU2V2ZXJpdHk6IEhpZ2hdCldp
bGwgcmVtb3ZpbmcgdGhpcyBwcm9wZXJ0eSBicmVhayBib2FyZHMgdGhhdCBkbyBub3QgZW5hYmxl
IHVzYnBoeTE/CgpGb3IgZXhhbXBsZSwgbG9va2luZyBhdCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vaXBxNTAxOC1yZHA0MzItYzIuZHRzLAppdCBjb25maWd1cmVzIFVTQiBidXQgbGFja3MgdXNi
cGh5MToKCiZ1c2IgewogICAgICAgIGRyX21vZGUgPSAiaG9zdCI7CgogICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKfTsKCkJlY2F1c2UgcWNvbSxzZWxlY3QtdXRtaS1hcy1waXBlLWNsayBpcyBubyBs
b25nZXIgaW4gdGhlIGJhc2UgZGV2aWNlIHRyZWUsCnRoZSBkd2MzLXFjb20gd3JhcHBlciB3b24n
dCBmYWxsIGJhY2sgdG8gdGhlIFVUTUkgY2xvY2suCgpTaW5jZSB1c2JwaHkxIGlzIGRpc2FibGVk
IG9uIHRoZXNlIFVTQiAyLjAtb25seSBjb25maWd1cmF0aW9ucywgdGhlIFBIWQpkcml2ZXIgZG9l
c24ndCBwcm9iZSBhbmQgdGhlIHBpcGUgY2xvY2sgaXMgbmV2ZXIgcHJvdmlkZWQuIERvZXMgdGhp
cyBjYXVzZQp0aGUgZHdjMyBjb250cm9sbGVyIHRvIGhhbmcgd2hpbGUgd2FpdGluZyBmb3IgYSBu
b24tZXhpc3RlbnQgY2xvY2sgZHVyaW5nCmluaXRpYWxpemF0aW9uPwoKPiArCQkJcGh5cyA9IDwm
dXNicGh5MD4sIDwmdXNicGh5MT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJ1c2IyLXBoeSIsICJ1c2Iz
LXBoeSI7Cj4gIAo+ICAJCQl0eC1maWZvLXJlc2l6ZTsKPiAgCQkJc25wcyxpcy11dG1pLWwxLXN1
c3BlbmQ7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwODEyLWlwcTUwMTgtdXNiMy12Mi0wLThmMzU1ZDdmZjBlZkBvdXRsb29rLmNv
bT9wYXJ0PTExCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
