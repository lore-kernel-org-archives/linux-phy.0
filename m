Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 615E9C3DA7F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 00:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXYgIJlniRap3096IckczYGLc90t/komPNVoi1gE1cA=; b=JfAhXNSQLYaCGg
	zM71CKL8gZQV3tzlbK7/pjw4P3rNz32QJH/tFfGnqtLirTMXn4KJ3OkRA5WU2H1+v+BTOABrjcVB6
	1fBRP8Fkdx3dsTDxP0L4FIsVxNiToGfeFiO4Gi1ucGt4/t+T5y+yzZq7FVozoZv0NHVyNlB1waMym
	B4tCJSf/fqUTG2MHFXxM23vbT+N/ryITd78gq8olbqLlWoJ/Q5PJn77nPraOES+kyGhkCiXzhmfT0
	jomn1xg/pFWi2uey/RvQpGnbytqLt1koCFRqAvbAbmcSHQcMqZgsnz+zrxKq8gJ9oKnUml0KoTiF5
	TWd3Zvd6B4Z+GXava8Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJt0-000000034pV-0QtQ;
	Thu, 01 Aug 2024 00:41:42 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJsU-000000034fk-2MjJ;
	Thu, 01 Aug 2024 00:41:12 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3db1d4dab7fso3884437b6e.1;
        Wed, 31 Jul 2024 17:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722472869; x=1723077669; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+SRhALzSNIYjZtYZCdYQEI+/EH5x/c0pzDejuFftYNk=;
        b=JV4UX6sfExTybKsiSJOiltNyB3sVPDCQgpQ0JeUMxauR4tlVUTLEKKb58P1oLEmU8V
         K7hLijW7E3TOOQmcLqn7rO0ev2tpqHXgyPr+X/InB1LLy9VaDpX9fk79gIUIKz4eBZay
         uF+ipA6m54D9J5Jy9mO3GhXe83nN3VmbW5yE4YdkjdpfEOAou5fg/P5iHzX6Ec8Cuzbm
         l9CjxrkLeMBYN9yzvCkYjSw9VBdtOkVFpUqKdD7KHHNcYqJuxHta/T9LbOZgxc4C8gLq
         aBvA7biBr6z34SCtGCj72oqc9UclH+LSB8mRNvzAfVHuxGlwaLaoyARjDBt1htX+Op4d
         hwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722472869; x=1723077669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+SRhALzSNIYjZtYZCdYQEI+/EH5x/c0pzDejuFftYNk=;
        b=bqpjs+0RwqYRfsGRQ7W8NDUIc+uKNvxBn7loiLVRWf8F7AnRBIBmNgrqng3KXCvf3O
         vDtJZI3vUtZndUSR6KG0xnil/hccpkkLr7wXaD6OFXAT/Aq6ZHHbbzQRJ6F85mfOXYFM
         bHZaPcaxuiJlHMIs3uZU+Y8lN4SklYy3VFV96CjD3NiF7646Ge9e1guC71xbGsT6AYpu
         RNwekA0ifyBCY1kuZM2DfrZsHjRT2KgyOSTEZ8I9yEaebeGfbl2e3cHQ/K54p8N3wKBP
         JRMQZT3dQ/S2Q849xYG036AIIV9xoy52L+OWOEvoMnORilIX+stK/sTsrUpPllpEVOaW
         HZww==
X-Forwarded-Encrypted: i=1; AJvYcCV++Q6fFP4E5QH4A7d9Xd4bQqNUnnme82mKJXzRJqDQA1rTj2yxFtNKQWjuImtGVbkzAztyW+co9+PpCv4CM5Biy6ZCYuzr54vfWn2ihg==
X-Gm-Message-State: AOJu0YwqnKBu29TriPiGm7kH5eFrlAPm/FHIWgcr/TiPGN+s4xUKvxjn
	TD+RDiEL44R2zlhNcF0DoDpf6AiPEqIggAo6INmg/8v/371Zxc10T9Yu1g==
