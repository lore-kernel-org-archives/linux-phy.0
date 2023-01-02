Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FAF9C3DA7A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jan 2023 15:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nw8eaMDcTDqSwqEeJZo8K6vlTTkrCtwOlee6nts+1/Q=; b=o9p7zrm780ORnnITGPqq7USc8U
	yAtZnuJicruWmxFy9qjg3vxrbxwffsoSxQf1AM/THlkwd07hyNJgiuhTAUF/vM9IOUS4tzVO3i9bT
	eSwp1WPbbAkGLdDFCcP1qo8SbTtKu85kuz7TEq2/mJrV3Rx8gQVpwSoRi032EjHnmZdShDf2SQ3lj
	J+R3C6ClQjXQeCIUfPvhQt5hR7kGUa1vCBkDHgF6QI7I9TMwOAt8crBcyLhgyG7SAaBWedWyraRDC
	0n0SzYtaKeqGiMBRCdNENZpUuRFjQUWQVLNr0fSr8lBUpN9Ydi/Red+i4tEaDozRF+Kcqo7WBCF3h
	OW3fryQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCMdJ-00C9Hi-Bf; Mon, 02 Jan 2023 15:21:49 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCMat-00C7uN-I3
	for linux-phy@lists.infradead.org; Mon, 02 Jan 2023 15:19:24 +0000
Received: by mail-qv1-xf36.google.com with SMTP id q10so19805967qvt.10
        for <linux-phy@lists.infradead.org>; Mon, 02 Jan 2023 07:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iM4yyBhiPXK8XnnSv/ow1N2yZTje0oJaNZH/BHWGTE8=;
        b=8D4A86KeqD9b9tfCngSktp4trTppQ3bSXKvBUgMuVP5/Eqk6IiDkRHIvgrOd0KnUwQ
         nDQRkrJRq1pzIipS/+bAd3QDVPC9t7loNSs7FmhKp7Ub7tM1F2ozkfsC2boTvMmOYai5
         37xO8lAfkg9g5igl7WcATloz1G7zwdORUz8V2dx11A+B8O5tSRJ+wHxZByAyAnIheLQF
         1uUmhatKaxZ40k7ZOkObYgq3LKmGEA1o/aNRzJFkFpeIUFRU810nlDGdibkboGEckvho
         sVori8GHxVtA2i3rUCG6GZGQZmtk3tyRGsEkXPnM9csH8sQZJxpO05iQuXsSoUfPYi0T
         iTFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iM4yyBhiPXK8XnnSv/ow1N2yZTje0oJaNZH/BHWGTE8=;
        b=HJRf6yqmn1SxJdqVg5XmLPCP+Ghf0fwGiy7ZT1ufusTQPyOHWY/B4E3QWOM30DsJIU
         L06wuoHe+krDELu2ldjvnkhJBIHKAEV6Pn5dDFlJ+KxuW8dZE88RdlBsaruUNWSXnALY
         EDokp04HvUpjwexK8LT7vnfOr103IVCVCSsfLUPlviDdATSGLZVX0RRZJHYscIvxqRCK
         E9W6yiumTsoz5BckaA6/cQ+ksN+PY0nHT/HohwyFArq3EWDRqiS96BqZKEAQrlS+171i
         ftmK7+Xyvg6lLq5N8Ak7QGYZQZT3OT2yb5hYpp4AaGS0F1dP0n7sRvz6n1JThUtGQg8W
         OETw==
X-Gm-Message-State: AFqh2kon0v7hyogo2XdxJk6QuQUHlXhgo81r6tGQYco8LQhj1QCZyMBA
	J/6PhhURPIxbwwFC+8Tug+9BFPrAAy/nIdiRMFtTiQ==
X-Google-Smtp-Source: AMrXdXts8BrSbkC+KOmKv6kEo+vb2pdbKNhL2j8VTSD7dxzDetsFkCpJzR5IklYb+fpl6LsTEJl6k+jBkwUPcBvXQXE=
X-Received: by 2002:a0c:ed46:0:b0:524:dace:4594 with SMTP id
 v6-20020a0ced46000000b00524dace4594mr1918940qvq.108.1672672747966; Mon, 02
 Jan 2023 07:19:07 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Jan 2023 15:19:07 +0000
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-2-a803f2660127@baylibre.com>
 <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
 <CABnWg9tf8Sx8S0d8mGowZ80YmZLz6cX2iyxZyKYCGbH_RKMKyA@mail.gmail.com> <187044b3-b154-256a-c107-3dc9de57d60b@collabora.com>
