Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49CFFC636CC
	for <linux-phy@archiver.kernel.org>; Sat, 11 Feb 2023 13:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bd5FlSCG9VbwUcZ+FKOB+bS9Uf6yk12lMSSZBL5pKNo=; b=UIWm4kRP1sqXLa
	z7RC47WdhNX8mZShljLxZgosO7aKZyeFxItvp6Unlh7xABELU8uZjxW+JX7Np2ysptxDAjvJUrACE
	FHJDj81XE/Cfd0QtQEbNoQMq8kyaAjUB/ko7VgQzY4aJo50N3p2VlyG9yLivK8PGiY4nYTy48Qe4i
	EWwkhSwYYBXsHe5hz9DC5uelpfZm5F6AGvbEmyzRJ4wlRsSRMFcPKpA2o2Xn2h6VRdq19zGemfJc0
	V3fYn79JuinW0otJjBS+LU+ku9ffzbhm7LmvFYDqrG3ASpp4gXNMzfJ7MM5ZBE8IJJjuTh8o/2W+H
	w0DweX0jyvrcSWe2Am0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQqFp-009ap0-Hx; Sat, 11 Feb 2023 13:49:25 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQqFj-009amS-LL
	for linux-phy@lists.infradead.org; Sat, 11 Feb 2023 13:49:23 +0000
Received: by mail-wm1-x32e.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so5972937wmb.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Feb 2023 05:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MnfzBiktksQsGYvw/qPfvChM1tKpn2xHHEtb2ZxpH3A=;
        b=x1gnL8NKsVz5ZGzWVr/mJF13Vjl3h7Rwmz5oYj5ywVWD4HAFKr2BzYSEfIWbMG4vYz
         CDYQMgrEGV9FIr4E1OuD6rk7BNROlyjz3Yc16SY6quecz1i5BjrXGplAjrsbFHtjb/8q
         Wq+sQ249kCvAB0xQM8YfCLwhBA1ipOlztN+gTAsfijIi8AAi29NAWuicCvd8JiM3sIpf
         D+eGJWOqYtkD0kRRUrgJJgJwFBfv4kM7rcRsZZQm1thFBThFmLxogORlpI21uVq5+bfa
         Flm6UQ5HaUFTKVkC6HMljqP+javiJ+chQWbdOJ2nG/qpkYEPW3WpwJWak1fcSlIGW0DA
         iJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MnfzBiktksQsGYvw/qPfvChM1tKpn2xHHEtb2ZxpH3A=;
        b=m/cgptDiWEHRBqSNvhqJg4i3wbX/zeYyANdrvjmuIFWU3GJvmj/mx4zFATtYjnWRL8
         rEiPsXG1Flbg9g2ST83BE3+ijCqrMvG8vkodXYcz+BPrXtOrsNtwBXqs1kJ/Dut+Djs1
         nYJXbPMD4WHuSa3i2CEMQlYD6Ixt0mttnHO9zMUD9M0bw1SpavftSexQW+BNRGqjYgsg
         7tkLy8yQeGsyV6bPDHyd3E3nAlTy14HnTHMbT7Grdi1rNc0MT/rq/uYsb71chSqLmM3q
         /XVRdGvlxrDiD2RkakMp9VmEbDXLRTIJK0VCt5Kqs68zDvHxSfS497SrQubOGu2Qk4In
         TE/w==
X-Gm-Message-State: AO0yUKVn5DKi7XqGvGQNPXTOsA0xNpm4htHQl5fqgHEFxEhuMfmPzL9y
	k9aksBp2LXm3mR9KpeDDK6nZMg==
X-Google-Smtp-Source: AK7set/LsuYodEEOcidXf0D4o0B3LrUM3jAixoxUL02Fyge8P3l4XD+91MwFH+ek7E8+PWPC0x1n3g==
X-Received: by 2002:a05:600c:4d97:b0:3e0:c75:7071 with SMTP id v23-20020a05600c4d9700b003e00c757071mr15266644wmp.5.1676123357077;
        Sat, 11 Feb 2023 05:49:17 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:e13f:18ce:8394:3c66? ([2a01:e0a:982:cbb0:e13f:18ce:8394:3c66])
        by smtp.gmail.com with ESMTPSA id t15-20020a5d534f000000b002c55306f6edsm135154wrv.54.2023.02.11.05.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 05:49:16 -0800 (PST)