X-Google-Smtp-Source: AGHT+IF2+UXiIKmLrJ8RELf5HuGNCOKJPdjkpvdOPhQ+ZS8Luzx6Jwu6WdMqA97xvIZpCy9sBV+83w==
X-Received: by 2002:a05:6808:23d6:b0:3da:a16e:1764 with SMTP id 5614622812f47-3db511b4701mr1034618b6e.4.1722472869032;
        Wed, 31 Jul 2024 17:41:09 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f7b7b029sm10935955a12.11.2024.07.31.17.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 17:41:08 -0700 (PDT)
Message-ID: <2e543ed4-929c-44df-ba42-0a6b259aeb0f@gmail.com>
Date: Thu, 1 Aug 2024 08:41:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240731014313.113417-1-hpchen0nvt@gmail.com>
 <20240731014313.113417-2-hpchen0nvt@gmail.com>
 <6b1894c8-766c-4191-9f05-42f1f0a838f5@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <6b1894c8-766c-4191-9f05-42f1f0a838f5@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_174110_623501_452483E4 
X-CRM114-Status: GOOD (  15.54  )
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

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvNy8z
MSDkuIvljYggMDE6MzEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMzEvMDcvMjAy
NCAwMzo0MywgSHVpLVBpbmcgQ2hlbiB3cm90ZToKPj4gQWRkIGR0LWJpbmRpbmdzIGZvciBVU0Iy
IFBIWSBmb3VuZCBvbiB0aGUgTnV2b3RvbiBNQTM1IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
SHVpLVBpbmcgQ2hlbiA8aHBjaGVuMG52dEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIC4uLi9iaW5k
aW5ncy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHkueWFtbCB8IDQ3ICsrKysrKysrKysrKysr
KysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24s
bWEzNWQxLXVzYjItcGh5LnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHku
eWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjg4ZTI5
N2JhNGVjZgo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHkueWFtbAo+PiBAQCAtMCwwICsx
LDQ3IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJT
RC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL3BoeS9udXZvdG9uLG1hMzVkMS11c2IyLXBoeS55YW1sIwo+PiArJHNj
aGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+ICsK
Pj4gK3RpdGxlOiBOdXZvdG9uIE1BMzVEMSBVU0IyIHBoeQo+PiArCj4+ICttYWludGFpbmVyczoK
Pj4gKyAgLSBIdWktUGluZyBDaGVuIDxocGNoZW4wbnZ0QGdtYWlsLmNvbT4KPj4gKwo+PiArcHJv
cGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4gKyAgICBlbnVtOgo+PiArICAgICAgLSBudXZv
dG9uLG1hMzVkMS11c2IyLXBoeQo+PiArCj4+ICsgICIjcGh5LWNlbGxzIjoKPj4gKyAgICBjb25z
dDogMAo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIG51
dm90b24sc3lzOgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIHBoYW5kbGUgb2YgdGhlIHN5
c3RlbS1tYW5hZ2VtZW50IG5vZGUuCj4+ICsgICAgICBUaGlzIGRyaXZlciBoYXMgc29tZSBzdGF0
dXMgYml0cyBsb2NhdGVkIGluIHRoZSBzeXMsCj4gRG8gbm90IHJlZmVyZW5jZSBkcml2ZXJzLCBi
dXQgaGFyZHdhcmUuCgpPa2F5LiBJIHdpbGwgcmV2aXNlIHRoZSBkZXNjcmlwdGlvbi4KCgoKPj4g
KyAgICAgIGl0IGlzIG5lY2Vzc2FyeSB0byByZWZlcmVuY2UgdGhlIHN5cyBsaW5rLgo+IFRoaXMg
dGVsbHMgbWUgbm90aGluZy4gWW91IG11c3QgYmUgc3BlY2lmaWMgLSBXSEFUIElTIFRIRSBQVVJQ
T1NFIG9mCj4gdGhpcyBzeXNjb24gdXNhZ2UgaW4gVVNCMiBQSFk/CgpTb3JyeSwgSSBtaXN1bmRl
cnN0b29kLiBJIHdpbGwgY29ycmVjdCB0aGUgZGVzY3JpcHRpb24uCgpUaGFuayB5b3UgZm9yIHRo
ZSByZW1pbmRlci4KCgoKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgoKQmVzdCByZWdhcmRz
LAoKSHVpLVBpbmcgQ2hlbgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
