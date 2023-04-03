Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A505C76188
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 14:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCzoubHAsC3+YyaRDGOFVv5paDDk/j8HGo1liUkq5e0=; b=w2w5ieMbgYHzz8
	csZpZlRG839OYEAP7ez2naF9yhQFHKOSMurzR28X0bzJx6ambzCXu5t/RQXVw/aqb0UzusiPfQuRU
	hDYXna3FHE94gC5ers5UvOXsfla/kfIdaGyInjM7rDPdGOo3agwu5rzaGqIrlqaBtEnZ4lSledv9q
	vCtg0HF7A7H+Kj6xkvkmRwyE/OIWx0fZfR5mFAlcmFlCxhirMQRYDVE6YoN5K3TdtQIeuTXF5yaeW
	Q0dU/YYkqOrr+vOe0LTnB29pvOc0K+qIuwpWGksv9ev+ycXxuRywRRL9pMoDTIyuxTxX60SpGj6C3
	jLlkxakPHQStypTV1rAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLZp-00FhNV-29;
	Mon, 03 Apr 2023 14:54:33 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLZn-00FhM5-0r
	for linux-phy@lists.infradead.org;
	Mon, 03 Apr 2023 14:54:32 +0000
Received: by mail-ed1-x534.google.com with SMTP id y4so118514689edo.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Apr 2023 07:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680533666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4MYkMU1LTnOHVMP6HjNeFG2DRZjRa3eGm53fnJdgbc8=;
        b=aHG4EQpPrwwrZ0xsU+6h+jgYLslKOOi5f0J6zlC90kyvgE9UTdn4Q0F7pOHcdeXnW7
         ugGgxYwmhjEZKPhmZd/z6Og12wPvcP59GUXr9yluSvir/y4ynYPSdxiTWLo9lAIn8wIO
         FHOuwq4hdWcrWbLElbUspEy5TTrdRXtL9PLOEnLnHnIFHowf3o9aOP531Cf4r+3JLIh1
         3PkHDWQ+5nfm9SFo6Tm/sArpNSaVlKYiClE6W1G06KPvrhigzsAi3xwCat18zMHB3zIH
         w3TYqVRGHPAx2r0pok5PyZYjGyCotgek0g/FAtKB8rdPuQIGJJsYmsEKuistr/NT/475
         8gOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680533666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4MYkMU1LTnOHVMP6HjNeFG2DRZjRa3eGm53fnJdgbc8=;
        b=KksVmuGJ9vYW/8AS+25eOWvDDPXMKZQupJx50vWGON3QSPb6f4Yb/kEtuLrSnLEttE
         0ngYbAJ7yXA804uqaDdk6yNmT4A9Zu9YYggcwML5LNnjkL74H9DfRSdX5iUX5SL5BQEU
         mGUWgtm9HdmY+dhltRlvJvgsvaWKe0wR4yvC9bQN4tQTzHYVX4ZNhq9/JZYluKWo/M85
         vM8RqzjJXAtRJhy7+wmEX+DS/EIGqby8NC5yONfuMKRVltoiv3b5jq+m/NstQuYuvlkE
         X3YaEcbOow3/0HmA1ME8MNx2aAsEaTVY1RvOgXjAC7Iz1CidbrMJbSkycGL9+N6EStyP
         zE2w==
X-Gm-Message-State: AAQBX9dnpKq6hR+TbV4iVPjniQ4eGWsY4NotTou3SCdQb8OSZP6Lg84d
	bJrgpL8hbttFXRYixt+6NoEvxQ==
X-Google-Smtp-Source: AKy350bzC7zhyZol87P/h8Ao3cd9jxB9eNaY5b8cDld4A3nvsptLofinA2tasgAr9kVP46T3v1lsvQ==
X-Received: by 2002:a17:906:b303:b0:933:48ce:73a5 with SMTP id n3-20020a170906b30300b0093348ce73a5mr33462885ejz.56.1680533665843;
        Mon, 03 Apr 2023 07:54:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id q20-20020a50cc94000000b004bd6e3ed196sm4736781edi.86.2023.04.03.07.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 07:54:25 -0700 (PDT)
