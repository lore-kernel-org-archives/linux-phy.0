Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C919CC48260
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GbgsegfWMwFoBmIAAmstqLjrgORQd7xJjbFwo+sda0=; b=LZAMo9+Jg70drE
	1Zlpf/UMgwheRNnu17kxrr1Yg4sm7Wd26Ywt1qFzc6C0TCBsZXUSBdpojlfMlY94j7NFwUXzTpULM
	bWPO9OgJ9KrOu3uOjHNTeTmAGoTZ6SJJDAyFSN1lBW8Q8u6m/tmLeWMQlTdkjjn2QgBDw1QnY96vO
	G/Our8M30qcGGmqy3WBoSPRoFJnbtlhK6DpQ7THcyi2x0oH3O6oQyszFZF75FqqttlnEYBIqp7C3r
	Q2A9e3c9EKkUeGXagkBrKU1oPFzZFSayRB0G1c40vcLtF7Iir0wfAW7M+UGOYlLK/36fsFeuquuRo
	S5N4a7EjxiNVhkY8/Yzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLO-00000004NJ0-37u1;
	Fri, 26 Jan 2024 14:38:10 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNL4-00000004N2L-2llX;
	Fri, 26 Jan 2024 14:37:52 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9414640004;
	Fri, 26 Jan 2024 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TYpIlz92+4LlPtdrbkhMPtlalEsL2Q+znIFM/DHRXRE=;
	b=bcElLzJhYd7HVh2QtZ37cGb9zfLd8NGMhYzI6tdfIj2bRrCEaWZC0TlgFD7PA/F/B19J13
	eoajjwRK9UaqdOgOzvyFK2Dzw8P85nkcewX/dzdTRpyvBVmapJ9udLpXes2tu2tdy9lUDB
	WR68OjdMwqBE/MW7dxmFOym0T29E93eew1jr9EHLYWsLnFC8ZyV8uXSvynunFK1B5CKytl
	T6LQ5NHC5EyVRDGLV5cSgJbEMf2YETePIvGkx0QQvpRstsLorOqx5gIneDv286OxSHRJwc
	Qlc1cE/yg2K8v8z645P4US+hK9JgYPVHKuS1hiSPnrm6wjfnuyDdMyVRp106Uw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:48 +0100
Subject: [PATCH v2 06/15] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-6-8e4f7d228ec2@bootlin.com>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_063751_010555_460E7172 
X-CRM114-Status: GOOD (  14.05  )
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

