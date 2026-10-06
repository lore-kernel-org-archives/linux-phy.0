Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EDACA5FF0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtCUrq48iz4gpywVksP4K1pTw9KN+ZYUnpAyLQ4IyHs=; b=zD73w13w+Hq+14
	AW0wDvpl7SeBbEZfEhbmTYhH6MATN69XMSMUAsCo8GJosAtA4qPZlC4GWQJFqtFnVvb/lkqQllozI
	4eQTkbA3J+SWW1AvunX747eyV2LyxDBE83mRvt6QnjJkGJKlwoJv1kpQXwM06rvW3SZvTGNBNArnt
	v+j/bSHqrY2z9CyrazHUt9wB9qsMp8KEVhZbpF4xmeCvTyTaOUVXpItBOHEICiSLMV0IQrlEIV1kt
	fSOx6ZmIo/6lyX6J6oJPVP9FGUADB3ur+h7UqHQzQQxRXdmzCwEaWv7TnZlkB9Pt+TbjR9mh2OWOd
	k9xe8bowSy9uD6iN4XrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2JU-00000000UdJ-1xuw;
	Tue, 06 Oct 2026 10:22:24 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2JS-00000000UbY-1mQi
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 10:22:23 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cc502d509c0so964516a12.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 03:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791282141; x=1791886941; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M/hrvnn0z+2DlIg4l/OJm7mUefYyBjl4fij27fEnYo4=;
        b=YUgAv4Q1CIpgLgvktynvzrXnLj7mPUA/1pM4yfs6qJmacv0bUz1qxnbn/WGm656oj6
         Op6aj1c/aU2COxOi5RYviqDvcuQsjxvCrdqIye4HbHYHrA7fsi44s/6hKYKO027gFGIW
         6nNKN0+sQoHQyHpjDEgWCdMTzCBLPG8n7TnwB6L6PhMM/hiKaRcGYmNu8r1FcEtTSAHR
         vFgiXaDdKF7xUdZ3X6m22QDYG3ShCNN1pB2LaDY4hLREl+WZLhTkQ26s+6gcmEblDbgN
         LtLyIjxyi0Q6hIPf4y9iVD+lIqWs09l1EjXgWwwjOHtO9y0T/ve2yPNxHU53qj0N4bLV
         HmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791282141; x=1791886941;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M/hrvnn0z+2DlIg4l/OJm7mUefYyBjl4fij27fEnYo4=;
        b=wpkuan/0aZCwmc0kc8fXKihKWJCaaq2CkPQ4Sp9kBXEVN/63YUdiC4+dEKBmr8GJ5Y
         fXC+FVpLpDxvE8bfHGtIhP9jQdFB9HFX7i0G2uf77mDK6PivTFXmIuOL7xSO8+Yi3w3x
         6Kez9Li6P3uRmpsQ2jsWp6dCCwknRHmSF8+xIDei+tWmJCwZOgNRAkjp7gvhEDMxIu3s
         O8w0sNB9sCulajELc2WBzcEvWN9YpVneRoogFB6OjyL6AcKxZnqkw6ZEp9+cevxo1atD
         ZD4tLjKunt5u6KnEI50NlWwG12cmYr3RpmT/9j3aJXGcz6t3sm5mPYW1sDAaolu4Lzbw
         ErhA==
X-Forwarded-Encrypted: i=1; AKwUvBztIDvjLE6EwLgpSp62qDzHBQZ15hA1JKE4QIHlBeRJeBzS3Zl+w/8zhEHDPOrN+6h9WBYearwuWf8=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ9PCYVxNUAe3eoC6BTrvQgUELX4d0uYBcs2f/JAMa+oFaZGZk9
	rDLnbSLesdyiGy2WYy54O23i3WtquvhDY7eFb1X5Jydh+xNz1ES8YX83
