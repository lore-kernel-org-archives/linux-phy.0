Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C64C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 13:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBsTQTJUrP+vVMsvduAV4aMkHqQ1ygFU2FdowKXylJI=; b=xdNpp302Ew04eD
	WVBSnkeYxOmuM+fynM7qv/A0gzbR2lzPBe4kEM4prFxfhRERT2NHXczacJfusZURE3MOD5B0RFx4l
	kIPGM8YzurkbBWWKOf0Ys4nO0y7fs92UJm7TMSJGdZTvom6hmYAD4BgkOoOGc7VPU7h4wRfkiNeco
	lMfX2U7ZklFw6becp23HKWlCCGIgV+XjdmeM5qHBQdQ17D70jpryrgbbd8EGc9kv8iUBQ9GQDBQKB
	y87i9icNMkuGvBwb57CSg2OIIjhzyo3UhnuUScR+HAhUCytOaeyjWC5QrIIpouYZRIQ0veDIJJJEj
	xIP729sz5QzM15hwokMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM8kP-005ug4-3c; Mon, 21 Feb 2022 13:29:01 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM7yz-005hOP-0r
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 12:40:02 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 q9-20020a1ca709000000b0037fa5c3e5c1so538582wme.0
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 04:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=R/f51CIZR0643bv1aqteYa+9eUKhtWxP5/qjv85KXj8=;
 b=bameRcwi6JoaD2M3I7RYimjEysOpTD99zApAfcKTy8lF1obgbQ6PoH6zMBRJ2an/ra
 XhZzLk3+P+LvmUJZSRGo4u8NywtRdT60Ep/BJndTU9XZN0l/x97cjTIiC6uUhPa5CI+u
 2yGfP0g/fZlGpKCNHecWTXhTofhlVHrxTrfUcXfIPQXu6FzNUZvuCnIubkD51i96XpnI
 YhGDkFnBSIt8SZ6nEEVsX44HT5XlTjrJVeA5v9cK/0vDZiU66acvNjNqWq/oXo3STiGl
 rYWGVpV0RfbMjPmDFPQQkEEq89/Q7TdhtztPWUmgT2lujlH966adrVVYnJYctL7JNq+P
 3cWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=R/f51CIZR0643bv1aqteYa+9eUKhtWxP5/qjv85KXj8=;
 b=3/75NXWWXOWxIS1vFITFmP+Oovt8gzLgfl6dw3b5oysitvQPwJFO9RCRbmyC+GBaff
 MCKcR8kHWpi351+dj6R6s1qwLzURhVYJTW6v50EIYT5Ud8VWwbGrOQO/4lhnAFDFlH0F
 WF98oKNSFwlsAbl5QXhsvnaq3J2AuK9WOAk68QejuEYowRLNLJumN4A5dkBv22e97m4P
 13XYwehO0XkKburkylvnyGUQjR3IrpBIMZ9a9xcfqeMOJCObsdFmVlmhj+ykyRDUFYg4
 YZt7EQ60tcpYr3qkpSjFoMLL78+bbc2nfFtDkS3POFSebWVfIUp7nHxqZmHPw78L2rum
 SIfw==
X-Gm-Message-State: AOAM533Z7UlP3fcuz24kbI6kuLa7HqsVHEnvJf14ke2wHpUod5txJ2Vw
 ebLPj1gBggQEHpZXQeyw8bIeug==
X-Google-Smtp-Source: ABdhPJxkJi1EPLjYr7iSmElxNRVJGzj1OLsfkUvsS+BfolnnyJhH3DB/wikuEdQKXWXlhbT3n4hdJg==
X-Received: by 2002:a05:600c:1e0e:b0:37c:6c82:72a6 with SMTP id
 ay14-20020a05600c1e0e00b0037c6c8272a6mr21033143wmb.35.1645447198661; 
 Mon, 21 Feb 2022 04:39:58 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id h11sm32207945wrr.64.2022.02.21.04.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 04:39:58 -0800 (PST)
Date: Mon, 21 Feb 2022 12:39:56 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhOIHARSdIliVWjW@google.com>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
 <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_044001_115328_93471E08 
X-CRM114-Status: GOOD (  14.67  )
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

T24gTW9uLCAyMSBGZWIgMjAyMiwgUm9nZXIgUXVhZHJvcyB3cm90ZToKCj4gT24gMjEvMDIvMjAy
MiAxMjowNywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+IEVtYWlscyB0byBSb2dlciBR
dWFkcm9zIFRJIGFjY291bnQgYm91bmNlIHdpdGg6Cj4gPiAgIDU1MCBJbnZhbGlkIHJlY2lwaWVu
dCA8cm9nZXJxQHRpLmNvbT4gKCM1LjEuMSkKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29tPgo+IAo+IFRo
YW5rcyBzbyBtdWNoIQo+IAo+IFNpZ25lZC1vZmYtYnk6IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUBr
ZXJuZWwub3JnPgoKSSBhc3N1bWUgeW91IG1lYW4gQWNrZWQtYnkgKGlmIHlvdSBhcmUgdGhlIG1h
aW50YWluZXIpIG9yIFJldmlld2VkLWJ5PwoKPiA+IC0tLQo+ID4gCj4gPiBSb2dlciwKPiA+IFlv
dSBzaG91bGQgYWxzbyBhZGQgYSBtYWlsbWFwIGVudHJ5IGZvciB5b3VyIGluYWN0aXZlIGVtYWls
cy4KPiAKPiBPSy4gSSB3aWxsIHNlbmQgb3V0IGEgcGF0Y2ggZm9yIHRoaXMuIFRoYW5rcyBmb3Ig
dGhlIGhpbnQuIDopCj4gCj4gPiAtLS0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
dGksajcyMWUtc3lzdGVtLWNvbnRyb2xsZXIueWFtbCAgICAgfCAyICstCj4gPiAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxvbWFwLXVzYjIueWFtbCAgICAgICAgIHwg
MiArLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksajcyMWUt
dXNiLnlhbWwgICAgICAgICB8IDIgKy0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdXNiL3RpLGtleXN0b25lLWR3YzMueWFtbCAgICAgfCAyICstCj4gPiAgNCBmaWxlcyBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpXaGF0J3MgdGhlIG1lcmdl
LXBsYW4gZm9yIHRoaXMgS3J6eXN6dG9mPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpQcmlu
Y2lwYWwgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