Message-ID: <f727dd7d-08a8-acdf-316c-d571e36a4b1e@linaro.org>
Date: Sat, 11 Feb 2023 14:49:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add missing
 optional phy-supply property
Content-Language: fr, en-GB
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
 <Y+Z5xOlAeqO6JyIj@matsya>
From: Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <Y+Z5xOlAeqO6JyIj@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230211_054920_626443_C52B683B 
X-CRM114-Status: GOOD (  11.87  )
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

TGUgMTAvMDIvMjAyMyDDoCAxODowNywgVmlub2QgS291bCBhIMOpY3JpdMKgOgo+IE9uIDA3LTAy
LTIzLCAxNjowMywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IEFkZCBtaXNzaW5nIG9wdGlvbmFs
IHBoeS1zdXBwbHkgcHJvcGVydHkgdXNlZCB0byBwb3dlciB1cCBQSFkgcmVndWxhdG9ycy4KPj4K
Pj4gRml4ZXM6IDg3YTU1NDg1ZjJmYyAoImR0LWJpbmRpbmdzOiBwaHk6IG1lc29uLWcxMmEtdXNi
My1wY2llLXBoeTogY29udmVydCB0byB5YW1sIikKPj4gU2lnbmVkLW9mZi1ieTogTmVpbCBBcm1z
dHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4+IC0tLQo+PiAgIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9hbWxvZ2ljLGcxMmEtdXNiMy1wY2llLXBoeS55YW1sICAgICAgICAg
IHwgNSArKysrKwo+IAo+IEkgZG9udCBoYXZlIHRoaXMgZmlsZSBpbiBteSB0cmVlLCB3aGF0IHdh
cyB0aGlzIGJhc2VkIG9uPwoKSXQgaGFzIGJlZW4gcmVuYW1lZCBpbiBhIHByZXZpb3VzIHBhdGNo
IGJ5IEhlaW5lcjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzhkOTYwMDI5LWU5NGQtMjI0
Yi05MTFmLTAzZTVkZWI0N2ViY0BnbWFpbC5jb20vCgpOZWlsCgo+IAo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvYW1sb2dpYyxnMTJhLXVzYjMtcGNpZS1waHkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYW1sb2dpYyxnMTJhLXVzYjMtcGNp
ZS1waHkueWFtbAo+PiBpbmRleCAxMjlkMjZlOTk3NzYuLjMzMTQ3MTEyOTJkNiAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9hbWxvZ2ljLGcxMmEt
dXNiMy1wY2llLXBoeS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvYW1sb2dpYyxnMTJhLXVzYjMtcGNpZS1waHkueWFtbAo+PiBAQCAtMzUsNiArMzUs
MTEgQEAgcHJvcGVydGllczoKPj4gICAgICIjcGh5LWNlbGxzIjoKPj4gICAgICAgY29uc3Q6IDEK
Pj4gICAKPj4gKyAgcGh5LXN1cHBseToKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFBo
YW5kbGUgdG8gYSByZWd1bGF0b3IgdGhhdCBwcm92aWRlcyBwb3dlciB0byB0aGUgUEhZLiBUaGlz
Cj4+ICsgICAgICByZWd1bGF0b3Igd2lsbCBiZSBtYW5hZ2VkIGR1cmluZyB0aGUgUEhZIHBvd2Vy
IG9uL29mZiBzZXF1ZW5jZS4KPj4gKwo+PiAgIHJlcXVpcmVkOgo+PiAgICAgLSBjb21wYXRpYmxl
Cj4+ICAgICAtIHJlZwo+Pgo+PiAtLS0KPj4gYmFzZS1jb21taXQ6IDQ5YTgxMzMyMjFjNzFiOTM1
ZjM2YTdjMzQwYzAyNzFjMmE5ZWUyZGIKPj4gY2hhbmdlLWlkOiAyMDIzMDIwNy1iNC1hbWxvZ2lj
LWFtbG9naWMtZzEyYS11c2IzLXBjaWUtcGh5LWZpeC1iNWRhZjU0ZmI3ZDYKPj4KPj4gQmVzdCBy
ZWdhcmRzLAo+PiAtLSAKPj4gTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5v
cmc+Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
