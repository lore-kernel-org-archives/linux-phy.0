Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2EABC87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OdVYJnsWvQB522l5xciYkwVrQN2Gc3KJgf/nTeKXMM=; b=bivDeOUHRl3X/X
	37lGPnZbjhtjgRJKT4fu9Efyv0FiOx+hOtdaYgotQ3aZRjO4dGD6NH/iY1XOi57ETitMlKMvrZ3wC
	u+rp7fnf9Qn+xq6mwkZtbE97mpZEQpG5/F4iX7iU308112++/Zurs0UxTzas7LhEzzev6YI+EHQzP
	JKavk+IkVfnR6xa+zI6kIsGlPT8UEJheNI+dh31yvYq7lyYha3SHFCEKw8Q8c0p8Ijf1C+6ciI5lV
	TxjkwPl3GtScpsFZqhKqLv9gWke0Mx7OvRxtogixVcf2Gl/8b/BePGTrvWNTpW8y9eoa/GdolY7hu
	RZx9AiYG/BL3knKnfltA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGYE-00000009hlG-1i6N;
	Fri, 25 Jul 2025 11:25:22 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufG1H-00000009dek-2Svf
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 10:51:20 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-73e810dc245so1074919a34.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 03:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753440678; x=1754045478; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YfE909p8Iq119G3J/2SxiBSXlMMdz4SFa3hpgANK2k8=;
        b=jPq6Gi3MDY/Qnyn55XD2IQn155ym531EGTrvGzQW5m1e9WduZPO57dPWbLCUn21Pob
         p/QoWGUVWQ1O4Uq0Ccu9ftrw5SXFZeNGdNtFKsSgAlkJhPlLAOard3NQFsahtgX8HpAE
         yPLJBvrGddQQXsc/r6FuEVf01J5HFnbGDsH9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753440678; x=1754045478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfE909p8Iq119G3J/2SxiBSXlMMdz4SFa3hpgANK2k8=;
        b=eitSa+Xh92BjzCqcrEuPaF26G83DAiBs6pg2g6ctYXwPfAqkF5QC3OGYLAp60Xr43Q
         FeR7puwJokY0n8/Jq1sZnot51dk5ezWrw7nSGZUb18K046uqKsXBQmqU9/VYIPyNL8uw
         aMW+mosT1RQyK5zjOaWw5YntnPJmWNHFAEOROM+bU9dv1z1A01zUZ3xrzMsPQf+MU+Tb
         Ad7ixZS97JD26A3ztoyI50JEI7TAbyEVutXq1xcm2U6lhxSe7X5xdLSPDAcoNjnkFavB
         hSstFdILBCJmxCwg8SL0Cm1CW6XhQFRDra0t5RLK5XpFTP2r3U0GeZx+vtRbPYiqSqI9
         8vlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWO5NqoTjtHAR6dLFwzeV8kTlWzYsrrydg+du7q+vHMBXjVdtkqJT/uxzxpUoeB/GCaONCsCgNeG2g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzvUPKBe0tG0vDX/8kqSzUSi7IIjqcuEglxqruOoZM7VOF1a0m
	K53K6RJJu+4AQAqskKMpp9PPRlT3gnSzayishC3y2mzu28Apf6L+SHKIxJw8sKEbpFrerRdPFLZ
	qUISKuQ==
X-Gm-Gg: ASbGncvE6BInO53pXSp92jRNQ24I/gOnN4vGg7z9wox00UQ2XtKdzKYa8nP/GPXwnDy
	L2ofYiFrmRNcbfnMUQaDB6cVOnXfNJ8O0XS9eClidkVO1FRvFFYHzLaWVcGdzRxGMQjwqDKhki3
	z/c39ZubzgGpJe1oJsufJxZ4ACiUbM/WfiCLOIjqG7NF19YGZ38jS7x3BHeFU5qeML83tBsLabv
	5ciwaOBW0/MpVlDrStUHx1yNNePJRjCaLp7CAKssi6S9YvHuwFMqaLYiS7SRjYsWj+PhmK1XcJT
	CfO2b0StCxzt3pvHOi6SdB8oURZFjiKRf5LlmbdfSWvqCl5SkADBjaAOlgtavceyahap5zKIOb5
	nu4+1bOD0jBApAWdEcQfRuyh15m799bX0eRtprYg/VFrhZtvvbTl8I5zImg==
