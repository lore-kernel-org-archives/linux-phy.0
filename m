Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA898C43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 08:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Jq+lt7nkojxpo94mAkjb498AXBpHR8LAc2AsjnDzSM=; b=SguoSeVBvZI2cC
	xLZS/1S7arPVe4rhFUkaLVKbE/XuuU3LvN50ZOp9XS81zepSBEiWjrD36fyculzwk4o6sEyds59eu
	3AxozDnFpI2fqYv8lQ3/QDX6fOOl91uHiRrO8J8getVjdpYiX0uBXgbVi6pQNf0/KbLbeA/WcIhFM
	e133DSBrgkfoaaXhldfUD9qnghGV1ITjTxNJWurFbD8obSblklSo7J7ROhDan3ZFpUXr/GEFDr5cs
	YylheUn+zFUFbB5CN+KhSFrejLpphqYUlNAu+ZaUsXbOeqAzkVTbkFg8XlzQaTC8xuCGlvLQKfv/B
	DB1+yzJ9RkSRr4jCfMFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4IBT-00E4vX-23; Thu, 23 Jun 2022 08:27:27 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4IBP-00E4ts-UJ
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 08:27:25 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ge10so7922820ejb.7
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 01:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fpmetajmsJ4rrJ1uUdIUWn56HzIzZWmFHeYAu5H2Gt0=;
        b=M4ZfhkcjVpvuaIAvXUrj65RGAjFAW+y0F5PTl5yD5J8IMGGgiqjVF5zenCecEX0E+9
         Bh5Lq0vQqJ2KbWl4ijIIaUtlNbJKt70ht8BBvtcgLxahH3cHFeEgOkKBy+t5eK1brgQH
         StNrZbq8yvAtVf04NO9SXrEYNUh3OBXnF6IGTdNzsVR73AS3IOhvge0OdBz2As3uymkt
         9Q4hvroq5n9m/aRKd5MjDzIrQXQHCURYPRnHy5CvxmFiGumoV0v3st4FTxLcQ+keDr7W
         sTGL4IbK3wjyoVnxlQejPTLk+Nm0a+vG0m7IJ3wwx6AK5y7jQvkiSQ3ONL7hUO+nSeeV
         sGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fpmetajmsJ4rrJ1uUdIUWn56HzIzZWmFHeYAu5H2Gt0=;
        b=VvfmhtWZRwFQtJoSdHcFn4SlTcW2+JtGFyVIsxv5vbPdY04KDNpAHglixZj/j7eP4K
         L8YumOyh+vypufpD8t4L5XziBKEKPbZN0r8pcN5R18taZCD6XDS54gs2JBPIyksFulkC
         hD3RwGNSDF3VGa8IQ3wN16IqbczuoH+pyVUjonGpISnK9OOBp+CsKqj3sqtwKTKe6P+s
         jxlIGCKvFwIuNmBguGaFE36i4x7daP/77pD2YiDVBWuNH+0r6Ezv1XcLgEoyM2UZTBk4
         dijBF9p5DgLBQAQcePrFWehiF90oRIU1Ey9Nl2bgLiCon3P0165oroA4G9clrto0W+gf
         ZwKw==
X-Gm-Message-State: AJIora8HWKrkLR41VRLpPIHw8Nk0pDipbe0AT+SpIPIswcCiIitsdwkZ
	jeuQCqjlYmgMTgts/H3dQkpFHQ==
X-Google-Smtp-Source: AGRyM1tZv+K5hRKI5w7fu0Lxi1WUmhuxNv1jzLNi+L8O27+mxhh+O51XRIjzfct25OE/e/V5ZJyAhw==
X-Received: by 2002:a17:906:974c:b0:722:eaa7:5e5d with SMTP id o12-20020a170906974c00b00722eaa75e5dmr6565989ejy.541.1655972840190;
        Thu, 23 Jun 2022 01:27:20 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 4-20020a170906328400b00722d5b26ecesm5003426ejw.205.2022.06.23.01.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 01:27:19 -0700 (PDT)
Message-ID: <aa5c28c8-85c8-3867-69d0-2eba693594ea@linaro.org>
Date: Thu, 23 Jun 2022 10:27:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
 <20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428@epcms2p5>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_012724_019632_6D0F0686 
X-CRM114-Status: GOOD (  20.41  )
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