In-Reply-To: <187044b3-b154-256a-c107-3dc9de57d60b@collabora.com>
MIME-Version: 1.0
Date: Mon, 2 Jan 2023 15:19:07 +0000
Message-ID: <CABnWg9tRveoZb8e7zGkGqb0MMoJiTxfS1NeJDtfFqMYsf-zJcg@mail.gmail.com>
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi bindings
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"oul@kernel.org" <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>, 
	"obh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, 
	Chunfeng Yun <Chunfeng.Yun@mediatek.com>, 
	"hunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "atthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	".zabel@pengutronix.de" <p.zabel@pengutronix.de>, "irlied@gmail.com" <airlied@gmail.com>, 
	"zysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"nux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, Mac Shen <Mac.Shen@mediatek.com>, 
	"vicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"zysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>, Stuart Lee <Stuart.Lee@mediatek.com>, 
	"i-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"nux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"inux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_071919_978671_88B7A3A5 
X-CRM114-Status: GOOD (  14.44  )
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

T24gTW9uLCAwMiBKYW4gMjAyMyAxNToxNCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8KPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj5JbCAwMi8wMS8y
MyAxNDozOCwgR3VpbGxhdW1lIFJhbnF1ZXQgaGEgc2NyaXR0bzoKPj4gT24gTW9uLCAyNiBEZWMg
MjAyMiAwNjoxOCwgQ0sgSHUgKOiDoeS/iuWFiSkgPGNrLmh1QG1lZGlhdGVrLmNvbT4gd3JvdGU6
Cj4+PiBIaSwgR3VpbGxhdW1lOgo+Pj4KPj4+IE9uIEZyaSwgMjAyMi0xMS0wNCBhdCAxNTowOSAr
MDEwMCwgR3VpbGxhdW1lIFJhbnF1ZXQgd3JvdGU6Cj4+Pj4gQWRkIG10ODE5NSBTb0MgYmluZGlu
Z3MgZm9yIGhkbWkgYW5kIGhkbWktZGRjCj4+Pj4KPj4+PiBPbiBtdDgxOTUgdGhlIGRkYyBpMmMg
Y29udHJvbGxlciBpcyBwYXJ0IG9mIHRoZSBoZG1pIElQIGJsb2NrIGFuZAo+Pj4+IHRodXMgaGFz
IG5vCj4+Pj4gc3BlY2lmaWMgcmVnaXN0ZXIgcmFuZ2UsIHBvd2VyIGRvbWFpbiBvciBpbnRlcnJ1
cHQsIG1ha2luZyBpdCBzaW1wbGVyCj4+Pj4gdGhhbiBpdHMgdGhlIGxlZ2FjeSAibWVkaWF0ZWss
aGRtaS1kZGMiIGJpbmRpbmcuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgUmFu
cXVldCA8Z3JhbnF1ZXRAYmF5bGlicmUuY29tPgo+Pj4+IC0tLQo+Pj4+Cj4+Pgo+Pj4gW3NuaXBd
Cj4+Pgo+Pj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVk
aWF0ZWsvbWVkaWF0ZWssbXQ4MTk1LQo+Pj4+IGhkbWktZGRjLnlhbWwKPj4+PiBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLG10ODE5
NS0KPj4+PiBoZG1pLWRkYy55YW1sCj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+PiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjJkYzI3MzY4OTU4NAo+Pj4+IC0tLSAvZGV2L251bGwKPj4+PiArKysK
Pj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVr
L21lZGlhdGVrLG10ODE5NS0KPj4+PiBoZG1pLWRkYy55YW1sCj4+Pj4gQEAgLTAsMCArMSw1MSBA
QAo+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0y
LUNsYXVzZSkKPj4+PiArJVlBTUwgMS4yCj4+Pj4gKy0tLQo+Pj4+ICskaWQ6Cj4+Pj4gaHR0cHM6
Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3Bs
YXkvbWVkaWF0ZWsvbWVkaWF0ZWssbXQ4MTk1LWhkbWktZGRjLnlhbWwqX187SXchIUNUUk5LQTl3
TWcwQVJidyF3d1ZRdXE1bHpXMGx2VUZVa1ZYUFdUOGNJdTk2eGRrbjR0TWFtczFFNTVxeXhFWm1n
VjFpMFdmcE9scTU3dyQKPj4+Pgo+Pj4+ICskc2NoZW1hOgo+Pj4+IGh0dHBzOi8vdXJsZGVmZW5z
ZS5jb20vdjMvX19odHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCpf
XztJdyEhQ1RSTktBOXdNZzBBUmJ3IXd3VlF1cTVselcwbHZVRlVrVlhQV1Q4Y0l1OTZ4ZGtuNHRN
YW1zMUU1NXF5eEVabWdWMWkwV2RTR09TeHp3JAo+Pj4+Cj4+Pj4gKwo+Pj4+ICt0aXRsZTogTWVk
aWF0ZWsgSERNSSBEREMgZm9yIG10ODE5NQo+Pj4+ICsKPj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4g
KyAgLSBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPgo+Pj4+ICsgIC0gSml0YW8gc2hpIDxqaXRh
by5zaGlAbWVkaWF0ZWsuY29tPgo+Pj4+ICsKPj4+PiArZGVzY3JpcHRpb246IHwKPj4+PiArICBU
aGUgSERNSSBEREMgaTJjIGNvbnRyb2xsZXIgaXMgdXNlZCB0byBpbnRlcmZhY2Ugd2l0aCB0aGUg
SERNSSBEREMKPj4+PiBwaW5zLgo+Pj4+ICsKPj4+PiArcHJvcGVydGllczoKPj4+PiArICBjb21w
YXRpYmxlOgo+Pj4+ICsgICAgZW51bToKPj4+PiArICAgICAgLSBtZWRpYXRlayxtdDgxOTUtaGRt
aS1kZGMKPj4+PiArCj4+Pj4gKyAgY2xvY2tzOgo+Pj4+ICsgICAgbWF4SXRlbXM6IDEKPj4+PiAr
Cj4+Pj4gKyAgY2xvY2stbmFtZXM6Cj4+Pj4gKyAgICBpdGVtczoKPj4+PiArICAgICAgLSBjb25z
dDogZGRjCj4+Pj4gKwo+Pj4+ICsgIG1lZGlhdGVrLGhkbWk6Cj4+Pj4gKyAgICAkcmVmOiAvc2No
ZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Pj4gKyAgICBkZXNjcmlwdGlv
bjoKPj4+PiArICAgICAgQSBwaGFuZGxlIHRvIHRoZSBtdDgxOTUgaGRtaSBjb250cm9sbGVyCj4+
Pj4gKwo+Pj4+ICtyZXF1aXJlZDoKPj4+PiArICAtIGNvbXBhdGlibGUKPj4+PiArICAtIGNsb2Nr
cwo+Pj4+ICsgIC0gY2xvY2stbmFtZXMKPj4+PiArCj4+Pj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVz
OiBmYWxzZQo+Pj4+ICsKPj4+PiArZXhhbXBsZXM6Cj4+Pj4gKyAgLSB8Cj4+Pj4gKyAgICAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+Pj4+ICsg
ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+Pj4+
ICsgICAgaGRtaWRkYzA6IGkyYyB7Cj4+Pj4gKyAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWss
bXQ4MTk1LWhkbWktZGRjIjsKPj4+PiArICAgICAgbWVkaWF0ZWssaGRtaSA9IDwmaGRtaTA+Owo+
Pj4+ICsgICAgICBjbG9ja3MgPSA8JmNsazI2bT47Cj4+Pj4gKyAgICAgIGNsb2NrLW5hbWVzID0g
ImRkYyI7Cj4+Pj4gKyAgICB9Owo+Pj4KPj4+IEkgdGhpbmsgd2Ugc2hvdWxkIG5vdCBoYXZlIGEg
dmlydHVhbCBkZXZpY2UuIFRoaXMgZGRjIGlzIHBhcnQgb2YKPj4+IG10ODE5NS1oZG1pIGRldmlj
ZSwgc28ganVzdCBrZWVwIG10ODE5NS1oZG1pLCBhbmQgbGV0IG10ODE5NS1oZG1pCj4+PiBkcml2
ZXIgdG8gcHJvYmUgdGhlIHN1YiBkcml2ZXIgb2YgZGRjIGRyaXZlci4KPj4+Cj4+PiBSZWdhcmRz
LAo+Pj4gQ0sKPj4KPj4gSGkgQ0ssCj4+Cj4+IFRoeCBmb3IgeW91ciBpbnB1dC4KPj4gVGhvdWdo
IEkgd291bGQgc3Ryb25nbHkgcHJlZmVyIHRvIGtlZXAgdGhlIGRkYyBhcyBhIHNlcGFyYXRlICJ2
aXJ0dWFsIGRldmljZSIuCj4+Cj4+IEl0IGFsaWducyBiZXR0ZXIgd2l0aCB0aGUgZ29hbCBvZiBy
ZXVzaW5nIGFzIG11Y2ggY29kZSBhcyBwb3NzaWJsZQo+PiBmcm9tIHRoZSBIRE1JIFYxIElQLAo+
PiB3aGljaCBpcyBzb21ldGhpbmcgeW91IGhhdmUgYmVlbiBhZHZvY2F0aW5nIHNpbmNlIFYxIG9m
IHRoaXMgcGF0Y2gKPj4gcXVpdGUgc29tZSB0aW1lIGFnbwo+PiBhbmQgaGFzIHNoYXBlZCB0aGlz
IHBhdGNoLgo+Pgo+PiBUbyBtZSB3ZSBhcmUgaW4gYSBzdGF0ZSB0aGF0IGlzIGNsZWFuIGFuZCBh
dm9pZHMgYnJhbmNoaW5nIGluIHRoZSBoZG1pCj4+IGNvbW1vbiBjb2RlLgo+PiBXb3VsZCB5b3Ug
cmVjb25zaWRlciBhbmQgYWxsb3cgdGhlIHVzZSBvZiB0aGF0IHZpcnR1YWwgZGV2aWNlPwo+Pgo+
PiBUaHgsCj4+IEd1aWxsYXVtZS4KPj4KPgo+WW91IGNhbiBhcyB3ZWxsIGtlZXAgdGhlIEREQyBh
cyBhIHNlcGFyYXRlZCBkcml2ZXIsIGJ1dCByZWdpc3RlciBpbiB0aGUgSERNSSB2MSBhbmQKPnYy
IGRyaXZlciBhdCBwcm9iZSB0aW1lLgo+Cj5Eb2luZyB0aGF0LCB5b3Ugd29uJ3QgbmVlZCBhbnkg
ZGV2aWNldHJlZSBub2RlIHNwZWNpZmljIHRvIGFueSB2aXJ0dWFsIGRldmljZSA6LSkKPgo+Q2hl
ZXJzLAo+QW5nZWxvCj4KPgoKU3VyZSwgYnV0IGRvZXMgaXQgbWFrZSBhbnkgc2Vuc2UgZm9yIEhE
TUkgdjE/CkFzIHRoZSBkZGMgaW4gdjEgaXMgYSByZWFsIGRldmljZSB3aGljaCAoaW4gdGhlb3J5
KSBjYW4gYmUgcmV1c2VkIGJ5IG90aGVyIElQcy4KCkkgd291bGQgc2VlIGVpdGhlciB2MSBhbmQg
djIgZGRjIGV4cG9zZWQgYXMgYSBkZXZpY2V0cmVlIG5vZGUgKHdoaWNoCmlzIHdoYXQgSSBmYXZv
cikuCk9yIHYxIGFzIGEgZGV2aWNldHJlZSBub2RlIGFuZCB2MiBwcm9iZWQgZGlyZWN0bHkgZnJv
bSB0aGUgaGRtaSBjb2RlIGJhc2UuCgpUaHgsCkd1aWxsYXVtZS4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
