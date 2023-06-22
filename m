Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FF9EB64D8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 06:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg+m8C0AjxKcK8WAS27IiMacHMWWNGBZIOpp3iAd2yA=; b=j6cIS+a3OE9vwU
	KYqpErWXogzU23F83NhixTY47VN+fw3Tt6NIOO9wtVRR6wlqOK6pK6PmAXPrXuKo9/vsMGre7W98d
	tuPdk93flS4rmWU/E8frXXpLshhIv7c+eWZPMFUYa7aQITaeLSV9pdtnAp3Pvf/H+fCkJizrjEG82
	nn6GKBLoGz6Aray2TgAwYWDKZ3Z7c9LkmKCsw5zQh2VQGANJmp2RTz9AFbNjsQNA+I70Ho8V6pMo9
	iLIvEAbx3bcfScA7inwwFUej0r+zCMMCJObuLLezJKa0PkgiDNTgiZqR0bn+8G+IGJyYkAEJTCEM0
	pVetpbxAnFCjlPN88ZOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCDNH-00GyHh-2l;
	Thu, 22 Jun 2023 06:00:55 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCDNF-00GyGa-1A;
	Thu, 22 Jun 2023 06:00:54 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so495669a12.0;
        Wed, 21 Jun 2023 23:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687413651; x=1690005651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7gKgsjsMfyVBNiMs1mpv7rOGyaAfvold3DdqGyoiUw=;
        b=oV958KePJ/IPsbb+byG0qYD+PDYiicQmtVEdUUzBAQHs2VctwWkD+nKLHWywItYnkm
         RWIaYl0Dz904fpo1i4eICLECcjMCeKvrdB3k/XUQg/XKqDFm2cbtGsDVw17o9ZDCe971
         IO/6evJMqmXZqUZizfqhkFeYpApoookctFeKcpTzLG3J7XuTasWyiXwgQCHO2oO9+4qU
         wSKol3AQTg8lFaWLSjh7FNdYrE8omfojXyAKW8B2yoQTqExsPNG3Wj+umzjGGrkM8OT9
         qIi8VZnCegX8jbS9krjjm0vgzyVOJxCu8/brz862GF/zmKPF3DB81piKzVDqmJoSBH41
         9n/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687413651; x=1690005651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7gKgsjsMfyVBNiMs1mpv7rOGyaAfvold3DdqGyoiUw=;
        b=VsiN+Ru8sU4i/HyykuJHoEST27C9Zbewaj1WdWv9q4j1WTLsZWfKWnGH1G2q7PHEW2
         ebDE9cLxSvXeOo7ij3i9n8nDxuMt3he/9EY2Xkj5W19TEGFAvFTWahoEjQqcY5A+yoBP
         yFUA5YPdvHGwN/qiwG5LljAmPz08hjrZ0OIKsaLyH1XVVg4crUDiz3DGLYSCxGjVf1s3
         C5Gxl0lsGOXE7Tnxrvb2SwtKs3NE/DM+FmZxjg2uruLHQi+sH5ikPLQBRN714rdD693M
         AYNX11VMPXXJLFxvE3DsUumerIdcIZkmb6jHEA65iTg/OInyce9VB4Me8W8hd2KAmPvL
         l/QQ==
X-Gm-Message-State: AC+VfDyh9zmNXNT6Nb+wJzA1RbFb9cA8j/+tgf+/utzwM0OgAqnSt36U
	rydB8lP/Hl3OmoZ8YZIpZFA=
X-Google-Smtp-Source: ACHHUZ7rqspLzMrzlNYZB3IJsbjLl9nW9TLTOgUKMyQX87x4nCpqdyO8277XbaxzLxIOiSzSRFLjdQ==
X-Received: by 2002:a17:906:58cd:b0:989:d9d:d90a with SMTP id e13-20020a17090658cd00b009890d9dd90amr8276054ejs.34.1687413650935;
        Wed, 21 Jun 2023 23:00:50 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id u15-20020a17090626cf00b0098882200623sm4040904ejc.82.2023.06.21.23.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 23:00:50 -0700 (PDT)
Message-ID: <1521fc62-1c8d-ff74-fa52-2acc8dab4c19@gmail.com>
Date: Thu, 22 Jun 2023 08:00:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: phy: brcm,brcmstb-usb-phy: Fix error in
 "compatible" conditional schema
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Al Cooper <alcooperx@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230621230958.3815818-1-robh@kernel.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20230621230958.3815818-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_230053_400915_E4FD2428 
X-CRM114-Status: GOOD (  13.78  )
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

T24gMjIuMDYuMjAyMyAwMTowOSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gVGhlIGNvbmRpdGlvbmFs
IGlmL3RoZW4gc2NoZW1hIGhhcyBhbiBlcnJvciBhcyB0aGUgImVudW0iIHZhbHVlcyBoYXZlCj4g
ImNvbnN0IiBpbiB0aGVtLiBEcm9wIHRoZSAiY29uc3QiLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpPb3BzLCBpdCdzIG15IG1pc3Rha2UuCgpGaXhl
czogNDZiNjE2YzE1NzRkICgiZHQtYmluZGluZ3M6IHBoeTogYnJjbSwgYnJjbXN0Yi11c2ItcGh5
OiBhZGQgQkNNNDkwOCBiaW5kaW5nIikKCkFja2VkLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFs
QG1pbGVja2kucGw+CgpUaGFua3MhCgoKPiAtLS0KPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9icmNtLGJyY21zdGItdXNiLXBoeS55YW1sICAgICAgICAgfCA0ICsrLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxicmNtc3RiLXVz
Yi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxi
cmNtc3RiLXVzYi1waHkueWFtbAo+IGluZGV4IDQzYTRiODgwNTM0Yy4uNTgwZmJlMzdiMzdmIDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxi
cmNtc3RiLXVzYi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvYnJjbSxicmNtc3RiLXVzYi1waHkueWFtbAo+IEBAIC0xMTUsOCArMTE1LDggQEAg
YWxsT2Y6Cj4gICAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgICAgY29udGFpbnM6Cj4g
ICAgICAgICAgICAgICBlbnVtOgo+IC0gICAgICAgICAgICAgIC0gY29uc3Q6IGJyY20sYmNtNDkw
OC11c2ItcGh5Cj4gLSAgICAgICAgICAgICAgLSBjb25zdDogYnJjbSxicmNtc3RiLXVzYi1waHkK
PiArICAgICAgICAgICAgICAtIGJyY20sYmNtNDkwOC11c2ItcGh5Cj4gKyAgICAgICAgICAgICAg
LSBicmNtLGJyY21zdGItdXNiLXBoeQo+ICAgICAgIHRoZW46Cj4gICAgICAgICBwcm9wZXJ0aWVz
Ogo+ICAgICAgICAgICByZWc6CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
