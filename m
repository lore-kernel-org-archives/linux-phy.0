Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA810C6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 09:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIvOJHo816um0cmE4M+7JtV1ST2n7h8FKbrbE4pXvCE=; b=XL65RU3p2X8aAl
	i35bCtWPyfWRpOS3KjZsgI81f4OI/Mp6NhshMyM2uyhitr+VZOdClRxYhY2czgxioHI2J9QMOViI5
	Z7pMbuGPhcmKkzVsLlE3ZJVxKB8kVqFSaT/vAoZ/b8mS9D2Cr4ofzl+NRZPxTioKu/fq9fKTYIJzq
	U52vJ4u+M1r4jvVffu6+lJYSx8Cm9c78+x2KdVABwhSGHtFBdKeUWq39t1bpy1QWrhgz4ZmUkfEy4
	o7zWp9jfLv6yHYFw1ESbYkxCH44GEcZxdx3IiZw6RsEaVWuKH5TGJuYoQ6Q8HHa/K/H8K75St4B9l
	huTFw6dpvwX7SnY09CKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfHBs-001RIr-1i;
	Thu, 23 Mar 2023 09:25:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfHBp-001RHL-2v
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 09:24:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfHAs-0003uL-Og; Thu, 23 Mar 2023 10:23:58 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfHAm-0067Jh-Pk; Thu, 23 Mar 2023 10:23:52 +0100
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfHAm-0002Yl-3Q; Thu, 23 Mar 2023 10:23:52 +0100
Message-ID: <7799e176e73d1385322e5efba8479e56544c664b.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/5] dt-binding: Add JH7110 USB wrapper layer doc.
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Minda Chen <minda.chen@starfivetech.com>, Emil Renner Berthing
 <emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Pawel Laszczak <pawell@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen
 <peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Date: Thu, 23 Mar 2023 10:23:52 +0100
In-Reply-To: <20230315104411.73614-4-minda.chen@starfivetech.com>
References: <20230315104411.73614-1-minda.chen@starfivetech.com>
	 <20230315104411.73614-4-minda.chen@starfivetech.com>
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_022457_946469_6C4317E3 
X-CRM114-Status: GOOD (  12.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTWksIDIwMjMtMDMtMTUgYXQgMTg6NDQgKzA4MDAsIE1pbmRhIENoZW4gd3JvdGU6Cj4gVGhl
IGR0LWJpbmRpbmcgZG9jIG9mIENhZGVuY2UgVVNCU1MtRFJEIGNvbnRyb2xsZXIgd3JhcHBlcgo+
IGxheWVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pbmRhIENoZW4gPG1pbmRhLmNoZW5Ac3RhcmZp
dmV0ZWNoLmNvbT4KPiAtLS0KPiDCoC4uLi9iaW5kaW5ncy91c2Ivc3RhcmZpdmUsamg3MTEwLXVz
Yi55YW1sICAgICB8IDExOSArKysrKysrKysrKysrKysrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
MTkgaW5zZXJ0aW9ucygrKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2Ivc3RhcmZpdmUsamg3MTEwLXVzYi55YW1sCj4gCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Ivc3RhcmZpdmUsamg3
MTEwLXVzYi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9zdGFy
Zml2ZSxqaDcxMTAtdXNiLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMC4uYjFhOGRjNmQ3YjRiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Ivc3RhcmZpdmUsamg3MTEwLXVzYi55YW1sCj4gQEAg
LTAsMCArMSwxMTkgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25s
eSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy91c2Ivc3RhcmZpdmUsamg3MTEwLXVzYi55YW1sIwo+ICskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4g
K3RpdGxlOiBTdGFyRml2ZSBKSDcxMTAgd3JhcHBlciBtb2R1bGUgZm9yIHRoZSBDYWRlbmNlIFVT
QlNTLURSRCBjb250cm9sbGVyCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIE1pbmRhIENoZW4g
PG1pbmRhLmNoZW5Ac3RhcmZpdmV0ZWNoLmNvbT4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29t
cGF0aWJsZToKPiArICAgIGNvbnN0OiBzdGFyZml2ZSxqaDcxMTAtdXNiCj4gKwo+ICsgIGNsb2Nr
czoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBscG0gY2xvY2sKPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogc3RiIGNsb2NrCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IGFwYiBj
bG9jawo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBheGkgY2xvY2sKPiArICAgICAgLSBkZXNjcmlw
dGlvbjogdXRtaSBhcGIgY2xvY2sKPiArCj4gKyAgY2xvY2stbmFtZXM6Cj4gKyAgICBpdGVtczoK
PiArICAgICAgLSBjb25zdDogbHBtCj4gKyAgICAgIC0gY29uc3Q6IHN0Ygo+ICsgICAgICAtIGNv
bnN0OiBhcGIKPiArICAgICAgLSBjb25zdDogYXhpCj4gKyAgICAgIC0gY29uc3Q6IHV0bWlfYXBi
Cj4gKwo+ICsgIHJlc2V0czoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQ
V1JVUCByZXNldAo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBBUEIgcmVzZXQKPiArICAgICAgLSBk
ZXNjcmlwdGlvbjogQVhJIHJlc2V0Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFVUTUlfQVBCIHJl
c2V0CgpJJ2QgYWRkIGEgInJlc2V0LW5hbWVzIiBwcm9wZXJ0eSwganVzdCBpbiBjYXNlIHRoZXJl
IGlzIGV2ZXIgYSByZWFzb24KdG8gdHJpZ2dlciBhbnkgb2YgdGhlIHJlc2V0cyBpbmRlcGVuZGVu
dGx5IGZyb20gdGhlIG90aGVycy4KCnJlZ2FyZHMKUGhpbGlwcAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
