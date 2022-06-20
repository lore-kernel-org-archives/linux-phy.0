Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5004DCCA479
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 08:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7GXL9xEdk0Lp6IKjibCRU5YCiF6fg4f1ww/rN+aTn8=; b=x9K0PQlMK3jfQU
	E268GMm+V3eODzTx5H7BGK+AJfqwq+sPIws1Sp3sA9clM5Fe37OXGIgJOTLz0smHMesm6ir/0pKtR
	w3BP/7PkOauyynaQBfudIv68IQRc699cIOECtigQDy9O+o4pjkBboM5sb00zkZTGaiACZENY55sWe
	6X6thZlq2arY9p4gzttL1JwdhFaj1LX76weU2VtVIg1Fuy49WdgCvbtPTJEXCHH2oT5ZgqLHg4ZHI
	bfNXUt8uQSvWd9OHaz6Fiipbgw9EREJ8UAg6sdS8R4xOklmrgLVqUvz1Gg1bAZKX5JJ/3PSlaFOs3
	VhMuZc5wtPE/1HrktYHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Cz4-00GwMN-MF; Mon, 20 Jun 2022 08:42:10 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Cz1-00GwHr-8l
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 08:42:09 +0000
Received: by mail-ej1-x632.google.com with SMTP id gl15so19647948ejb.4
        for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 01:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8KC5N4lUnVBP0Df00kRT+qvCIav5gTwuxKk6ayo4MC4=;
        b=WxDOUlBokPFTfxjK9SyIBgzl+m/56JmpoMLo4gjoMMm11i+yDw6DxkfLIPjpbbI0rI
         jPR2o3Vn9VzHe5y2jyiLzFX8tq1zXi5rTpxNgphO56EKsNysGeIt601hFD+ea4siKxpq
         nHCuHSPBd12uHDmi8sNOejZyWTjRTeRDE8cKMwAMbJa2+QeAu1Rdb5viwHInRBd8qchq
         b1jLaFvRUKC3iTSfQ66w/KWdGRxVcOSsk9iJxXOYbKnbNswB5uz9nmxZBimi/g2IOZG0
         vCcmIgwtsso73lcp3PBZes9i/+RixN7UCqiSlf0kefsN8VoPZep0sHp5N/yB3qWh2y+e
         JsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8KC5N4lUnVBP0Df00kRT+qvCIav5gTwuxKk6ayo4MC4=;
        b=UVQu3WEsVQmwQt+4u8AowLM2pDJ+4syWnFnwvhxwNaMc4Hz5+E3OoPMdPhZQHNyDF9
         DywaNPWtzRjjnx+eAlIn2TEBy2yDraFxMFYaMHUZB3qBplmRb7pmxfzIYXkgF4umvdS/
         IxlAlcTg5DjcqV5pL+a6BKeCzp2wioiLpRSW6ELj9zapAdmReIN90afWdVHXCIs4YRqK
         B9zeKRG1/g1kJnLz96fW6iC+MnexMADQmg+EPqHl1hqUQjspnYncr0a3cEKZdq4hZRAE
         sKvhfoDGJhh99OqNyA17LDj7+jYwgZ/dNEpkYIpeITU4WtRUiXimxOi46e4DqromC2O9
         WNyw==
X-Gm-Message-State: AJIora88+e3QWOBNsvYU2tMQbm5GqHicuigFw1ywW368svtlJ9ZsQQbt
	ypRKiEwK6bBojbnt1enEIQ3pCyZVqelFxQ==
X-Google-Smtp-Source: AGRyM1un4To8Mddtqz1fB7rqVgLhty5KIRsJB7W3BZXo06Ui5+rDz/9sKgIqkOwn8eSD4ybl7BXAhw==
X-Received: by 2002:a17:906:d84:b0:715:7f3d:403f with SMTP id m4-20020a1709060d8400b007157f3d403fmr20367115eji.406.1655714523380;
        Mon, 20 Jun 2022 01:42:03 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 9-20020a170906310900b0071cbc7487e1sm4837429ejx.69.2022.06.20.01.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 01:42:02 -0700 (PDT)