T24gMjIvMDYvMjAyMiAwOToyMSwgV2FuZ3Nlb2sgTGVlIHdyb3RlOgo+IE9uwqAyMS8wNi8yMDIy
wqAyMTo0NCzCoEtyenlzenRvZsKgS296bG93c2tpwqB3cm90ZToKPj4gwqBPbsKgMjEvMDYvMjAy
MsKgMDk6NDIswqBXYW5nc2Vva8KgTGVlwqB3cm90ZToKPj4+Pj4gwqDCoAo+Pj4+PiDCoMKgc2Ft
c3VuZyxzeXNjb24tYnVzLXMtZnN5czoKPj4+Pj4gwqDCoMKgwqBkZXNjcmlwdGlvbjoKPj4+Pj4g
wqDCoMKgwqDCoMKgUGhhbmRsZcKgdG/CoGJ1cy1zwqBwYXRowqBvZsKgZnN5c8KgYmxvY2sswqB0
aGlzwqByZWdpc3Rlcgo+Pj4+PiDCoMKgwqDCoMKgwqBhcmXCoHVzZWTCoGZvcsKgZW5hYmxpbmfC
oGJ1cy1zLgo+Pj4+PiDCoMKgwqDCoCRyZWY6wqAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0
aW9ucy9waGFuZGxlCj4+Pj4+IMKgwqAKPj4+Pj4gwqDCoHNhbXN1bmcsc3lzY29uLWJ1cy1wLWZz
eXM6Cj4+Pj4+IMKgwqDCoMKgZGVzY3JpcHRpb246Cj4+Pj4+IMKgwqDCoMKgwqDCoFBoYW5kbGXC
oHRvwqBidXMtcMKgcGF0aMKgb2bCoGZzeXPCoGJsb2NrLMKgdGhpc8KgcmVnaXN0ZXIKPj4+Pj4g
wqDCoMKgwqDCoMKgYXJlwqB1c2VkwqBmb3LCoGVuYWJsaW5nwqBidXMtcC4KPj4+Pj4gwqDCoMKg
wqAkcmVmOsKgL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+Pj4+Cj4+
Pj4gwqBUaGlzwqB0d2/CoGxvb2vCoHVuc3BlY2lmaWPCoGFuZMKgaGFja3nCoHdvcmthcm91bmTC
oGZvcsKgbWlzc2luZ8KgZHJpdmVycy7CoExvb2tzCj4+Pj4gwqBsaWtlwqBpbnN0ZWFkwqBvZsKg
aW1wbGVtZW50aW5nwqBpbnRlcmNvbm5lY3TCoG9ywqBjbG9ja8KgZHJpdmVyLMKgeW91wqBkZWNp
ZGVkCj4+Pj4gwqB0b8KgcG9rZcKgc29tZcKgb3RoZXLCoHJlZ2lzdGVycy7CoFdoecKgdGhpc8Kg
Y2Fubm90wqBiZcKgYW7CoGludGVyY29ubmVjdMKgZHJpdmVyPwo+Pj4+Cj4+Pj4KPj4+IMKgCj4+
PiDCoGJ1cy1zLMKgYnVzLXDCoGlzwqBhwqByZWdpc3RlcsKgdGhhdMKgZXhpc3RzwqBpbsKgdGhl
wqBzeXNyZWfCoG9mwqB0aGXCoGZzeXPCoGJsb2NrLgo+Pj4gwqBJdMKgaXPCoHRoZcKgc2FtZcKg
YmxvY2vCoGFzwqAiZnN5cy1zeXNyZWciwqBidXTCoGlzwqBzZXBhcmF0ZWTCoHNlcGFyYXRlbHnC
oGluCj4+PiDCoGhhcmR3YXJlLgo+PiDCoAo+PiDCoFR3b8KgcG9pbnRzwqBoZXJlOgo+PiDCoDEu
wqBJZsKgaXTCoGlzwqBpbsKgRlNZUyzCoHdoecKgaXTCoGNhbm5vdMKgYmXCoGFjY2Vzc2VkwqB3
aXRowqBzYW1zdW5nLGZzeXMtc3lzcmVnPwo+PiDCoDIuwqBJZsKgaXTCoGlzwqBvbmx5wqByZWdp
c3RlcizCoHNodWxkwqBiZcKgZGVzY3JpYmVkwqBsaWtlwqB0aGlzLsKgWW91wqBtdXN0Cj4+IMKg
ZGVzY3JpYmXCoGl0ZW06Cj4+IMKgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS92MS91cmw/
az0wZjUyOWE1Ny01MGM5YTMzMi0wZjUzMTExOC0wMDBiYWJmZjMyZTMtNTA5MzhkODE5ODA3N2Q1
OSZxPTEmZT0zMjI4NGU2OS1iYmVkLTRkMDktYjZkNi0wYTQzNDI4YWViZjUmdT1odHRwcyUzQSUy
RiUyRmVsaXhpci5ib290bGluLmNvbSUyRmxpbnV4JTJGdjUuMTgtcmMxJTJGc291cmNlJTJGRG9j
dW1lbnRhdGlvbiUyRmRldmljZXRyZWUlMkZiaW5kaW5ncyUyRnNvYyUyRnNhbXN1bmclMkZleHlu
b3MtdXNpLnlhbWwlMjNMNDIKPj4gwqAKPiAKPiBJdMKgd291bGTCoGJlwqBiZXR0ZXLCoHRvwqBh
Y2Nlc3PCoHdpdGjCoGZzeXMtc3lzcmVnLMKgYnV0wqB0aGVpcsKgaC93wqBhZGRyZXNzwqBhcmUK
PiBmYXLCoGZyb23CoGVhY2jCoG90aGVyLsKgVGhlwqBmc3lzwqBibG9ja8KgY29uc2lzdHPCoG9m
wqBhwqBzeXN0ZW3CoHJlZ2lzdGVywqBhbmTCoGFuCj4gYWRkaXRpb25hbMKgY29udHJvbMKgc3lz
dGVtwqByZWdpc3Rlci7CoCJidXMtcy1mc3lzIsKgYW5kwqAiYnVzLXAtZnN5cyLCoGFyZQo+IGFk
ZGl0aW9uYWzCoGNvbnRyb2zCoHN5c3RlbcKgcmVnaXN0ZXIuwqBzeXNyZWfCoGFuZMKgYWRkaXRp
b25hbMKgY29udHJvbMKgc3lzcmVnCj4gYWRkcmVzc2VzwqBhcmXCoGZhcsKgZnJvbcKgZWFjaMKg
b3RoZXLCoGFuZMKgdGhlcmXCoGFyZcKgaC93wqByZWdpc3RlcnPCoHRoYXTCoHBlcmZvcm0KPiBk
aWZmZXJlbnTCoGZ1bmN0aW9uc8KgYmV0d2VlbsKgdGhlbS4KPiAKPj4+IMKgU28swqBnZXTCoHJl
c291cmNlwqBpc8KgcGVyZm9ybWVkwqBzZXBhcmF0ZWx5wqBmcm9twqAiZnN5cy1zeXNyZWciLgo+
Pj4gwqBUaGV5wqBzZXTCoHBjaWXCoHNsYXZlLMKgZGJpwqByZWxhdGVkwqBjb250cm9swqBzZXR0
aW5ncywKPj4+IMKgbmFtaW5nwqAiYnVzLXgiwqBzZWVtc8KgdG/CoGJlwqBpbnRlcmNvbm5lY3Qu
Cj4+PiDCoEnCoHdpbGzCoGFkZMKgdGhpc8KgZGVzY3JpcHRpb27CoHRvwqBwcm9wZXJ0eS4KPj4+
IMKgScKgZG9uJ3TCoHRoaW5rwqBpdMKgbmVlZMKgdG/CoHVzZcKgdGhlwqBpbnRlcmNvbm5lY3TC
oGRyaXZlciwKPj4+IMKgc2/CoHBsZWFzZcKgbGV0wqBtZcKga25vd8KgeW91csKgb3Bpbmlvbi4K
Pj4gwqAKPj4gwqBQbGVhc2XCoGRvY3VtZW50wqBib3RowqBpbsKgdGhlwqBiaW5kaW5nc8KgYW5k
wqBpbsKgdGhlwqBkcml2ZXLCoHVzYWdlwqBvZsKgdGhpcwo+PiDCoHJlZ2lzdGVyLsKgV3JpdGlu
Z8KgdGhlcmXCoCIwIsKgb3LCoCIxIsKgaXPCoG5vdMKgZW5vdWdoLsKgSWbCoHRoZcKgZG9jdW1l
bnRhdGlvbgo+PiDCoGlzwqBnb29kLMKgScKgYW3CoGZpbmXCoHdpdGjCoGl0LsKgSWbCoHRoZcKg
ZXhwbGFuYXRpb27CoGlzwqBvYmZ1c2NhdGVkL25vdAo+PiDCoHN1ZmZpY2llbnQswqBpdMKgd2ls
bMKgbG9va8KgbGlrZcKgYXZvaWRpbmfCoHRvwqBpbXBsZW1lbnTCoGHCoGRyaXZlcizCoHdoaWNo
wqBJCj4+IMKgZG9uJ3TCoHdhbnTCoHRvwqBhY2NlcHQuCj4+IMKgCj4gCj4gScKgdGhpbmvCoGnC
oHNob3VsZMKgYWRkwqBlbm91Z2jCoGRlc2NyaXB0aW9uLsKgSXPCoGl0wqBzdWZmaWNpZW50wqB0
b8KgbW9kaWZ5Cj4gdGhlwqBuYW1lwqBhbmTCoGRlc2NyaXB0aW9uwqBvZsKgcHJvcGVydHnCoGxp
a2XCoHRoaXM/Cj4gCgpMb29rcyBvay4gVGhhbmsgeW91LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0
b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
