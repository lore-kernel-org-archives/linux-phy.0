Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 112E6C3DA7A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jan 2023 14:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgBQYv8JSWgk1BgwtYVScYqNEXJq0+ehrbJI1qZYc4A=; b=sDJ9ASVr+DXRS6
	W5XBBs6YUSGIGrLMNk3NDeW7Q2gYOUl/RV6XcIWtsVgkkPJO8tP8ljSBepq20t904uADqCkjLUZFA
	YK/jzJxRaYh9PGvvhb8MSBC3E53CBaPM3x83VOT71U/S9YnZOxQ5/cuTkFWDB+RjZMnSBuK9i9Ri3
	5JaHdkXAobGYIAW1WylStuqCREye1ohp1UNaGi+a8AqB6/jbrb5AM8Nz3nzzjB2fNCWGXvZYcgt50
	vrMple1Iruvhhgf8tGyJ2yTZFlLGuXMh0Kiocr1fLus8G0RgCfJVvsF/TOdRZTrZHh41xMStsnqmJ
	vd+ojxSRZwzudLwh0GDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCLdc-00Bk3j-1z; Mon, 02 Jan 2023 14:18:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCLaO-00Bj4x-M1; Mon, 02 Jan 2023 14:14:50 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0C4BC660036F;
	Mon,  2 Jan 2023 14:14:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672668883;
	bh=KWofe4Ce3M/Z6MdezBB9cv+MoFevPlM9NxEfSRWWBKA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=B2tnzaFmBPW9eb1lm0Bvxs+jKedjx+VFazMTAfbf8W9bZwnH03CfodnQNZaIeySKp
	 bSSpu9DS8xqW7Dtx4QSGFYGah8/nt992fuyejDrc2jspfCr7g1O7ck78zDGtCOlUA4
	 Bgs6Kv+Sj5VMeqDYQailcnGXz97COiO1wsV4AxTeKizWPJrIEvUFUMVcOILQl2424E
	 lv9wndKuIeFf3OdNLYNk3d05x+lpDW0H2aSrH8wIHsmLKQYGU6s3sNZpn9I6ZLYXQn
	 WGPPttaVHML8D67T00cO/74PI7Wok64VMSJ8fYRdAfX+t90WnsTOHGHe0v6jV5lQ1d
	 LQPYD1YMKEpXg==
Message-ID: <187044b3-b154-256a-c107-3dc9de57d60b@collabora.com>
Date: Mon, 2 Jan 2023 15:14:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, CK Hu <ck.hu@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 Chunfeng Yun <Chunfeng.Yun@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 Jitao Shi <jitao.shi@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "rzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "koul@kernel.org" <vkoul@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "inux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Mac Shen <Mac.Shen@mediatek.com>,
 "evicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "rzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
 Stuart Lee <Stuart.Lee@mediatek.com>,
 "ri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "inux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20220919-v3-0-a803f2660127@baylibre.com>
 <20220919-v3-2-a803f2660127@baylibre.com>
 <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
 <CABnWg9tf8Sx8S0d8mGowZ80YmZLz6cX2iyxZyKYCGbH_RKMKyA@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <CABnWg9tf8Sx8S0d8mGowZ80YmZLz6cX2iyxZyKYCGbH_RKMKyA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_061445_193385_F40C411C 
X-CRM114-Status: GOOD (  21.95  )
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

