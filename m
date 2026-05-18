Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6646CD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 12:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EonHg4vO4JqLrkYgsCIdn8SsL9P3iiLHW4nLgeqfSss=; b=2AUWuLrDQo7Yj2
	bp3v/3bU8IaQeGCeQGEkq9e/d6ZVR0SBhtZxWrk3xQJnprFoHyaAmMIPunw/lc5gaxLusAJorTJce
	k+CkUSTyRHMP7gEkgN6fDuurNhENLh1CSs3BYCJxhtT5zUke9icqFyCJkBZPBTyABN63pkpcwa5U1
	LLi4IkkiX7oPN3qVeF+OqKT4n1jzkgOvT7SR5fW4eF0ODgk92FVhF6R1OE/Bgqp/sPf2oib+m6FOP
	hX7kBHoms9SpqgVhEZfNj/gb3P2OOWUk27Fyv7wfgWP+u+hh5NVeCLcTIGdHAq1GXwszILvbGO40P
	uzPC+eNJsFRStAYmEAbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx0n-0000000FcY0-22mm;
	Mon, 18 May 2026 12:23:57 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx0k-0000000FcWi-3vdx
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 12:23:56 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-2ee1054627bso2108173eec.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 05:23:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779107034; cv=none;
        d=google.com; s=arc-20240605;
        b=hWBvb4PK6heui9QnEL0S1OHKt07Cpe1YdGqN79deh9Tz/6ylYCG01n7ZSVfdIxEW5u
         +d+lfLOY7txS4/qjXzPJFptUsjkVICIsRjfLkPqGehs+ki3+UgFSKxl6md8GOgm4bnRW
         FJE8ymTMQE+IGgaBO3tVvKKa8UoVJzvjqLH8k6BUVLmg/YAB3GWgOOTJ/L1xqSbvQIJj
         R9fVOU1jIyoEX+9H4a4Qs2CJIuX6kdKa6/UzS/kq91CKYWq3shbJH9NnR9vWA6kbV3tZ
         LVVEXPQ3uAGL/OuJ7qH3UvFAvpa3W9D7nPlpO5BYZUTfC3lUd7BiFBuMFJslqb8Jpxxi
         0D7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/sybBoxzQkI8aLI6NqXXkb4wIzeCWahvMKbXOpYmLoU=;
        fh=nOGERV8WrujlyLaLPAQaSahVj96ASIwCsWKf9kTtPl8=;
        b=MOugSZcQo5TxfJVC8KzOp2SNmLTltDhHamDywqN6R0ODINhOwvqg3zMG+UlQ+5MVZs
         sRuuylZ3jNSxRbcGyWOKyS73poyc8H/pPQpvIH9bPjKXkSXK2STDwpi9i4QIkaT6/+nt
         KSJsOIsm4xL9F7KDAZDoMxYN5eZjQiBD9xgtOIYFBZrRbbFfTa1Gj0UruwqjNmfHPSoU
         xpWHSxLQuiNAcss+jTxX/WJ6Ppv3BqPex1DKObVo0XzfKyQ5zH/xvFnblcIout3akGz2
         8Clcb1iP3LMS7l3Ziyas4o+EZqEyx6OwuA7m2NamBz5vWZu0GqTdHuyKZ6mh6b9EaLGe
         eMew==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779107034; x=1779711834; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/sybBoxzQkI8aLI6NqXXkb4wIzeCWahvMKbXOpYmLoU=;
        b=eUAcwcOuFAQL2gTu1Giv3+UtdVLpGGdGNH6ZbFyjwxdioyjdYbCu5GWBEEkpFQZsEb
         PMAKTz3P2buMJaPGvS6nZ7pJcYMrgEdPrwBroZwqw3wd9I0Q8ET8SD32W8AsOXvfmtv/
         i8AV20iO/o+wpW8gIoakgwXsj6KjgkcBp6DTcInFRQYBThqSkxi4BOR18puYYuST+LVA
         EtV8BFB/Ud0SA7Cdbmtov1J1qx5MzdVoU7Eyqbftalc+yJKSqp+Q9VW8126+VuQS7VqJ
         9fEtcVBGlHt/F4FovC/stB6rV6o6K4F4H3apoABRe1QQYJJMWu/Vf0W1ZrHQgxFRViWN
         mQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779107034; x=1779711834;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/sybBoxzQkI8aLI6NqXXkb4wIzeCWahvMKbXOpYmLoU=;
        b=TpgiNFZX98a0Hv4A2d7h3+sGVqGzyzBLoC2qNfDU2xpx1+4NExwNpIz94JIOgQ/Rrq
         Rk3cBDF+7inzC+FIblq86ck9sKB5Mj5jvvRe0vJNQwev6+svK/M+8uYkfUg18CTxSzgH
         ozs6AGU9itgsmG4IBbEBi4uGPwzxXFegi5KCNECb9tZBKE+m5PLAu6c9GyVkzTs9vJnl
         dWt8H9+mJPrZL8DMnY6vnMEWprFf+G3i3+8r2t3YwJc9D4Oi3xem/hsA1Nz8FmCxkmyb
         /q4ios65R9HHT82teWmOhwd9qXPOtEdHykz6ECq73azSTsHUUOXQTpaN4032v+Z+WXW+
         d/FA==
