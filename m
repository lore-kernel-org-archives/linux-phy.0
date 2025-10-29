Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C5C5CCF9F0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 15:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9SWEPjjyclR09gIQCL6fJhCXnGUQ6abqA6wfPPJXvI=; b=juM9tw/NECK907
	hUyZfnzEOEi4V7vgM67jWXQMv2DvNaZKS07dG7ySO/NxYv+OV7dqlJb8niekYBK8zDt92vATndOOy
	6nsVqYI79hgo2Ur+uAZ6TnAQtu/0ggwwgPR3EMRU/rml5jttAmJZSvrgl3uUS9Awqt4Wr/3jxpGpk
	OxPMG8wTWxSKExA9BQoowsboxMQ+X8TJ5dINlCEF9hMmPimIEc0bU6EtqHdNBzTrtIXIaPv18IWsR
	PBWNDRIm37a7e0IlgHoFxtMdrz5vw3nxhgPsSkbXd0AGSlwul5XHXoOXNLljj3+34iQPTfmj668PP
	4/RdJMXC4y3TIo8D31vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8Ih-00000001pw5-49eu;
	Wed, 29 Oct 2025 15:41:27 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8Ie-00000001pt2-2yYQ
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 15:41:26 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-29488933a91so76348535ad.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 08:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761752483; x=1762357283; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l/v0zo/mXJp1eqDSZs81X2kYmENmq+DmgWPaQLy4E3g=;
        b=Zh9TztBQyH7q4CjO6yUPxvi9/SzjFV/GW0LYqzmQ1vaZxn74iucSm6V16K3JFeTyCv
         JKakvSibWqyWvH+13quYH7ixetW1KowcBYm3eVD77TTfB8WKrW3rvRb7GwCPaj3+GSHM
         de46DQWV5pbsFeuILgZt+CArsgITewfjt4/dqdvNswZV8b7usW4VGaKYkUwn/b5MUSLd
         QKcqkU5NC5tEjUnRZb/eB+eVmPvjGvgOpCf/vLWQdgXVwn3pRn9oBDR8Ca3RHbWs4oxd
         M/4L2u/0Jm14mD92qE/lZXsioYZaWva7xK1NKvvL0LlW+B673/fRtr0937dIezmFTl6n
         Kndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752483; x=1762357283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/v0zo/mXJp1eqDSZs81X2kYmENmq+DmgWPaQLy4E3g=;
        b=RF1Lpl7sqA2z6b91FNQvHqFjTSzsisObl6f6+2+lgoElM5qeTIK39qqXC55n9QDfeF
         0DxYhxAQkU01uufz2344+A+zLULCapBEm7v92c4a4KHDnVLhiBuA7/zXIXT39EsMd/Z7
         wIbHRN3JxHZiJ4PKBpDnQCx04OnfHkC/i+1rvYDEtdrSctnTA8TVW8IJ12ZFz3YkMmaM
         foF2TYbcaUg9KbCg+pqX3VuCUrHsU7Eq2l6c+5Rng0fVQarDDa1UyFFyaE4TbRbk0hzP
         fzQT45YvYLoKv+P5tyfXkKT//AndKm7XOQYI0Wl/zKERviH3JAdaxfzDmsdDKJZ5p9mv
         UyxA==
X-Forwarded-Encrypted: i=1; AJvYcCWdgN/70cP1t7p9MdoA0bHyAj5rBT/sE/oQwUJ1P9nYGv1/LTON36ttuISXJHyE0cu9xd7go0OXxmo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZVtLqvnPndrlMLCMAYyjfHo5Kdug/z3IrL4TvhKcf+KobHjD0
	uKDLRIkQogBWytDv2C9w3S0G7qVA0eBf+T2i9HHTYZv4B9NGsPrqvoxA