Message-ID: <6cd130bc-955a-9537-6a1a-301a38aac53f@linaro.org>
Date: Mon, 3 Apr 2023 16:54:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: add mtk-mipi-csi driver
Content-Language: en-US
To: Julien Stephan <jstephan@baylibre.com>
Cc: Florian Sylvestre <fsylvestre@baylibre.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Andy Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "moderated list:ARM/Mediatek USB3 PHY DRIVER"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:ARM/Mediatek USB3 PHY DRIVER"
 <linux-mediatek@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20230403071929.360911-1-jstephan@baylibre.com>
 <20230403071929.360911-2-jstephan@baylibre.com>
 <4837c3e0-60ed-601b-8512-30fda2176619@linaro.org>
 <CAEHHSvYJrCZop8OvTjsLJjr5HHSrG8dsSQ+K_W2cjdKJ4xfodA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEHHSvYJrCZop8OvTjsLJjr5HHSrG8dsSQ+K_W2cjdKJ4xfodA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_075431_332460_DE41F26F 
X-CRM114-Status: GOOD (  14.86  )
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

T24gMDMvMDQvMjAyMyAxNjo0MCwgSnVsaWVuIFN0ZXBoYW4gd3JvdGU6Cj4gSGkgS3J6eXN6dG9m
LAo+IAo+IExlIGx1bi4gMyBhdnIuIDIwMjMgw6AgMTE6NDksIEtyenlzenRvZiBLb3psb3dza2kg
PAo+IGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gYSDDqWNyaXQgOgo+IAo+PiBPbiAw
My8wNC8yMDIzIDA5OjE5LCBKdWxpZW4gU3RlcGhhbiB3cm90ZToKPj4+IEZyb206IEZsb3JpYW4g
U3lsdmVzdHJlIDxmc3lsdmVzdHJlQGJheWxpYnJlLmNvbT4KPj4+Cj4+Cj4+IFRoZXJlIGlzIG5v
IGNvbW1pdCBtc2cuCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIFN5bHZlc3RyZSA8ZnN5
bHZlc3RyZUBiYXlsaWJyZS5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKdWxpZW4gU3RlcGhhbiA8
anN0ZXBoYW5AYmF5bGlicmUuY29tPgo+Pj4gLS0tCj4+PiAgLi4uL2JpbmRpbmdzL3BoeS9tZWRp
YXRlayxjc2ktcGh5LnlhbWwgICAgICAgIHwgNDEgKysrKysrKysrKysrKysrKysrKwo+Pj4gIE1B
SU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKwo+Pj4g
IDIgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NAo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGNzaS1w
aHkueWFtbAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L21lZGlhdGVrLGNzaS1waHkueWFtbAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssY3NpLXBoeS55YW1sCj4+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jMDI2ZTQzZjM1ZmQKPj4+IC0tLSAvZGV2
L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVk
aWF0ZWssY3NpLXBoeS55YW1sCj4+Cj4+IEZpbGVuYW1lIGxpa2UgY29tcGF0aWJsZS4KPj4KPiBT
aG91bGQgSSByZW5hbWUgdGhlIGJpbmRpbmcgIGZpbGUKPiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODM2NS1taXBpLWNzaS55YW1sIG9yCgpUaGlzLgoK
PiBzaG91bGQgSSByZW5hbWUgdGhlIGNvbXBhdGlibGUgc3RyaW5nIG1lZGlhdGVrLGNzaS1waHk/
Cj4gVGhlIGNzaSBQSFkgbW9kdWxlIGlzIGEgbW9kdWxlIG9mIHRoZSBtdDgzNjUgc29jIGFuZCBj
YW4gcG9zc2libHkgYmUgdXNlZAo+IG9uIG90aGVyIG1lZGlhdGVrIHNvYy4gIEkgdGhpbmsgdGhp
cyBiaW5kaW5nIGlzIGdlbmVyaWMgZW5vdWdoIHRvIGhhdmUgYQo+IGdlbmVyaWMgbmFtZSwgd2hh
dCBkbyB5b3UgdGhpbms/CgpZb3UgZGlkIG5vdCBhbGxvdyBhZGRpbmcgbmV3IHZhcmlhbnRzLCBh
cyB5b3UgbWFkZSBpdCBjb25zdCwgbm90IGVudW0uCklmIHRoZXJlIGFyZSBvdGhlciBkZXZpY2Vz
IHdpdGggdGhpcyBwaHksIHRoZXkgY291bGQgYmUgZXZlbiBhZGRlZCBub3cuCkJpbmRpbmdzIHNo
b3VsZCBiZSByYXRoZXIgY29tcGxldGUuCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
