Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F2DC55175
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 14:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOL3sOhPGKd9lPdj+2S5etg+pgZXHKJE6ViSsrwKT34=; b=r+/X9E5kJdxp2h
	+UgmJHJ2fWhA9pp8z4AovcH98ag0I6IQmxKSRlV4XdAZWsPYD0t+YbFgoUB2s3/GW6ZPG30r1QN3s
	haVE+2szgJq1jORNAvPTtbJ1q2PJP8WJZeu7xkk6ZPMvem0oGcaOmByryp24s3u1f51hnZqQwygBT
	yekPVPqiXjWqr/e7vdzmvjOsXedaY95onMzUQFskzzTrPTt8f3YrNGYtE00dlojcThCsUyMhLgNAU
	LygmBeRHxu6bdcJmPeLpck4RZakwEVso+J5lDdMr/FBtCJfLt9IOFtfMjPGNUYXS2txaKEqnUQ9NC
	kp4DwbrPVADipZOx/bjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8H-0000000FiBY-0UP7;
	Sun, 02 Aug 2026 14:25:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8F-0000000FiB6-40yB
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 14:25:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 74BB041E8A;
	Sun,  2 Aug 2026 14:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 173511F00A3A;
	Sun,  2 Aug 2026 14:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785680738;
	bh=Ajfk1sWm/rfcHxaz74GWCemxT4vUasqcda/MNI7Zs0M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WjfO60iZpjEiVIr3wMWpd1E7ZDmIj83TmJpOr8dlz/5vDse1GsK8491KYVgftRooz
	 MkRqy+wkZO5+uDUD5WbyMYYZKQx1tA170LRRBfBzrT+FdhPYezVw/MHc+CO1+Poldv
	 TyyQNICALZXUgPveWAcMereQvsTNF79Ps+0pkKUWLmXr5Cofnb9+/lBLFwSPn01Qie
	 JvicybI63OB0cVSPdkJ8Hc9GpepMdRCysmPEGQ/9JVTINJaUeG+mmCco32MxFrLt8h
	 +6shiaQYAmCCvVWGlf0oP+ECLCP8D5Lj+1wB/gGf0I6d4blKmThu8EmIsp6JKU97ne
	 U923Z6t1T+Qvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for
 SGMII link recovery
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260801142244.679437-8-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-8-coiaprant@gmail.com>
Date: Sun, 02 Aug 2026 14:25:36 +0000
Message-Id: <20260802142537.173511F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gU3RhbGUgZG9jdW1lbnRh
dGlvbjogdGhlIHBhdGNoIGludHJvZHVjZXMgQk1DUl9BTlJFU1RBUlQgZm9yIE1BQy1zaWRlIFNH
TUlJIGJ1dCBmYWlscyB0byB1cGRhdGUgdGhlIGJsb2NrIGNvbW1lbnQgdGhhdCBleHBsaWNpdGx5
IHN0YXRlcyB0aGlzIGlzIG5vdCBuZWVkZWQuCi0tCgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggdjIg
MDYvMTBdIG5ldDogcGNzOiB4cGNzOiBhZGQgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxp
bmsgcmVjb3ZlcnkgLS0tCmNvbW1pdCAyYmMyNTI4ZDkyYTAzMGMxNmY5YjBiM2NlOWNhNjAyZDk4
NTczYzI2CkF1dGhvcjogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KCm5ldDogcGNz
OiB4cGNzOiBhZGQgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKClRo
aXMgY29tbWl0IGFkZHMgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3Zlcnkg
b24gaGFyZHdhcmUKdXNpbmcgdGhlIERlc2lnbldhcmUgWFBDUyBJUC4gSXQgc2V0cyBCTUNSX0FO
UkVTVEFSVCB3aGVuIHN0YXJ0aW5nCmF1dG8tbmVnb3RpYXRpb24gYW5kIHRyaWdnZXJzIGl0IGFn
YWluIGlmIHRoZSBsaW5rIGdvZXMgZG93biBhZnRlcgpjb21wbGV0aW9uIHRvIGVuc3VyZSB0aGUg
bmVnb3RpYXRpb24gcmVzdGFydHMgcHJvcGVybHkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9wY3MvcGNzLXhwY3MuYyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jCj4gLS0tIGEvZHJp
dmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKPiArKysgYi9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3Mu
Ywo+IEBAIC04MTYsOSArODE2LDE0IEBAIHN0YXRpYyBpbnQgeHBjc19jb25maWdfYW5lZ19jMzdf
c2dtaWkoc3RydWN0IGR3X3hwY3MgKnhwY3MsCgpbIC4uLiBdCgo+ICAJaWYgKG5lZ19tb2RlID09
IFBIWUxJTktfUENTX05FR19JTkJBTkRfRU5BQkxFRCkKPiAgCQlyZXQgPSB4cGNzX3dyaXRlKHhw
Y3MsIE1ESU9fTU1EX1ZFTkQyLCBNSUlfQk1DUiwKPiAtCQkJCSBtZGlvX2N0cmwgfCBCTUNSX0FO
RU5BQkxFKTsKPiArCQkJCSBtZGlvX2N0cmwgfCBCTUNSX0FORU5BQkxFIHwgQk1DUl9BTlJFU1RB
UlQpOwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBkb2VzIHRoaXMgY2hh
bmdlIG1ha2UgdGhlIGxhcmdlIGJsb2NrIGNvbW1lbnQgZWFybGllcgppbiB4cGNzX2NvbmZpZ19h
bmVnX2MzN19zZ21paSgpIGNvbnRyYWRpY3Rvcnk/CgpUaGUgZXhpc3RpbmcgY29tbWVudCBleHBs
aWNpdGx5IHN0YXRlczoKIlRoZXJlIGlzIGFsc28gbm8gbmVlZCB0byB0cmlnZ2VyIEFOIHJlc3Rh
cnQgZm9yIE1BQy1zaWRlIFNHTUlJLiIKClNpbmNlIHRoaXMgcGF0Y2ggYWRkcyB0aGUgQk1DUl9B
TlJFU1RBUlQgZmxhZyB0byB0aGUgTUFDLXNpZGUgU0dNSUkgcGF0aCwKc2hvdWxkIHRoZSBjb21t
ZW50IGJlIHVwZGF0ZWQgdG8gcmVmbGVjdCB0aGUgbmV3IGJlaGF2aW9yPwoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwMTE0MjI0
NC42Nzk0MzctMi1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
