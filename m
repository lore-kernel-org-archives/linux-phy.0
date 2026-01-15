Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67997D4114D
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OksUDqzasNfag+wxDiIPPtGkVLSAh1Aumgfb69w1nao=; b=rUH6bwDIwTvZkU
	rzNxKwedwh5waz5GjxjNdFF84wcfxC8mvZRJ1qIglBGFG4V0pkbZIas3gyu/kMpXe7GBEajKL26Nf
	64MH02ZAHuuiKd63fD4o9TF2TnnvvYW2oG+tMoNXqKasnEbhRy5Pi5FTtscOgVdcMqK/Xufgy2S3z
	agagyOksKAZQHU0I643T2roClr3TbR5oKTRzbf5QmFu7+iDuFy1OxE8XCb4EFN1dvmtoYUN7fB523
	ziVKtrP/+hM7QqpH/M0tTGxnIZ6TgkC7JBI4RukZkNyP2DJv50gyNRP6ED8k+AQIQ0IvSPcn6z9Im
	iRmo7g9YMA/NGyW+S4kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJnj-0000000C5FC-0dYn;
	Thu, 15 Jan 2026 09:37:59 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJnR-0000000C5Cc-1JLA
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 09:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768469860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HbyX5I3XmcBb65h/6RUQRH0oiD3GDHhpS2uLRUVlL/Y=;
	b=aYl//qPToN/cJ6yM1jx0vbmF57kCkD7l7Ib5Jow0HugKwdY9F6hMxgzwNnMaXvSX0TsNiW
	OoSWB01RMRa+H08M+DvQMCCtuk+w9yyuI3nnT86EF/njrxAod6odzVrBiRTAHE1R7+qI3e
	lF0DTEDrXCh4cMkm5ZuStfevxOvw5yI=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-179-t4m0oJ4xMNaOBLpv7U0H-Q-1; Thu, 15 Jan 2026 04:37:36 -0500
X-MC-Unique: t4m0oJ4xMNaOBLpv7U0H-Q-1
X-Mimecast-MFC-AGG-ID: t4m0oJ4xMNaOBLpv7U0H-Q_1768469856
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-47edfdc6c1aso5207945e9.3
        for <linux-phy@lists.infradead.org>; Thu, 15 Jan 2026 01:37:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469856; x=1769074656;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HbyX5I3XmcBb65h/6RUQRH0oiD3GDHhpS2uLRUVlL/Y=;
        b=pHmtvRwqDjMIV7HTojjprLH5GztJdp0yxg9UQo2c9YcuyLWDNtqah69SDGEzp/z/t0
         AZCW20QqK0VOaVq/Z+4dynaClzknnSi1pG38UtjNXEBr0/MhAq3ZbvyPkVW7+DWOqmWh
         Jqpbp7EUr5KoEA8hQc+yC4ipVnpuiXioRRBQX/0DTszG3FLTsPMtjFGwIZiCQs+zRWqC
         szc03c1DM+WmZm/qJybiREiaktGGKJa2xNTULLo0Gke3doMaqcrDzSwyYMG0fFmAfmyH
         pke+EyVztGbulKajtf1yYIaAsuO+Ebc65ZqF1UUFxLOkL6miyA0Q7qn5Wo6tsRZYMqw9
         S9qw==
X-Forwarded-Encrypted: i=1; AJvYcCWSckrPYrBsC8chEA4aP5G5bXWm8MBscXF/E8trNNDHJzfCc3wRWbKe9b6f+JeG7SFGKov2QoFTd6I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyCMlF8r5NLRwrvkArxzA+X/dLJGQpeLEOe3cb+tC+hohANmXp
	UZKCHg1YTIf+gE+tpmmEEEqjSdOcYCjv87tA9yfcWS9aOdHY1sk16qWu2pGo95p7BsQhs0d9izf
	YQ/so8btZe1i8+75jlogJW1f9Vts0G8GXgKhE4C8FMRi301xtCYyXlpPvhQoi8ZafmJY=
X-Gm-Gg: AY/fxX4JtWzt4EXdV14vHdYX7kgXBvYPV8CnfpqiKh8iJwxZRMCOihhmWsRjQvJKVca
	+Al8+CWGd7uTU21Crx5rB0SciBxhkkPoInNf9R8bJVxHcO2XFCgMiCiHrudVDGZuWkVHQj9ys/C
	/uXX5JULglbHyJV4ITzz563EhmQ0r8bzrfEqf6PsC1CyVZlAPPDtgMq6HLDbYg8OtgWb9aZSsBA
	maHP2gysS7wqgYKFr4Ap57ajYY9zcBcuAq0KT3o8lqwHvJcuQmb38gu9N44ACa0iuKJL260jQae
	p953r5YBpaXLkS67SluLEzBkm33EPqtGqqmdFpKP2HK8W/ayh7T4mEwq+vrxDcK+ZlogbTJegob
	FenEn4qbbVseoxw==
X-Received: by 2002:a05:600c:34c3:b0:480:1a3a:5ce6 with SMTP id 5b1f17b1804b1-4801a3a5f92mr13914145e9.14.1768469855736;
        Thu, 15 Jan 2026 01:37:35 -0800 (PST)