X-Gm-Gg: ASbGnctQPw29mk5HBE6kbngismLq5SuXnTLmKKKVCvmcFI0Cqro+SxaXvFmU75bkWCf
	D9FYi1wvdpjFa/iPZ2JVe4dPOP0HPgan5s8e8AqbwSB+sJlSVC2TALYRK7UcHabHCM/y0J2a1Zg
	W20Jg0H7/g3BAvctbPx2ZG/Kg/00VyooyytzMo5WxSR6f3Yfx4i/FuIejF3eFGMiWta1GhAS/I3
	Yh7vMGEot0pfs805K5qYdtPNwNpwzzLM0SCI3jee1oIbSnJIZckE3Y3sBMSsSUDg2ie5dF5WYha
	fTPVZrRYUlSXBzo7fDWYZoOOZFK45c5GzUEr/1S792lME0ytZ8EktIeFcru1uF7Xi4Hj99kCQYD
	uckushpVJ7UrfUjmVH1FEu6RfIHcqm03bMpnp30h5slBoTVi5+8yRoGRtv3yaDN+PnpNxK0OvRT
	VTw6GGLJOx+PZpV+Uzt37RzPp6E/9FNMlBV/J9tuuTBIteAgqHjmW7DoXt2e7t
X-Google-Smtp-Source: AGHT+IHTX+Ow2y8Hi8c0rRLKMQlmI+u7C/NGkFheWrGjKnKPUoBmwC8nhsbP1FbgqylJ1UJ/aCLp7g==
X-Received: by 2002:a17:903:234c:b0:28e:7841:d437 with SMTP id d9443c01a7336-294deea30e2mr37900855ad.38.1761752482989;
        Wed, 29 Oct 2025 08:41:22 -0700 (PDT)
Received: from [192.168.0.3] (124-218-201-66.cm.dynamic.apol.com.tw. [124.218.201.66])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm153773295ad.12.2025.10.29.08.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 08:41:22 -0700 (PDT)
Message-ID: <d2d031ab-6a88-4c7e-bf61-29ad95d8ecaa@gmail.com>
Date: Wed, 29 Oct 2025 23:41:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 Ethernet
To: Sjoerd Simons <sjoerd@collabora.com>, Eric Woudstra
 <ericwouds@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>,
 albert-al.lee@airoha.com
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-12-de259719b6f2@collabora.com>
 <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
 <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
 <05610ae5-4a8a-47e9-808b-7ff98fade78e@gmail.com>
 <408842eda1caa53247ff759cd9ea75dcab624594.camel@collabora.com>
Content-Language: en-US
From: "Lucien.Jheng" <lucienzx159@gmail.com>
In-Reply-To: <408842eda1caa53247ff759cd9ea75dcab624594.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_084124_797068_68408A0D 
X-CRM114-Status: GOOD (  15.35  )
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

