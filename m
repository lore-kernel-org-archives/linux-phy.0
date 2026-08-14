Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23343C5DF66
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 01:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAQM9rOdv14WgXwk2VzVU/xh7gg20SJSpm2lKPt98+I=; b=hGpXVp9A+uLoeq
	3aNrhkG9R9x85wxY3D/bj/7okS6FQnPy9uTXK1hE78V/qceJQwD8M+ZhC4tQGuyjWAeSh//NVperP
	kbBhdSBoJnFQka5bcBUh3nyisKN3/Gv9Qj5xYEECj3q1NAEuHRf97Hyvfw7BukmKEdU/m2/EAV08C
	h9bL/gm4BEO+K0jq/asMXj0zK64ZygL/+/YXKCKPOzZn/dufm928Wvrl4ebVeGXBIApmY9qrS4yZG
	G0wUeU6asP5/67bh0O6x2h7bSC9/7AQUivYXsBQ2zqfbrBh826AR9ceJXN1yJk+/4nRkIGFCK+27q
	24et0ge9z48ZVrF0FeKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuh9e-00000001pBd-38Qz;
	Fri, 14 Aug 2026 01:56:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuh9d-00000001pBV-0I2p
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 01:56:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 39F37600AD;
	Fri, 14 Aug 2026 01:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C9D51F000E9;
	Fri, 14 Aug 2026 01:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786672575;
	bh=fp9Luq5tJMNd1NfmlqQcXiJAhnFSe01gOETX37hVKaU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GwXSkQwsLFmRFWJeueeBWKrWAfoEE4bNJPyPuww4B+V4aI4ucWQRu4ObEwW2J/j+N
	 RPURapAoU6aXDCFqMWZFd2paSFkXJjpRHOAMOIqgXJNPHjBJMAu3MFY4N1agFh7siJ
	 QylT7aJLJSvNQAhWKkmbeV8sSOL2ZpsX5U5l6juP2LcsHPgdbSr38+NjD1HZfVZ8Tn
	 qdiVVlwqVsMdM+XH7bU/nySFLOhA7qtTl4TKwtPtSgQE9/uMb05P/Dq8rn4AZXOmrf
	 kATDr0RAV8xtR8QhkQGbK9oYs5j8bgN8/csOg4eJbqcv2gJLHcBVie9uJOTx9fUe1L
	 wz7rFk2ohvKMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
