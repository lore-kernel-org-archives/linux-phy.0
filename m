Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43D2C3DA7D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Jan 2023 10:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiq/xPZAnD8WR5F9bdEweePu9LCb4bV5SsUWF+0EUf4=; b=Evcov+EMJTQZCi
	e2ZX3knujH2jY4KyUV8oIOX+QSfyKUgS95wbXIkg1e9Tm5StsR0pGUKkZptcjj5J/pPfDjYQXmpYk
	L63ONkUt6y95fCStgbKASIIhgtHHhXdNidDoJhUqEX46cgxcyDqEnnpkzlX+XeXct9zjJOgkpkeIZ
	L1Kcr0S2gdahdftk4PLDakoKOoyrCBFiNcwhNeF+XvtcYj/Y5vXfjaXsPpM1BSaUm/TcFFprp2yIA
	lU0aQAeFoIgG/Nfpf2gOoUAfjgTzbNXk7jL5MvvaM6Z+3gyWgvmkKCi18zdGfyiS+HuPU+xzHReSA
	qdBYVF9cBSrWh5/tAaKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCeb1-000jK4-Fq; Tue, 03 Jan 2023 10:32:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCeGm-000eCa-PL; Tue, 03 Jan 2023 10:11:51 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0A6A16602CE1;
	Tue,  3 Jan 2023 10:11:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672740702;
	bh=iDxcTBwfqu1inbI6ClQj+J/Gk+ZBgBuM6mX2e/vswOo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=M44qVGQFfORgub+nkagT98LCBMLVcctjM4qK7ke/N4CsekYf+FgG+ZKGiUrq8StK/
	 8gXYgCiE8pDnJX4+MibzzWBugkzZsYXZTJz3csLYBW8WRm9hXf0I3DhdzaUmlZyJ7y
	 k0QG2jh+mz8ChL6NLSLa8cnbkf9jlrxdriulXsKICbzRFgRQoF7TcSnnxqaOJ/3MBw
	 jR6SToUTohDpDbYsUDrW1HcxVlU09SW3SbUovD6ZM3r3smTulmHKhjx+bqDzrz3/gX
	 4ujbn0MMJe4gY8y8Q9kPxJWSHyB/mE4Y39jdfdbSFlQbtD4gx//J4fyUqLIbyg6E6Y
	 vpaASmtsiWdVw==
Message-ID: <761791af-971d-8e64-857c-4b3cbf9487da@collabora.com>
Date: Tue, 3 Jan 2023 11:11:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 "oul@kernel.org" <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 "obh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 Chunfeng Yun <Chunfeng.Yun@mediatek.com>,
 "hunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 Jitao Shi <jitao.shi@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "atthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 ".zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "irlied@gmail.com" <airlied@gmail.com>,
 "zysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Mac Shen <Mac.Shen@mediatek.com>,
 "vicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "zysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
 Stuart Lee <Stuart.Lee@mediatek.com>,
 "i-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "nux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "inux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20220919-v3-0-a803f2660127@baylibre.com>
 <20220919-v3-2-a803f2660127@baylibre.com>
 <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
 <CABnWg9tf8Sx8S0d8mGowZ80YmZLz6cX2iyxZyKYCGbH_RKMKyA@mail.gmail.com>
 <187044b3-b154-256a-c107-3dc9de57d60b@collabora.com>
 <CABnWg9tRveoZb8e7zGkGqb0MMoJiTxfS1NeJDtfFqMYsf-zJcg@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <CABnWg9tRveoZb8e7zGkGqb0MMoJiTxfS1NeJDtfFqMYsf-zJcg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_021145_322279_8242FE58 
