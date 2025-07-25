Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C225C87FCF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FZ1zPu5o2nnAXhKCFDsARu2PYyd9SHadtCkENvkBPU=; b=BoaSERsSmMeG+x
	nSTFiJVKB+Ipn6/962haG05cn81kfoyxDEhss3OLUvOp/pzZFeGFBBP/kJVIoA1ZBuOyi1YR0WHV9
	ikQ2OLm2/gBsOwTgMJd1BD+hY8i9Bao+pi9bDPogz+ymx3SHYUlzHbj1GCu1xcZlX6Pqt+HtvukU2
	OkXMLjMo21B3Sdi/OR5LuTGvWYBqXcPyueGr79kX6gCVQdZL/0PO3j6UAaZNTVXz2YnxpTCtraEXJ
	4zbHBW5nptQZgbMStw58vkI+BRePVAu6jKZP3gYQbp2SaEXwvKcl1fzwTlQlkFzN2yHkvVJMT9Yj6
	uliMiZ1WoxhukQOBIQsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHNS-00000009nkO-0ojZ;
	Fri, 25 Jul 2025 12:18:18 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGzd-00000009lDJ-12C3
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:53:42 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-73e62d692fbso1241942a34.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444420; x=1754049220; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mqK1RSBPE9C31GyE2vJbWJ8NDfAV+1bNXjXR8+rtBo=;
        b=nUtZK3K5VCgxIyyl0v+lDUwJaxxdAvU1oJKcnX+OJmKbPIaFihLVh6rI6rhFoUHXVf
         s4KlqHPHna13M+4AOEtiJXhEatl8uJCnYeMdk104yK8qLEjIqXd/gIFgytXmdPh1eF+f
         lLbmppuMsahCqT1uJarh+kuBYYsaDF77uQcuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444420; x=1754049220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mqK1RSBPE9C31GyE2vJbWJ8NDfAV+1bNXjXR8+rtBo=;
        b=LtFg8WrBRoLAZKZm9XxOYBkDYETJk1WUeWp7kLlHel0sh06/A8Tb6FAuImFD9eLMgu
         3Q2eEA9tkklSWBJxQeVHm4W90kd6tVuZkaYywx9JcW0kKIQKjl9xn7R4elxal/JynRI3
         byxASdzxhmqVvjSi4qYUqy3RfU4NmxtSU92Yahgn4egpmDFZPGeuckqMWlAV9FQxHSGl
         D8BP8+iAj9bp5OCuUmMz4SL2V2Eh5w9VYLIxUeHVZpNxz3cPKG6aa7I2D5TTR2iIVIRU
         OWjAdMc0zKxRki+UgfwQNNlIPFz2oDQA59VEF/Ep9Xl9IZCVMl83bInlKZKgeIbIAC79
         CtIg==
X-Forwarded-Encrypted: i=1; AJvYcCWg/L0S1jRDbfiuOWp0HaSTFqWkJtJe3uWYspbWLT1ChZGpqeG/4o/3qHtdPnXlF45MI0LPyH0f8rY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxf1MyB3C52upYYol4d5UAOKuXi/ek0df8W1nC3bZpLFVqcaTxH
	MotqKyAZ5m13si0xhd4dq4RkHR2/ZEG4kAavpVfO3nGV+u09hb9sqF6nwSoGeM6hbw/xmq+VngO
	l6Yk=
X-Gm-Gg: ASbGnctYzQMIdVBUkxZMrKN9orW1uiGM1GUnEVNU6l86Tn6CEoCSy3DDDO5VzRS677f
	+9l3b+pKIRspp0B0Zi+SYNlyq7puHjKz1GyAqf4Hdl1brg5Vh0R5LXTW3vQr8f+ppYxCf56FFDk
	pUpz7Lf01psNnpeiIRR/2AGEsw9jgmBxRDYb75HVg3MTQ2mSX4hVrxNUmx+ePAz+I9z01uNcs48
	31gEnrYk98aqJHRoMmQBsRmDRouEVPl/I5VD3sk5NP2uZDmQLG4OgRfzfEnDJcaM4khjN5nlf+H
	veFYI5gsufhaSwj0ftzRsbZSG3QGlajtgHmuRWjM80JeNybgRdJpImxKOpAqBDk65JtqHwqzNzd
	qLiF5kpcY92On4T0Idtxdk26i+vG9rM4/1TCR7wo8Z7DJB3Xape74kVIzVA==
