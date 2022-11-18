Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3B9DC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 16:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Erj/CqpreKYGYAN9tqO5T1TNaOwWyvObXKMiNCDYhR8=; b=PNA9bedM2hInem
	SFeBsPLzh6kg+nxJ6UK9cWs6PXYQOORzRQBajghmbaBhNIlTsQuotgIlvl2bqbSoBB3fhp/uQnisR
	f5MOT4MezsQu5Ep+JTjD1asE4aWZXuwCDFCqVKproEZaSBVl4CHQoM1Yc7tCViOz/U3SslRUp219G
	CbmcFfOJaL0URl6GZQ8TGxoQtzAwdZ6djHfIVf2p6XAgng/P0//QrM1ENSXdEbW03z/l9+8iVgj04
	SycdOxtLJeQcXT1N/2qLQPe77xpp3+WLgl/C1NSNlcJJy1z6kFIshTbJK5jvq05Nbv6AnSoHCv58m
	IWXGy0f603ZIg4kR/1Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3zq-005CQP-Vh; Fri, 18 Nov 2022 16:13:42 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3zn-005CMX-Uz; Fri, 18 Nov 2022 16:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668788003;
	bh=uNoPoaQqsCt3VB34ViP+juUR5EdI/2W4QHKFds0rL6w=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hY8tQ6CNTTJC+x1cb7eDcgorID2yCPG1M5c4N0Pie0wg/7HMdCXE4WDJUO9znrn2T
	 WlCARUm9sEejFEczneQ40EisfjlkQLikKcMsSoUxFoq5pdJ+wWdfONCFfETLVnQema
	 XLQQQo4Pd0P6C4F+H32YffH0CfFzgmlkME+xuZ176eJdkmRh1lvjhdGVCCX74bcdqs
	 1wc7FF5VBLCKQ4K/6nz4dtdA3kRWCivzLRaF/A5YNfqY8Tgevtw8+YRDgT6cuBDc9v
	 HzW0iQyNUPTFtio3XxMYlKgfKq7A4v2WYuEnZs8yV2JTrl5Fm9VvKCWhgGXT4TNRP6
	 a+Sngah0EG/Hw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [80.245.77.125] ([80.245.77.125]) by web-mail.gmx.net
 (3c-app-gmx-bs01.server.lan [172.19.170.50]) (via HTTP); Fri, 18 Nov 2022
 17:13:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-923a3ba9-8956-490e-9e4a-0dc4ff59aba5-1668788002736@3c-app-gmx-bs01>
From: Frank Wunderlich <frank-w@public-files.de>
To: =?UTF-8?Q?Chunfeng_Yun_=28=E4=BA=91=E6=98=A5=E5=B3=B0=29?=
 <Chunfeng.Yun@mediatek.com>
Cc: "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>, "linux@fw-web.de" <linux@fw-web.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 =?UTF-8?Q?Sam_Shih_=28=E5=8F=B2=E7=A2=A9=E4=B8=89=29?=
 <Sam.Shih@mediatek.com>, "kishon@ti.com" <kishon@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>,
 =?UTF-8?Q?Jianjun_Wang_=28=E7=8E=8B=E5=BB=BA=E5=86=9B=29?=
 <Jianjun.Wang@mediatek.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "krzysztof.kozlowski+dt@linaro.org"
 <krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "matthias.bgg@gmail.com"
 <matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Ryder Lee <Ryder.Lee@mediatek.com>,
 =?UTF-8?Q?Bo_Jiao_=28=E7=84=A6=E6=B3=A2=29?= <Bo.Jiao@mediatek.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Subject: Aw: Re: [PATCH v5 07/11] arm64: dts: mt7986: add usb related device
 nodes
