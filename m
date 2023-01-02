Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A6CC53210
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jan 2023 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejyuv8JwOrjcB8NjRMOrM341g7WZIpuUMNG5MDgMOcY=; b=KPz5/pxVR4dJCwinAQ2vJJVxu6
	mKlw6Yq+6NIUQkWSemMXVU5vJVpH/GXwfObyV2jMVWdZeXI7Bkb7O213Xj0IulKfHw6pYIMKFj+SD
	moj6WywNHofXvVtO9X0QAm2XFJgUdL+uQ6u8BHwUCgkifB2/iVW/ANkkiWpXUQEvwXS7eSXYiGUE7
	yeO2Aczkq6/l1QBlusL+5+aqk8Pmnzxxp963x+zlZcPUj1I+fCDrhtoyuI7DQSs7kNgaXCzq9hB7x
	/E3lRk6ASs9BIAFDSA4BQfCBNJbJCtKklIXwcPdRY+957AmJoEqxe31fAYFvw3W/wmhxFjgOo0VPL
	2n4DmrPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCL1i-00BaT5-Kv; Mon, 02 Jan 2023 13:38:54 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCL1R-00BaLD-8B
	for linux-phy@lists.infradead.org; Mon, 02 Jan 2023 13:38:40 +0000
Received: by mail-qt1-x82c.google.com with SMTP id jr11so22437859qtb.7
        for <linux-phy@lists.infradead.org>; Mon, 02 Jan 2023 05:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUeJe0drBbTMgiYkIr+hpKI3FSwnBgCuZWCVk8bkpiQ=;
        b=sJKeU3WCdOQHKogctAuHoH1Lb5awwjpVpHefGzuQH49JgYhK41rW3ae5mHbdmBGjsY
         UnNOamQKAW85+d3DJvYxWEY0sQwr8sxKKtQaJB5/ZBhMt7NlGdpExaGUTvd1Ym8DFBJN
         z/E2hVpZRbW12fzg0X2Kj7ZDsGIcLif6Q2AhzKLokR+qFZiuaAbfbrrFr+unYfzjUdTo
         IBWE8DrMPJ7CwXxGloffvAvF0SeiBqq0lV8Vq6+n+EzQHdffJcGYNIxvZMkpsWb/VBo6
         wuXMNTIGHn3SZ4HlhcRTVEyDdo/VUZ2atZFin0VDm7biJW7nnru9XUW+S1aJ2RCzJq8Z
         kYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yUeJe0drBbTMgiYkIr+hpKI3FSwnBgCuZWCVk8bkpiQ=;
        b=EFnwYrFQgQT/I983ytSaru7PJHwNd7fq1FUHiaBDv8KlklV8NrUQeh1UhEfuT88GXL
         FFFBqgWyYl309/Bk18+1A/e58DQ3FtlEuMveHpVYWlHyNTusyjzauwjDn0b25b21VkpH
         fxdf/Q+MjGahBXXc+ACbMJtiwM/1Ku8u3CSFVD4/sbf8Pdn868L6VNZ3skkgtfXf7zUu
         YtnBEFodipEY9FuV6ZYj8mHM17H3L9BeSEkHP8LYfcmuzWPD29FmBR9w0xcfucfo0P4z
         2wAMfvdlzuXP72lpxHK6LNsdp5oN5IMNFJGwBwrIdVfoKEa0wQyKGscYUx40U+1MMlpk
         3sTA==
X-Gm-Message-State: AFqh2kobJ0AXOVGUd2Reu8t6CO8VdoLdLDPrhCqfowF9S4pZwZDKH4oU
	NwHmxBd2QzBcnXFG0NrsO1wnAwOMGM602pnFYtSBsg==
X-Google-Smtp-Source: AMrXdXsRzYNVZ3d4bkKeYiAZTwzM9YRTxsFtaA7lSB3wLl6IBFcwrL0JOddsqmMqIzrw5hKkoMpSWmO5PrVO7+oREAw=
X-Received: by 2002:ac8:4d50:0:b0:3a8:a6e:1b4 with SMTP id x16-20020ac84d50000000b003a80a6e01b4mr1646554qtv.313.1672666714390;
 Mon, 02 Jan 2023 05:38:34 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Jan 2023 13:38:33 +0000
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-2-a803f2660127@baylibre.com>
 <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