X-Google-Smtp-Source: AGHT+IEcwBgmRU9fZifNCYyA7N5tcXh3DGKonLLKpOu6lVg3yQw4UHBOuOTu6T0QezdUgNj8XV9rzQ==
X-Received: by 2002:a05:6830:3105:b0:739:fcb4:db29 with SMTP id 46e09a7af769-7413dd4ae3amr801899a34.8.1753444420044;
        Fri, 25 Jul 2025 04:53:40 -0700 (PDT)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com. [209.85.161.53])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7412d344469sm641814a34.57.2025.07.25.04.53.39
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:53:39 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-615e56591aeso1164718eaf.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:53:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXYhE8Lbv2fSPEJaZPgEAAfyuWG0ebIIKtGXuARkNG8a1p0FZl9WDx+gSGGEgVyG0rG3Rqfpd+T3Rc=@lists.infradead.org
X-Received: by 2002:a05:6102:5a92:b0:4eb:502c:569a with SMTP id
 ada2fe7eead31-4fa3fb3f3f9mr285813137.9.1753440864290; Fri, 25 Jul 2025
 03:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-19-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-19-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:53:47 +0800
X-Gmail-Original-Message-ID: <CAC=S1njpbfARTSBwddCeeO+c0vvf=GVaD6+QhauJOki0NS9dTQ@mail.gmail.com>
X-Gm-Features: Ac12FXy3jzZS4uZ6X5J7uIwzpvgV1oXiUrEGuonvNPTbsP1Oacxt9m6NF-3FvZA
Message-ID: <CAC=S1njpbfARTSBwddCeeO+c0vvf=GVaD6+QhauJOki0NS9dTQ@mail.gmail.com>
Subject: Re: [PATCH 18/38] arm64: dts: mediatek: mt6797: Remove bogus id
 property in i2c nodes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_045341_279870_F25D65CA 
