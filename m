Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A27F1C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVphJ4POoCz6zN8yIVFmE26IZ6CQJRCoRk48Zmzdr/o=; b=JNlZzHR8QXaSYt
	HagMGoUgyndCnfn3HFVBGERNRUa9yH/BpF7x7Hjx2NDigaVvDBHMRpGyCSe8Nb++XBg3oG6TnjX2X
	2Esm3lOMHK21sOGwFyq5YuY73AU7hP8f4c/zYfc5vHNqe5YABduQtKZamp8mFM7B8OAr9NvRu+6vX
	xQdo90JhjiawMozjfGTCKatRMzi3enpT6oOTlagxpHGSj5pxrQ9u2qDh6inerMlXNNabIuLH6vCog
	b30xczWa9mT0B6430N43Ublirm+K3rhG40t0HtEvzs5pl5aT0IevFHU76KOfUAnmVnHyubEfIliF1
	iCQzhpDdg4dlRg2pKhoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XHz-00000006cCB-1V0N;
	Mon, 07 Sep 2026 11:13:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XHy-00000006cBo-341b
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:13:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0A277601F9;
	Mon,  7 Sep 2026 11:13:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16A5A1F00A3A;
	Mon,  7 Sep 2026 11:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788779605;
	bh=Nm211+quyCBePUA3EMvd2sfVachN6bJ9T/sKPQskomI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hXL+YJ03xe1pPx1G5xsyc+c13DhiMmWtqv7sHpMQL32KJmrkd3HqAydVonmRNZdDH
	 7pEdlDcLnZY53bU4P0DQ8UcUbMiSck2kIfpu1ShJxwgAHqZ+J/EFPudM7rslZTDqaZ
	 8nggfkVB9eh2qBjmhZW4YNGvHuho+RmwAPFQeR2Aouph+o0KnqQo7UsaQc/TNbXZIU
	 8jcamhMfRaJx51J+/IU3jCuMj8ay6iXdGxHXvJG3egskb3kD8lOn0Mif+bk6YhlHiY
	 tnOw2y//LKUU+jZmFXWv2wW7bkv/TqtbyrtI6mwmHLti81u5Ekx0cK7n5xo/r0BxCF
	 CwFKSxbBBDUlA==
Date: Mon, 7 Sep 2026 13:13:15 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/12] phy: qualcomm: qcom-uniphy-pcie-28lp: Convert
 to PCIe/USB3 combo PHY driver