In-Reply-To: <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
MIME-Version: 1.0
Date: Mon, 2 Jan 2023 13:38:33 +0000
Message-ID: <CABnWg9tf8Sx8S0d8mGowZ80YmZLz6cX2iyxZyKYCGbH_RKMKyA@mail.gmail.com>
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi bindings
To: CK Hu <ck.hu@mediatek.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"kishon@ti.com" <kishon@ti.com>, Chunfeng Yun <Chunfeng.Yun@mediatek.com>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"rzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "koul@kernel.org" <vkoul@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"inux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, Mac Shen <Mac.Shen@mediatek.com>, 
	"evicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"rzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>, Stuart Lee <Stuart.Lee@mediatek.com>, 
	"ri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"inux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_053837_644310_F5FA7733 
X-CRM114-Status: GOOD (  12.06  )
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

T24gTW9uLCAyNiBEZWMgMjAyMiAwNjoxOCwgQ0sgSHUgKOiDoeS/iuWFiSkgPGNrLmh1QG1lZGlh
dGVrLmNvbT4gd3JvdGU6Cj5IaSwgR3VpbGxhdW1lOgo+Cj5PbiBGcmksIDIwMjItMTEtMDQgYXQg
MTU6MDkgKzAxMDAsIEd1aWxsYXVtZSBSYW5xdWV0IHdyb3RlOgo+PiBBZGQgbXQ4MTk1IFNvQyBi
aW5kaW5ncyBmb3IgaGRtaSBhbmQgaGRtaS1kZGMKPj4KPj4gT24gbXQ4MTk1IHRoZSBkZGMgaTJj
IGNvbnRyb2xsZXIgaXMgcGFydCBvZiB0aGUgaGRtaSBJUCBibG9jayBhbmQKPj4gdGh1cyBoYXMg
bm8KPj4gc3BlY2lmaWMgcmVnaXN0ZXIgcmFuZ2UsIHBvd2VyIGRvbWFpbiBvciBpbnRlcnJ1cHQs
IG1ha2luZyBpdCBzaW1wbGVyCj4+IHRoYW4gaXRzIHRoZSBsZWdhY3kgIm1lZGlhdGVrLGhkbWkt
ZGRjIiBiaW5kaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgUmFucXVldCA8Z3Jh
bnF1ZXRAYmF5bGlicmUuY29tPgo+PiAtLS0KPj4KPgo+W3NuaXBdCj4KPj4gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxtdDgxOTUt
Cj4+IGhkbWktZGRjLnlhbWwKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxtdDgxOTUtCj4+IGhkbWktZGRjLnlhbWwKPj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yZGMyNzM2ODk1ODQKPj4g
LS0tIC9kZXYvbnVsbAo+PiArKysKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxtdDgxOTUtCj4+IGhkbWktZGRjLnlhbWwKPj4g
QEAgLTAsMCArMSw1MSBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAt
b25seSBPUiBCU0QtMi1DbGF1c2UpCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOgo+PiBo
dHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
ZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxtdDgxOTUtaGRtaS1kZGMueWFtbCpfXztJdyEhQ1RS
TktBOXdNZzBBUmJ3IXd3VlF1cTVselcwbHZVRlVrVlhQV1Q4Y0l1OTZ4ZGtuNHRNYW1zMUU1NXF5
eEVabWdWMWkwV2ZwT2xxNTd3JAo+Pgo+PiArJHNjaGVtYToKPj4gaHR0cHM6Ly91cmxkZWZlbnNl
LmNvbS92My9fX2h0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sKl9f
O0l3ISFDVFJOS0E5d01nMEFSYnchd3dWUXVxNWx6VzBsdlVGVWtWWFBXVDhjSXU5Nnhka240dE1h
bXMxRTU1cXl4RVptZ1YxaTBXZFNHT1N4enckCj4+Cj4+ICsKPj4gK3RpdGxlOiBNZWRpYXRlayBI
RE1JIEREQyBmb3IgbXQ4MTk1Cj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIENLIEh1IDxj
ay5odUBtZWRpYXRlay5jb20+Cj4+ICsgIC0gSml0YW8gc2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsu
Y29tPgo+PiArCj4+ICtkZXNjcmlwdGlvbjogfAo+PiArICBUaGUgSERNSSBEREMgaTJjIGNvbnRy
b2xsZXIgaXMgdXNlZCB0byBpbnRlcmZhY2Ugd2l0aCB0aGUgSERNSSBEREMKPj4gcGlucy4KPj4g
Kwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4gKyAgICBlbnVtOgo+PiArICAg
ICAgLSBtZWRpYXRlayxtdDgxOTUtaGRtaS1kZGMKPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAg
bWF4SXRlbXM6IDEKPj4gKwo+PiArICBjbG9jay1uYW1lczoKPj4gKyAgICBpdGVtczoKPj4gKyAg
ICAgIC0gY29uc3Q6IGRkYwo+PiArCj4+ICsgIG1lZGlhdGVrLGhkbWk6Cj4+ICsgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+PiArICAgIGRlc2NyaXB0
aW9uOgo+PiArICAgICAgQSBwaGFuZGxlIHRvIHRoZSBtdDgxOTUgaGRtaSBjb250cm9sbGVyCj4+
ICsKPj4gK3JlcXVpcmVkOgo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSBjbG9ja3MKPj4gKyAg
LSBjbG9jay1uYW1lcwo+PiArCj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4gKwo+
PiArZXhhbXBsZXM6Cj4+ICsgIC0gfAo+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRl
cnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+PiArICAgIGhkbWlkZGMwOiBpMmMgewo+PiAr
ICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxOTUtaGRtaS1kZGMiOwo+PiArICAgICAg
bWVkaWF0ZWssaGRtaSA9IDwmaGRtaTA+Owo+PiArICAgICAgY2xvY2tzID0gPCZjbGsyNm0+Owo+
PiArICAgICAgY2xvY2stbmFtZXMgPSAiZGRjIjsKPj4gKyAgICB9Owo+Cj5JIHRoaW5rIHdlIHNo
b3VsZCBub3QgaGF2ZSBhIHZpcnR1YWwgZGV2aWNlLiBUaGlzIGRkYyBpcyBwYXJ0IG9mCj5tdDgx
OTUtaGRtaSBkZXZpY2UsIHNvIGp1c3Qga2VlcCBtdDgxOTUtaGRtaSwgYW5kIGxldCBtdDgxOTUt
aGRtaQo+ZHJpdmVyIHRvIHByb2JlIHRoZSBzdWIgZHJpdmVyIG9mIGRkYyBkcml2ZXIuCj4KPlJl
Z2FyZHMsCj5DSwoKSGkgQ0ssCgpUaHggZm9yIHlvdXIgaW5wdXQuClRob3VnaCBJIHdvdWxkIHN0
cm9uZ2x5IHByZWZlciB0byBrZWVwIHRoZSBkZGMgYXMgYSBzZXBhcmF0ZSAidmlydHVhbCBkZXZp
Y2UiLgoKSXQgYWxpZ25zIGJldHRlciB3aXRoIHRoZSBnb2FsIG9mIHJldXNpbmcgYXMgbXVjaCBj
b2RlIGFzIHBvc3NpYmxlCmZyb20gdGhlIEhETUkgVjEgSVAsCndoaWNoIGlzIHNvbWV0aGluZyB5
b3UgaGF2ZSBiZWVuIGFkdm9jYXRpbmcgc2luY2UgVjEgb2YgdGhpcyBwYXRjaApxdWl0ZSBzb21l
IHRpbWUgYWdvCmFuZCBoYXMgc2hhcGVkIHRoaXMgcGF0Y2guCgpUbyBtZSB3ZSBhcmUgaW4gYSBz
dGF0ZSB0aGF0IGlzIGNsZWFuIGFuZCBhdm9pZHMgYnJhbmNoaW5nIGluIHRoZSBoZG1pCmNvbW1v
biBjb2RlLgpXb3VsZCB5b3UgcmVjb25zaWRlciBhbmQgYWxsb3cgdGhlIHVzZSBvZiB0aGF0IHZp
cnR1YWwgZGV2aWNlPwoKVGh4LApHdWlsbGF1bWUuCgo+Cj4+ICsKPj4gKy4uLgo+PgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