X-CRM114-Status: GOOD (  13.10  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo0OOKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
QWxsIG9mIHRoZSBJMkMgbm9kZXMgaW4gdGhpcyBkZXZpY2V0cmVlIGhhcyBhIGJvZ3VzICJpZCIg
cHJvcGVydHksCj4gd2hpY2ggd2FzIHByb2JhYmx5IHNwZWNpZnlpbmcgdGhlIEkyQyBidXMgbnVt
YmVyLgo+Cj4gVGhpcyBwcm9wZXJ0eSB3YXMgbmV2ZXIgcGFyc2VkIGFuZCBuZXZlciB1c2VkIC0g
YW5kIGJlc2lkZXMsIGl0Cj4gYWxzbyBnaXZlcyBkdGJzX2NoZWNrIHdhcm5pbmdzOiByZW1vdmUg
aXQgZnJvbSBhbGwgaTJjIG5vZGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJl
dmlld2VkLWJ5OiBGZWkgU2hhbyA8ZnNoYW9AY2hyb21pdW0ub3JnPgoKPiAtLS0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaSB8IDEwIC0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlh
dGVrL210Njc5Ny5kdHNpCj4gaW5kZXggYmU0MDE2MTdkZmQ4Li5mMmQ5M2JmNmEwNTUgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kKPiBAQCAtMjg1LDcgKzI4
NSw2IEBAIHVhcnQzOiBzZXJpYWxAMTEwMDUwMDAgewo+ICAgICAgICAgaTJjMDogaTJjQDExMDA3
MDAwIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDY3OTctaTJj
IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtZWRpYXRlayxtdDY1NzctaTJjIjsK
PiAtICAgICAgICAgICAgICAgaWQgPSA8MD47Cj4gICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4
MTEwMDcwMDAgMCAweDEwMDA+LAo+ICAgICAgICAgICAgICAgICAgICAgICA8MCAweDExMDAwMTAw
IDAgMHg4MD47Cj4gICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA4NCBJUlFf
VFlQRV9MRVZFTF9MT1c+Owo+IEBAIC0zMDEsNyArMzAwLDYgQEAgaTJjMDogaTJjQDExMDA3MDAw
IHsKPiAgICAgICAgIGkyYzE6IGkyY0AxMTAwODAwMCB7Cj4gICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAibWVkaWF0ZWssbXQ2Nzk3LWkyYyIsCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAibWVkaWF0ZWssbXQ2NTc3LWkyYyI7Cj4gLSAgICAgICAgICAgICAgIGlkID0gPDE+Owo+
ICAgICAgICAgICAgICAgICByZWcgPSA8MCAweDExMDA4MDAwIDAgMHgxMDAwPiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgPDAgMHgxMTAwMDE4MCAwIDB4ODA+Owo+ICAgICAgICAgICAgICAgICBp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgODUgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiBAQCAtMzE3LDcg
KzMxNSw2IEBAIGkyYzE6IGkyY0AxMTAwODAwMCB7Cj4gICAgICAgICBpMmM4OiBpMmNAMTEwMDkw
MDAgewo+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc5Ny1pMmMi
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1lZGlhdGVrLG10NjU3Ny1pMmMiOwo+
IC0gICAgICAgICAgICAgICBpZCA9IDw4PjsKPiAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgx
MTAwOTAwMCAwIDB4MTAwMD4sCj4gICAgICAgICAgICAgICAgICAgICAgIDwwIDB4MTEwMDAyMDAg
MCAweDgwPjsKPiAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg2IElSUV9U
WVBFX0xFVkVMX0xPVz47Cj4gQEAgLTMzNCw3ICszMzEsNiBAQCBpMmM4OiBpMmNAMTEwMDkwMDAg
ewo+ICAgICAgICAgaTJjOTogaTJjQDExMDBkMDAwIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJtZWRpYXRlayxtdDY3OTctaTJjIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJtZWRpYXRlayxtdDY1NzctaTJjIjsKPiAtICAgICAgICAgICAgICAgaWQgPSA8OT47Cj4g
ICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4MTEwMGQwMDAgMCAweDEwMDA+LAo+ICAgICAgICAg
ICAgICAgICAgICAgICA8MCAweDExMDAwMjgwIDAgMHg4MD47Cj4gICAgICAgICAgICAgICAgIGlu
dGVycnVwdHMgPSA8R0lDX1NQSSA4NyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+IEBAIC0zNTEsNyAr
MzQ3LDYgQEAgaTJjOTogaTJjQDExMDBkMDAwIHsKPiAgICAgICAgIGkyYzY6IGkyY0AxMTAwZTAw
MCB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ2Nzk3LWkyYyIs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAibWVkaWF0ZWssbXQ2NTc3LWkyYyI7Cj4g
LSAgICAgICAgICAgICAgIGlkID0gPDY+Owo+ICAgICAgICAgICAgICAgICByZWcgPSA8MCAweDEx
MDBlMDAwIDAgMHgxMDAwPiwKPiAgICAgICAgICAgICAgICAgICAgICAgPDAgMHgxMTAwMDUwMCAw
IDB4ODA+Owo+ICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgODggSVJRX1RZ
UEVfTEVWRUxfTE9XPjsKPiBAQCAtMzY3LDcgKzM2Miw2IEBAIGkyYzY6IGkyY0AxMTAwZTAwMCB7
Cj4gICAgICAgICBpMmM3OiBpMmNAMTEwMTAwMDAgewo+ICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gIm1lZGlhdGVrLG10Njc5Ny1pMmMiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIm1lZGlhdGVrLG10NjU3Ny1pMmMiOwo+IC0gICAgICAgICAgICAgICBpZCA9IDw3PjsKPiAg
ICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxMTAxMDAwMCAwIDB4MTAwMD4sCj4gICAgICAgICAg
ICAgICAgICAgICAgIDwwIDB4MTEwMDA1ODAgMCAweDgwPjsKPiAgICAgICAgICAgICAgICAgaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDg5IElSUV9UWVBFX0xFVkVMX0xPVz47Cj4gQEAgLTM4Myw3ICsz
NzcsNiBAQCBpMmM3OiBpMmNAMTEwMTAwMDAgewo+ICAgICAgICAgaTJjNDogaTJjQDExMDExMDAw
IHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDY3OTctaTJjIiwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtZWRpYXRlayxtdDY1NzctaTJjIjsKPiAt
ICAgICAgICAgICAgICAgaWQgPSA8ND47Cj4gICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4MTEw
MTEwMDAgMCAweDEwMDA+LAo+ICAgICAgICAgICAgICAgICAgICAgICA8MCAweDExMDAwMzAwIDAg
MHg4MD47Cj4gICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA5MCBJUlFfVFlQ
RV9MRVZFTF9MT1c+Owo+IEBAIC0zOTksNyArMzkyLDYgQEAgaTJjNDogaTJjQDExMDExMDAwIHsK
PiAgICAgICAgIGkyYzI6IGkyY0AxMTAxMzAwMCB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAibWVkaWF0ZWssbXQ2Nzk3LWkyYyIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAibWVkaWF0ZWssbXQ2NTc3LWkyYyI7Cj4gLSAgICAgICAgICAgICAgIGlkID0gPDI+Owo+ICAg
ICAgICAgICAgICAgICByZWcgPSA8MCAweDExMDEzMDAwIDAgMHgxMDAwPiwKPiAgICAgICAgICAg
ICAgICAgICAgICAgPDAgMHgxMTAwMDQwMCAwIDB4ODA+Owo+ICAgICAgICAgICAgICAgICBpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgOTUgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiBAQCAtNDE2LDcgKzQw
OCw2IEBAIGkyYzI6IGkyY0AxMTAxMzAwMCB7Cj4gICAgICAgICBpMmMzOiBpMmNAMTEwMTQwMDAg
ewo+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc5Ny1pMmMiLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1lZGlhdGVrLG10NjU3Ny1pMmMiOwo+IC0g
ICAgICAgICAgICAgICBpZCA9IDwzPjsKPiAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxMTAx
NDAwMCAwIDB4MTAwMD4sCj4gICAgICAgICAgICAgICAgICAgICAgIDwwIDB4MTEwMDA0ODAgMCAw
eDgwPjsKPiAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDk2IElSUV9UWVBF
X0xFVkVMX0xPVz47Cj4gQEAgLTQzMyw3ICs0MjQsNiBAQCBpMmMzOiBpMmNAMTEwMTQwMDAgewo+
ICAgICAgICAgaTJjNTogaTJjQDExMDFjMDAwIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxtdDY3OTctaTJjIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJtZWRpYXRlayxtdDY1NzctaTJjIjsKPiAtICAgICAgICAgICAgICAgaWQgPSA8NT47Cj4gICAg
ICAgICAgICAgICAgIHJlZyA9IDwwIDB4MTEwMWMwMDAgMCAweDEwMDA+LAo+ICAgICAgICAgICAg
ICAgICAgICAgICA8MCAweDExMDAwMzgwIDAgMHg4MD47Cj4gICAgICAgICAgICAgICAgIGludGVy
cnVwdHMgPSA8R0lDX1NQSSA4MyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+IC0tCj4gMi41MC4xCj4K
PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
