Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D356C433DB
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:50:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91B87650A9
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:50:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91B87650A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xjrSwwCeKMmVCQwr/yhSgRbMezaEz0Gkd5+2RNXMYcU=; b=UDIxyhfkgfuJfiDaDkUSYKw9A
	rUL6gBbWRdXXX1bxafc/v8DM0lU4E6KRmV8vSCjTXNHEJgoHEae63DSolKpiwJq6v2rfA3ZabHHKo
	v313pFgENegwhZBDmXDNBiqyEdyml4E/UPTDSIxexQ/xSFjtHVWxdTcLiaNvuSzmBiMNko0hR2N61
	qvshSmP0fKmIyxFLrH92ZXnhOGBlfGj6sPInE9bOxNTIvYfPjP32AozScjY6Iu4VPuvnwVKeqvDCG
	U1wGjbOOqZui+sQHpNHWqEN3vESGm3uiNU0wQAfheO2Zh6Ff0ggh4OIJgXhn1do+XSXiyzcV5S1o0
	UORsqbU+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIILW-00Ggkn-0e; Fri, 05 Mar 2021 21:50:54 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIILH-00Gghs-MA
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 21:50:43 +0000
Received: by mail-lf1-x12f.google.com with SMTP id u4so6161129lfs.0
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 13:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pu25Lwey74x3S+iZWsTI0YVuLKqCpwvpU7QlE0ng/GI=;
 b=eoT0jxBR3mCFeYxoqswKLtsJvn0jwE3DAzTNazP7+8oQza+1nLoo8udy2BB9UFBC8q
 riqGt09Gp9OGehUn8QTUk5eYCiwXRHxg4ormtkKz/FQT68klrDHoNSrqlUYS9LzfLSQq
 jXzT+WLV9J+4ltudhfQu6UYwC1w99+C8I61m6+zczyz7W//9Af5W72qLA2cHijga4mRo
 +a2CUiQ9hmv5pC+ifULB3Oo3ZLgZsDo4vCmMDucROcmbM4vs0RB2uq/FWx2B8y/vPShf
 2xbJkRdUqYPHzxpARpCsRBOmJAzLTDhHHpN1aGFRvOV1KZygdptAYR0cyrdqlW4w0YPk
 5Izw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pu25Lwey74x3S+iZWsTI0YVuLKqCpwvpU7QlE0ng/GI=;
 b=O86D3yv16fis/v4XwKLIpXdtqvxFM1xa/QC2RpjspPi1c6eYoSs5Am6vEZWmLwqfDw
 FELAwJYlYy+4dJqZ3zmfsdPectveV9yCfVtXJoBioab7VxRWu13u2OfVJu0zu8KFWUNC
 YNia+bMZVFqMNmXrZc7s08UjYdLGrqQJ8y9nPiAFyJGuVPJkB20d/Xc0WGVuezd0AFeM
 7+BOawhzsl67L/l0WtuT9gNO0LZDMIgPRgLouoTM/qWcCvkYNBbaE+mZU3QHi8sti1Dr
 mTu6d//Kw0w46VAs4c3SZZRSK+3V3ZlaVSA9vbFloM3eSYQOqmhYHc8ugxKhHCjTBd9z
 frkQ==
X-Gm-Message-State: AOAM5329iqBmJ45TixSveqLZCLxlBSvFFAqHWsjVWC6nSBGVIJYDDIm+
 h38qZpA8bZYZJR0TSOhs0xeLiSQvGPA=
X-Google-Smtp-Source: ABdhPJyLs0fn8XstRzwfLN5dkcTciQObpvQUtsGLg3gPHIACmbYNfllzK6dodyTr0/lvUlO/YyHzwA==
X-Received: by 2002:a19:c3ce:: with SMTP id t197mr6641177lff.351.1614981037691; 
 Fri, 05 Mar 2021 13:50:37 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id u3sm447269lff.225.2021.03.05.13.50.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 13:50:37 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: phy: brcm,ns-usb2-phy: bind single CRU
 reg
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vivek Unune
 <npcomplete13@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org
References: <20210226114501.31086-1-zajec5@gmail.com>
 <20210226114501.31086-2-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <f6e9508a-55f2-7d21-7519-60931fcfac33@gmail.com>