Date: Fri, 18 Nov 2022 17:13:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <6417076e019640b23fff85e27798b277c74eeb74.camel@mediatek.com>
References: <20221117162728.20608-1-linux@fw-web.de>
 <20221117162728.20608-8-linux@fw-web.de>
 <6417076e019640b23fff85e27798b277c74eeb74.camel@mediatek.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:HYGMb/xYz+XeZpM3XpDKsxgdGc8ewqlZVEcSbPVlQwkmfScvHH2RpSAexRIVX40RRQW9r
 3pALC9qSqnC8awb8gvvin71249NFff0BFoJeO9TvalmQr02KVaF0++xTTsArljvYBYoCqLPZuTZK
 8daI4anoIVL1aPxDipKLCD9KDXfKpGEIwIBx9RNSy+Pa4E03uA5M76bozqEnWWb4/omyYJsS75k3
 0VTpzQyYvkxhjAtMwX2f2fqjgVHKukLUKgXyER9Jh5tDwN/PHpnXs22d0OBM7o35hFZyUPDWilA+
 eg=
UI-OutboundReport: notjunk:1;M01:P0:gwvebTmYFlo=;HK+XyCP7s+prHXZyAzTEO+vkRgf
 yRjlVD4aEyd3O/vVQzvVscZQBDlD5IP5gc39H9LNhVF1PAa4Oi9zAFC920tYDRwayFi+mIv2W
 l6gFf8GhywPm0Pm0ZfK9pzZNGZjy22wciu3nXga8V9NMtKVumPHAT5v0W4IpY0dRz1krzP5Gg
 qbq3Uram4uEGdcCh+p+s775RshRXAp/btPkYXZHbex1qPUD5qQBQXWXLlKtHcFFNtPjZ7JX30
 qeZs7NObqS8dc8d/duY7ApDlNLxJqfuUVAC9MFs51CnsbMXz9LPiJ7X9LWJSWzGjd7p/Rzf6U
 94OjCWkPlI76EEOmo1LIhqGu8yehTdemGzEEnUfbelsSIvkocTEl7T6uSiW2ZfeFm5rI+ZpG2
 FCcaDM/ojIgD5ZDyphVqahPaBlviPwMTIALDTZUhsq1eTeCtWtdDM7NVxjYB7PWUXL4Cfo0/G
 reM4XXKH5zO1LGLQSFHZKti5ukMY+GY6bEuB8UfEjHmkBp8WVBadc4azhIPD09JtIOsqQXJ2t
 vNe/0hphKteHYmm1kEL3fjjqknDhgVuoeYsZg53hitIcRJJHOK3Ck1eXFNGRjD+WdXpAFUhfX
 QPd73TUB/yP8hk/jLtafiIkn9fk2OLNzBqVfnpIHINw7/EC3K3tUs7GozMUH7pwMJx7OAKPl2
 IBXAnWjpYtzT7SQRmFJ10d+IdoAV1tykIXfI7brBlRmHiIttqzvMWDNUdrPksv2qPoGrWieoi
 mZs1Tkn4z/rQ9PA3hHkhxyF2Nc47LivgIktlosjIa+DUt+M9ym4KQFsOSS/ljKEAa1whrbtmk
 e+kxfbJmfKZXeV0oZxvVsQvI8zcGM29/6n6NlxvJul5Vw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_081340_300652_7932D908 
X-CRM114-Status: GOOD (  19.20  )
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

