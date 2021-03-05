Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8783AC4361B
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03073651FF
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03073651FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LRPA61fC0FDFC044qnT/VDDtdVJaJDzdonKSF3+bvD8=; b=NriSSa5V9iZtsysAl9e5KDVZm
	zQoc2BcPxONGTWLLopLTt7oVUzztF3+xmJRZmImytNaCpXJuhqGGu9nOHmp493Ed1p6BbkPIfNYZj
	5eQs842fT3i6k5d3BLlZyU87/GEpk2Ks6CRMqAgtvV/9OwpXJpuw3mS5jbNHqFZc2tHYFxsFb6ZNu
	tLFOHzLZvVY/RNZvP7kaPLRfI69d2HFPUgnqEMFYDteJkSEF8q3JID0ECu48akxLXFBRqcYjQLyWs
	UChufaBHYkNviyCJe1KwLcxqmzeL7eoxtudqldzJnd1VNdyT2I+lJu8dnUZ42yQb/r38iWiDW0BGA
	F/yWyX6Vg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJ951-00FQTB-VF; Mon, 08 Mar 2021 06:09:24 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIEC6-00FmC0-Ho
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 17:24:56 +0000
Received: by mail-lf1-x12e.google.com with SMTP id q25so4884518lfc.8
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 09:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/Wb7nGBp/ajWcDGb8UZSvbZL0I86y447bFDckQp9JzQ=;
 b=d5y9bIifMQExQQ9vY5l5w294XJdbHQZ5fNjkF+pN4hSaqcsX7aLsnWymwq7YuyQkXw
 vrbRfVS3xqPo1qh3KO0m9pGx1MGNtzEp4LV5+P8PwkqulAUnBIrgBQTIMKR+71jgYjH2
 PTMEhwWIvFqNWzgN6ydcHfopxCDygAoAI/0h/gJXq9EFcwSaZaYJEwuw8P3ERdT/KCJE
 bwsaVu7N8QwqfD8OGf6xGSuy/ZmJI+DLpIpOJNGzxReXnmxD0oztvMk9GYb8G9dVoPd4
 FkFaBfMsIQuDbdck5RZLwm6+4DcFbNTzyskfS1cu4JtHxuVSnwTwHY8KJ3r7zeGzcNJZ
 awAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/Wb7nGBp/ajWcDGb8UZSvbZL0I86y447bFDckQp9JzQ=;
 b=rA5dmqrsQJMrjzhC7lW61w6U6hKQy7YXg1vwPGK1Vg/PqFAZscC9d7b8h0bVQf2ISA
 4Sh1V0uIvit8Tg96nPWWM6771/Uc4q2c2NLtcmRAXbYXgF/0rVak2qZhHfJsVSlaDrzv
 xCe8x4E8m9skuVDyQyJb4Pe+8qB8B7m3/0KPfTy9SuGKXpu6SX04HonjuaKZmIlr3bCo
 uB3e+nd9fyqN2bYCQyhgzu2mJfyEKWgZWhzLf8ZLN+xigh4zSu78FjmBBap4ddM32mkA
 NOAXF/9SuhaD7vvz+P6mNw+8RNzqfvyYvNJZ0ZxLhMybyDmdy5VtJImmxUEvhsUr6KQ9
 FLYA==
X-Gm-Message-State: AOAM532P4lAj1nOUVI5pIiy8fpNR6XPi6WsAt8xaV17MI0BGtp31Kq1p
 X9QELlxcP5wzl5u8Qao4/wC7hXJBy38=
X-Google-Smtp-Source: ABdhPJxoGDw7q4dycejJ3c0mponDT/TQOdfyAW2yR4717cKQja4y8MOSwx5yjX9lEGtLIvzlOEqHkQ==
X-Received: by 2002:ac2:465c:: with SMTP id s28mr6126868lfo.135.1614965092213; 
 Fri, 05 Mar 2021 09:24:52 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id h3sm375821ljc.67.2021.03.05.09.24.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 09:24:51 -0800 (PST)
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
Message-ID: <26f8af0e-b0fc-d66d-69a3-ee5ad9f27dbe@gmail.com>
Date: Fri, 5 Mar 2021 18:24:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-2-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_172454_843036_24B8E49E 
X-CRM114-Status: GOOD (  23.26  )
X-Mailman-Approved-At: Mon, 08 Mar 2021 06:09:18 +0000
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

