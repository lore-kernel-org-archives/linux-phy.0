Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF60C98313
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxxWJ5u30YwMMQ4NEH5o0pwiSEeOdXVw69KzUPXwh4o=; b=jLEDEmopMncCpy
	QIiIG+Hr5NOcnPiykzw78bsksrQNVcujoBCY6QNEDXrUNC/9YJ63glhV5BonUbXPXsodUidBcnNMg
	TuC93ip4Ps9olsnwFha2YkKAkERpLWGVID7qEW6iPDxieBJ9cE55YQ77hv3SElyP6fgOLjG7sMDRM
	BQF6uV7iekHBH7GDrTHW710CujNMRVI/NZzs5WoC9P2PsDEVWvC4IC6c2rJ4wOryvgaXYXMgjgSKo
	zbhjcF4zpHC1XKfdP0ATWmhkHrzLe8nVsGJ6xMjy16ZBF6PAjL3xcwwAyDYiNSFnOXAnGZb903hwL
	htbBTvP5pUEoZhV2nUFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rtq-00000009F5F-25EX;
	Wed, 23 Sep 2026 18:40:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rtk-00000009Eyt-3Vmb
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:40:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E659160239;
	Wed, 23 Sep 2026 18:40:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BA291F0089E;
	Wed, 23 Sep 2026 18:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188851;
	bh=S/W2Po2BbF5aq98WhvE/IfdysqS3aPARdILD9rgtljQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PTxzIYJw9OCK0Dbv1BWI/GJin4ZmTvnbH+9ja8Y0VBEW22iMifb5qzEEo0VI4Eqmv
	 nhbQ06WCWtnoOnwm93dYH44E5AGzTGq7CLgIUvy0am1tpnHhUoZhHhPz+g0aG9Cixd
	 IPKHPZWErBK3nzrPR+vOg8KnzqLiBXiBbnW6Avz2O/P1rItyD7KtX2DJpkBRhW03J+
	 s+uOn1HHXjc27M776anNxxZ8Cp3ywXdK9otBwJOiZoy5ZLaAWbDb2xK4eOxx/YX0j6
	 glIBwBXDmnfjpGE69Zwez+6TH2KQRsCBbVVcUApcN/m9lFv+Fad2Z6qy3CdHOL+WqP
	 G+CsMSblha3MQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260923-zx29clk-v12-9-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-9-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:40:50 +0000
Message-Id: <20260923184051.0BA291F0089E@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gY2xrOiB6dGU6IG1p
c3NpbmcgRFQgZXhwb3J0IGZvciBaWDI5NzUyMFYzX1JGRkVfV0NMSwotLQoKY29tbWl0IDRkMmM1
MDI1ZWU2MGFlNWNkZjBlNjM2Y2FmZjcwYjJjZGM4YTNlNjAKQXV0aG9yOiBTdGVmYW4gRMO2c2lu
Z2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKY2xrOiB6dGU6IEludHJvZHVjZSBhIGRy
aXZlciBmb3IgengyOTc1MjB2MyBtYXRyaXggY2xvY2tzCgpUaGlzIGNsb2NrIGNvbnRyb2xsZXIg
Y29udHJvbHMgaGlnaCBzcGVlZCBkZXZpY2VzOiBDUFUsIERNQSwgUkFNLCBTRElPLApFdGhlcm5l
dC4gVGhlIG9ubHkgbm9uLWNsb2NrLCBub24tcmVzZXQgcmVnaXN0ZXJzIEkgaGF2ZSBzcG90dGVk
IGhlcmUKYXJlIGhhcmR3YXJlIHNwaW5sb2Nrcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xr
L3p0ZS9jbGstengyOTc1MjB2My5jIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMK
PiBpbmRleCA2OGJmZWFiODRkNzQ1Li45MmI1NjU3MWIxNTU2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5jCj4gKysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16
eDI5NzUyMHYzLmMKClsgLi4uIF0KCj4gK3N0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgengyOTc1
MjB2M19tYXRyaXhfZXhwb3J0c1tdID0gewo+ICsJW1pYMjk3NTIwVjNfU1lTX1RJTUVSX1dDTEtd
ID0JCVpYX0NMS19TWVNfVElNRVJfV0NMSywKPiArCVtaWDI5NzUyMFYzX0NQVV9XQ0xLXSA9CQkJ
WlhfQ0xLX0NQVV9XQ0xLLAoKWyAuLi4gXQoKPiArCVtaWDI5NzUyMFYzX1BEQ0ZHX1dDTEtdID0J
CVpYX0NMS19QRENGR19XQ0xLLAo+ICsJW1pYMjk3NTIwVjNfUERDRkdfUENMS10gPQkJWlhfQ0xL
X1BEQ0ZHX1BDTEssCj4gKwlbWlgyOTc1MjBWM19TU0NfV0NMS10gPQkJCVpYX0NMS19TU0NfV0NM
SywKPiArCVtaWDI5NzUyMFYzX1NTQ19QQ0xLXSA9CQkJWlhfQ0xLX1NTQ19QQ0xLLAoKW1NldmVy
aXR5OiBNZWRpdW1dCklzIHRoZSBtYXBwaW5nIGZvciBaWDI5NzUyMFYzX1JGRkVfV0NMSyBpbnRl
bnRpb25hbGx5IG1pc3NpbmcgZnJvbQp6eDI5NzUyMHYzX21hdHJpeF9leHBvcnRzPwoKQmVjYXVz
ZSB0aGlzIG1hcHBpbmcgaXMgb21pdHRlZCwgYW55IGRldmljZSBxdWVyeWluZyBmb3IgdGhlIFJG
RkUgd29yayBjbG9jawp2aWEgdGhlIGRldmljZSB0cmVlIHdpbGwgYmUgc2lsZW50bHkgbWFwcGVk
IHRvIGluZGV4IDAuIFRoaXMgaW5kZXggY29ycmVzcG9uZHMKdG8gdGhlIFpYX0NMS19NQVRSSVhf
T1NDMjZNX0Q0IGNsb2NrIHJhdGhlciB0aGFuIHRoZSBpbnRlbmRlZCByZmZlLXdjbGsuCgpDb3Vs
ZCB0aGlzIGluY29ycmVjdCBtYXBwaW5nIGJyZWFrIHRoZSBMVEUgcmFkaW8gaGFyZHdhcmUgYW5k
IHBvdGVudGlhbGx5CmRpc3J1cHQgYWN0dWFsIGNvbnN1bWVycyBvZiB0aGUgNi41IE1IeiBtYXRy
aXgtb3NjMjZtLWQ0IGNsb2NrIHdoZW4gYSBkcml2ZXIKcHJvYmVzIGFuZCBvcGVyYXRlcyBvbiB0
aGUgaGFyZHdhcmUgYmxvY2s/Cgo+ICsJW1pYMjk3NTIwVjNfQVhJX1dDTEtdID0JCQlaWF9DTEtf
QVhJX1dDTEssCj4gKwlbWlgyOTc1MjBWM19HTUFDX1dDTEtdID0JCVpYX0NMS19HTUFDX1dDTEss
Cj4gKwlbWlgyOTc1MjBWM19HTUFDX1BDTEtdID0JCVpYX0NMS19HTUFDX1BDTEssCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTIz
LXp4MjljbGstdjEyLTAtOWMyNDM3OTZiNmQyQGdtYWlsLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
