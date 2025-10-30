Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1787FCCF9EE
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 01:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzW5VH33GPYXROmXtopBLhB/UtyScuzGMiaorMaNF7k=; b=uVNHH3QdZZNVaH
	11JmYNrDgBKDUS1fD8R2XyxwqodNTPs3J6+Fcr1VWs8/9ibretoR5F87wAyIPxJx113ysZIOUAh9a
	c+pJrqUNMoVUYoyKnNwh1kOykUJ6tTVXlqYxwEAD07PKk3YpUjMynpg2OupE3x34GRx1t+5h9EJ8F
	q5CHInHcl6F8htIk4vg6A/hyOad1neb0e7WwEaK91CQwG6CcL6lUUzSNRs/0vyyDFHVQds2B2Guk3
	p+e9hSpF4W1rS0ENpV5VhQifQpBId5WVDn1OZxt4pnIN/pO0IJEZHXI3XU7fY7I3vYFejsEiTmYM+
	ROPssZt/du9tLIpK4GNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEHYs-00000003Krr-1c5H;
	Thu, 30 Oct 2025 01:34:46 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEHYp-00000003Kqc-0jb8
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 01:34:45 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-781014f4e12so8774927b3.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 18:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761788082; x=1762392882; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=KuJvQSbGxrGAvKU6rSfDOzT3N1DzN/16gr2rq1KYUhvf6zAeSImd7lRIkpx0fyeIrH
         rIt4tEmRy8duiLl5rxTiDYbCgq6Pg1/V6lzAXaXSfIWrsrfgHKrgoK6j1At4C0LWNYwf
         srHX3HQAOPCUqsyst+VNGE7iu/MBOC3sZjCYdWCkeUG+SuhVRnb1TCVfF9/Mj3bIAmor
         YpBitgWGPP7FT0OqJux80mZgUuQNJYxO7ukjyi/wDNOtOIXXABey869P+2zbDGMnIORs
         knFC0PY7ESXHUdeKta/w60XkIARu0zcALXgjvEhca3gEe2UK4hks0iVFZ6AQZLSTVXK2
         Inyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761788082; x=1762392882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=mdQShPcd+g7XxAV1urDe3EDR8L3OetNTLnBYq7Z7Xgw0qd9CN8/HkAtQBspJTXmps9
         ouuH3JpxB/4hUawyoMh2enkNmUQc08T0KnjF/DGqs+AXi3zfozK4ggkfSf9kft0aTT/R
         1vi4SdjdLDwMivmjzZcMpoGu5sXWaz9kc6Ozf9+W1O1M01oTge/WLYnixlYGDiaYmMnG
         R1zSuobfPbBDI8UKTBlqYpI6+ie1XXOdNIkqylTbSJmtIp6ru11lTt8aHRMgJ69uYilT
         LuhoQ3iq9fbp0pW6lzw9+Elha5QAdTqkAcf5hmmAT30moMeoJxNBBVGhNTDg3U8vEEhc
         tPTw==
X-Forwarded-Encrypted: i=1; AJvYcCUmmsy/CUyQ6eG5Ds2lnZww0cJJKng11gC7yNkZ1V09rR3vXsXOUTisyotoKiuNObmqBy8rO/qRD00=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAYq36FjIcSdjMbzsWoJF9loZVTtfOhjm88tOb97TYIh6GJPGL
	HWcU9V1mi0f6g3fmzMkzCOshFr4Y3fRogtGL+jkfG+lCsGu5eGMLE5m+ONsIlNMgM6Y1e6sgkdI
	9B88yWulV+X6mnmgpSIHWT5UGGWAyVQE=
X-Gm-Gg: ASbGncte3WUwUl1exhO4WbPtKT7kg/aPke2ggmbVlhBdpujcRqNgVFsMVAD7zs9KAwV
	GDULUKEZJbCnemjNtMcY8YKWDzjcqdpW2HZabDo1OXTug9rr3IGNs+mhBnd6jgOEDznixANvmLF
	BDz5l9ZyfYKY/JGVAaDY+x/UsTmaynHvGQiFI13Eb9X57Xd5qs3AGvv8cOoEsUUqyLcPDkCfJxI
	3SnZHmstNSvNFP2O5KmG4lJjFHe/Cf63XPOlVh1iJaCbUGTy3Gkol+kF0w=