SGkKCj4gR2VzZW5kZXQ6IEZyZWl0YWcsIDE4LiBOb3ZlbWJlciAyMDIyIHVtIDA3OjQzIFVocgo+
IFZvbjogIkNodW5mZW5nIFl1biAo5LqR5pil5bOwKSIgPENodW5mZW5nLll1bkBtZWRpYXRlay5j
b20+Cj4gT24gVGh1LCAyMDIyLTExLTE3IGF0IDE3OjI3ICswMTAwLCBGcmFuayBXdW5kZXJsaWNo
IHdyb3RlOgo+ID4gRnJvbTogU2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KPiA+IAo+
ID4gVGhpcyBwYXRjaCBhZGRzIFVTQiBzdXBwb3J0IGZvciBNVDc5ODYuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFNhbSBTaGloIDxzYW0uc2hpaEBtZWRpYXRlay5jb20+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiA+IC0tLQo+
ID4gY2hhbmdlcyBjb21wYXJlZCB0byBzYW1zIG9yaWdpbmFsIHZlcnNpb246Cj4gPiAtIHJlb3Jk
ZXIgeGhjaS1jbG9ja3MgYmFzZWQgb24geWFtbCBiaW5kaW5nCj4gPiAKPiA+IHY1Ogo+ID4gIC0g
dXBkYXRlIHJhbmdlcy9yZWcgb2YgdXNiLXBoeQo+ID4gIC0gbm90IGFkZGVkIFJCIGZyb20gQW5n
ZWxvR2lvYWNjaGlubyBmb3IgdjQgYmVjYXVzZSBvZiB0aGVzZSBjaGFuZ2VzCgo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS1yZmIuZHRzCj4gPiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS1yZmIuZHRzCj4gPiBpbmRleCAw
MDY4NzhlM2YyYjIuLjJiNWQ3ZWEzMWI0ZCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS1yZmIuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210Nzk4NmEtcmZiLmR0cwo+ID4gQEAgLTIzLDYgKzIzLDI0IEBAIG1lbW9y
eUA0MDAwMDAwMCB7Cj4gPiAgCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+ID4gIAkJcmVnID0g
PDAgMHg0MDAwMDAwMCAwIDB4NDAwMDAwMDA+Owo+ID4gIAl9Owo+ID4gKwo+ID4gKwlyZWdfM3Az
djogcmVndWxhdG9yLTNwM3Ygewo+ID4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQi
Owo+ID4gKwkJcmVndWxhdG9yLW5hbWUgPSAiZml4ZWQtMy4zViI7Cj4gPiArCQlyZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDMzMDAwMDA+Owo+ID4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gPiArCQlyZWd1bGF0b3It
YWx3YXlzLW9uOwo+ID4gKwl9Owo+ID4gKwo+ID4gKwlyZWdfNXY6IHJlZ3VsYXRvci01diB7Cj4g
PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiArCQlyZWd1bGF0b3ItbmFt
ZSA9ICJmaXhlZC01ViI7Cj4gPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAw
PjsKPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gKwkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4gPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKwl9Owo+ID4g
IH07Cj4gVXN1YWxseSBpZiB3ZSB1c2UgYSBncGlvIHRvIGNvbnRyb2wgYSBzd2l0Y2ggdG8gdHVy
biBvbi9vZmYgcG93ZXIsIHdlCj4gbW9kZWwgaXQgYXMgYSBmaXhlZCByZWd1bGF0b3IsIGJ1dCBo
ZXJlIG5vIGdwaW8gcHJvdmlkZWQgaW4gcmVnXzNwM3YKPiBhbmQgcmVnXzV2LCBpZiBubyBncGlv
IHVzZWQsIG5vIG5lZWQgdGhlc2UgdHdvIGZpeGVkIHJlZ3VsYXRvcnMgdG9vLgoKaSBjYW4gZHJv
cCA1diByZWd1bGF0b3IsIGJ1dCAzdjMgaXMgdXNlZCBieSBlbW1jLCBzbyBpIHdvdWxkIG1vdmUg
dGhhdCB0byB0aGUgbW1jLXBhdGNoCgo+ID4gIAo+ID4gICZjcnlwdG8gewo+ID4gQEAgLTE0MCw2
ICsxNTgsMTIgQEAgJnNwaTEgewo+ID4gIAlzdGF0dXMgPSAib2theSI7Cj4gPiAgfTsKPiA+ICAK
PiA+ICsmc3N1c2Igewo+ID4gKwl2dXNiMzMtc3VwcGx5ID0gPCZyZWdfM3Azdj47Cj4gPiArCXZi
dXMtc3VwcGx5ID0gPCZyZWdfNXY+Owo+IFRoZXNlIHR3byBzdXBwbHkgY2FuIGJlIHJlbW92ZWQg
aWYgbm8gc3dpdGggdG8gY29udHJvbCB0aGVtLCB0aGV5IGFyZQo+IG9wdGlvbmFsLgoKb2ssIGkg
ZHJvcCB0aGUgcmVmZXJlbmNlcy4KCmFueXRoaW5nIGVsc2Ugb2s/CgpwcmVwYXJlZCBwYXRjaCBo
ZXJlIChub3cgeWV0IHNxdWFzaGVkKToKaHR0cHM6Ly9naXRodWIuY29tL2ZyYW5rLXcvQlBJLVIy
LTQuMTQvY29tbWl0cy82LjEtcjNkdHMKCnJlZ2FyZHMgRnJhbmsKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
