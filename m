Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFECFCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 01:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJ05Yj9YojWY9S8OG2iMk1sELf5tr1xj5McJoN3CMKE=; b=1060BtEAAt+oX+
	A/uBjxYEysSAXkF3uyT6Z77CKEjCbG9Epyt5+FIw3ukUFyzr7KK0ik/Z0FWZqqYUq+hzm/ajCe5Bw
	tL9T+m12ypWODrPfTwSQQHBW5Twsw8O7hfVFwZMqEDOruQay7DF+oEKJEM8vDxTlwj1SoAjITvREj
	qYH6PC2X9DzpYwmTFAHupO9rkalgmT0AphYdBwGeYi+zqMWvogqspoL60KCef1HYCbTcZW7mJpGil
	5Ex4G1FWwOO7SvcNBOPF3wzkS7RNBm/poPmhexZ6VEMwizMqx8KpkBwbt/pi2GfJBcF5BseTlxq6F
	PFyvNvoGVfusYWnd19mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpez-00000005X0d-20BM;
	Tue, 23 Jun 2026 01:10:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpex-00000005X0V-3LOW
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 01:10:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 376DA4027E;
	Tue, 23 Jun 2026 01:10:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFA271F000E9;
	Tue, 23 Jun 2026 01:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782177039;
	bh=vNEKF36isjpHiu5z6iVdmoo7elpoIamhcgdOHNRJepw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BpNI/RMmuxJwsYoQQfMgmPBhGFxiaDqzN7dSRJLMSBPGCRrZiylZQLKCa/qyZpyiY
	 1vIpv1TcQSKqUVUfZuZwkQT83EpyKhgEm3MF1Tu/M4mD5Os/FK6H1ekIkCsf1jZj2h
	 SJ7ciem1YIb8xpxMYJd3nvV6r3I/aGMQ/UvsCctnZ5Z0vxmxzOJyg52TWxfJRBqQx4
	 n30squBELsJ+fxyy0aoTLn8ACCYHu1NH5CRWfs2U3GKMdeX6cMDw6XhNXyNQlYfEMZ
	 73o2MNLdGQNNyIRl7dTURJtKgRVBl6r0xVvUYaQTAJtG5dSjDVE8fH0nB9nHrcbB30
	 K0d8FIblbxO4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sm8450: Modify GPU operating
 points
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
Date: Tue, 23 Jun 2026 01:10:38 +0000
Message-Id: <20260623011038.AFA271F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlbW92aW5nIHRoZSAz
IGxvd2VzdCBHUFUgT1BQcyBicmVha3MgdGhlIDE6MSBpbmRleCBtYXBwaW5nIGJldHdlZW4gdGhl
IEdQVSBmcmVxdWVuY3kgdGFibGUgYW5kIHRoZSBoYXJkY29kZWQgR01VIGJhbmR3aWR0aCB0YWJs
ZSBpbiB0aGUgQWRyZW5vIERSTSBkcml2ZXIsIGNhdXNpbmcgc2V2ZXJlIG1lbW9yeSBiYW5kd2lk
dGggc3RhcnZhdGlvbiBhdCBoaWdoIEdQVSBmcmVxdWVuY2llcy4KLS0KCmNvbW1pdCBkMGVjOWQw
Y2JjZWFmMTVmMjI5NWE0YzZhNjEzYThjYTdhMzU0ZWVhCkF1dGhvcjogRXN0ZWJhbiBVcnJ1dGlh
IDxlc3RldXd1QHByb3Rvbi5tZT4KCmFybTY0OiBkdHM6IHFjb206IHNtODQ1MDogTW9kaWZ5IEdQ
VSBvcGVyYXRpbmcgcG9pbnRzCgpUaGlzIGNvbW1pdCByZW1vdmVzIHRoZSAzMTdNSHosIDI4NU1I
eiwgYW5kIDIyME1IeiBHUFUgb3BlcmF0aW5nIHBvaW50cyBmcm9tCnRoZSBTTTg0NTAgZGV2aWNl
IHRyZWUsIGFzIHRoZXkgZG8gbm90IGV4aXN0IGluIHRoZSBkb3duc3RyZWFtIGRldmljZSB0cmVl
cy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaQo+IGluZGV4IGUzNGUzYzA1YmY3
NGMuLjVlMzMxYTI1ZTIyYTIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NtODQ1MC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNp
Cj4gQEAgLTI0OTUsMjEgKzI0OTUsNiBAQCBvcHAtMzUwMDAwMDAwIHsKPiAgCQkJCQlvcHAtaHog
PSAvYml0cy8gNjQgPDM1MDAwMDAwMD47Cj4gIAkJCQkJb3BwLWxldmVsID0gPFJQTUhfUkVHVUxB
VE9SX0xFVkVMX0xPV19TVlM+Owo+ICAJCQkJfTsKPiAtCj4gLQkJCQlvcHAtMzE3MDAwMDAwIHsK
PiAtCQkJCQlvcHAtaHogPSAvYml0cy8gNjQgPDMxNzAwMDAwMD47Cj4gLQkJCQkJb3BwLWxldmVs
ID0gPFJQTUhfUkVHVUxBVE9SX0xFVkVMX0xPV19TVlM+Owo+IC0JCQkJfTsKCltTZXZlcml0eTog
SGlnaF0KV2lsbCByZW1vdmluZyB0aGVzZSAzIGxvd2VzdCBHUFUgT1BQcyBicmVhayB0aGUgaW5k
ZXggbWFwcGluZyBiZXR3ZWVuIHRoZQpHUFUgZnJlcXVlbmN5IHRhYmxlIGFuZCB0aGUgR01VIGJh
bmR3aWR0aCB0YWJsZSBpbiB0aGUgQWRyZW5vIGRyaXZlcj8KClRoZSBBZHJlbm8gQTczMCBkcml2
ZXIgZG9lc24ndCB1c2UgZHluYW1pYyBiYW5kd2lkdGggdm90aW5nLiBJbnN0ZWFkLCBpdApzZW5k
cyBhIGhhcmRjb2RlZCB0YWJsZSBvZiBleGFjdGx5IDEyIG1lbW9yeSBiYW5kd2lkdGggbGV2ZWxz
IHRvIHRoZSBHTVUKZmlybXdhcmU6Cgpkcml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hNnh4X2hm
aS5jOmE3MzBfYnVpbGRfYndfdGFibGUoKSB7CiAgICAuLi4KICAgIG1zZy0+YndfbGV2ZWxfbnVt
ID0gMTI7CiAgICAuLi4KfQoKVGhlIEdNVSBmaXJtd2FyZSBhcHBsaWVzIHRoZSBiYW5kd2lkdGgg
dm90ZSBjb3JyZXNwb25kaW5nIHRvIHRoZSBHUFUKcGVyZm9ybWFuY2UgbGV2ZWwgaW5kZXguIFBy
ZXZpb3VzbHksIHdpdGggMTIgR1BVIE9QUHMsIHRoZSBtYXhpbXVtIGZyZXF1ZW5jeQptYXBwZWQg
dG8gdGhlIG1heGltdW0gYmFuZHdpZHRoIGF0IGluZGV4IDExLgoKQnkgcmVtb3ZpbmcgMyBPUFBz
IGhlcmUsIHRoZSBhY3RpdmUgT1BQcyBhcmUgcmVkdWNlZCB0byA5LiBEb2VzIHRoaXMgbWVhbiB0
aGUKbWF4aW11bSBmcmVxdWVuY3kgb2YgODE4TUh6IHdpbGwgbm93IG1hcCB0byBwZXJmb3JtYW5j
ZSBpbmRleCA4IGluc3RlYWQ/CgpJZiBzbywgdGhpcyB3b3VsZCBjYXVzZSB0aGUgR01VIHRvIGFw
cGx5IHRoZSBsb3dlciBiYW5kd2lkdGggdm90ZSBmcm9tIGluZGV4IDgKd2hlbiB0aGUgR1BVIGlz
IGF0IG1heGltdW0gZnJlcXVlbmN5LCBzZXZlcmVseSByZWR1Y2luZyB0aGUgYXZhaWxhYmxlIG1l
bW9yeQpiYW5kd2lkdGggYW5kIGJvdHRsZW5lY2tpbmcgdGhlIEdQVSB1bmRlciBoZWF2eSBsb2Fk
LgoKPiAtCj4gLQkJCQlvcHAtMjg1MDAwMDAwIHsKPiAtCQkJCQlvcHAtaHogPSAvYml0cy8gNjQg
PDI4NTAwMDAwMD47Cj4gLQkJCQkJb3BwLWxldmVsID0gPFJQTUhfUkVHVUxBVE9SX0xFVkVMX0xP
V19TVlNfRDE+Owo+IC0JCQkJfTsKPiAtCj4gLQkJCQlvcHAtMjIwMDAwMDAwIHsKPiAtCQkJCQlv
cHAtaHogPSAvYml0cy8gNjQgPDIyMDAwMDAwMD47Cj4gLQkJCQkJb3BwLWxldmVsID0gPFJQTUhf
UkVHVUxBVE9SX0xFVkVMX0xPV19TVlNfRDE+Owo+IC0JCQkJfTsKPiAgCQkJfTsKPiAgCQl9OwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDYyMi1zbTg0NTAtcW9sLXYxLTAtMzdlMmVlOGRmOWRhQHByb3Rvbi5tZT9wYXJ0PTMKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