To: "Nitin Rawat" <nitin.rawat@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260814004725.1368027-1-nitin.rawat@oss.qualcomm.com>
References: <20260814004725.1368027-1-nitin.rawat@oss.qualcomm.com>
Date: Fri, 14 Aug 2026 01:56:15 +0000
Message-Id: <20260814015615.6C9D51F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ldyBjb21w
YXRpYmxlIHN0cmluZ3MgYHFjb20sbWFpbGktcW1wLXVmcy1waHlgIGFuZCBgcWNvbSxoYXdpLXFt
cC11ZnMtcGh5YCBhcmUgb21pdHRlZCBmcm9tIHRoZSBgYWxsT2ZgIGNvbmRpdGlvbmFsIGJsb2Nr
cyB0aGF0IGVuZm9yY2Ugc3RyaWN0IGNvbnN0cmFpbnRzIGZvciBjbG9ja3MuCi0gW01lZGl1bV0g
VGhlIGZhbGxiYWNrIGNvbXBhdGlibGUgYHFjb20saGF3aS1xbXAtdWZzLXBoeWAgaXMgbm90IGRl
ZmluZWQgYXMgYSBzdGFuZGFsb25lIGJhc2UgY29tcGF0aWJsZSBpbiB0aGUgc2NoZW1hLgotLQoK
LS0tIFBhdGNoIFsxXTogW1BBVENIIFYxXSBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhw
LXFtcC11ZnMtcGh5OiBBZGQgUU1QIFVGUyBQSFkgY29tcGF0aWJsZSBmb3IgTWFpbGkgLS0tCmNv
bW1pdCBjOTgzZGRmOTlhZTdmNTU2YTZiN2EyODcwYzg4MzI3MDU0Yjk0ZDhjCkF1dGhvcjogTml0
aW4gUmF3YXQgPG5pdGluLnJhd2F0QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5
OiBxY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5OiBBZGQgUU1QIFVGUyBQSFkgY29tcGF0aWJsZSBm
b3IgTWFpbGkKCkRvY3VtZW50IHRoZSBRTVAgVUZTIFBIWSBjb21wYXRpYmxlIGZvciBRdWFsY29t
bSBNYWlsaSB0byBzdXBwb3J0CnBoeXNpY2FsIGxheWVyIGZ1bmN0aW9uYWxpdHkgZm9yIFVGUyBm
b3VuZCBvbiB0aGUgU29DLiBVc2UgZmFsbGJhY2sgdG8KaW5kaWNhdGUgdGhlIGNvbXBhdGliaWxp
dHkgb2YgdGhlIFFNUCBVRlMgUEhZIG9uIHRoZSBNYWlsaSB3aXRoIHRoYXQgb24KdGhlIEhhd2ku
Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXVmcy1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sCj4gaW5kZXggYjJjNWM5
YTM3NWEzNS4uZjc0NDM0ZjUxNjUzYyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1waHkueWFtbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAt
dWZzLXBoeS55YW1sCj4gQEAgLTE2LDYgKzE2LDEwIEBAIGRlc2NyaXB0aW9uOgo+ICBwcm9wZXJ0
aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBvbmVPZjoKPiArICAgICAgLSBpdGVtczoKPiAr
ICAgICAgICAgIC0gZW51bToKPiArICAgICAgICAgICAgICAtIHFjb20sbWFpbGktcW1wLXVmcy1w
aHkKPiArICAgICAgICAgIC0gY29uc3Q6IHFjb20saGF3aS1xbXAtdWZzLXBoeQoKW1NldmVyaXR5
OiBNZWRpdW1dCklmIHFjb20saGF3aS1xbXAtdWZzLXBoeSBpcyB1c2VkIGFzIGEgZmFsbGJhY2sg
aGVyZSwgc2hvdWxkbid0IGl0IGFsc28KYmUgYWRkZWQgdG8gdGhlIHN0YW5kYWxvbmUgZW51bSBs
aXN0IGZ1cnRoZXIgZG93biBpbiB0aGlzIGZpbGUgYXQgbGluZSA0Mgp1bmRlciBwcm9wZXJ0aWVz
OmNvbXBhdGlibGU6b25lT2Y6ZW51bT8KCldpdGhvdXQgaXQgYmVpbmcgZGVmaW5lZCBhcyBhIHN0
YW5kYWxvbmUgY29tcGF0aWJsZSBzdHJpbmcsIGEgZGV2aWNlIHRyZWUKbm9kZSBmb3IgdGhlIGJh
c2UgSGF3aSBoYXJkd2FyZSB1c2luZyBqdXN0CmNvbXBhdGlibGUgPSAicWNvbSxoYXdpLXFtcC11
ZnMtcGh5IiB3aWxsIGZhaWwgc2NoZW1hIHZhbGlkYXRpb24gd2hlbiBydW5uaW5nCmR0X2JpbmRp
bmdfY2hlY2suCgoKW1NldmVyaXR5OiBNZWRpdW1dCkRvIHRoZXNlIG5ldyBjb21wYXRpYmxlcyBu
ZWVkIHRvIGJlIGFkZGVkIHRvIHRoZSBhbGxPZiBjb25kaXRpb25hbCBibG9jawp0aGF0IGVuZm9y
Y2VzIHN0cmljdCBjbG9jayBjb25zdHJhaW50cyBhdCBsaW5lIDg4PwoKQ3VycmVudGx5LCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1w
aHkueWFtbApoYXMgYW4gYWxsT2Y6aWYgYmxvY2sgc3RhcnRpbmcgYXQgbGluZSA4OCB0aGF0IGVu
Zm9yY2VzIGEgc3RyaWN0IDMtY2xvY2sKbGltaXQgKHJlZiwgcmVmX2F1eCwgcXJlZikgZm9yIG1v
c3QgbW9kZXJuIFBIWXMuCgpTaW5jZSB0aGV5IGFyZSBtaXNzaW5nIGZyb20gdGhhdCBlbnVtIGxp
c3QsIGRldmljZSB0cmVlcyB1c2luZyB0aGVzZSBuZXcKY29tcGF0aWJsZSBzdHJpbmdzIHdpbGwg
c2lsZW50bHkgYnlwYXNzIHRoZSBzdHJpY3QgY2xvY2sgY29uc3RyYWludHMgYW5kCmZhbGwgYmFj
ayB0byB0aGUgbG9vc2UgZ2xvYmFsIGRlZmF1bHRzLiBUaGlzIHJlZ3Jlc3Npb24gYWxsb3dzIGlu
Y29tcGxldGUgb3IKaW52YWxpZCBjbG9jayBjb25maWd1cmF0aW9ucyB0byBwYXNzIGR0X2JpbmRp
bmdfY2hlY2sgdmFsaWRhdGlvbi4KCj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVu
dW06Cj4gICAgICAgICAgICAgICAgLSBxY29tLHFjczgzMDAtcW1wLXVmcy1waHkKCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTQw
MDQ3MjUuMTM2ODAyNy0xLW5pdGluLnJhd2F0QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
