Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3111EC982D0
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQwtsp9AISRcowOemwh3JUkS6olYjnub4JLrtog5ZMY=; b=XZHAXhNbfgXiJA
	Up7t70fUCIHqQDyPkQay0zWmxJnGp4J5hjb6F/foX0bZL6Grnghm1B93a8eb6fVIUuIqmcKBMndN7
	J35mVK0UC1+3GOZ62/w9WSg4RL8E2PX5b6Updi1FC0ICbENm/peIdVt2fJUwcE6bEDy5+hd9DlBJe
	UdKEYJBCWH8Rh8hort/qfcM5AiM4+B6F6M8IFx4nCkVtlZNFPZ2oXFOM/cn0YfZQncqiL3pnE3C3+
	C8P8QwaNgSI8PzZOpKAcv2Ea5IEwknHMFrDam7jS9vwmxEeU4oeHMVnRt/MTraxU0BAv79v4q6I2+
	T2Hy9y0WLyWykwuc9tpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS3-0000000H0UC-3g5T;
	Sun, 20 Sep 2026 06:55:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS1-0000000H0TX-0Lyu
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:55:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D3389404F5;
	Sun, 20 Sep 2026 06:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09BD91F00893;
	Sun, 20 Sep 2026 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887300;
	bh=655IFjbDDUE7r+JE6d1nbjGwqaM3WBT/xigYQS4/SVg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RoDptU1U/ldvzcLIpPpHP36/bMZ5tZjJHhoMD7qrabAkCRKyYu+XGgwi4paBdAW7c
	 uIH9fmIZUAV/AeEXBXgbUQOAubBaQv/NcQ+t98de7ebaIxuNXKiPO9Z3jRQ05ni/T3
	 MZpB/SJ+NxpdAMpLSr78VkwU51q9TT8ccvouxjPAvN702Y297onMdpsdzhegRDv2A7
	 WsbUVbq+IfRtYrjL6KF8Tq4X/IqVwqf7OQkDXsAZdoLDSliE8ZDXPUIb7UnRbL7Kp1
	 K5ysBgOUvsrGB4X9pWxX7OaXe/6foYcZc6VWO1NwLsaNtt2vo4wllq/u7Qt5/XrIuS
	 cD+/lj0K7CjBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 02/12] dt-bindings: net: nxp,s32-dwmac: Document
 pcs-handle
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, Frank.Li@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260919-s32g_serdes-v3-2-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-2-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:59 +0000
Message-Id: <20260920065500.09BD91F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IHJlZHVuZGFudCB0eXBlIGRlZmluaXRpb24gaW4gcGNzLWhhbmRsZSBjb250cmFkaWN0cyBjb21t
aXQgbWVzc2FnZQotLQoKY29tbWl0IDgzMjI4YWE3YmQzZjkzOWQyMzYzZGIxZmMzODE3NGQzMTgx
YmZkNjkKQXV0aG9yOiBKYW4gUGV0cm91cyAoT1NTKSA8amFuLnBldHJvdXNAb3NzLm54cC5jb20+
CgpkdC1iaW5kaW5nczogbmV0OiBueHAsczMyLWR3bWFjOiBEb2N1bWVudCBwY3MtaGFuZGxlCgpU
aGlzIGNvbW1pdCBkb2N1bWVudHMgdGhlIHBjcy1oYW5kbGUgcHJvcGVydHkgZm9yIHRoZSBTMzIg
RFdNQUMgd2hlbgpyb3V0ZWQgdG8gdGhlIGVtYmVkZGVkIFNlckRlcyBmb3IgU0dNSUkuIFRoZSBj
b21taXQgbWVzc2FnZSBpbmRpY2F0ZXMKdGhhdCB0aGUgdHlwZSBpcyBpbmhlcml0ZWQgZnJvbSBl
dGhlcm5ldC1jb250cm9sbGVyLnlhbWwgYW5kIGRvZXMgbm90Cm5lZWQgdG8gYmUgcmVkZWZpbmVk
LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9u
eHAsczMyLWR3bWFjLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L254cCxzMzItZHdtYWMueWFtbAo+IGluZGV4IDc1M2EwNDk0MTY1OWIuLmIxNjhkZWNiNTQwYzYg
MTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9ueHAs
czMyLWR3bWFjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L254cCxzMzItZHdtYWMueWFtbAoKWyAuLi4gXQoKPiBAQCAtODEsNiArODIsMTQgQEAgcHJv
cGVydGllczoKPiAgICAgICAgLSBjb25zdDogcngKPiAgICAgICAgLSBjb25zdDogcHRwX3JlZgo+
ICAKPiArICBwY3MtaGFuZGxlOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ICsgICAgbWF4SXRlbXM6IDEKCltTZXZlcml0eTogTWVk
aXVtXQpUaGUgY29tbWl0IG1lc3NhZ2Ugc3RhdGVzICJUaGUgdHlwZSBhbHJlYWR5IGNvbWVzIGZy
b20gdGhlCmV0aGVybmV0LWNvbnRyb2xsZXIueWFtbCByZWZlcmVuY2UgaW4gdGhlIHNjaGVtYSBj
aGFpbjsgdGhpcyBvbmx5IHJlY29yZHMKdGhlIGludGVudCIuIAoKSXMgaXQgbmVjZXNzYXJ5IHRv
IHJlZGVmaW5lIHRoZSAkcmVmIHRvIHBoYW5kbGUtYXJyYXkgYW5kIHNldCBtYXhJdGVtcyB0byAx
CmhlcmUsIG9yIGRvZXMgdGhpcyBjb250cmFkaWN0IHRoZSBjb21taXQgbWVzc2FnZSdzIGNsYWlt
IHRoYXQgdGhlIHR5cGUKZGVmaW5pdGlvbiBpcyBvbWl0dGVkIGJlY2F1c2UgaXQgaXMgYWxyZWFk
eSBoYW5kbGVkIGJ5IHRoZSBzY2hlbWEgY2hhaW4/Cgo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAg
ICAgIHBoYW5kbGUgcG9pbnRpbmcgdG8gdGhlIFNlckRlcyBYUENTIGxhbmUgY2hpbGQgbm9kZSB0
aGF0IHByb3ZpZGVzCj4gKyAgICAgIHRoZSBTR01JSSBQQ1MgZm9yIHRoaXMgTUFDLiBTZWUKPiAr
ICAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsczMyZy1zZXJk
ZXMueWFtbC4KPiArCj4gIHJlcXVpcmVkOgo+ICAgIC0gY2xvY2tzCj4gICAgLSBjbG9jay1uYW1l
cwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDkxOS1zMzJnX3NlcmRlcy12My0wLTlkNjg4NjhjMWU4OUBvc3MubnhwLmNvbT9wYXJ0
PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
