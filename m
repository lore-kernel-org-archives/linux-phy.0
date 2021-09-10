Return-Path: <SRS0=5sx/=OA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C143EC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:49:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 815A961250
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:49:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 815A961250
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvAb0gU95mMggbx2glyytW8ZFb/06Zrx9LFnlBvnIcs=; b=ZfmXQalW40diWE
	2yMzkBqtnKcA/h8IKM7HGsPJtaBYxOCBtvPAKVrDH2Ud5bhS/o9nAuwNNHnpcqJrYXFT7N4H4FN5C
	Ycexzc/47voTIH3Z04y43QGmQWb0FXVVxluXW2m6RdlJNc6nBGqF5kKq+d+umKz8uvos53CsQhnGA
	OanzmH7BahSJrDW6S6yPYQRnL3Gsv9ng3R0yxoOqayZsoUEG1SkrXwhdO6bBaMCEY8Wot7iI/Rici
	2RU2t12lE5150ZJhMNY0VUB/KT2dUD5qQuiiBs7T+cuPP3Gxe8ZEPmrpKRipz7CWWiJlJsatCehrg
	aHykWtf6aMfZW/+7qj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOlaR-00DPQh-UT; Fri, 10 Sep 2021 18:49:19 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlTy-00DM3J-Iv; Fri, 10 Sep 2021 18:42:41 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6A7C4240003;
 Fri, 10 Sep 2021 18:42:35 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?K=C3=A9vin=20L=27h=C3=B4pital?= <kevin.lhopital@bootlin.com>
Subject: [PATCH 14/22] ARM: dts: sun8i: a83t: bananapi-m3: Enable MIPI CSI-2
 with OV8865
Date: Fri, 10 Sep 2021 20:41:39 +0200
Message-Id: <20210910184147.336618-15-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_114238_960530_73B9E175 
X-CRM114-Status: GOOD (  11.64  )
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