X-Received: by 2002:a05:600c:34c3:b0:480:1a3a:5ce6 with SMTP id 5b1f17b1804b1-4801a3a5f92mr13913865e9.14.1768469855311;
        Thu, 15 Jan 2026 01:37:35 -0800 (PST)
Received: from [192.168.88.32] ([212.105.153.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428af0c7sm37233455e9.4.2026.01.15.01.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 01:37:34 -0800 (PST)
Message-ID: <173d1032-386c-4188-933c-ca91ce36468f@redhat.com>
Date: Thu, 15 Jan 2026 10:37:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
From: Paolo Abeni <pabeni@redhat.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?Q?Marek_Beh=C3=BAn?=
 <kabel@kernel.org>, Lee Jones <lee@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Vinod Koul <vkoul@kernel.org>
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
 <20260111093940.975359-6-vladimir.oltean@nxp.com>
 <87o6n04b84.fsf@miraculix.mork.no> <20260111141549.xtl5bpjtru6rv6ys@skbuf>
 <aWeV1CEaEMvImS-9@vaman> <33ff22b4-ead6-4703-8ded-1be5b5d0ead0@redhat.com>
In-Reply-To: <33ff22b4-ead6-4703-8ded-1be5b5d0ead0@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: O0jNOC4dwKVRbhfH_Sh6HXIyePWla2dFy9i2qKA6x4E_1768469856
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_013742_017184_9D2A82C3 
X-CRM114-Status: GOOD (  12.99  )
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

T24gMS8xNS8yNiAxMDozNCBBTSwgUGFvbG8gQWJlbmkgd3JvdGU6Cj4gT24gMS8xNC8yNiAyOjEw
IFBNLCBWaW5vZCBLb3VsIHdyb3RlOgo+PiBPbiAxMS0wMS0yNiwgMTY6MTUsIFZsYWRpbWlyIE9s
dGVhbiB3cm90ZToKPj4+IE9uIFN1biwgSmFuIDExLCAyMDI2IGF0IDEyOjUzOjE1UE0gKzAxMDAs
IEJqw7hybiBNb3JrIHdyb3RlOgo+Pj4+IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFu
QG54cC5jb20+IHdyaXRlczoKPj4+Pgo+Pj4+PiBBZGQgaGVscGVycyBpbiB0aGUgZ2VuZXJpYyBQ
SFkgZm9sZGVyIHdoaWNoIGNhbiBiZSB1c2VkIHVzaW5nICdzZWxlY3QKPj4+Pj4gR0VORVJJQ19Q
SFlfQ09NTU9OX1BST1BTJyBmcm9tIEtjb25maWcKPj4+Pgo+Pj4+IFRoZSBjb2RlIGxvb2tzIGdv
b2QgdG8gbWUgbm93Lgo+Pj4+Cj4+Pj4gQnV0IHJlbmFtaW5nIHN0dWZmIGlzIGhhcmQuIExlZnRv
dmVyIG9sZCBjb25maWcgc3ltYm9sIGluIHRoZSBjb21taXQKPj4+PiBkZXNjcmlwdGlvbiBoZXJl
LiBDb3VsZCBiZSBmaXhlZCB1cCBvbiBtZXJnZSwgbWF5YmU/Cj4+Pj4KPj4+Pgo+Pj4+IEJqw7hy
bgo+Pj4KPj4+IFRoaXMgaXMgdW5mb3J0dW5hdGUuIEknbGwgbGV0IFZpbm90IGNvbW1lbnQgb24g
dGhlIHByZWZlcnJlZCBhcHByb2FjaCwKPj4+IGFsdGhvdWdoIEkgYWxzbyB3b3VsZG4ndCBwcmVm
ZXIgcmVzZW5kaW5nIHRvIGZpeCBhIG1pbm9yIGNvbW1pdCBtZXNzYWdlCj4+PiBtaXN0YWtlLiBU
aGFua3MgZm9yIHNwb3R0aW5nIGFuZCBmb3IgdGhlIHJldmlldyBpbiBnZW5lcmFsLgo+Pgo+PiBZ
ZXMgZml4ZWQgdGhhdCB3aGlsZSBhcHBseWluZwo+IAo+IENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUg
YSBzdGFibGUgYnJhbmNoL3RhZywgc28gdGhhdCB3ZSBjYW4gcHVsbCBwYXRjaGVzCj4gMS01IGlu
dG8gdGhlIG5ldC1uZXh0IHRyZWUgZnJvbSB0aGVyZT8KClZsYWRpbWlyLCBjb3VsZCB5b3UgcGxl
YXNlIHJlLXBvc3QgcGF0Y2hlcyAxLTUgYWZ0ZXIgdGhhdCBWaW5vZCBzaGFyZXMKdGhlIGFib3Zl
PyBTbyB0aGF0IHdlIGRvbid0IGtlZXAgaW4gUFcgdGhlIGRhbmdsaW5nIChjdXJyZW50KSBzZXJp
ZXMuCgpUaGFua3MsCgpQYW9sbwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