Message-ID: <nsetwuedbippjni5t5pcoi3rxc22mmyqiitdnavgnuasctq5nn@f2wnjb2znchn>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-3-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-3-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MjBQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBUaGlzIFBIWSBmb3VuZCBpbiBJUFE1MzMyIGFuZCBJ
UFE1MDE4IFNvQ3MgaXMgYWN0dWFsbHkgYSBtdWx0aS1wdXJwb3NlCj4gUENJZS9VU0IzIGNvbWJv
IFBIWS4gVGhlIGRyaXZlciB3YXMgaW5pdGlhbGx5IGNyZWF0ZWQgZm9yIFBDSWUgUEhZCj4gc3Vw
cG9ydCBvbmx5LiBBcyBzdWNoLCByZW5hbWUgdGhlIGRyaXZlciBhbmQgZ2VuZXJhbGl6ZSBmdW5j
dGlvbiBhbmQKPiBzdHJ1Y3QgbmFtZXMgdG8gcmVmbGVjdCB0aGF0IGl0IGlzIGEgUENJZSBhbmQg
VVNCMyBjb21ibyBQSFkgZHJpdmVyIHNvCj4gdGhhdCBVU0IzIHN1cHBvcnQgY2FuIGJlIGFkZGVk
IGluIHN1YnNlcXVlbnQgcGF0Y2hlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHZW9yZ2UgTW91c3Nh
bGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9x
dWFsY29tbS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8IDI0ICsrKy0tLQo+ICBkcml2
ZXJzL3BoeS9xdWFsY29tbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4g
IC4uLmNpZS0yOGxwLmMgPT4gcGh5LXFjb20tdW5pcGh5LXBjaWUtdXNiMy0yOGxwLmN9IHwgODcg
KysrKysrKysrKystLS0tLS0tLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMo
KyksIDU4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9LY29uZmlnIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vS2NvbmZpZwo+IGluZGV4IGQ5MTBhNWQx
YTFhYy4uNjg3MmFhOTE5Y2YyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL0tj
b25maWcKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9LY29uZmlnCj4gQEAgLTE1NSwxOSAr
MTU1LDYgQEAgY29uZmlnIFBIWV9RQ09NX00zMV9VU0IKPiAgCSAgbWFuYWdlbWVudC4gVGhpcyBk
cml2ZXIgaXMgcmVxdWlyZWQgZXZlbiBmb3IgcGVyaXBoZXJhbCBvbmx5IG9yCj4gIAkgIGhvc3Qg
b25seSBtb2RlIGNvbmZpZ3VyYXRpb25zLgo+ICAKPiAtY29uZmlnIFBIWV9RQ09NX1VOSVBIWV9Q
Q0lFXzI4TFAKPiAtCWJvb2wgIlBDSUUgVU5JUEhZIDI4TFAgUEhZIGRyaXZlciIKPiAtCWRlcGVu
ZHMgb24gQVJDSF9RQ09NCj4gLQlkZXBlbmRzIG9uIENPTU1PTl9DTEsKPiAtCWRlcGVuZHMgb24g
SEFTX0lPTUVNCj4gLQlkZXBlbmRzIG9uIE9GCj4gLQlzZWxlY3QgR0VORVJJQ19QSFkKPiAtCWhl
bHAKPiAtCSAgRW5hYmxlIHRoaXMgdG8gc3VwcG9ydCB0aGUgUENJZSBVTklQSFkgMjhMUCBwaHkg
dHJhbnNjZWl2ZXIgdGhhdAo+IC0JICBpcyB1c2VkIHdpdGggUENJZSBjb250cm9sbGVycyBvbiBR
dWFsY29tbSBJUFE1MzMyIGNoaXBzLiBJdAo+IC0JICBoYW5kbGVzIFBIWSBpbml0aWFsaXphdGlv
biwgY2xvY2sgbWFuYWdlbWVudCByZXF1aXJlZCBhZnRlcgo+IC0JICByZXNldHRpbmcgdGhlIGhh
cmR3YXJlIGFuZCBwb3dlciBtYW5hZ2VtZW50Lgo+IC0KPiAgY29uZmlnIFBIWV9RQ09NX00zMV9F
VVNCCj4gIAl0cmlzdGF0ZSAiUXVhbGNvbW0gTTMxIGVVU0IyIFBIWSBkcml2ZXIgc3VwcG9ydCIK
PiAgCWRlcGVuZHMgb24gVVNCICYmIChBUkNIX1FDT00gfHwgQ09NUElMRV9URVNUKQo+IEBAIC0x
NzgsNiArMTY1LDE3IEBAIGNvbmZpZyBQSFlfUUNPTV9NMzFfRVVTQgo+ICAJICB1cCBvZiB0aGUg
YXNzb2NpYXRlZCBVU0IgcmVwZWF0ZXIgdGhhdCBpcyBwYWlyZWQgd2l0aCB0aGUgZVVTQjIKPiAg
CSAgUEhZLgo+ICAKPiArY29uZmlnIFBIWV9RQ09NX1VOSVBIWV9QQ0lFX1VTQjNfMjhMUAo+ICsJ
Ym9vbCAiUXVhbGNvbW0gSVBRNTMzMiBVTklQSFkgUENJZSBVU0IzIDI4TFAgUEhZIGRyaXZlciIK
PiArCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfUUNPTSB8fCBDT01QSUxFX1RFU1QpCj4gKwlzZWxl
Y3QgR0VORVJJQ19QSFkKPiArCXNlbGVjdCBNRkRfU1lTQ09OCj4gKwloZWxwCj4gKwkgIEVuYWJs
ZSB0aGlzIHRvIHN1cHBvcnQgdGhlIFF1YWxjb21tIFVTQiBTdXBlci1TcGVlZCBVTklQSFkgdHJh
bnNjZWl2ZXIKPiArCSAgdGhhdCBpcyB1c2VkIG9uIFF1YWxjb21tIElQUTUwMTggYW5kIElQUTUz
MzIgU29DcyB3aXRoIERXQzMgVVNCIGNvcmUuCgpUaGlzIHN0YXRlbWVudCBnaXZlcyB0aGUgaW1w
cmVzc2lvbiB0aGF0IHRoaXMgZHJpdmVyIGlzIG9ubHkgdXNlZCB3aXRoIERXQzMgVVNCLAp3aGlj
aCBpcyBub3QgdGhlIGNhc2UuCgo+ICsJICBJdCBoYW5kbGVzIFBIWSBpbml0aWFsaXphdGlvbiwg
Y2xvY2sgbWFuYWdlbWVudCByZXF1aXJlZCBhZnRlcgo+ICsJICByZXNldHRpbmcgdGhlIGhhcmR3
YXJlIGFuZCBwb3dlciBtYW5hZ2VtZW50Lgo+ICsKPiAgY29uZmlnIFBIWV9RQ09NX1VTQl9IUwo+
ICAJdHJpc3RhdGUgIlF1YWxjb21tIFVTQiBIUyBQSFkgbW9kdWxlIgo+ICAJZGVwZW5kcyBvbiBV
U0JfVUxQSV9CVVMKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vTWFrZWZpbGUg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9NYWtlZmlsZQo+IGluZGV4IDhiZjg4N2Q1OGVlNC4uNmUy
ZTk3MzdlMzg3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL01ha2VmaWxlCj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vTWFrZWZpbGUKPiBAQCAtMTgsNyArMTgsNyBAQCBv
YmotJChDT05GSUdfUEhZX1FDT01fUU1QX1VTQl9MRUdBQ1kpCSs9IHBoeS1xY29tLXFtcC11c2It
bGVnYWN5Lm8KPiAgCj4gIG9iai0kKENPTkZJR19QSFlfUUNPTV9RVVNCMikJCSs9IHBoeS1xY29t
LXF1c2IyLm8KPiAgb2JqLSQoQ09ORklHX1BIWV9RQ09NX0VVU0IyX1JFUEVBVEVSKQkrPSBwaHkt
cWNvbS1ldXNiMi1yZXBlYXRlci5vCj4gLW9iai0kKENPTkZJR19QSFlfUUNPTV9VTklQSFlfUENJ
RV8yOExQKQkrPSBwaHktcWNvbS11bmlwaHktcGNpZS0yOGxwLm8KPiArb2JqLSQoQ09ORklHX1BI
WV9RQ09NX1VOSVBIWV9QQ0lFX1VTQjNfMjhMUCkJKz0gcGh5LXFjb20tdW5pcGh5LXBjaWUtdXNi
My0yOGxwLm8KCkNoYW5naW5nIHRoZSBtb2R1bGUgbmFtZSBpcyBhbiBBQkkgYnJlYWsuIEJ1dCBz
aW5jZSB0aGlzIGRyaXZlciBpcyBvbmx5IHVzZWQgYnkKYSBjb3VwbGUgb2YgSVBRIFNvQ3MsIGJy
ZWFrYWdlIGlzIG5vdCBhIGNvbmNlcm4gSSBndWVzcy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