RnJvbTogS8OpdmluIEwnaMO0cGl0YWwgPGtldmluLmxob3BpdGFsQGJvb3RsaW4uY29tPgoKVGhl
IEJhbmFuYXBpIE0zIHN1cHBvcnRzIGEgY2FtZXJhIG1vZHVsZSB3aGljaCBpbmNsdWRlcyBhbiBP
Vjg4NjUgc2Vuc29yCmNvbm5lY3RlZCB2aWEgdGhlIHBhcmFsbGVsIENTSSBpbnRlcmZhY2UgYW5k
IGFuIE9WODg2NSBzZW5zb3IgY29ubmVjdGVkCnZpYSBNSVBJIENTSS0yLgoKVGhlIEkyQzIgYnVz
IGlzIHNoYXJlZCBieSB0aGUgdHdvIHNlbnNvcnMgYXMgd2VsbCBhcyB0aGUgKGFjdGl2ZS1sb3cp
CnJlc2V0IHNpZ25hbCwgYnV0IGVhY2ggc2Vuc29yIGhhcyBpdCBvd24gc2h1dGRvd24gbGluZS4K
ClNpZ25lZC1vZmYtYnk6IEvDqXZpbiBMJ2jDtHBpdGFsIDxrZXZpbi5saG9waXRhbEBib290bGlu
LmNvbT4KU2lnbmVkLW9mZi1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tp
QGJvb3RsaW4uY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QtYmFuYW5hcGkt
bTMuZHRzIHwgMTAyICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QtYmFu
YW5hcGktbTMuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC1iYW5hbmFwaS1tMy5k
dHMKaW5kZXggNWE3ZTFiZDVmODI1Li44MGZkOTljZjI0YjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bjhpLWE4M3QtYmFuYW5hcGktbTMuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bjhpLWE4M3QtYmFuYW5hcGktbTMuZHRzCkBAIC04NSw2ICs4NSwzMCBAQCBsZWQtMSB7
CiAJCX07CiAJfTsKIAorCXJlZ19vdjg4NjVfYXZkZDogb3Y4ODY1LWF2ZGQgeworCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gIm92ODg2NS1hdmRk
IjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MjgwMDAwMD47CisJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDI4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0gPCZyZWdfZGxkbzQ+Owor
CX07CisKKwlyZWdfb3Y4ODY1X2RvdmRkOiBvdjg4NjUtZG92ZGQgeworCQljb21wYXRpYmxlID0g
InJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gIm92ODg2NS1kb3ZkZCI7CisJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDI4MDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwyODAwMDAwPjsKKwkJdmluLXN1cHBseSA9IDwmcmVnX2RsZG80PjsKKwl9Owor
CisJcmVnX292ODg2NV9kdmRkOiBvdjg4NjUtZHZkZCB7CisJCWNvbXBhdGlibGUgPSAicmVndWxh
dG9yLWZpeGVkIjsKKwkJcmVndWxhdG9yLW5hbWUgPSAib3Y4ODY1LWR2ZGQiOworCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MTIwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnJlZ19lbGRvMT47CisJfTsKKwogCXJlZ191
c2IxX3ZidXM6IHJlZy11c2IxLXZidXMgewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhl
ZCI7CiAJCXJlZ3VsYXRvci1uYW1lID0gInVzYjEtdmJ1cyI7CkBAIC0xMTUsNiArMTM5LDIzIEBA
ICZjcHUxMDAgewogCWNwdS1zdXBwbHkgPSA8JnJlZ19kY2RjMz47CiB9OwogCismY3NpIHsKKwlz
dGF0dXMgPSAib2theSI7CisKKwlwb3J0cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkj
c2l6ZS1jZWxscyA9IDwwPjsKKworCQlwb3J0QDEgeworCQkJcmVnID0gPDE+OworCisJCQljc2lf
aW5fbWlwaV9jc2kyOiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2Nz
aTJfb3V0X2NzaT47CisJCQl9OworCQl9OworCX07Cit9OworCiAmZGUgewogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CkBAIC0xNDcsNiArMTg4LDM2IEBAIGhkbWlfb3V0X2NvbjogZW5kcG9pbnQgewog
CX07CiB9OwogCismaTJjMiB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJs
LTAgPSA8JmkyYzJfcGVfcGlucz47CisJc3RhdHVzID0gIm9rYXkiOworCisJb3Y4ODY1OiBjYW1l
cmFAMzYgeworCQljb21wYXRpYmxlID0gIm92dGksb3Y4ODY1IjsKKwkJcmVnID0gPDB4MzY+Owor
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8JmNzaV9tY2xrX3Bp
bj47CisJCWNsb2NrcyA9IDwmY2N1IENMS19DU0lfTUNMSz47CisJCWFzc2lnbmVkLWNsb2NrcyA9
IDwmY2N1IENMS19DU0lfTUNMSz47CisJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDI0MDAwMDAw
PjsKKwkJYXZkZC1zdXBwbHkgPSA8JnJlZ19vdjg4NjVfYXZkZD47CisJCWRvdmRkLXN1cHBseSA9
IDwmcmVnX292ODg2NV9kb3ZkZD47CisJCWR2ZGQtc3VwcGx5ID0gPCZyZWdfb3Y4ODY1X2R2ZGQ+
OworCQlwb3dlcmRvd24tZ3Bpb3MgPSA8JnBpbyA0IDE3IEdQSU9fQUNUSVZFX0xPVz47IC8qIFBF
MTcgKi8KKwkJcmVzZXQtZ3Bpb3MgPSA8JnBpbyA0IDE2IEdQSU9fQUNUSVZFX0xPVz47IC8qIFBF
MTYgKi8KKworCQlwb3J0IHsKKwkJCW92ODg2NV9vdXRfbWlwaV9jc2kyOiBlbmRwb2ludCB7CisJ
CQkJZGF0YS1sYW5lcyA9IDwxIDIgMyA0PjsKKwkJCQlsaW5rLWZyZXF1ZW5jaWVzID0gL2JpdHMv
IDY0IDwzNjAwMDAwMDA+OworCisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2NzaTJfaW5f
b3Y4ODY1PjsKKwkJCX07CisJCX07CisJfTsKK307CisKICZtZGlvIHsKIAlyZ21paV9waHk6IGV0
aGVybmV0LXBoeUAxIHsKIAkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMy
MiI7CkBAIC0xNTQsNiArMjI1LDI0IEBAIHJnbWlpX3BoeTogZXRoZXJuZXQtcGh5QDEgewogCX07
CiB9OwogCismbWlwaV9jc2kyIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismbWlwaV9jc2ky
X2luIHsKKwltaXBpX2NzaTJfaW5fb3Y4ODY1OiBlbmRwb2ludCB7CisJCWRhdGEtbGFuZXMgPSA8
MSAyIDMgND47CisKKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZvdjg4NjVfb3V0X21pcGlfY3NpMj47
CisJfTsKK307CisKKyZtaXBpX2NzaTJfb3V0IHsKKwltaXBpX2NzaTJfb3V0X2NzaTogZW5kcG9p
bnQgeworCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmNzaV9pbl9taXBpX2NzaTI+OworCX07Cit9Owor
CiAmbW1jMCB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8Jm1t
YzBfcGlucz47CkBAIC0zMjcsMTEgKzQxNiwyNCBAQCAmcmVnX2RsZG8zIHsKIAlyZWd1bGF0b3It
bmFtZSA9ICJ2Y2MtcGQiOwogfTsKIAorJnJlZ19kbGRvNCB7CisJcmVndWxhdG9yLWFsd2F5cy1v
bjsKKwlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwyODAwMDAwPjsKKwlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwyODAwMDAwPjsKKwlyZWd1bGF0b3ItbmFtZSA9ICJhdmRkLWNzaSI7Cit9
OworCiAmcmVnX2RyaXZldmJ1cyB7CiAJcmVndWxhdG9yLW5hbWUgPSAidXNiMC12YnVzIjsKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCismcmVnX2VsZG8xIHsKKwlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDwxMjAwMDAwPjsKKwlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsK
KwlyZWd1bGF0b3ItbmFtZSA9ICJkdmRkLWNzaS1yIjsKK307CisKICZyZWdfZmxkbzEgewogCXJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEwODAwMDA+OwogCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDEzMjAwMDA+OwotLSAKMi4zMi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
