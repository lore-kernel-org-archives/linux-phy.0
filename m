Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1128EC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuv5ZoK2SxURchNdMxDhpIDjKsLBHRhTLK8cSBuEnz0=; b=XFKNoBpfH+Yd/9
	iXUuzlomYZqkG7Xx5a3s+CltqR1oRi4hVfASxxwQH1QHN/lN+6bOdd2o6ZoZJpnAntYfx7qIaTpQg
	ibz/Z91PWsJBS2Al8E5sov7xTYYRPpwHQHO8qQGucXhIAgcyuX4qJYAjvlLsH+RLsOeBj6SOcNWaH
	Wd2OhjejDVLdJV0kN1GWd7vixSqKQSWov3FruCjy0sb/TsfJ4nxFbbQ9OaP8Hdja/rjvccQ90tXUo
	XT3Hy09TGBwXP25qXEKERW25jeVpZNB04BT0wjm1Zh2IPwZDjnWmAz9baCseBa0gwRFemaZsuIJt0
	kTW/1G8+MkRjFba0LsSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJx5-00000009ETa-2aJq;
	Sun, 05 Jul 2026 10:19:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJx3-00000009ETU-3u1p
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:19:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F3E8B61375;
	Sun,  5 Jul 2026 10:19:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D76F1F000E9;
	Sun,  5 Jul 2026 10:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783246792;
	bh=vLPkzF0A560kYNyxKCvHMFB2LDMQOoEAEr7vl1kmp7E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=limaXQ4YM89tyf4VdqFqN7YDt50eED5m2dj3QvTNv0R73pU9I7ECeuk6QoTHN0rbl
	 jvmW4aFiG+QgmUfCbXXXrAeNJe05aDMLCqzMxVaRzWhOfK32g6pSxhWOFZjWN/OnWU
	 XT79tCDYY1CNHavDNKLO317cl44EJDdATodoCVHaMcRi+C3aC1uOO42aNXjPccL2Bi
	 yZY0TZKHHlhTZXN2g7DWdoZAhVYB/DhXyWRKMyfMD97TsjD3zMYcnYr0MlNyu23LRh
	 1W9awYyf+b7nADo22HwNlQYbo7mDn6rG+0qec1EOxNRNt4+o7HQYJuymzN+6bZbQ5B
	 sf7VKgOG7CmGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 10:19:51 +0000
Message-Id: <20260705101952.3D76F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBBZGRpbmcgYSBu
ZXcgaW50ZXJydXB0IHRvIHRoZSBpdGVtcyBsaXN0IHdpdGhvdXQgc3BlY2lmeWluZyBgbWluSXRl
bXNgIGJyZWFrcyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IGZvciBleGlzdGluZyBkZXZpY2UgdHJl
ZXMuCi0tCgpjb21taXQgN2U4OTMxZGRlMmJhODJiNThkMzhlZmQwMzE0ZTYzZDI5NGU1MzAxZgpB
dXRob3I6IEl2YXlsbyBEaW1pdHJvdiA8aXZvLmcuZGltaXRyb3YuNzVAZ21haWwuY29tPgoKZHQt
YmluZGluZ3M6IHBoeTogbW90b3JvbGEsY3BjYXAtdXNiOiBhZGQgY2hyZ19kZXQgaW50ZXJydXB0
CgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBtb3Rvcm9sYSxjcGNhcC11c2ItcGh5IGJpbmRpbmcg
YnkgYXBwZW5kaW5nIGEgbmV3CmNoYXJnZXIgZGV0ZWN0aW9uIGludGVycnVwdCBmb3IgRENQIGRl
dGVjdGlvbiBhbmQgdXBkYXRpbmcgdGhlIGV4YW1wbGUuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21vdG9yb2xhLGNwY2FwLXVzYi1waHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbW90b3JvbGEsY3BjYXAt
dXNiLXBoeS55YW1sCj4gaW5kZXggZGQzNDVjYmQwYTBiNC4uNzQ4OGM0NmNjNjE5MyAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21vdG9yb2xhLGNw
Y2FwLXVzYi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55YW1sCj4gQEAgLTMwLDYgKzMwLDcgQEAgcHJv
cGVydGllczoKPiAgICAgICAgLSBkZXNjcmlwdGlvbjogc2UxIGludGVycnVwdAo+ICAgICAgICAt
IGRlc2NyaXB0aW9uOiBkbSBpbnRlcnJ1cHQKPiAgICAgICAgLSBkZXNjcmlwdGlvbjogZHAgaW50
ZXJydXB0Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IGNoYXJnZXIgZGV0ZWN0aW9uIGludGVycnVw
dAo+ICAKPiAgICBpbnRlcnJ1cHQtbmFtZXM6Cj4gICAgICBkZXNjcmlwdGlvbjogSW50ZXJydXB0
IG5hbWVzCj4gQEAgLTQzLDYgKzQ0LDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgLSBjb25zdDog
c2UxCj4gICAgICAgIC0gY29uc3Q6IGRtCj4gICAgICAgIC0gY29uc3Q6IGRwCj4gKyAgICAgIC0g
Y29uc3Q6IGNocmdfZGV0CgpbU2V2ZXJpdHk6IENyaXRpY2FsXQpEb2VzIGFwcGVuZGluZyB0aGVz
ZSBpdGVtcyBpbXBsaWNpdGx5IGNoYW5nZSB0aGUgcmVxdWlyZWQgbnVtYmVyIG9mIGludGVycnVw
dHMKZnJvbSA5IHRvIDEwPwoKSW4gZHQtc2NoZW1hLCBkZWZpbmluZyBhbiBpdGVtcyBsaXN0IGlt
cGxpY2l0bHkgc2V0cyBib3RoIG1pbkl0ZW1zIGFuZCBtYXhJdGVtcwp0byB0aGUgbGVuZ3RoIG9m
IHRoZSBsaXN0IHVubGVzcyBleHBsaWNpdGx5IG92ZXJyaWRkZW4uIEJ5IGFwcGVuZGluZyB0aGUg
MTB0aAppdGVtIHRvIGludGVycnVwdHMgYW5kIGludGVycnVwdC1uYW1lcyB3aXRob3V0IGFkZGlu
ZyBhIG1pbkl0ZW1zOiA5IGZhbGxiYWNrLAppdCBhcHBlYXJzIHNjaGVtYSB2YWxpZGF0aW9uIHdp
bGwgc3RyaWN0bHkgbWFuZGF0ZSBleGFjdGx5IDEwIGludGVycnVwdHMuCgpJcyB0aGlzIGEgcmVn
cmVzc2lvbiB0aGF0IHdpbGwgY2F1c2UgZXhpc3RpbmcgZGV2aWNlIHRyZWVzIHdpdGggOSBpbnRl
cnJ1cHRzCnRvIGZhaWwgdmFsaWRhdGlvbj8gCgpJZiB0aGUgZHJpdmVyIGlzIHVwZGF0ZWQgdG8g
dW5jb25kaXRpb25hbGx5IHJlcXVpcmUgdGhpcyBuZXcgaW50ZXJydXB0LCBjb3VsZAp0aGlzIGFs
c28gY2F1c2UgdGhlIGRyaXZlciB0byBmYWlsIHRvIHByb2JlIG9uIGhhcmR3YXJlIHVzaW5nIG9s
ZGVyIGRldmljZQp0cmVlcz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDUxMDExMDUuMTc5ODA2OS0xLWl2by5nLmRpbWl0cm92
Ljc1QGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
