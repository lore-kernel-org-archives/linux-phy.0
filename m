Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54586C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSvUABZzF8kbZ2lhyXAIEC5gn070C8uGdQ7vjSMzqdA=; b=UKVrqctnaebH3m
	MF2+cUPAwJhEPwzcNJmUTj8HK4dDB9rTMiBTH1q/6Kl05JahBXGyPpRBGGJoLk2PVYUSIHyrelpEK
	mUATS6mwwb9yj39mB4od1du3KbScijcI2S17WEl59jQGFVyKY0kGXBx/nRpCBvW0LEOj2ZUhpKciy
	baRbjY+c5rxZKcYY/PpizJzehRSjH+7mTyiLKw0Ip7/0fMDU6/snl5uNimZ3r9blH25bDTy7nQNbd
	zZQum5PC7Au/u5lc1mmJBqY863IbsEJWCIRqTx4hK40aXzFt5Fyz+e3p4ABrMrjo/DfMYq21mEeyL
	6ryAZPL2BO1Q5TCu6TUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnWc-000000081Yr-0Q4A;
	Fri, 03 Jul 2026 23:42:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnWb-000000081Yk-0Q3Z
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:42:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 17CA6407E9;
	Fri,  3 Jul 2026 23:42:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ECFB1F000E9;
	Fri,  3 Jul 2026 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122142;
	bh=OREPypUrPgy4y2miTeLz+RdBIlQ2Bblm2hWF7JX0EKo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D2J3/49StCzrp9LNOYpdmmjaUhYUmzy+QAzQRkzf8syH25cDfWLG9oatvKgNVpKIJ
	 m1xA8eWzsIj0GgCHMXvHIBwkysRTIXKZ/UqetguH+dPq7Obj4bmpq03Ks9BXbBcBA3
	 C3VOpfOp5trQvIkWucfDcXZ/Wz8wTlgOYEWRQtj/lBltKfVmcHrBVS0o54ChbSmdMD
	 uMyq2fWLOrNzllRKiwUv+JXgfQT7dMfMx88xRxP3gKaPFFIwxDfY9sunTv3Bx8ghUE
	 nxCVe/nNEo68HEx8CJurS/nKYWbZ+012cCxqUekJItRSaVRPd5uskIZgKpkEN9tllJ
	 dZJwNScivYz2Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 01/36] dt-bindings: phy: rockchip-usbdp: add
 improved ports scheme
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-1-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-1-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:42:22 +0000
Message-Id: <20260703234222.7ECFB1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVHlwbyBpbiB0aGUgZGVw
cmVjYXRpb24ga2V5d29yZCAoJ2RlcHJlYXRlZCcgaW5zdGVhZCBvZiAnZGVwcmVjYXRlZCcpLgot
LQoKY29tbWl0IDgwY2JjZDU0OTg1ODRjZDU3M2E5NzlhNWI0ZTIzNmRhOTNkMDk3NzYKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCmR0
LWJpbmRpbmdzOiBwaHk6IHJvY2tjaGlwLXVzYmRwOiBhZGQgaW1wcm92ZWQgcG9ydHMgc2NoZW1l
CgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgcHJvcGVyIHBvcnQgc2NoZW1lIHRvIHRoZSBSb2Nr
Y2hpcCBVU0JEUCBQSFkgYmluZGluZwp0byBzdXBwb3J0IFVTQi1DIERQIEFsdE1vZGUsIHJlcGxh
Y2luZyBhbiB1bmRvY3VtZW50ZWQgc2NoZW1lLiBJdCBkZXByZWNhdGVzCnRoZSBzaW5nbGUgcG9y
dCBub2RlIGluIGZhdm9yIG9mIGEgcG9ydHMgbm9kZSBjb250YWluaW5nIG11bHRpcGxlIHNwZWNp
ZmljCmVuZHBvaW50cy4gVGhlIG5ldyBkZXNpZ24gcm91Z2hseSBmb2xsb3dzIHRoZSBRdWFsY29t
bSBRTVAgVVNCNC1VU0IzLURQIFBIWQpjb250cm9sbGVyIGJpbmRpbmcgd2hpbGUgYWRkaW5nIGFu
IGFkZGl0aW9uYWwgcG9ydCBmb3IgdGhlIFVTQi1DIFNCVSBtdXguCgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC11c2JkcC55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAt
dXNiZHAueWFtbAo+IGluZGV4IDhiNzA1OWQ1YjE4MjYuLjM1ZDY3MTdiOWNjOWUgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAt
dXNiZHAueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cGh5LXJvY2tjaGlwLXVzYmRwLnlhbWwKPiBAQCAtMTEwLDEwICsxMTAsMzQgQEAgcHJvcGVydGll
czoKPiAgCj4gICAgcG9ydDoKPiAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3Bl
cnRpZXMvcG9ydAo+ICsgICAgZGVwcmVhdGVkOiB0cnVlCiAgICAgICAgXl5eXl5eXl5eCgpbU2V2
ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHRoZXJlIGlzIGEgdHlwbyBoZXJlICgi
ZGVwcmVhdGVkIiBpbnN0ZWFkIG9mCiJkZXByZWNhdGVkIikuCgo+ICAgICAgZGVzY3JpcHRpb246
Cj4gICAgICAgIEEgcG9ydCBub2RlIHRvIGxpbmsgdGhlIFBIWSB0byBhIFR5cGVDIGNvbnRyb2xs
ZXIgZm9yIHRoZSBwdXJwb3NlIG9mCj4gICAgICAgIGhhbmRsaW5nIG9yaWVudGF0aW9uIHN3aXRj
aGluZy4KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDMtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTAtMC1hMzky
NzExY2E4YTlAY29sbGFib3JhLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
