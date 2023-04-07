Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 822F7C6FD1D
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 09:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xlTIprwim+ES44vTTPo7iCR1V3fAZsrVeBxWwtUSPI=; b=eV57f/vtJzSBHO
	EQNKrZvTGI08CoUVcURCOsdDBwnejbrtfwWohSBw5lLHFlY1f7qzutcPCeKMNj1NMxpdzTkanOyED
	uwUG0ya6IC1o6vfDB+/gLgtdUUdhPXrmGDS0Q0LTMErTIXwC/WmnpbQUzZB8munJvlbKM+NVHfauv
	vEZYb5xKk34Jg5WSCzAZLRKYaTdtFkYhwkBLYUjGvex/2qwOxk8jKOpCNxaIdgnRXuWoaP3EN3oKz
	7aAAf+cWqxj2L+bNnO2TudUHoAg4MUVodRGNSMPOtrig5AWL/kPdk+gp2DF9q/lEUpHzmTzfHiUTH
	3krPwA3+lyKqZku+c/YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pki0f-009aRF-2y;
	Fri, 07 Apr 2023 09:03:54 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pki0Z-009aN4-1o
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 09:03:50 +0000
Received: by mail-ej1-x62c.google.com with SMTP id lj25so7055274ejb.11
        for <linux-phy@lists.infradead.org>; Fri, 07 Apr 2023 02:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680858223;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uxz6HscDcYi/9jfdYB/tcZnaka5Wo/7dEpZExRMLZYw=;
        b=j/o839dsly3x4zv+krzsPnIt91TM4ORYR2+1VCFgpwLObQ3AfZDdAG3VO834Pl+mUe
         wHmOtQ2fDt7ndynZpKqtlp/KUoNk3tul+qFfZUILuRL7tdFPor/H6OsOVNtyxYMuqXyq
         8vNeK5LbgQfszbZhHANmlyU5QCHEln75Gq1JPAaeNY84jSdJX/qA/6bPpokQuKZg5Dyz
         hz1czKmkCI4BpOeIQebCogfTAGvtbo7Cv3TUXPCBXyOAiJuibFH24v4F1EtFdDPkFPUo
         uLahmED8DcKjUnXZp5QJRLw5GsHGa2zIJmEsrUFy+MsAoqo78atHrpaF8Xdu3wYnlHwR
         Ph1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680858223;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uxz6HscDcYi/9jfdYB/tcZnaka5Wo/7dEpZExRMLZYw=;
        b=Ocx29HaPtQ8bXibmW0bFUmGuoUcg6+KJisSgdER+m/G9rFpN9RZJ/afRbZ6ruTZuYx
         ChIFRal3Q0kC/o5309I6eZDvuYtfcHaDepRjiG6pKLVk4KIR47EShrpLsGAj0tO/S4t+
         9GDrX9xq3sB3Zyye+zhk93rjEZgsCfzcz8HrlAvT9WE+YrPjR2HKQJqSbpvMUqsltsEb
         ZznGr3JogYzSMXo23GNR2WLnqVaWIgo6zA2fOij7limsWt5PGej9wlCe+xeW0MBZGDSM
         Zt7uIJ8GIB/0/XQy7zyAl8uM21gRan5I4Z8gSSUykQt/DY1iAp/dnJxlMjy3uppoEa4S
         eGdQ==
X-Gm-Message-State: AAQBX9eTE9gex3u3Sk1duBpXnoH+jQ6dltfviz/r+ZsMthRAKXS7a+K0
	F2BOGGrz+mnWYL+HkCUMtCPSNA==
X-Google-Smtp-Source: AKy350afZUTOUJGlpy2Cnj8IXoA67zyxf+p94mD+mt1nSCfj84BJOrog9Amf9YpvvFEo1RpTzHeDdg==
X-Received: by 2002:a17:907:3201:b0:8b1:2eef:154c with SMTP id xg1-20020a170907320100b008b12eef154cmr9538212ejb.0.1680858223497;
        Fri, 07 Apr 2023 02:03:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:14a3:366:3172:3c37? ([2a02:810d:15c0:828:14a3:366:3172:3c37])
        by smtp.gmail.com with ESMTPSA id wy6-20020a170906fe0600b009231714b3d4sm1827628ejb.151.2023.04.07.02.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 02:03:43 -0700 (PDT)
Message-ID: <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
Date: Fri, 7 Apr 2023 11:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, jun.li@nxp.com,
 haibo.chen@nxp.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_020347_619266_94EBD24F 
X-CRM114-Status: GOOD (  13.21  )
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