X-CRM114-Status: GOOD (  19.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMDIvMDEvMjMgMTY6MTksIEd1aWxsYXVtZSBSYW5xdWV0IGhhIHNjcml0dG86Cj4gT24gTW9u
LCAwMiBKYW4gMjAyMyAxNToxNCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8KPiA8YW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4gSWwgMDIvMDEvMjMg
MTQ6MzgsIEd1aWxsYXVtZSBSYW5xdWV0IGhhIHNjcml0dG86Cj4+PiBPbiBNb24sIDI2IERlYyAy
MDIyIDA2OjE4LCBDSyBIdSAo6IOh5L+K5YWJKSA8Y2suaHVAbWVkaWF0ZWsuY29tPiB3cm90ZToK
Pj4+PiBIaSwgR3VpbGxhdW1lOgo+Pj4+Cj4+Pj4gT24gRnJpLCAyMDIyLTExLTA0IGF0IDE1OjA5
ICswMTAwLCBHdWlsbGF1bWUgUmFucXVldCB3cm90ZToKPj4+Pj4gQWRkIG10ODE5NSBTb0MgYmlu
ZGluZ3MgZm9yIGhkbWkgYW5kIGhkbWktZGRjCj4+Pj4+Cj4+Pj4+IE9uIG10ODE5NSB0aGUgZGRj
IGkyYyBjb250cm9sbGVyIGlzIHBhcnQgb2YgdGhlIGhkbWkgSVAgYmxvY2sgYW5kCj4+Pj4+IHRo
dXMgaGFzIG5vCj4+Pj4+IHNwZWNpZmljIHJlZ2lzdGVyIHJhbmdlLCBwb3dlciBkb21haW4gb3Ig
aW50ZXJydXB0LCBtYWtpbmcgaXQgc2ltcGxlcgo+Pj4+PiB0aGFuIGl0cyB0aGUgbGVnYWN5ICJt
ZWRpYXRlayxoZG1pLWRkYyIgYmluZGluZy4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogR3Vp
bGxhdW1lIFJhbnF1ZXQgPGdyYW5xdWV0QGJheWxpYnJlLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+Cj4+
Pj4KPj4+PiBbc25pcF0KPj4+Pgo+Pj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLG10ODE5NS0KPj4+Pj4gaGRtaS1kZGMueWFt
bAo+Pj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlh
dGVrL21lZGlhdGVrLG10ODE5NS0KPj4+Pj4gaGRtaS1kZGMueWFtbAo+Pj4+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+Pj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjJkYzI3MzY4OTU4NAo+Pj4+PiAt
LS0gL2Rldi9udWxsCj4+Pj4+ICsrKwo+Pj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLG10ODE5NS0KPj4+Pj4gaGRtaS1kZGMu
eWFtbAo+Pj4+PiBAQCAtMCwwICsxLDUxIEBACj4+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4+Pj4gKyVZQU1MIDEuMgo+Pj4+
PiArLS0tCj4+Pj4+ICskaWQ6Cj4+Pj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRw
Oi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLG10ODE5
NS1oZG1pLWRkYy55YW1sKl9fO0l3ISFDVFJOS0E5d01nMEFSYnchd3dWUXVxNWx6VzBsdlVGVWtW
WFBXVDhjSXU5Nnhka240dE1hbXMxRTU1cXl4RVptZ1YxaTBXZnBPbHE1N3ckCj4+Pj4+Cj4+Pj4+
ICskc2NoZW1hOgo+Pj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL2Rldmlj
ZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwqX187SXchIUNUUk5LQTl3TWcwQVJidyF3
d1ZRdXE1bHpXMGx2VUZVa1ZYUFdUOGNJdTk2eGRrbjR0TWFtczFFNTVxeXhFWm1nVjFpMFdkU0dP
U3h6dyQKPj4+Pj4KPj4+Pj4gKwo+Pj4+PiArdGl0bGU6IE1lZGlhdGVrIEhETUkgRERDIGZvciBt
dDgxOTUKPj4+Pj4gKwo+Pj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4+ICsgIC0gQ0sgSHUgPGNrLmh1
QG1lZGlhdGVrLmNvbT4KPj4+Pj4gKyAgLSBKaXRhbyBzaGkgPGppdGFvLnNoaUBtZWRpYXRlay5j
b20+Cj4+Pj4+ICsKPj4+Pj4gK2Rlc2NyaXB0aW9uOiB8Cj4+Pj4+ICsgIFRoZSBIRE1JIEREQyBp
MmMgY29udHJvbGxlciBpcyB1c2VkIHRvIGludGVyZmFjZSB3aXRoIHRoZSBIRE1JIEREQwo+Pj4+
PiBwaW5zLgo+Pj4+PiArCj4+Pj4+ICtwcm9wZXJ0aWVzOgo+Pj4+PiArICBjb21wYXRpYmxlOgo+
Pj4+PiArICAgIGVudW06Cj4+Pj4+ICsgICAgICAtIG1lZGlhdGVrLG10ODE5NS1oZG1pLWRkYwo+
Pj4+PiArCj4+Pj4+ICsgIGNsb2NrczoKPj4+Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4+PiArCj4+
Pj4+ICsgIGNsb2NrLW5hbWVzOgo+Pj4+PiArICAgIGl0ZW1zOgo+Pj4+PiArICAgICAgLSBjb25z
dDogZGRjCj4+Pj4+ICsKPj4+Pj4gKyAgbWVkaWF0ZWssaGRtaToKPj4+Pj4gKyAgICAkcmVmOiAv
c2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Pj4+ICsgICAgZGVzY3Jp
cHRpb246Cj4+Pj4+ICsgICAgICBBIHBoYW5kbGUgdG8gdGhlIG10ODE5NSBoZG1pIGNvbnRyb2xs
ZXIKPj4+Pj4gKwo+Pj4+PiArcmVxdWlyZWQ6Cj4+Pj4+ICsgIC0gY29tcGF0aWJsZQo+Pj4+PiAr
ICAtIGNsb2Nrcwo+Pj4+PiArICAtIGNsb2NrLW5hbWVzCj4+Pj4+ICsKPj4+Pj4gK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQo+Pj4+PiArCj4+Pj4+ICtleGFtcGxlczoKPj4+Pj4gKyAgLSB8
Cj4+Pj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4KPj4+Pj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRy
b2xsZXIvaXJxLmg+Cj4+Pj4+ICsgICAgaGRtaWRkYzA6IGkyYyB7Cj4+Pj4+ICsgICAgICBjb21w
YXRpYmxlID0gIm1lZGlhdGVrLG10ODE5NS1oZG1pLWRkYyI7Cj4+Pj4+ICsgICAgICBtZWRpYXRl
ayxoZG1pID0gPCZoZG1pMD47Cj4+Pj4+ICsgICAgICBjbG9ja3MgPSA8JmNsazI2bT47Cj4+Pj4+
ICsgICAgICBjbG9jay1uYW1lcyA9ICJkZGMiOwo+Pj4+PiArICAgIH07Cj4+Pj4KPj4+PiBJIHRo
aW5rIHdlIHNob3VsZCBub3QgaGF2ZSBhIHZpcnR1YWwgZGV2aWNlLiBUaGlzIGRkYyBpcyBwYXJ0
IG9mCj4+Pj4gbXQ4MTk1LWhkbWkgZGV2aWNlLCBzbyBqdXN0IGtlZXAgbXQ4MTk1LWhkbWksIGFu
ZCBsZXQgbXQ4MTk1LWhkbWkKPj4+PiBkcml2ZXIgdG8gcHJvYmUgdGhlIHN1YiBkcml2ZXIgb2Yg
ZGRjIGRyaXZlci4KPj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4gQ0sKPj4+Cj4+PiBIaSBDSywKPj4+
Cj4+PiBUaHggZm9yIHlvdXIgaW5wdXQuCj4+PiBUaG91Z2ggSSB3b3VsZCBzdHJvbmdseSBwcmVm
ZXIgdG8ga2VlcCB0aGUgZGRjIGFzIGEgc2VwYXJhdGUgInZpcnR1YWwgZGV2aWNlIi4KPj4+Cj4+
PiBJdCBhbGlnbnMgYmV0dGVyIHdpdGggdGhlIGdvYWwgb2YgcmV1c2luZyBhcyBtdWNoIGNvZGUg
YXMgcG9zc2libGUKPj4+IGZyb20gdGhlIEhETUkgVjEgSVAsCj4+PiB3aGljaCBpcyBzb21ldGhp
bmcgeW91IGhhdmUgYmVlbiBhZHZvY2F0aW5nIHNpbmNlIFYxIG9mIHRoaXMgcGF0Y2gKPj4+IHF1
aXRlIHNvbWUgdGltZSBhZ28KPj4+IGFuZCBoYXMgc2hhcGVkIHRoaXMgcGF0Y2guCj4+Pgo+Pj4g
VG8gbWUgd2UgYXJlIGluIGEgc3RhdGUgdGhhdCBpcyBjbGVhbiBhbmQgYXZvaWRzIGJyYW5jaGlu
ZyBpbiB0aGUgaGRtaQo+Pj4gY29tbW9uIGNvZGUuCj4+PiBXb3VsZCB5b3UgcmVjb25zaWRlciBh
bmQgYWxsb3cgdGhlIHVzZSBvZiB0aGF0IHZpcnR1YWwgZGV2aWNlPwo+Pj4KPj4+IFRoeCwKPj4+
IEd1aWxsYXVtZS4KPj4+Cj4+Cj4+IFlvdSBjYW4gYXMgd2VsbCBrZWVwIHRoZSBEREMgYXMgYSBz
ZXBhcmF0ZWQgZHJpdmVyLCBidXQgcmVnaXN0ZXIgaW4gdGhlIEhETUkgdjEgYW5kCj4+IHYyIGRy
aXZlciBhdCBwcm9iZSB0aW1lLgo+Pgo+PiBEb2luZyB0aGF0LCB5b3Ugd29uJ3QgbmVlZCBhbnkg
ZGV2aWNldHJlZSBub2RlIHNwZWNpZmljIHRvIGFueSB2aXJ0dWFsIGRldmljZSA6LSkKPj4KPj4g
Q2hlZXJzLAo+PiBBbmdlbG8KPj4KPj4KPiAKPiBTdXJlLCBidXQgZG9lcyBpdCBtYWtlIGFueSBz
ZW5zZSBmb3IgSERNSSB2MT8KPiBBcyB0aGUgZGRjIGluIHYxIGlzIGEgcmVhbCBkZXZpY2Ugd2hp
Y2ggKGluIHRoZW9yeSkgY2FuIGJlIHJldXNlZCBieSBvdGhlciBJUHMuCj4gCj4gSSB3b3VsZCBz
ZWUgZWl0aGVyIHYxIGFuZCB2MiBkZGMgZXhwb3NlZCBhcyBhIGRldmljZXRyZWUgbm9kZSAod2hp
Y2gKPiBpcyB3aGF0IEkgZmF2b3IpLgo+IE9yIHYxIGFzIGEgZGV2aWNldHJlZSBub2RlIGFuZCB2
MiBwcm9iZWQgZGlyZWN0bHkgZnJvbSB0aGUgaGRtaSBjb2RlIGJhc2UuCj4gCgpUaGUgbGFzdCBv
cHRpb24gbG9va3Mgc2Vuc2libGUsIHNpbmNlIHYxIGhhcyBhbiBleHRlcm5hbCBkZGMsIGJ1dCBv
biB2MiBpdCdzCmludGVncmF0ZWQuCgp2MSAtPiBkdCBwcm9iZQp2MiAtPiBkcml2ZXIgcHJvYmUK
Cj4gVGh4LAo+IEd1aWxsYXVtZS4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