Message-ID: <f9a877ce-1e18-90f9-67e5-b6e67b3b4156@linaro.org>
Date: Mon, 20 Jun 2022 10:42:01 +0200
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
References: <8d806fc9-0067-2c8d-ec41-13787c7644a2@linaro.org>
 <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <20220614012713epcms2p810386a5137fbcf6aefc41fe086badc0b@epcms2p8>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p6>
 <20220620075548epcms2p61182d9d7f41fadb1eb139b349bf7486d@epcms2p6>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620075548epcms2p61182d9d7f41fadb1eb139b349bf7486d@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_014207_359745_09252A3E 
X-CRM114-Status: GOOD (  19.48  )
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

T24gMjAvMDYvMjAyMiAwOTo1NSwgV2FuZ3Nlb2sgTGVlIHdyb3RlOgo+IE9uwqAxNy8wNi8yMDIy
wqAwNzo1NCzCoEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uwqAxMy8wNi8yMDIywqAx
ODoyNyzCoFdhbmdzZW9rwqBMZWXCoHdyb3RlOgo+Pj4gwqBBZGTCoGRlc2NyaXB0aW9uwqB0b8Kg
c3VwcG9ydMKgQXhpcyzCoEFSVFBFQy04wqBTb0MuCj4+PiDCoEFSVFBFQy04wqBpc8KgdGhlwqBT
b0PCoHBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnMKPj4+IMKgYW5kwqBQQ0llwqBj
b250cm9sbGVywqBpc8KgZGVzaWduZWTCoGJhc2VkwqBvbsKgRGVzaWduLVdhcmXCoFBDSWXCoGNv
bnRyb2xsZXIuCj4+PiDCoAo+Pj4gwqBTaWduZWQtb2ZmLWJ5OsKgV2FuZ3Nlb2vCoExlZcKgPHdh
bmdzZW9rLmxlZUBzYW1zdW5nLmNvbT4KPj4+IMKgLS0tCj4+PiDCoHYyLT52M8KgOgo+Pj4gwqAt
wqBtb2RpZnnCoHZlcnNpb27CoGhpc3RvcnnCoHRvwqBmaXTCoHRoZcKgbGludXjCoGNvbW1pdMKg
cnVsZQo+Pj4gwqAtwqByZW1vdmXCoCdEZXZpY2XCoFRyZWXCoEJpbmRpbmdzJ8Kgb27CoHRpdGxl
Cj4+PiDCoC3CoHJlbW92ZcKgdGhlwqBpbnRlcnJ1cHQtbmFtZXMswqBwaHktbmFtZXPCoGVudHJp
ZXMKPj4+IMKgLcKgcmVtb3ZlwqAnX2NsayfCoHN1ZmZpeAo+Pj4gwqAtwqBhZGTCoHRoZcKgY29t
cGF0aWJsZcKgZW50cmllc8Kgb27CoHJlcXVpcmVkCj4+PiDCoC3CoGNoYW5nZcKgbm9kZcKgbmFt
ZcKgdG/CoHNvY8KgZnJvbcKgYXJ0cGVjOMKgb27CoGV4YW1wbGVzCj4+PiDCoAo+Pj4gwqB2MS0+
djLCoDoKPj4+IMKgLSdtYWtlwqBkdF9iaW5kaW5nX2NoZWNrJ8KgcmVzdWx0wqBpbXByb3ZlbWVu
dAo+Pj4gwqAtQWRkwqB0aGXCoG1pc3NpbmfCoHByb3BlcnR5wqBsaXN0Cj4+PiDCoC1BbGlnbsKg
dGhlwqBpbmRlbnRhdGlvbsKgb2bCoGNvbnRpbnVlZMKgbGluZXMvZW50cmllcwo+Pj4gwqAtLS0K
Pj4+IMKgwqAuLi4vYmluZGluZ3MvcGNpL2F4aXMsYXJ0cGVjOC1wY2llLWVwLnlhbWzCoMKgwqDC
oMKgwqDCoMKgwqB8wqAxMDnCoCsrKysrKysrKysrKysrKysrKysKPj4+IMKgwqAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wY2kvYXhpcyxhcnRwZWM4LXBjaWUueWFtbMKgfMKgMTIwwqArKysrKysr
KysrKysrKysrKysrKysKPj4+IMKgwqAywqBmaWxlc8KgY2hhbmdlZCzCoDIyOcKgaW5zZXJ0aW9u
cygrKQo+Pj4gwqDCoGNyZWF0ZcKgbW9kZcKgMTAwNjQ0wqBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL2F4aXMsYXJ0cGVjOC1wY2llLWVwLnlhbWwKPj4+IMKgwqBjcmVhdGXC
oG1vZGXCoDEwMDY0NMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9heGlz
LGFydHBlYzgtcGNpZS55YW1sCj4+PiDCoAo+Pj4gwqBkaWZmwqAtLWdpdMKgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2F4aXMsYXJ0cGVjOC1wY2llLWVwLnlhbWzCoGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9heGlzLGFydHBlYzgtcGNpZS1l
cC55YW1sCj4+PiDCoG5ld8KgZmlsZcKgbW9kZcKgMTAwNjQ0Cj4+PiDCoGluZGV4wqAwMDAwMDAw
Li5kODAyYmJhCj4+PiDCoC0tLcKgL2Rldi9udWxsCj4+PiDCoCsrK8KgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2F4aXMsYXJ0cGVjOC1wY2llLWVwLnlhbWwKPj4+IMKg
QEDCoC0wLDDCoCsxLDEwOcKgQEAKPj4+IMKgKyPCoFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOsKg
KEdQTC0yLjAtb25secKgT1LCoEJTRC0yLUNsYXVzZSkKPj4+IMKgKyVZQU1MwqAxLjIKPj4+IMKg
Ky0tLQo+Pj4gwqArJGlkOsKgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS92MS91cmw/az04
NzYzNjY4My1lNjFlOGMwMC04NzYyZWRjYy03NGZlNDg2MDAxNTgtZTdhMWMzNzk0MDc2ZjBiOSZx
PTEmZT0zNWUwOWI3Zi00ZmIxLTRjOGYtODNhYy03ZWMzM2UxMjRkNDQmdT1odHRwJTNBJTJGJTJG
ZGV2aWNldHJlZS5vcmclMkZzY2hlbWFzJTJGcGNpJTJGYXhpcyUyQ2FydHBlYzgtcGNpZS1lcC55
YW1sJTIzCj4+PiDCoCskc2NoZW1hOsKgaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS92MS91
cmw/az0zNmY1NmM0ZS01Nzg4ODZjZC0zNmY0ZTcwMS03NGZlNDg2MDAxNTgtYWZkNzI3MGY4NDkz
NzA1NCZxPTEmZT0zNWUwOWI3Zi00ZmIxLTRjOGYtODNhYy03ZWMzM2UxMjRkNDQmdT1odHRwJTNB
JTJGJTJGZGV2aWNldHJlZS5vcmclMkZtZXRhLXNjaGVtYXMlMkZjb3JlLnlhbWwlMjMKPj4+IMKg
Kwo+Pj4gwqArdGl0bGU6wqBBUlRQRUMtOMKgU29DwqBQQ0llwqBDb250cm9sbGVyCj4+PiDCoCsK
Pj4+IMKgK21haW50YWluZXJzOgo+Pj4gwqArwqDCoC3CoEplc3BlcsKgTmlsc3NvbsKgPGplc3Bl
ci5uaWxzc29uQGF4aXMuY29tPgo+Pj4gwqArCj4+PiDCoCtkZXNjcmlwdGlvbjrCoHwrCj4+PiDC
oCvCoMKgVGhpc8KgUENJZcKgZW5kLXBvaW50wqBjb250cm9sbGVywqBpc8KgYmFzZWTCoG9uwqB0
aGXCoFN5bm9wc3lzwqBEZXNpZ25XYXJlwqBQQ0llwqBJUAo+Pj4gwqArwqDCoGFuZMKgdGh1c8Kg
aW5oZXJpdHPCoGFsbMKgdGhlwqBjb21tb27CoHByb3BlcnRpZXPCoGRlZmluZWTCoGluwqBzbnBz
LGR3LXBjaWUtZXAueWFtbC4KPj4+IMKgKwo+Pj4gwqArYWxsT2Y6Cj4+PiDCoCvCoMKgLcKgJHJl
ZjrCoC9zY2hlbWFzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbCMKPj4+IMKgKwo+Pj4gwqArcHJv
cGVydGllczoKPj4+IMKgK8KgwqBjb21wYXRpYmxlOgo+Pj4gwqArwqDCoMKgwqBjb25zdDrCoGF4
aXMsYXJ0cGVjOC1wY2llLWVwCj4+PiDCoCsKPj4+IMKgK8KgwqByZWc6Cj4+PiDCoCvCoMKgwqDC
oGl0ZW1zOgo+Pj4gwqArwqDCoMKgwqDCoMKgLcKgZGVzY3JpcHRpb246wqBEYXRhwqBCdXPCoElu
dGVyZmFjZcKgKERCSSnCoHJlZ2lzdGVycy4KPj4+IMKgK8KgwqDCoMKgwqDCoC3CoGRlc2NyaXB0
aW9uOsKgRGF0YcKgQnVzwqBJbnRlcmZhY2XCoChEQkkyKcKgcmVnaXN0ZXJzLgo+Pj4gwqArwqDC
oMKgwqDCoMKgLcKgZGVzY3JpcHRpb246wqBQQ0llwqBhZGRyZXNzwqBzcGFjZcKgcmVnaW9uLgo+
Pj4gwqArCj4+PiDCoCvCoMKgcmVnLW5hbWVzOgo+Pj4gwqArwqDCoMKgwqBpdGVtczoKPj4+IMKg
K8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKgZGJpCj4+PiDCoCvCoMKgwqDCoMKgwqAtwqBjb25zdDrC
oGRiaTIKPj4+IMKgK8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKgYWRkcl9zcGFjZQo+Pj4gwqArCj4+
PiDCoCvCoMKgaW50ZXJydXB0czoKPj4+IMKgK8KgwqDCoMKgbWF4SXRlbXM6wqAxCj4+PiDCoCsK
Pj4+IMKgK8KgwqBjbG9ja3M6Cj4+PiDCoCvCoMKgwqDCoGl0ZW1zOgo+Pj4gwqArwqDCoMKgwqDC
oMKgLcKgZGVzY3JpcHRpb246wqBQSVBFwqBjbG9jayzCoHVzZWTCoGJ5wqB0aGXCoGNvbnRyb2xs
ZXLCoHRvwqBjbG9ja8KgdGhlwqBQSVBFCj4+PiDCoCvCoMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlv
bjrCoFBDSWXCoGRiacKgY2xvY2sswqB1bmdhdGVkwqB2ZXJzaW9uCj4+PiDCoCvCoMKgwqDCoMKg
wqAtwqBkZXNjcmlwdGlvbjrCoFBDSWXCoG1hc3RlcsKgY2xvY2sswqB1bmdhdGVkwqB2ZXJzaW9u
Cj4+PiDCoCvCoMKgwqDCoMKgwqAtwqBkZXNjcmlwdGlvbjrCoFBDSWXCoHNsYXZlwqBjbG9jayzC
oHVuZ2F0ZWTCoHZlcnNpb24KPj4+IMKgKwo+Pj4gwqArwqDCoGNsb2NrLW5hbWVzOgo+Pj4gwqAr
wqDCoMKgwqBpdGVtczoKPj4+IMKgK8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKgcGlwZQo+Pj4gwqAr
wqDCoMKgwqDCoMKgLcKgY29uc3Q6wqBkYmkKPj4+IMKgK8KgwqDCoMKgwqDCoC3CoGNvbnN0OsKg
bXN0cgo+Pj4gwqArwqDCoMKgwqDCoMKgLcKgY29uc3Q6wqBzbHYKPj4+IMKgKwo+Pj4gwqArwqDC
oHBoeXM6Cj4+PiDCoCvCoMKgwqDCoG1heEl0ZW1zOsKgMQo+Pj4gwqArCj4+PiDCoCvCoMKgbnVt
LWxhbmVzOgo+Pj4gwqArwqDCoMKgwqBjb25zdDrCoDIKPj4+IMKgKwo+Pj4gwqArcmVxdWlyZWQ6
Cj4+PiDCoCvCoMKgLcKgY29tcGF0aWJsZQo+Pj4gwqArwqDCoC3CoHJlZwo+Pj4gwqArwqDCoC3C
oHJlZy1uYW1lcwo+Pj4gwqArwqDCoC3CoGludGVycnVwdHMKPj4+IMKgK8KgwqAtwqBpbnRlcnJ1
cHQtbmFtZXMKPj4+IMKgK8KgwqAtwqBjbG9ja3MKPj4+IMKgK8KgwqAtwqBjbG9jay1uYW1lcwo+
Pj4gwqArwqDCoC3CoHNhbXN1bmcsZnN5cy1zeXNyZWcKPj4+IMKgK8KgwqAtwqBzYW1zdW5nLHN5
c2Nvbi1waGFuZGxlCj4+PiDCoCvCoMKgLcKgc2Ftc3VuZyxzeXNjb24tYnVzLXMtZnN5cwo+Pj4g
wqArwqDCoC3CoHNhbXN1bmcsc3lzY29uLWJ1cy1wLWZzeXMKPj4KPj4KPj4gV2XCoGFyZcKgbWFr
aW5nwqBjaXJjbGVzLi4uwqBUaGlzwqB3YXPCoGJlZm9yZcKgYW5kwqBJwqBjb21tZW50ZWTCoGFs
cmVhZHnCoGl0wqBpcwo+PiB3cm9uZy7CoFlvdcKgY2Fubm90wqBoYXZlwqBzb21lwqB1bmtub3du
L3JhbmRvbcKgcHJvcGVydGllc8KgaW7CoCJyZXF1aXJlZDoiCj4+IHdpdGhvdXTCoGRlc2NyaWJp
bmfCoHRoZW3CoGluwqAicHJvcGVydGllczoiLsKgUGxlYXNlwqBsaXN0wqBhbGzCoHlvdXIKPj4g
cHJvcGVydGllc8KgaW7CoCJwcm9wZXJ0aWVzOiIswqBleGNlcHTCoHRoZcKgb25lc8KgY29taW5n
wqBmcm9twqBzbnBzCj4+IGJpbmRpbmdzL3NjaGVtYS4KPj4KPiAKPiBJIG1pc3NlZCB0aGF0IHdo
ZW4gYWRkaW5nIG5ldyBpdGVtcyB0byAicmVxdWlyZWQiLAo+IGl0IHNob3VsZCBhbHNvIGJlIGFk
ZGVkIHRvICJwcm9wZXJ0aWVzIi4KPiBJIHdpbGwgYWRkIHRoZSBmb2xsb3dpbmcgaXRlbXMgdG8g
dGhlIHByb3BlcnR5Lgo+IAo+IHNhbXN1bmcsZnN5cy1zeXNyZWc6Cj4gICBkZXNjcmlwdGlvbjoK
PiAgICAgUGhhbmRsZSB0byBzeXN0ZW0gcmVnaXN0ZXIgb2YgZnN5cyBibG9jay4KPiAgICRyZWY6
IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKClRoaXMgaXMgb2suCgo+
IAo+IHNhbXN1bmcsc3lzY29uLXBoYW5kbGU6Cj4gICBkZXNjcmlwdGlvbjoKPiAgICAgUGhhbmRs
ZSB0byB0aGUgUE1VIHN5c3RlbSBjb250cm9sbGVyIG5vZGUuCj4gICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCgpUaGlzIGlzIG9rLgoKPiAKPiBzYW1zdW5n
LHN5c2Nvbi1idXMtcy1mc3lzOgo+ICAgZGVzY3JpcHRpb246Cj4gICAgIFBoYW5kbGUgdG8gYnVz
LXMgcGF0aCBvZiBmc3lzIGJsb2NrLCB0aGlzIHJlZ2lzdGVyCj4gICAgIGFyZSB1c2VkIGZvciBl
bmFibGluZyBidXMtcy4KPiAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUKPiAKPiBzYW1zdW5nLHN5c2Nvbi1idXMtcC1mc3lzOgo+ICAgZGVzY3JpcHRpb246
Cj4gICAgIFBoYW5kbGUgdG8gYnVzLXAgcGF0aCBvZiBmc3lzIGJsb2NrLCB0aGlzIHJlZ2lzdGVy
Cj4gICAgIGFyZSB1c2VkIGZvciBlbmFibGluZyBidXMtcC4KPiAgICRyZWY6IC9zY2hlbWFzL3R5
cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKClRoaXMgdHdvIGxvb2sgdW5zcGVjaWZpYyBh
bmQgaGFja3kgd29ya2Fyb3VuZCBmb3IgbWlzc2luZyBkcml2ZXJzLiBMb29rcwpsaWtlIGluc3Rl
YWQgb2YgaW1wbGVtZW50aW5nIGludGVyY29ubmVjdCBvciBjbG9jayBkcml2ZXIsIHlvdSBkZWNp
ZGVkCnRvIHBva2Ugc29tZSBvdGhlciByZWdpc3RlcnMuIFdoeSB0aGlzIGNhbm5vdCBiZSBhbiBp
bnRlcmNvbm5lY3QgZHJpdmVyPwoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