X-Google-Smtp-Source: AGHT+IHMgJ4rKBE3uO85FiTJlzlAN942wrm4DmLjbiS0N7/wUCXXDdFNOdlxyLWqUIKEUXLtWtfDUoP0SJbFBB5hViQ=
X-Received: by 2002:a05:690c:6a89:b0:784:841e:c03c with SMTP id
 00721157ae682-7863903404amr16292487b3.15.1761788081875; Wed, 29 Oct 2025
 18:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
In-Reply-To: <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 09:34:30 +0800
X-Gm-Features: AWmQ_bnwd-FVfcBS5MP2Q8qG3_b5HlIQQto3HU-lVRe3FvjLA4i8HmYCB1URRXQ
Message-ID: <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_183443_236589_ABD4941A 
X-CRM114-Status: GOOD (  19.18  )
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

T24gV2VkLCBPY3QgMjksIDIwMjUgYXQgNjozMuKAr1BNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBPbiAxMC8yOS8yMDI1IDY6MjEgUE0sIENoYW95
aSBDaGVuIHdyb3RlOgo+Cj4gPiBIaSBQZXRlciwKPiA+Cj4gPiBPbiAxMC8yOS8yMDI1IDU6NDUg
UE0sIFBldGVyIENoZW4gd3JvdGU6Cj4gPj4+ICsmaTJjNCB7Cj4gPj4+ICsgICAgICAgaTJjLXNj
bC1yaXNpbmctdGltZS1ucyA9IDw0NzU+Owo+ID4+PiArICAgICAgIGkyYy1zY2wtZmFsbGluZy10
aW1lLW5zID0gPDI2PjsKPiA+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4+ICsKPiA+
Pj4gKyAgICAgICB1c2JjMDogdHlwZWMtcG9ydGNAMjIgewo+ID4+PiArICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJmY3MsZnVzYjMwMiI7Cj4gPj4+ICsgICAgICAgICAgICAgICByZWcgPSA8
MHgyMj47Cj4gPj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47
Cj4gPj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZF
TF9MT1c+Owo+ID4+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+Pj4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKPiA+Pj4gKyAg
ICAgICAgICAgICAgIHZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPiA+Pj4gKwo+ID4+PiAr
ICAgICAgICAgICAgICAgdXNiX2NvbjogY29ubmVjdG9yIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgICBsYWJlbCA9ICJVU0ItQyI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRhdGEtcm9sZSA9ICJkdWFsIjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93
ZXItcm9sZSA9ICJkdWFsIjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJ5LXBvd2Vy
LXJvbGUgPSAic2luayI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wLXNpbmstbWlj
cm93YXR0ID0gPDEwMDAwMDA+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICBzaW5rLXBk
b3MgPQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxQRE9fRklYRUQoNTAw
MCwgMjUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHNvdXJjZS1wZG9zID0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
UERPX0ZJWEVEKDUwMDAsIDE1MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+ID4+PiArCj4gPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGFsdG1vZGVzIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkaXNwbGF5cG9ydCB7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdmlkID0gL2JpdHMvIDE2IDwweGZmMDE+Owo+ID4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmRvID0gPDB4MDAwMDFjNDY+Owo+
ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9y
dHMgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxz
ID0gPDA+Owo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9y
dEAwIHsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDwwPjsKPiA+Pj4gKwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdXNiY19oczogZW5kcG9pbnQgewo+ID4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdTJwaHkw
X3R5cGVjX2hzPjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IH07Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4gKwo+ID4+
IFdoeSBVU0IyIFBIWSBuZWVkcyB0byBiZSBub3RpZmllZCBmb3IgVHlwZS1DIGNvbm5lY3Rpb24/
Cj4gPgo+ID4gSSB0aGluayB0aGUgVVNCLWNvbm5lY3RvciBiaW5kaW5nIHJlcXVpcmUgYSBwb3J0
QDAgZm9yIEhpZ2ggU3BlZWQuICBTbyBJIGZpbGxlZCBpbiBVU0IyIFBIWSBoZXJlLiBBbmQgSSBo
YXZlIGxvb2tlZCB1cCBib2FyZHMgd2l0aCB0aGUgc2FtZSB1c2FnZSwgYW5kIHNvbWUgb2YgdGhl
IHJlc3VsdHMgYXJlIGFzIGZvbGxvd3M6Cj4gPgo+ID4gLSByazMzOTktZmlyZWZseS5kdHMKPiA+
Cj4gPiAtIHJrMzM5OS1waW5lYm9vay1wcm8uZHRzCj4gPgo+ID4gLSByazMzOTktZWFpZGstNjEw
LmR0cwo+ID4KCk9rYXkuICBNeSBxdWVzdGlvbiBpcyBiYXNpYzogVVNCMiBQSFkgc3VwcGxpZXMg
RFAvRE0sIGFuZCB0aGUgRFAvRE0gaXMKc2hvcnQgZm9yIFR5cGUtQyBjb25uZWN0b3IsCmFuZCBu
byBjb250cm9sIGlzIG5lZWRlZCBmb3IgVHlwZS1DIGFwcGxpY2F0aW9uLgpXaHkgaXMgdGhlcmUg
YSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBiZXR3ZWVuIFVTQjIgUEhZIGFuZCBUeXBlLUMg
Y29ubmVjdG9yPwoKPiA+Cj4gPj4KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwb3J0QDEgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDE+Owo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1c2JjX3NzOiBlbmRwb2ludCB7Cj4gPj4+ICsgcmVtb3RlLWVuZHBvaW50ID0gPCZ0
Y3BoeTBfdHlwZWNfc3M+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4+PiAr
Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9ydEAyIHsKPiA+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwyPjsKPiA+Pj4gKwo+
ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNiY19kcDogZW5k
cG9pbnQgewo+ID4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAgICAgfTsKPiA+Pj4gK307
Cj4gPj4+ICsKPiA+PiAuLi4uLgo+ID4+PiAgICZ1MnBoeTAgewo+ID4+PiAgICAgICAgICBzdGF0
dXMgPSAib2theSI7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICBwb3J0IHsKPiA+Pj4gKyAgICAgICAg
ICAgICAgIHUycGh5MF90eXBlY19oczogZW5kcG9pbnQgewo+ID4+PiArICAgICAgICAgICAgICAg
ICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnVzYmNfaHM+Owo+ID4+PiArICAgICAgICAgICAg
ICAgfTsKPiA+Pj4gKyAgICAgICB9Owo+ID4+PiAgIH07Cj4gPj4+Cj4gPj4gVGhlcmUgaXMgbm8g
c3dpdGNoIGFuZCBtdXgsIGhvdyB0byBjby13b3JrIHdpdGggVHlwZS1DPwo+ID4KPiA+IEkgY2hl
Y2tlZCB0aGUgcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGJ1dCBkaWQgbm90IGZpbmQgYW55IHN3
aXRjaCBvciBtdXguIERvZXMgdGhpcyBtZWFuIHRoYXQgd2UgbmVlZCB0byBpbXBsZW1lbnQgdGhl
bT8gVGhhbmsgeW91Lgo+Cj4gV2FpdCBhIG1pbnV0ZSwgYWN0dWFsbHkgd2UgaGF2ZSBtdWx0aXBs
ZSBoYXJkd2FyZSBpbnRlcmZhY2VzLCBvbmUgb2Ygd2hpY2ggaXMgVHlwZS1DLCBldmVudHVhbGx5
IGNvbm5lY3RlZCB0byBVU0JEUFBIWSwgYW5kIHRoZSBvdGhlciBpcyBtaWNyby11c2IgY29ubmVj
dGVkIHRvIFUyUEhZLgoKSSBhc3N1bWUgdGhlIE1pY3JvLVVTQiBjb25uZWN0b3IgZG9lcyBub3Qg
dXNlIFR5cGUtQy9QRCBJQywgaXMgaXQKcmlnaHQ/IERvZXMgaXQgcmVsYXRlIHRvIHRoaXMgcGF0
Y2g/CgpCZXN0IHJlZ2FyZHMsClBldGVyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