X-Google-Smtp-Source: AGHT+IHB9FmmnMOQ/x1Ca0PI9LCbSHUdsthXKpktemo+bJXJBeFi+cTtVe3iSjy2CX7j8fAXVtbNkA==
X-Received: by 2002:a05:6830:71a4:b0:73e:99ca:198c with SMTP id 46e09a7af769-7413dc0755dmr716385a34.4.1753440678393;
        Fri, 25 Jul 2025 03:51:18 -0700 (PDT)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com. [209.85.160.44])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7412d2e5d83sm625183a34.40.2025.07.25.03.51.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 03:51:18 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2ffa1b10918so1123482fac.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 03:51:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWp2sXseZSqjtAt7Y0z4LKNo24i+6k2GgTMAEObcLBar95eKcJ3+kit8a1g6Lou3HY1fGvJfX5mwAY=@lists.infradead.org
X-Received: by 2002:a05:6102:3713:b0:4e9:b7e3:bdcd with SMTP id
 ada2fe7eead31-4fa3fad468amr285963137.12.1753440273293; Fri, 25 Jul 2025
 03:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-24-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-24-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:43:57 +0800
X-Gmail-Original-Message-ID: <CAC=S1njhu11nHpyMULbK6PE-BLrBMq+d397pDU6gBzgo7xivXg@mail.gmail.com>
X-Gm-Features: Ac12FXyc7RkTIKa4HnSlf_SM-GYdwIREUn6AcAkOBKhNuekdCdvFzy29o7Ufs68
Message-ID: <CAC=S1njhu11nHpyMULbK6PE-BLrBMq+d397pDU6gBzgo7xivXg@mail.gmail.com>
Subject: Re: [PATCH 23/38] arm64: dts: mediatek: mt7986a: Fix PCI-Express
 T-PHY node address
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
X-CRM114-CacheID: sfid-20250725_035119_618828_3D1F7E3C 
X-CRM114-Status: GOOD (  15.70  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo0OeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlIFBDSWUgVFBIWSBpcyB1bmRlciB0aGUgc29jIGJ1cywgd2hpY2ggcHJvdmlkZXMgTU1JTywg
YW5kIGFsbAo+IG5vZGVzIHVuZGVyIHRoYXQgbXVzdCB1c2UgdGhlIGJ1cywgb3RoZXJ3aXNlIHRo
b3NlIHdvdWxkIGNsZWFybHkKPiBiZSBvdXQgb2YgcGxhY2UuCj4KPiBBZGQgcmFuZ2VzIHRvIHRo
ZSBQQ0llIHRwaHkgYW5kIGFzc2lnbiB0aGUgYWRkcmVzcyB0byB0aGUgbWFpbgo+IG5vZGUgdG8g
c2lsZW5jZSBhIGR0YnNfY2hlY2sgd2FybmluZywgYW5kIGZpeCB0aGUgY2hpbGRyZW4gdG8KPiB1
c2UgdGhlIE1NSU8gcmFuZ2Ugb2YgdC1waHkuCj4KPiBGaXhlczogOTYzYzNiMGM0N2VjICgiYXJt
NjQ6IGR0czogbWVkaWF0ZWs6IGZpeCB0LXBoeSB1bml0IG5hbWUiKQo+IEZpeGVzOiA5MThhZWQ3
YWJkMmQgKCJhcm02NDogZHRzOiBtdDc5ODY6IGFkZCBwY2llIHJlbGF0ZWQgZGV2aWNlIG5vZGVz
IikKPiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lv
YWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEZlaSBTaGFvIDxm
c2hhb0BjaHJvbWl1bS5vcmc+Cgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVr
L210Nzk4NmEuZHRzaSB8IDEyICsrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDc5ODZhLmR0c2kKPiBpbmRleCA1NTk5OTBkY2QxZDEuLjMyMTE5MDViNmY4NiAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4NmEuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS5kdHNpCj4gQEAgLTQyOCwxNiAr
NDI4LDE2IEBAIHBjaWVfaW50YzogaW50ZXJydXB0LWNvbnRyb2xsZXIgewo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiAtICAgICAgICAgICAgICAg
cGNpZV9waHk6IHQtcGh5IHsKPiArICAgICAgICAgICAgICAgcGNpZV9waHk6IHQtcGh5QDExYzAw
MDAwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10
Nzk4Ni10cGh5IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1lZGlh
dGVrLGdlbmVyaWMtdHBoeS12MiI7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmFuZ2VzOwo+
IC0gICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHJhbmdlcyA9IDwwIDAgMHgxMWMwMDAwMCAweDIwMDAwPjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAj
c2l6ZS1jZWxscyA9IDwxPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGNpZV9wb3J0OiBwY2llLXBoeUAx
MWMwMDAwMCB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MCAweDEx
YzAwMDAwIDAgMHgyMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGNpZV9wb3J0OiBw
Y2llLXBoeUAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4
MjAwMDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGs0
MG0+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAicmVm
IjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNwaHktY2VsbHMgPSA8MT47Cj4g
LS0KPiAyLjUwLjEKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