X-Forwarded-Encrypted: i=1; AFNElJ8aktZc5oNDKDdyh+Kz1oHb1lhkoKx3KmV5xJ8S1cQEB/5t0JrQigdrVnGL3UIni/ioOT0AUHqJ5kw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUCJldQKMpVt+aAoosAI7E28muZTLC7YXCkMaJa73C7vyhkoSq
	L7cdeu9dbU3Q21A3RTWcSmQoc0xoRUPNbTX6vRsWlUM63uovduxKlZ6IlzP1mcwDpn5aJK8hEsk
	rUILtptVq/haEaifuWH1jrR/3julGXgc=
X-Gm-Gg: Acq92OEshf1O+cvVWkq1/ONd1V5pu2mK3dCDVUQ27C8++L7QKj/6UMjsDEcvepKnGlD
	Fcmh6cXn9seJzVfnw6/3h2n0+tkhKb3oZhpS8CI3BQ0man85HoxLMoL4BgIRzOrJGaP/xzKetU8
	EpOoZwoLQQktkm5V3gofEpjrFl0xl9e2G7nZ6BO3J3Qr4j+jouWZci5nSJBSrt8trfmxKD3N2L4
	Ao4Km1+Dlf+lPDoip+z7Ok/wuFP+bLC+8Dk2cw678S7v0Z7bNQC6qVPheEEKxHcPxmdLRPlWM7y
	88D8Am7ndr0/2rg1lxQ=
X-Received: by 2002:a05:7300:a897:b0:2ed:a58c:942 with SMTP id
 5a478bee46e88-303978ad90cmr5911766eec.8.1779107033494; Mon, 18 May 2026
 05:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-6-clamor95@gmail.com>
 <20260515-utopian-malamute-of-patience-367e8e@quoll> <CAPVz0n2wrAdU0JKx7eb7uosCcoGayqNchK591VPph-5_nBAMXg@mail.gmail.com>
 <20260518-mustard-rabbit-of-ecstasy-eed3b6@quoll>
In-Reply-To: <20260518-mustard-rabbit-of-ecstasy-eed3b6@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 18 May 2026 15:23:42 +0300
X-Gm-Features: AVHnY4LNwA3nH_QM5Y-7LcPOdghwjQLoGIom9Y5M5xnInrZ8XmypJBIC54V587Y
Message-ID: <CAPVz0n1Q_5WYAE0GKzFA1SpW55GS3dCLgxcMzw-nOEMaYobn6w@mail.gmail.com>
Subject: Re: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra
 XMM6260 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_052354_987050_7353E59C 
X-CRM114-Status: GOOD (  43.37  )
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