SWwgMDIvMDEvMjMgMTQ6MzgsIEd1aWxsYXVtZSBSYW5xdWV0IGhhIHNjcml0dG86Cj4gT24gTW9u
LCAyNiBEZWMgMjAyMiAwNjoxOCwgQ0sgSHUgKOiDoeS/iuWFiSkgPGNrLmh1QG1lZGlhdGVrLmNv
bT4gd3JvdGU6Cj4+IEhpLCBHdWlsbGF1bWU6Cj4+Cj4+IE9uIEZyaSwgMjAyMi0xMS0wNCBhdCAx
NTowOSArMDEwMCwgR3VpbGxhdW1lIFJhbnF1ZXQgd3JvdGU6Cj4+PiBBZGQgbXQ4MTk1IFNvQyBi
aW5kaW5ncyBmb3IgaGRtaSBhbmQgaGRtaS1kZGMKPj4+Cj4+PiBPbiBtdDgxOTUgdGhlIGRkYyBp
MmMgY29udHJvbGxlciBpcyBwYXJ0IG9mIHRoZSBoZG1pIElQIGJsb2NrIGFuZAo+Pj4gdGh1cyBo
YXMgbm8KPj4+IHNwZWNpZmljIHJlZ2lzdGVyIHJhbmdlLCBwb3dlciBkb21haW4gb3IgaW50ZXJy
dXB0LCBtYWtpbmcgaXQgc2ltcGxlcgo+Pj4gdGhhbiBpdHMgdGhlIGxlZ2FjeSAibWVkaWF0ZWss
aGRtaS1kZGMiIGJpbmRpbmcuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFJhbnF1
ZXQgPGdyYW5xdWV0QGJheWxpYnJlLmNvbT4KPj4+IC0tLQo+Pj4KPj4KPj4gW3NuaXBdCj4+Cj4+
PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21l
ZGlhdGVrLG10ODE5NS0KPj4+IGhkbWktZGRjLnlhbWwKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssbXQ4MTk1LQo+Pj4gaGRt
aS1kZGMueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMmRjMjczNjg5NTg0Cj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysKPj4+IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssbXQ4MTk1
LQo+Pj4gaGRtaS1kZGMueWFtbAo+Pj4gQEAgLTAsMCArMSw1MSBAQAo+Pj4gKyMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+Pj4gKyVZQU1M
IDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDoKPj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19o
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLG10
ODE5NS1oZG1pLWRkYy55YW1sKl9fO0l3ISFDVFJOS0E5d01nMEFSYnchd3dWUXVxNWx6VzBsdlVG
VWtWWFBXVDhjSXU5Nnhka240dE1hbXMxRTU1cXl4RVptZ1YxaTBXZnBPbHE1N3ckCj4+Pgo+Pj4g
KyRzY2hlbWE6Cj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwqX187SXchIUNUUk5LQTl3TWcwQVJidyF3d1ZR
dXE1bHpXMGx2VUZVa1ZYUFdUOGNJdTk2eGRrbjR0TWFtczFFNTVxeXhFWm1nVjFpMFdkU0dPU3h6
dyQKPj4+Cj4+PiArCj4+PiArdGl0bGU6IE1lZGlhdGVrIEhETUkgRERDIGZvciBtdDgxOTUKPj4+
ICsKPj4+ICttYWludGFpbmVyczoKPj4+ICsgIC0gQ0sgSHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4K
Pj4+ICsgIC0gSml0YW8gc2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPgo+Pj4gKwo+Pj4gK2Rl
c2NyaXB0aW9uOiB8Cj4+PiArICBUaGUgSERNSSBEREMgaTJjIGNvbnRyb2xsZXIgaXMgdXNlZCB0
byBpbnRlcmZhY2Ugd2l0aCB0aGUgSERNSSBEREMKPj4+IHBpbnMuCj4+PiArCj4+PiArcHJvcGVy
dGllczoKPj4+ICsgIGNvbXBhdGlibGU6Cj4+PiArICAgIGVudW06Cj4+PiArICAgICAgLSBtZWRp
YXRlayxtdDgxOTUtaGRtaS1kZGMKPj4+ICsKPj4+ICsgIGNsb2NrczoKPj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4+ICsKPj4+ICsgIGNsb2NrLW5hbWVzOgo+Pj4gKyAgICBpdGVtczoKPj4+ICsgICAg
ICAtIGNvbnN0OiBkZGMKPj4+ICsKPj4+ICsgIG1lZGlhdGVrLGhkbWk6Cj4+PiArICAgICRyZWY6
IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPj4+ICsgICAgZGVzY3Jp
cHRpb246Cj4+PiArICAgICAgQSBwaGFuZGxlIHRvIHRoZSBtdDgxOTUgaGRtaSBjb250cm9sbGVy
Cj4+PiArCj4+PiArcmVxdWlyZWQ6Cj4+PiArICAtIGNvbXBhdGlibGUKPj4+ICsgIC0gY2xvY2tz
Cj4+PiArICAtIGNsb2NrLW5hbWVzCj4+PiArCj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZh
bHNlCj4+PiArCj4+PiArZXhhbXBsZXM6Cj4+PiArICAtIHwKPj4+ICsgICAgI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4+ICsgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+Pj4gKyAgICBoZG1p
ZGRjMDogaTJjIHsKPj4+ICsgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE5NS1oZG1p
LWRkYyI7Cj4+PiArICAgICAgbWVkaWF0ZWssaGRtaSA9IDwmaGRtaTA+Owo+Pj4gKyAgICAgIGNs
b2NrcyA9IDwmY2xrMjZtPjsKPj4+ICsgICAgICBjbG9jay1uYW1lcyA9ICJkZGMiOwo+Pj4gKyAg
ICB9Owo+Pgo+PiBJIHRoaW5rIHdlIHNob3VsZCBub3QgaGF2ZSBhIHZpcnR1YWwgZGV2aWNlLiBU
aGlzIGRkYyBpcyBwYXJ0IG9mCj4+IG10ODE5NS1oZG1pIGRldmljZSwgc28ganVzdCBrZWVwIG10
ODE5NS1oZG1pLCBhbmQgbGV0IG10ODE5NS1oZG1pCj4+IGRyaXZlciB0byBwcm9iZSB0aGUgc3Vi
IGRyaXZlciBvZiBkZGMgZHJpdmVyLgo+Pgo+PiBSZWdhcmRzLAo+PiBDSwo+IAo+IEhpIENLLAo+
IAo+IFRoeCBmb3IgeW91ciBpbnB1dC4KPiBUaG91Z2ggSSB3b3VsZCBzdHJvbmdseSBwcmVmZXIg
dG8ga2VlcCB0aGUgZGRjIGFzIGEgc2VwYXJhdGUgInZpcnR1YWwgZGV2aWNlIi4KPiAKPiBJdCBh
bGlnbnMgYmV0dGVyIHdpdGggdGhlIGdvYWwgb2YgcmV1c2luZyBhcyBtdWNoIGNvZGUgYXMgcG9z
c2libGUKPiBmcm9tIHRoZSBIRE1JIFYxIElQLAo+IHdoaWNoIGlzIHNvbWV0aGluZyB5b3UgaGF2
ZSBiZWVuIGFkdm9jYXRpbmcgc2luY2UgVjEgb2YgdGhpcyBwYXRjaAo+IHF1aXRlIHNvbWUgdGlt
ZSBhZ28KPiBhbmQgaGFzIHNoYXBlZCB0aGlzIHBhdGNoLgo+IAo+IFRvIG1lIHdlIGFyZSBpbiBh
IHN0YXRlIHRoYXQgaXMgY2xlYW4gYW5kIGF2b2lkcyBicmFuY2hpbmcgaW4gdGhlIGhkbWkKPiBj
b21tb24gY29kZS4KPiBXb3VsZCB5b3UgcmVjb25zaWRlciBhbmQgYWxsb3cgdGhlIHVzZSBvZiB0
aGF0IHZpcnR1YWwgZGV2aWNlPwo+IAo+IFRoeCwKPiBHdWlsbGF1bWUuCj4gCgpZb3UgY2FuIGFz
IHdlbGwga2VlcCB0aGUgRERDIGFzIGEgc2VwYXJhdGVkIGRyaXZlciwgYnV0IHJlZ2lzdGVyIGlu
IHRoZSBIRE1JIHYxIGFuZAp2MiBkcml2ZXIgYXQgcHJvYmUgdGltZS4KCkRvaW5nIHRoYXQsIHlv
dSB3b24ndCBuZWVkIGFueSBkZXZpY2V0cmVlIG5vZGUgc3BlY2lmaWMgdG8gYW55IHZpcnR1YWwg
ZGV2aWNlIDotKQoKQ2hlZXJzLApBbmdlbG8KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