Rm9yIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LCB3aXpfY2xvY2tfaW5pdCBuZWVkcyB0byBi
ZSBjYWxsZWQgbXVsdGlwbGUKdGltZXMuCgpBZGQgYSBwYXJhbWV0ZXIgdG8gd2l6X2Nsb2NrX2lu
aXQgdG8gYmUgYWJsZSB0byBza2lwIGNsb2NrcyByZWdpc3RyYXRpb24uCgpCYXNlZCBvbiB0aGUg
d29yayBvZiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgoKU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgotLS0KIGRy
aXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYyB8IDYwICsrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDI0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXou
YyBiL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYwppbmRleCBmYzNjZDk4YzYwZmYuLjA5
ZjdlZGYxNjU2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCisr
KyBiL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYwpAQCAtMTA3Niw3ICsxMDc2LDcgQEAg
c3RhdGljIGludCB3aXpfY2xvY2tfcmVnaXN0ZXIoc3RydWN0IHdpeiAqd2l6KQogCXJldHVybiBy
ZXQ7CiB9CiAKLXN0YXRpYyBpbnQgd2l6X2Nsb2NrX2luaXQoc3RydWN0IHdpeiAqd2l6LCBzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5vZGUpCitzdGF0aWMgaW50IHdpel9jbG9ja19pbml0KHN0cnVjdCB3
aXogKndpeiwgc3RydWN0IGRldmljZV9ub2RlICpub2RlLCBib29sIHByb2JlKQogewogCWNvbnN0
IHN0cnVjdCB3aXpfY2xrX211eF9zZWwgKmNsa19tdXhfc2VsID0gd2l6LT5jbGtfbXV4X3NlbDsK
IAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSB3aXotPmRldjsKQEAgLTEwODcsMTQgKzEwODcsMzYgQEAg
c3RhdGljIGludCB3aXpfY2xvY2tfaW5pdChzdHJ1Y3Qgd2l6ICp3aXosIHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbm9kZSkKIAlpbnQgcmV0OwogCWludCBpOwogCi0JY2xrID0gZGV2bV9jbGtfZ2V0KGRl
diwgImNvcmVfcmVmX2NsayIpOwotCWlmIChJU19FUlIoY2xrKSkgewotCQlkZXZfZXJyKGRldiwg
ImNvcmVfcmVmX2NsayBjbG9jayBub3QgZm91bmRcbiIpOwotCQlyZXQgPSBQVFJfRVJSKGNsayk7
Ci0JCXJldHVybiByZXQ7CisJaWYgKHByb2JlKSB7CisJCWNsayA9IGRldm1fY2xrX2dldChkZXYs
ICJjb3JlX3JlZl9jbGsiKTsKKwkJaWYgKElTX0VSUihjbGspKSB7CisJCQlkZXZfZXJyKGRldiwg
ImNvcmVfcmVmX2NsayBjbG9jayBub3QgZm91bmRcbiIpOworCQkJcmV0ID0gUFRSX0VSUihjbGsp
OworCQkJcmV0dXJuIHJldDsKKwkJfQorCQl3aXotPmlucHV0X2Nsa3NbV0laX0NPUkVfUkVGQ0xL
XSA9IGNsazsKKworCQlpZiAod2l6LT5kYXRhLT5wbWFfY21uX3JlZmNsazFfaW50X21vZGUpIHsK
KwkJCWNsayA9IGRldm1fY2xrX2dldChkZXYsICJjb3JlX3JlZjFfY2xrIik7CisJCQlpZiAoSVNf
RVJSKGNsaykpIHsKKwkJCQlkZXZfZXJyKGRldiwgImNvcmVfcmVmMV9jbGsgY2xvY2sgbm90IGZv
dW5kXG4iKTsKKwkJCQlyZXQgPSBQVFJfRVJSKGNsayk7CisJCQkJcmV0dXJuIHJldDsKKwkJCX0K
KwkJCXdpei0+aW5wdXRfY2xrc1tXSVpfQ09SRV9SRUZDTEsxXSA9IGNsazsKKwkJfQorCisJCWNs
ayA9IGRldm1fY2xrX2dldChkZXYsICJleHRfcmVmX2NsayIpOworCQlpZiAoSVNfRVJSKGNsaykp
IHsKKwkJCWRldl9lcnIoZGV2LCAiZXh0X3JlZl9jbGsgY2xvY2sgbm90IGZvdW5kXG4iKTsKKwkJ
CXJldCA9IFBUUl9FUlIoY2xrKTsKKwkJCXJldHVybiByZXQ7CisJCX0KKwkJd2l6LT5pbnB1dF9j
bGtzW1dJWl9FWFRfUkVGQ0xLXSA9IGNsazsKIAl9Ci0Jd2l6LT5pbnB1dF9jbGtzW1dJWl9DT1JF
X1JFRkNMS10gPSBjbGs7CiAKKworCWNsayA9IHdpei0+aW5wdXRfY2xrc1tXSVpfQ09SRV9SRUZD
TEtdOwogCXJhdGUgPSBjbGtfZ2V0X3JhdGUoY2xrKTsKIAlpZiAocmF0ZSA+PSAxMDAwMDAwMDAp
CiAJCXJlZ21hcF9maWVsZF93cml0ZSh3aXotPnBtYV9jbW5fcmVmY2xrX2ludF9tb2RlLCAweDEp
OwpAQCAtMTEyMSwxNCArMTE0Myw3IEBAIHN0YXRpYyBpbnQgd2l6X2Nsb2NrX2luaXQoc3RydWN0
IHdpeiAqd2l6LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCiAJfQogCiAJaWYgKHdpei0+ZGF0
YS0+cG1hX2Ntbl9yZWZjbGsxX2ludF9tb2RlKSB7Ci0JCWNsayA9IGRldm1fY2xrX2dldChkZXYs
ICJjb3JlX3JlZjFfY2xrIik7Ci0JCWlmIChJU19FUlIoY2xrKSkgewotCQkJZGV2X2VycihkZXYs
ICJjb3JlX3JlZjFfY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7Ci0JCQlyZXQgPSBQVFJfRVJSKGNs
ayk7Ci0JCQlyZXR1cm4gcmV0OwotCQl9Ci0JCXdpei0+aW5wdXRfY2xrc1tXSVpfQ09SRV9SRUZD
TEsxXSA9IGNsazsKLQorCQljbGsgPSB3aXotPmlucHV0X2Nsa3NbV0laX0NPUkVfUkVGQ0xLMV07
CiAJCXJhdGUgPSBjbGtfZ2V0X3JhdGUoY2xrKTsKIAkJaWYgKHJhdGUgPj0gMTAwMDAwMDAwKQog
CQkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+cG1hX2Ntbl9yZWZjbGsxX2ludF9tb2RlLCAweDEp
OwpAQCAtMTEzNiwyMCArMTE1MSwxNyBAQCBzdGF0aWMgaW50IHdpel9jbG9ja19pbml0KHN0cnVj
dCB3aXogKndpeiwgc3RydWN0IGRldmljZV9ub2RlICpub2RlKQogCQkJcmVnbWFwX2ZpZWxkX3dy
aXRlKHdpei0+cG1hX2Ntbl9yZWZjbGsxX2ludF9tb2RlLCAweDMpOwogCX0KIAotCWNsayA9IGRl
dm1fY2xrX2dldChkZXYsICJleHRfcmVmX2NsayIpOwotCWlmIChJU19FUlIoY2xrKSkgewotCQlk
ZXZfZXJyKGRldiwgImV4dF9yZWZfY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7Ci0JCXJldCA9IFBU
Ul9FUlIoY2xrKTsKLQkJcmV0dXJuIHJldDsKLQl9Ci0Jd2l6LT5pbnB1dF9jbGtzW1dJWl9FWFRf
UkVGQ0xLXSA9IGNsazsKLQorCWNsayA9IHdpei0+aW5wdXRfY2xrc1tXSVpfRVhUX1JFRkNMS107
CiAJcmF0ZSA9IGNsa19nZXRfcmF0ZShjbGspOwogCWlmIChyYXRlID49IDEwMDAwMDAwMCkKIAkJ
cmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+cG1hX2Ntbl9yZWZjbGtfbW9kZSwgMHgwKTsKIAllbHNl
CiAJCXJlZ21hcF9maWVsZF93cml0ZSh3aXotPnBtYV9jbW5fcmVmY2xrX21vZGUsIDB4Mik7CiAK
KwkvKiBXaGF0IGZvbGxvd3MgaXMgYWJvdXQgcmVnaXN0ZXJpbmcgY2xvY2tzLiAqLworCWlmICgh
cHJvYmUpCisJCXJldHVybiAwOworCiAJc3dpdGNoICh3aXotPnR5cGUpIHsKIAljYXNlIEFNNjRf
V0laXzEwRzoKIAljYXNlIEo3MjAwX1dJWl8xMEc6CkBAIC0xNTkyLDcgKzE2MDQsNyBAQCBzdGF0
aWMgaW50IHdpel9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVy
cl9nZXRfc3luYzsKIAl9CiAKLQlyZXQgPSB3aXpfY2xvY2tfaW5pdCh3aXosIG5vZGUpOworCXJl
dCA9IHdpel9jbG9ja19pbml0KHdpeiwgbm9kZSwgdHJ1ZSk7CiAJaWYgKHJldCA8IDApIHsKIAkJ
ZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRvIGluaXRpYWxpemUgY2xvY2tzXG4iKTsKIAkJZ290byBl
cnJfZ2V0X3N5bmM7CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