Date: Fri, 5 Mar 2021 22:50:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-2-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_215040_965292_61BCDFF5 
X-CRM114-Status: GOOD (  23.18  )
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

Q2MgbGludXgtcGh5QCBhZ2FpbiAoYWZ0ZXIgZml4aW5nIHJlY2lwaWVudHMgTUwgbGltaXQpCgpP
biAyNi4wMi4yMDIxIDEyOjQ1LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IFRoZSBvbGQgYmluZGluZyB3YXMgdXNp
bmcgd2hvbGUgRE1VIHNwYWNlLiBJdCB3YXMgYW4gb3ZlcmtpbGwuIERNVSBpcyBhCj4gYmlnIGJs
b2NrIHdoaWNoIGNvbnRhaW5zIGUuZy4gQ1JVIHdoaWNoIGNvbnRhaW5zIGUuZy4gUExMcywgUEhZ
LCBwaW5jdHJsCj4gYW5kIHRoZXJtYWwgYmxvY2tzLgo+IAo+IFJld29yayB0aGUgYmluZGluZyB0
byBkaXJlY3RseSB1c2UgYSBzaW5nbGUgQ1JVIHJlZ2lzdGVyIHRoYXQgY29udHJvbHMKPiBVU0Ig
Mi4wIFBIWS4gSXQncyBzdGlsbCByZXF1aXJlZCB0byByZWZlcmVuY2UgQ1JVIGdlbmVyaWMgY2xr
c2V0Cj4gcmVnaXN0ZXIgc28gYWRkIGEgc3lzY29uIGZvciB0aGF0Lgo+IAo+IEZvciBhIGZ1bGwg
RE1VICYgQ1JVIGRlc2NyaXB0aW9uIHNlZSBhcmNoL2FybS9ib290L2R0cy9iY201MzAxeC5kdHNp
IC4KPiAKPiBUaGUgb2xkIGJpbmRpbmcgaXMgZGVwcmVjYXRlZCBub3cuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+IFRoaXMgaGFz
IGJlZW4gdmVyaWZpZWQgdXNpbmcgZHRfYmluZGluZ19jaGVjawo+IAo+IEknZCByZWFsbHkgbGlr
ZSB0byBnZXQgUm9iJ3MgYWNrIHRvIG1ha2Ugc3VyZSBJIGRvbid0IGRvIGFueXRoaW5nIHN0dXBp
ZAo+IAo+IEl0J3MgYSByZXdvcmtlZCB2ZXJzaW9uIG9mIG15IGFib25kZWQgMjAxOSBwYXRjaDoK
PiBbUEFUQ0ggVjIgMS8yXSBkdC1iaW5kaW5nczogYmNtLW5zLXVzYjItcGh5OiByZXdvcmsgYmlu
ZGluZyB0byB1c2UgQ1JVIHN5c2Nvbgo+IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJv
amVjdC9kZXZpY2V0cmVlLWJpbmRpbmdzL3BhdGNoLzIwMTkwMTA4MTIzOTA3LjE5ODE2LTEtemFq
ZWM1QGdtYWlsLmNvbS8KPiAtLS0KPiAgIC4uLi9iaW5kaW5ncy9waHkvYnJjbSxucy11c2IyLXBo
eS55YW1sICAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAzNiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5zLXVzYjItcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sbnMtdXNiMi1waHku
eWFtbAo+IGluZGV4IGI4YjY4M2NlOGZhOS4uOGUwNTZkNGQyMDVhIDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxucy11c2IyLXBoeS55YW1s
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5zLXVz
YjItcGh5LnlhbWwKPiBAQCAtMTYsMTEgKzE2LDIwIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgY29u
c3Q6IGJyY20sbnMtdXNiMi1waHkKPiAgIAo+ICAgICByZWc6Cj4gLSAgICBtYXhJdGVtczogMQo+
IC0gICAgZGVzY3JpcHRpb246IERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5pdCkgYWRkcmVzcyBy
YW5nZQo+ICsgICAgYW55T2Y6Cj4gKyAgICAgIC0gbWF4SXRlbXM6IDEKPiArICAgICAgICBkZXNj
cmlwdGlvbjogUEhZIGNvbnRyb2wgcmVnaXN0ZXIKPiArICAgICAgLSBtYXhJdGVtczogMQo+ICsg
ICAgICAgIGRlc2NyaXB0aW9uOiBETVUgKERldmljZSBNYW5hZ2VtZW50IFVuaXQpIGFkZHJlc3Mg
cmFuZ2UKPiArICAgICAgICBkZXByZWNhdGVkOiB0cnVlCj4gICAKPiAgICAgcmVnLW5hbWVzOgo+
ICAgICAgIGNvbnN0OiBkbXUKPiArICAgIGRlcHJlY2F0ZWQ6IHRydWUKPiArCj4gKyAgYnJjbSxz
eXNjb24tY2xrc2V0Ogo+ICsgICAgZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gc3lzY29uIGZvciBj
bGtzZXQgcmVnaXN0ZXIKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRp
b25zL3BoYW5kbGUKPiAgIAo+ICAgICBjbG9ja3M6Cj4gICAgICAgbWF4SXRlbXM6IDEKPiBAQCAt
MzQsMjIgKzQzLDM5IEBAIHByb3BlcnRpZXM6Cj4gICAKPiAgIHJlcXVpcmVkOgo+ICAgICAtIHJl
Zwo+IC0gIC0gcmVnLW5hbWVzCj4gICAgIC0gY2xvY2tzCj4gICAgIC0gY2xvY2stbmFtZXMKPiAg
ICAgLSAiI3BoeS1jZWxscyIKPiAgIAo+ICtvbmVPZjoKPiArICAtIHJlcXVpcmVkOgo+ICsgICAg
ICAtIGJyY20sc3lzY29uLWNsa3NldAo+ICsgIC0gcmVxdWlyZWQ6Cj4gKyAgICAgIC0gcmVnLW5h
bWVzCj4gKwo+ICAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gICAKPiAgIGV4YW1wbGVz
Ogo+ICAgICAtIHwKPiAgICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svYmNtLW5zcC5o
Pgo+ICAgCj4gLSAgICB1c2IyLXBoeUAxODAwYzAwMCB7Cj4gLSAgICAgICAgY29tcGF0aWJsZSA9
ICJicmNtLG5zLXVzYjItcGh5IjsKPiAtICAgICAgICByZWcgPSA8MHgxODAwYzAwMCAweDEwMDA+
Owo+IC0gICAgICAgIHJlZy1uYW1lcyA9ICJkbXUiOwo+IC0gICAgICAgIGNsb2NrcyA9IDwmZ2Vu
cGxsIEJDTV9OU1BfR0VOUExMX1VTQl9QSFlfUkVGX0NMSz47Cj4gLSAgICAgICAgY2xvY2stbmFt
ZXMgPSAicGh5LXJlZi1jbGsiOwo+IC0gICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4gKyAgICBj
cnUtYnVzQDE4MDBjMTAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+
ICsgICAgICAgIHJhbmdlcyA9IDwwIDB4MTgwMGMxMDAgMHgxYTQ+Owo+ICsgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDE+Owo+ICsKPiArICAg
ICAgICB1c2IyLXBoeUA2NCB7Cj4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxucy11
c2IyLXBoeSI7Cj4gKyAgICAgICAgICAgIHJlZyA9IDwweDY0IDB4ND47Cj4gKyAgICAgICAgICAg
IGJyY20sc3lzY29uLWNsa3NldCA9IDwmY2xrc2V0PjsKPiArICAgICAgICAgICAgY2xvY2tzID0g
PCZnZW5wbGwgQkNNX05TUF9HRU5QTExfVVNCX1BIWV9SRUZfQ0xLPjsKPiArICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAicGh5LXJlZi1jbGsiOwo+ICsgICAgICAgICAgICAjcGh5LWNlbGxzID0g
PDA+Owo+ICsgICAgICAgIH07Cj4gKwo+ICsgICAgICAgIGNsa3NldDogc3lzY29uQDgwIHsKPiAr
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJicmNtLGNydS1jbGtzZXQiLCAic3lzY29uIjsKPiAr
ICAgICAgICAgICAgcmVnID0gPDB4ODAgMHg0PjsKPiArICAgICAgICB9Owo+ICAgICAgIH07Cj4g
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