0L/QvSwgMTgg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTU6MTQgS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIEZyaSwgTWF5IDE1LCAyMDI2IGF0
IDExOjM3OjM0QU0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4gPiDQv9GCLCAxNSDR
gtGA0LDQsi4gMjAyNuKAr9GALiDQviAxMToyMCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtl
cm5lbC5vcmc+INC/0LjRiNC1Ogo+ID4gPgo+ID4gPiBPbiBNb24sIE1heSAxMSwgMjAyNiBhdCAw
NDo1NzowMFBNICswMzAwLCBTdnlhdG9zbGF2IFJ5aGVsIHdyb3RlOgo+ID4gPiA+IERvY3VtZW50
IHRoZSBYTU02MjYwIFBIWSB1c2VkIGJ5IHZhcmlvdXMgZGV2aWNlcyBiYXNlZCBvbiB0aGUgTnZp
ZGlhIFRlZ3JhCj4gPiA+ID4gU29DLCBkZXNjcmliaW5nIGl0cyB1c2FnZQo+ID4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogU3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21haWwuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICAuLi4vYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYw
LnlhbWwgICAgfCA1OCArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA1OCBpbnNlcnRpb25zKCspCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+
ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+ID4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDM0NjQzM2M5NzcyCj4g
PiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAueWFtbAo+ID4gPiA+IEBAIC0wLDAg
KzEsNTggQEAKPiA+ID4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1Ig
QlNELTItQ2xhdXNlKQo+ID4gPiA+ICslWUFNTCAxLjIKPiA+ID4gPiArLS0tCj4gPiA+ID4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L252aWRpYSx0ZWdyYS14bW02MjYw
LnlhbWwjCj4gPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIwo+ID4gPiA+ICsKPiA+ID4gPiArdGl0bGU6IE52aWRpYSBUZWdyYSBQSFkg
Zm9yIFhNTTYyNjAgbW9kZW0KPiA+ID4KPiA+ID4gWE1NNjI2MCBpcyBJbmZpbmVvbiBtb2RlbSwg
c28gYW55IGNvbWJpbmF0aW9uIHdpdGggbnZpZGlhLHRlZ3JhIGlzIHZlcnkKPiA+ID4gY29uZnVz
aW5nLgo+ID4gPgo+ID4KPiA+IE1heSB5b3UgcGxlYXNlIHN1Z2dlc3QgaG93IHRvIGFkanVzdCB0
aGUgbmFtZSB0aGVuPyBUaGFuayB5b3UuCj4KPiBEZXBlbmRpbmcgd2hhdCBpcyB0aGF0LiBTdGFy
dCBkZXNjcmliaW5nIGhhcmR3YXJlLCBub3QgZHJpdmVyIGJlaGF2aW9yCj4gdG8gaGVscCBpbiB0
aGF0Lgo+Cj4gPgo+ID4gPiA+ICsKPiA+ID4gPiArZGVzY3JpcHRpb246Cj4gPiA+ID4gKyAgQSBo
YXJkd2FyZSBjb25maWd1cmF0aW9uIHVzZWQgaW4gVGVncmEgU29DcyB0byBwcm92aWRlIHByb3Bl
ciBpbnRlcmFjdGlvbgo+ID4gPiA+ICsgIGJldHdlZW4gdGhlIGFwcGxpY2F0aW9uIHByb2Nlc3Nv
ciBhbmQgdGhlIG1vZGVtLCBhcyB3ZWxsIGFzIGNvbnRyb2wgb3Zlcgo+ID4gPiA+ICsgIG9uZSBv
ZiB0aGUgU29DJ3MgVVNCIGxpbmVzIGZvciB0aGUgbW9kZW0uCj4gPiA+ID4gKwo+ID4gPiA+ICtt
YWludGFpbmVyczoKPiA+ID4gPiArICAtIFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWls
LmNvbT4KPiA+ID4gPiArCj4gPiA+ID4gK3Byb3BlcnRpZXM6Cj4gPiA+ID4gKyAgY29tcGF0aWJs
ZToKPiA+ID4gPiArICAgIGNvbnN0OiBudmlkaWEsdGVncmEteG1tNjI2MAo+ID4gPgo+ID4gPiBB
bHNvIGhlcmUuCj4gPiA+Cj4gPiA+IFdoYXQgc29ydCBvZiBwaHkgaXMgdGhpcz8gU28gZmFyIGxv
b2tzIG1vcmUgbGlrZSBhIHNvZnR3YXJlIGNvbnN0cnVjdC4KPiA+ID4KPiA+Cj4gPiBJbmZpbmVv
biBYTU02MjYwIGRvZXMgbm90IHdvcmsgYXMgYW4gb3JkaW5hcnkgVVNCIG1vZGVtLCBpdCBpcyBh
Cj4gPiBzdGFuZGFsb25lIENQVSB3aGljaCBqdXN0IGV4cG9zZXMgaXRzZWxmIHRvIEFQIHZpYSBV
U0IuIEluIG9yZGVyIHRvIGRvCj4gPiBzbywgaXQgaGFzIHRvIGhhdmUgY29udHJvbCBvdmVyIGEg
VVNCIGJ1cyBvZiBBUCB3aGljaCBpcyBkZWRpY2F0ZWQgdG8KPiA+IGl0LiBJbiBjYXNlIG9mIFRl
Z3JhIC0gWE1NNjI2MCBpbnRlcmFjdGlvbiBpdCBsb29rcyBsaWtlIHRoaXM6IHNlY29uZAo+ID4g
VGVncmEgVVNCIGNvbnRyb2xsZXIgaXMgc2V0IGludG8gSFNJQyBtb2RlIGFuZCBpcyBkZWRpY2F0
ZWQgc29sZWx5IHRvCj4gPiB0aGUgbW9kZW0sIG1vZGVtIGNvbnRyb2xzIHRoaXMgVVNCIGJ1cy4g
VGhlbiB0aGUgbWFpbiBYTU02MjYwIGRyaXZlcgo+ID4gcGVyZm9ybXMgcG93ZXIgYW5kIGluaXQg
c2VxdWVuY2UgYW5kIG9uY2UgaXQgaXMgcmVhZHkgaXQgY2FsbHMgcGh5IHRvCj4gPiByZWdpc3Rl
ciBjb250cm9sbGVyLiBQaHkgaGFzIGl0cyBvd24gc3VwcGx5LCBjb250cm9scyBVU0IgY29udHJv
bGxlcgo+ID4gZGUvcmVnaXN0ZXIgYW5kIHVzaW5nIGVuYWJsZSBHUElPIHNlbmRzIHNpZ25hbCB0
byBtb2RlbSB0byBwcm9jZWVkLgo+ID4gQWRkaXRpb25hbGx5LCBzaW5jZSBzb21lIFhNTTYyNiB2
ZXJzaW9ucyBoYXZlIGEgZmV3IHN0ZXBzIHRvIHNldHVwCj4gPiBleHBvc2luZyBkaWZmZXJlbnQg
VVNCIGRldmljZXMsIHBoeSBoYW5kbGVzIGNvbnRyb2xsZXIgcmVpbml0IGZvciBlYWNoCj4gPiBz
dGVwLiBJZiB0cmVhdCBYTU02MjYwIGFzIGFuIHNpbXBsZSBVU0IgbW9kZW0gaXQgd2lsbCBuZXZl
ciBpbml0Lgo+ID4KPiA+IE9uZSBtb3JlIGJlbmVmaXQgb2YgaGF2aW5nIFBIWSBpcyB0aGF0IG1v
ZGVtIGRyaXZlciBpdHNlbGYgaXMgZ2VuZXJpYwo+ID4gYW5kIFBIWSBoYW5kbGVzIFNvQyBzcGVj
aWZpYyBjb25maWd1cmF0aW9ucyByZXF1aXJlZCBieSB0aGUgbW9kZW0uCj4gPiBTaW5jZSB0aGlz
IG1vZGVtIHdhcyB1c2VkIG9uIGEgdmFyaWV0eSBvZiBkaWZmZXJlbnQgU29DJ3MgKEV4eW5vcyBh
bmQKPiA+IE9NQVAgZm9yIGV4YW1wbGUpIHRoZXkgY2FuIHJldXNlIG1vZGVtJ3MgZHJpdmVyIGFu
ZCBwcm92aWRlIG9ubHkgUEhZCj4gPiB3aGljaCBoYW5kbGVzIG1vZGVtIGludGVyYWN0aW9ucyB3
aXRoIHRoZSBVU0IgYnVzLgo+Cj4gV2l0aG91dCBhbnkgcmVnaXN0ZXJzIGhlcmUsIHRoaXMgaXMg
bm90IGEgUEhZIGJ1dCBhIHBvd2VyIHNlcXVlbmNpbmcsCj4ganVzdCBsaWtlIHdlIGRvIGZvciBv
dGhlciBVU0Igb3IgUENJIGRldmljZXMuCj4KPiBPcHRpb25hbGx5LCBpdCBjb3VsZCBiZSBwYXJ0
IG9mIGV4aXN0aW5nIFVTQiBwaHksIHdoZW4gY29uZmlndXJpbmcgaXQgaW4KPiBIU0lDIG1vZGUs
IGJ1dCBpdCBzZWVtcyB5b3UgYWRkIGhlcmUgc3VwcGxpZXMgZm9yIHRoZSBtb2RlbSwgbm90IGFj
dHVhbAo+IHBoeSBhcyB0aGUgcGh5IGlzIHVuZGVmaW5lZC4KPgo+IFRoZSBwcm9ibGVtIGlzIHRo
YXQgaW4gdGhlIHBhdGNoIGFuZCBleHBsYW5hdGlvbiB5b3UgbWl4IGRyaXZlciBtb2RlbAo+IGFu
ZCBkcml2ZXIgYmVoYXZpb3IsIHNvIEkgcmVhbGx5IGRvbid0IGtub3cgd2hhdCBpcyB0aGlzIGhh
cmR3YXJlLiBBbmQKPiBpdCBpcyBub3QgbXkgam9iIHRvIGd1ZXNzLCBidHcuIEEgcGFydGlhbCBh
cmd1bWVudC9wcm9vZiB3aHkgdGhpcyBpcyBub3QKPiBhIFBIWSwgaXMgdGhhdCB5b3UgcmVmZXJl
bmNlIHRoZSBVU0IgaW4gdGhlIG5vZGUsIHNvIHBoeS1wcm92aWRlcgo+IHJlZmVyZW5jZXMgdGhl
IHBoeS1jb25zdW1lci4gVGhhdCdzIHJldmVyc2UuIElmIHRoaXMgaXMgUEhZLCBpdCdzIFVTQidz
Cj4gSFNJQyBwaHksIHRodXMgdGhpcyBuZWVkcyB0byBiZSByZWZlcmVuY2VkIGJ5IFVTQi4KPgo+
IElmIHRoaXMgaXMgcG93ZXIgc2VxdWVuY2luZywgdGhlbiBpdCBjYW4gYmUgcmVwcmVzZW50ZWQg
YXMgVVNCIGRldmljZSwKPiBqdXN0IGxpa2Ugd2UgZG8gZm9yIGFsbCBVU0IgZGV2aWNlcywgYnV0
IHRoZW4gaXQgaXMgbm90IFBIWSBhbmQKPiBwaHktY2VsbHMgYXJlIG5vdCBhcHByb3ByaWF0ZS4K
PgoKSWYgSSBpbnRlZ3JhdGUgVVNCIGNvbnRyb2xsZXIgcmVmZXJlbmNlIGludG8gdGhlIG1vZGVt
LCBtb2RlbSB3aWxsIG5vdApiZSBnZW5lcmljIHNpbmNlIEV4eW5vcyBhbmQgT01BUCBkb24ndCB1
c2UgQ2hpcGlkZWEgVVNCIGNvbnRyb2xsZXIKKGJvdGggdGhvc2UgU29DIHVzZSB0aGlzIG1vZGVt
KS4gTW9kZW0gaGFzIHRvIGNvbnRyb2wgVVNCIGNvbnRyb2xsZXJzCmluaXQgYW5kIGRlaW5pdCBp
biBvcmRlciB0byBvcGVyYXRlIHByb3Blcmx5LiBJIGhhdmUgdHJpZWQgdG8gcmVzb2x2ZQp0aGlz
IHdpdGggUEhZIGJ1dCBpZiB5b3UgZmluZCB0aGlzIGluYXBwcm9wcmlhdGUsIG1heWJlIHlvdSBj
YW4Kc3VnZ2VzdCBiZXR0ZXIgc3VpdGVkIHdheT8KCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6
dG9mCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