Q2MgbGludXgtcGh5QAoKT24gMjYuMDIuMjAyMSAxMjo0NSwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGUgb2xk
IGJpbmRpbmcgd2FzIHVzaW5nIHdob2xlIERNVSBzcGFjZS4gSXQgd2FzIGFuIG92ZXJraWxsLiBE
TVUgaXMgYQo+IGJpZyBibG9jayB3aGljaCBjb250YWlucyBlLmcuIENSVSB3aGljaCBjb250YWlu
cyBlLmcuIFBMTHMsIFBIWSwgcGluY3RybAo+IGFuZCB0aGVybWFsIGJsb2Nrcy4KPiAKPiBSZXdv
cmsgdGhlIGJpbmRpbmcgdG8gZGlyZWN0bHkgdXNlIGEgc2luZ2xlIENSVSByZWdpc3RlciB0aGF0
IGNvbnRyb2xzCj4gVVNCIDIuMCBQSFkuIEl0J3Mgc3RpbGwgcmVxdWlyZWQgdG8gcmVmZXJlbmNl
IENSVSBnZW5lcmljIGNsa3NldAo+IHJlZ2lzdGVyIHNvIGFkZCBhIHN5c2NvbiBmb3IgdGhhdC4K
PiAKPiBGb3IgYSBmdWxsIERNVSAmIENSVSBkZXNjcmlwdGlvbiBzZWUgYXJjaC9hcm0vYm9vdC9k
dHMvYmNtNTMwMXguZHRzaSAuCj4gCj4gVGhlIG9sZCBiaW5kaW5nIGlzIGRlcHJlY2F0ZWQgbm93
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4K
PiAtLS0KPiBUaGlzIGhhcyBiZWVuIHZlcmlmaWVkIHVzaW5nIGR0X2JpbmRpbmdfY2hlY2sKPiAK
PiBJJ2QgcmVhbGx5IGxpa2UgdG8gZ2V0IFJvYidzIGFjayB0byBtYWtlIHN1cmUgSSBkb24ndCBk
byBhbnl0aGluZyBzdHVwaWQKPiAKPiBJdCdzIGEgcmV3b3JrZWQgdmVyc2lvbiBvZiBteSBhYm9u
ZGVkIDIwMTkgcGF0Y2g6Cj4gW1BBVENIIFYyIDEvMl0gZHQtYmluZGluZ3M6IGJjbS1ucy11c2Iy
LXBoeTogcmV3b3JrIGJpbmRpbmcgdG8gdXNlIENSVSBzeXNjb24KPiBodHRwczovL3BhdGNod29y
ay5vemxhYnMub3JnL3Byb2plY3QvZGV2aWNldHJlZS1iaW5kaW5ncy9wYXRjaC8yMDE5MDEwODEy
MzkwNy4xOTgxNi0xLXphamVjNUBnbWFpbC5jb20vCj4gLS0tCj4gICAuLi4vYmluZGluZ3MvcGh5
L2JyY20sbnMtdXNiMi1waHkueWFtbCAgICAgICAgfCA0NiArKysrKysrKysrKysrKystLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxu
cy11c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9i
cmNtLG5zLXVzYjItcGh5LnlhbWwKPiBpbmRleCBiOGI2ODNjZThmYTkuLjhlMDU2ZDRkMjA1YSAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20s
bnMtdXNiMi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvYnJjbSxucy11c2IyLXBoeS55YW1sCj4gQEAgLTE2LDExICsxNiwyMCBAQCBwcm9wZXJ0
aWVzOgo+ICAgICAgIGNvbnN0OiBicmNtLG5zLXVzYjItcGh5Cj4gICAKPiAgICAgcmVnOgo+IC0g
ICAgbWF4SXRlbXM6IDEKPiAtICAgIGRlc2NyaXB0aW9uOiBETVUgKERldmljZSBNYW5hZ2VtZW50
IFVuaXQpIGFkZHJlc3MgcmFuZ2UKPiArICAgIGFueU9mOgo+ICsgICAgICAtIG1heEl0ZW1zOiAx
Cj4gKyAgICAgICAgZGVzY3JpcHRpb246IFBIWSBjb250cm9sIHJlZ2lzdGVyCj4gKyAgICAgIC0g
bWF4SXRlbXM6IDEKPiArICAgICAgICBkZXNjcmlwdGlvbjogRE1VIChEZXZpY2UgTWFuYWdlbWVu
dCBVbml0KSBhZGRyZXNzIHJhbmdlCj4gKyAgICAgICAgZGVwcmVjYXRlZDogdHJ1ZQo+ICAgCj4g
ICAgIHJlZy1uYW1lczoKPiAgICAgICBjb25zdDogZG11Cj4gKyAgICBkZXByZWNhdGVkOiB0cnVl
Cj4gKwo+ICsgIGJyY20sc3lzY29uLWNsa3NldDoKPiArICAgIGRlc2NyaXB0aW9uOiBwaGFuZGxl
IHRvIHN5c2NvbiBmb3IgY2xrc2V0IHJlZ2lzdGVyCj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4gICAKPiAgICAgY2xvY2tzOgo+ICAgICAgIG1h
eEl0ZW1zOiAxCj4gQEAgLTM0LDIyICs0MywzOSBAQCBwcm9wZXJ0aWVzOgo+ICAgCj4gICByZXF1
aXJlZDoKPiAgICAgLSByZWcKPiAtICAtIHJlZy1uYW1lcwo+ICAgICAtIGNsb2Nrcwo+ICAgICAt
IGNsb2NrLW5hbWVzCj4gICAgIC0gIiNwaHktY2VsbHMiCj4gICAKPiArb25lT2Y6Cj4gKyAgLSBy
ZXF1aXJlZDoKPiArICAgICAgLSBicmNtLHN5c2Nvbi1jbGtzZXQKPiArICAtIHJlcXVpcmVkOgo+
ICsgICAgICAtIHJlZy1uYW1lcwo+ICsKPiAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+
ICAgCj4gICBleGFtcGxlczoKPiAgICAgLSB8Cj4gICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2Nsb2NrL2JjbS1uc3AuaD4KPiAgIAo+IC0gICAgdXNiMi1waHlAMTgwMGMwMDAgewo+IC0gICAg
ICAgIGNvbXBhdGlibGUgPSAiYnJjbSxucy11c2IyLXBoeSI7Cj4gLSAgICAgICAgcmVnID0gPDB4
MTgwMGMwMDAgMHgxMDAwPjsKPiAtICAgICAgICByZWctbmFtZXMgPSAiZG11IjsKPiAtICAgICAg
ICBjbG9ja3MgPSA8JmdlbnBsbCBCQ01fTlNQX0dFTlBMTF9VU0JfUEhZX1JFRl9DTEs+Owo+IC0g
ICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKPiAtICAgICAgICAjcGh5LWNlbGxz
ID0gPDA+Owo+ICsgICAgY3J1LWJ1c0AxODAwYzEwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9
ICJzaW1wbGUtYnVzIjsKPiArICAgICAgICByYW5nZXMgPSA8MCAweDE4MDBjMTAwIDB4MWE0PjsK
PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9
IDwxPjsKPiArCj4gKyAgICAgICAgdXNiMi1waHlANjQgewo+ICsgICAgICAgICAgICBjb21wYXRp
YmxlID0gImJyY20sbnMtdXNiMi1waHkiOwo+ICsgICAgICAgICAgICByZWcgPSA8MHg2NCAweDQ+
Owo+ICsgICAgICAgICAgICBicmNtLHN5c2Nvbi1jbGtzZXQgPSA8JmNsa3NldD47Cj4gKyAgICAg
ICAgICAgIGNsb2NrcyA9IDwmZ2VucGxsIEJDTV9OU1BfR0VOUExMX1VTQl9QSFlfUkVGX0NMSz47
Cj4gKyAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKPiArICAgICAgICAg
ICAgI3BoeS1jZWxscyA9IDwwPjsKPiArICAgICAgICB9Owo+ICsKPiArICAgICAgICBjbGtzZXQ6
IHN5c2NvbkA4MCB7Cj4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxjcnUtY2xrc2V0
IiwgInN5c2NvbiI7Cj4gKyAgICAgICAgICAgIHJlZyA9IDwweDgwIDB4ND47Cj4gKyAgICAgICAg
fTsKPiAgICAgICB9Owo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