X-Gm-Gg: AYBFou0d1Owe0NemumXUVJJXpRA/SbkYtRoC10HVZQ3fGNAf9oXReb20M/N9G9k84oT
	/2KgyYd4vN9+AQ3704DLWVHP1cLApD3QZF4PoepnO3kEnuNLogavmNhPH3cXDaGIJzYj7a4QB1e
	M3CwCLjLpQlS2FUGLYIDFHTNX9uZgwsa5eWZaBnVJwJFeGd24QZeSYDruf/4/QoXU5NICqD/DcS
	i+J1qw5Nh0HVYU7k4kIUt2OuiFn+FXxWo7doqUz7ce+QxK1nk3Q2tx4IcFeVapy/Z1tm36zhYQt
	jUpZ/i1WfrJnfwxPB/PXdt6Y5NeMdmRQgCYS2VB2G/5yTfLvLZCRoqNOiatIxX/I5KfGZNhlnCF
	4ObG5gV1vgoflV/2GVizeNtnOjSlzQ6PdhkTOZV0GkIoOOC7ZrY93wkHaqvgvw9qEy+jym1XjYN
	JG1Re5wU1ITPEohem4HHmr8lqg7yIcaqLx/ZYD66weHoSKEJzozbul20A6ZNUd4s1aUUHG3wG9p
	pTyjyLZKMQCDQ1r4YMOmwV9BB+avZsvSeWrNDnjbq3R263E32Pm/dE=
X-Received: by 2002:a17:90b:4f:b0:3a0:deda:3d07 with SMTP id 98e67ed59e1d1-3a787181df6mr8026458a91.14.1791282141410;
        Tue, 06 Oct 2026 03:22:21 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a85436fb54sm4153971a91.10.2026.10.06.03.22.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 03:22:21 -0700 (PDT)
Message-ID: <413f21b6-90ca-4102-9466-3cf7b9feddc3@gmail.com>
Date: Tue, 6 Oct 2026 18:22:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com> <asN29Gi71MIA-2fq@parshuram>
 <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com> <asSzYUA5W51Ngn4X@parshuram>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <asSzYUA5W51Ngn4X@parshuram>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_032222_561342_2E497555 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

ClZpbm9kIEtvdWwg5pa8IDIwMjYvMTAvNiDkuIvljYggMDQ6Mzcg5a+r6YGTOgo+IE9uIDA2LTEw
LTI2LCAwOTozNywgSm9leSBMdSB3cm90ZToKPj4gVmlub2QgS291bCDmlrwgMjAyNi8xMC81IOS4
i+WNiCAwNjowNyDlr6vpgZM6Cj4+Pj4gICAgICovCj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2Jp
dGZpZWxkLmg+Cj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+Pj4+ICAgICNpbmNsdWRl
IDxsaW51eC9kZWxheS5oPgo+Pj4+IC0jaW5jbHVkZSA8bGludXgvaW8uaD4KPj4+IHdoeSBpcyB0
aGlzIGRyb3BwZWQ/Cj4+IFRoaXMgZHJpdmVyIG5ldmVyIGRpZCBkaXJlY3QgTU1JTyBhY2Nlc3Mg
KG5vIHJlYWRsKCkvd3JpdGVsKCkvaW9yZW1hcCgpLwo+PiBfX2lvbWVtKSwgZXZlbiBiZWZvcmUg
dGhpcyBzZXJpZXMgLSBhbGwgcmVnaXN0ZXIgYWNjZXNzIGdvZXMgdGhyb3VnaAo+PiByZWdtYXAg
dmlhIHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKS4gU28gbGludXgvaW8uaCB3YXMg
YW4KPj4gdW51c2VkIGluY2x1ZGUgYWxyZWFkeSwgYW5kIGl0J3MgZHJvcHBlZCBoZXJlIGFzIHBh
cnQgb2YgdGhlIGJyb2FkZXIKPj4gcmV3cml0ZSB0b3VjaGluZyB0aGlzIGluY2x1ZGUgYmxvY2su
IEhhcHB5IHRvIGtlZXAgaXQgaWYgeW91J2QgcHJlZmVyCj4+IG5vdCB0byBidW5kbGUgdW5yZWxh
dGVkIGluY2x1ZGUgY2xlYW51cCBpbnRvIHRoaXMgc2VyaWVzLgo+IFRoZW4gaXQgc2hvdWxkIGJl
IGEgZGlmZmVyZW50IHBhdGNoIGV4cGxhaW5pbmcgdGhpcwpVbmRlcnN0b29kLiBJJ2xsIGRyb3Ag
dGhpcyBjaGFuZ2UgZnJvbSB0aGUgc2VyaWVzLiBJJ2xsIGxlYXZlIHRoZSAKaW5jbHVkZSB1bmNo
YW5nZWQuClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