SGkKClNqb2VyZCBTaW1vbnMg5pa8IDIwMjUvMTAvMjgg5LiL5Y2IIDA5OjI0IOWvq+mBkzoKPiBP
biBUdWUsIDIwMjUtMTAtMjggYXQgMTI6MTQgKzAxMDAsIEVyaWMgV291ZHN0cmEgd3JvdGU6Cj4+
Cj4+IE9uIDEwLzIxLzI1IDEwOjIxIFBNLCBTam9lcmQgU2ltb25zIHdyb3RlOgo+Pj4gT24gRnJp
LCAyMDI1LTEwLTE3IGF0IDE5OjMxICswMjAwLCBBbmRyZXcgTHVubiB3cm90ZToKPj4+Pj4gKyZt
ZGlvX2J1cyB7Cj4+Pj4+ICsJcGh5MTU6IGV0aGVybmV0LXBoeUBmIHsKPj4+Pj4gKwkJY29tcGF0
aWJsZSA9ICJldGhlcm5ldC1waHktaWQwM2EyLmE0MTEiOwo+Pj4+PiArCQlyZWcgPSA8MHhmPjsK
Pj4+Pj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmcGlvPjsKPj4+Pj4gKwkJaW50ZXJydXB0cyA9
IDwzOCBJUlFfVFlQRV9FREdFX0ZBTExJTkc+Owo+Pj4+IFRoaXMgaXMgcHJvYmFibHkgd3Jvbmcu
IFBIWSBpbnRlcnJ1cHRzIGFyZSBnZW5lcmFsbHkgbGV2ZWwsIG5vdCBlZGdlLgo+Pj4gU2FkbHkg
aSBjYW4ndCBmaW5kIGEgZGF0YXNoZWV0IGZvciB0aGUgUEhZLCBzbyBjYW4ndCByZWFsbHkgdmFs
aWRhdGUgdGhhdAo+Pj4gZWFzaWx5LiBNYXliZSBFcmljIGNhbgo+Pj4gY29tbWVudCBoZXJlIGFz
IHRoZSBhdXRob3Igb2YgdGhlIHJlbGV2YW50IFBIWSBkcml2ZXIuCj4+Pgo+Pj4gSSdkIG5vdGUg
dGhhdCB0aGUgbXQ3OTg2YS1iYW5hbmFwaS1icGktcjMtbWluaSBkdHMgaGFzIHRoZSBzYW1lIHNl
dHVwIGZvcgo+Pj4gdGhpcyBQSFksIGhvd2V2ZXIgdGhhdCdzCj4+PiBvZmNvdXJzZSBub3QgYXV0
aG9yaXRhdGl2ZS4KPj4+Cj4+IEx1Y2llbiB3b3VsZCBoYXZlIGFjY2VzcyB0byB0aGUgY29ycmVj
dCBpbmZvcm1hdGlvbiBhYm91dCB0aGUgaW50ZXJydXB0Lgo+IFRoYW5rcyEgRm9yIHdoYXQgaXQn
cyB3b3J0aCBpIGdvdCBhcm91bmQgdG8gcHV0dGluZyBhIHNjb3BlIG9uIHRoZSBsaW5lIGxhc3QK
PiBuaWdodC4gSXQgbG9va3MgbGlrZSB0aGUgaW50ZXJydXB0IGxpbmUgaXMgcHVsbGVkIGRvd24g
dW50aWwgY2xlYXJlZCwgc28gaXQKPiBhcHBlYXJzIGl0J3MgaW5kZWVkIGEgTGV2ZWwgaW50ZXJy
dXB0IGFzIEFuZHJldyBndWVzc2VkLiBCdXQgd291bGQgYmUgZ3JlYXQgdG8KPiBoYXZlIHRoaXMg
Y29uZmlybWVkIGJhc2VkIG9uIHRoZSBkb2N1bWVudGF0aW9uIDopCgpUaGUgQWlyb2hhIEVOODgx
MUggSW50ZXJydXB0IGJlaGF2aW9yIGlzIGFzIGZvbGxvd3M6CgpXaGVuIHRoZSBsaW5lIHNpZGUg
bGluayBjaGFuZ2VzICh1cOKGkiBkb3duIG9yIGRvd24g4oaSIHVwKSwgR1BJTyA4IHdpbGwgCm91
dHB1dCBsb3cuCgpBZnRlciB5b3UgY2xlYXIgdGhlIGludGVycnVwdCwgR1BJTyA4IHdpbGwgZ28g
aGlnaC4gUmVnYXJkaW5nIHRoZSAKZG9jdW1lbnRhdGlvbiwgbGV0IG1lIGNoZWNrIHdoZXJlIEkg
Y2FuIHB1dCBpdC4KCklmIHlvdSBoYXZlIGFueSBxdWVzdGlvbnMgYWJvdXQgdGhlIEVOODgxMUgs
IHBsZWFzZSBmZWVsIGZyZWUgdG8gZGlzY3VzcyAKd2l0aCBtZS4KCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