T24gMDUvMDQvMjAyMyAxNDoxNCwgSm9oYW5uZXMgWmluayB3cm90ZToKPiBIaSBLcnlzenRvZiwK
PiAKPiB0aGFua3MgZm9yIHlvdXIgcmV2aWV3LCBwbGVhc2UgZmluZCBteSBxdWVzdGlvbnMgYmVs
b3cuCj4gCj4gT24gV2VkLCAyMDIzLTA0LTA1IGF0IDEzOjUxICswMjAwLCBLcnp5c3p0b2YgS296
bG93c2tpIHdyb3RlOgo+PiBbc25pcF0KPj4+IMKgwqDCoMKgwqDCoCBBIHBoYW5kbGUgdG8gdGhl
IHJlZ3VsYXRvciBmb3IgVVNCIFZCVVMuCj4+PiDCoAo+Pj4gK8KgIGZzbCxwaHktdHgtdnJlZi10
dW5lOgo+Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjoKPj4+ICvCoMKgwqDCoMKgIEhTIERDIFZvbHRh
Z2UgbGV2ZWwgYWRqdXN0bWVudAo+Pgo+PiAiTGV2ZWwiIGluIHdoYXQgdW5pdHM/Cj4+Cj4gCj4g
VGhlIGRhdGFzaGVldCBqdXN0IHNob3dzIHBlcmNlbnQsIHJhbmdpbmcgZnJvbSAtNiB0byArMjQl
LCBpbiAyJQo+IGluY3JlbWVudHMuIFdoYXQgdW5pdCB3b3VsZCB5b3Ugc3VnZ2VzdD8KCnBlcmNl
bnQKaHR0cHM6Ly9naXRodWIuY29tL2RldmljZXRyZWUtb3JnL2R0LXNjaGVtYS9ibG9iL21haW4v
ZHRzY2hlbWEvc2NoZW1hcy9wcm9wZXJ0eS11bml0cy55YW1sCgo+IAo+Pj4gK8KgwqDCoCAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPj4+ICvCoMKgwqAgZW51
bTogWzAsIDEsIDIsIDMsIDQsIDUsIDYsIDcsIDgsIDksIDEwLCAxMSwgMTIsIDEzLCAxNCwgMTUs
Cj4+PiAxNl0KPj4+ICsKPj4+ICvCoCBmc2wscGh5LXR4LXJpc2UtdHVuZToKPj4+ICvCoMKgwqAg
ZGVzY3JpcHRpb246Cj4+PiArwqDCoMKgwqDCoCBIUyBUcmFuc21pdHRlciBSaXNlL0ZhbGwgVGlt
ZSBBZGp1c3RtZW50Cj4+PiArwqDCoMKgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmlu
aXRpb25zL3VpbnQzMgo+Pj4gK8KgwqDCoCBlbnVtOiBbMCwgMSwgMiwgM10KPj4+ICsKPj4+ICvC
oCBmc2wscGh5LXR4LXByZWVtcC1hbXAtdHVuZToKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4+
PiArwqDCoMKgwqDCoCBIUyBUcmFuc21pdHRlciBQcmUtRW1waGFzaXMgQ3VycmVudCBDb250cm9s
Cj4+Cj4+IElmIHRoaXMgaXMgY3VycmVudCB0aGVuIHVzZSBzdGFuZGFyZCB1bml0IHN1ZmZpeGVz
Lgo+IAo+IEFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0IHRoaXMgaXMgaW4gInVuaXQgYW1vbnRz
IiBvZiA2MDB1QSwgYmFzaWNhbGx5Cj4gMHg2MDB1QSwgMXg2MDB1QSBldGMuIFNob3VsZCBJIGp1
c3Qgc3VmZml4IGl0IHdpdGggdUEgdGhlbj8KClllcwpodHRwczovL2dpdGh1Yi5jb20vZGV2aWNl
dHJlZS1vcmcvZHQtc2NoZW1hL2Jsb2IvbWFpbi9kdHNjaGVtYS9zY2hlbWFzL3Byb3BlcnR5LXVu
aXRzLnlhbWwKClRoZSByZWdpc3RlciB2YWx1ZXMgY2FuIHdvcmsgc29tZXRpbWVzIGZpbmUgYnV0
IGFsc28gZG8gbm90IHNjYWxlIGF0CmFsbC4gRm9yIGFueSBvdGhlciB2YXJpYW50IGFsbCB0aGUg
bWVhbmluZ3Mgd2lsbCBkaWZmZXIuIEFueSBvdGhlciBJTVg4CnBoeSB3aWxsIG5lZWQgbmV3IGJp
bmRpbmdzIGFuZCBuZXcgZGVzY3JpcHRpb24vdmFsdWVzIGZvciB5b3VyCnJlZ2lzdGVyLWxpa2Ut
ZmllbGRzLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
