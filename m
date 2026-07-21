Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73204C4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 19:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnADepe+AQTdWbkH1ICzOV+R8+rlOcFNtwINOOjDGBo=; b=qqcBi/2vJoQS/z
	ex6ETENNEnO8SBxO25asS78qUSG+ob1B7pyL9CzVpw/zpLfs2P7gKoY1CXEx//cYEOtI71CxS/b0j
	ReF8VccTAqchW9bsWhYCUrFDnY/FHKOhfcpPWGdLGWQ5CkEpm8Znri48Ce2rBPNsdu8ISzqRCwfd2
	2r865gaaIgxCk9AfOgao7fv/xJmoTiy7mZOIRGqHmdC3JiXPkq0LjpLZh35iFAu+60gVPvN1C3jG9
	wJicUUb/uo/dUsVkUW/tmB73oXkQ8+CDtMtBWcN+1sq/w8+dqZ04/W/tBAlA0EcroRxLKfsDRzVxQ
	t0q7J1bojXSkhUdEuNIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmG57-0000000AHe4-2lMA;
	Tue, 21 Jul 2026 19:24:45 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmG55-0000000AHdc-2Y3Q
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 19:24:44 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-47c6e9a694bso6642894f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 12:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784661881; x=1785266681; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Xv7RcLIXwcJHJp4KDHhwlbXkkuhNl3KPHg9K6zOoWbw=;
        b=QI4HrFL1UmqXT9GDIKE5KkLkcD8vrLgdPjPoFf/xQbuyyeTZU7F9tdoYr/dXLVnenZ
         SEPFi75VGwmA3qxMaKp9pT6EHhIgpYPnYpr4XIeJEpuhDnGJrk1fKGPOPqwCzIW0T0LP
         Vs/QsMT+J1XObvw35ALu/HUgegvjg4abEW2BCueY8jM9qfWzYJUWDgPBSHQF3gqJqXVq
         kobC/t6izWF2eECRKcTJWu/eBMR6OS6R2nCB3sBaidT2BWWmw42Pej3acTJSJeDx9JIh
         tyL1PkPGNAujJBBWMOOTDOFlL4wNSPHWsZoSvy2T+mRu63cZM/YpnMjRMjWX1Kp2P419
         UI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784661881; x=1785266681;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Xv7RcLIXwcJHJp4KDHhwlbXkkuhNl3KPHg9K6zOoWbw=;
        b=J6eeWgyTrggAK89e1Lc6qTqAW/9MnCQPa/dRbFTBzH4/AllYQHXo7eIkPIRHvvoiB+
         7SVE//iyKeC7tK5gOuIEYXyPHQAsKRVCXyAt2AMWAYLkyOoqumYw4MJSzcB6Fy+trZ1h
         5Ns8aKGa+GlvUTBI24Oa2Yg6D/Y++ZEZgsm+AHbiMHifDFuhvDd1tjbT9JdOCE1d1Gni
         cadD0frZv7bVqMhmn18AOnz9tiCR/40DAJICc9ku/pWpGkot9nROges9ei1gs7c4d9Ns
         l3iKl6kf1YJ1oeAdVtzC8thqewROfSTfr6kFxg63W/CTFe5DDaX7DoCMiwUem+X3LBJA
         zkJg==
X-Forwarded-Encrypted: i=1; AHgh+RptJ71lU6c//cKDeXX5RkgbE4ZuMrliig8sH/vUv8B84GPmQfTtkQbKbu21ocZ3TaByjC+b60FBVoU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHuD/5rCuBwVUUhTeGF/act7G4tIWJ5Tg78yuGC82pqroFIMuq
	luN2YEDGBkX9c9m2o0648Z8GXH8qb1iqB3TxoQvT0lfj2LnsNUvmes5gM0TUXl/eiMqwGvyFgkO
	T7dD7qHI=
X-Gm-Gg: AR+sD12NbjqZZ9fpxxxE1OIzca6bKWQjv5uN1+nrwD8uCDXkTjuyVrlNWvQmsITQtx3
	FEex+PrhdehEVN9Br1N0/dH+TQNMdhbLm888A6elCbgVY7iU4rMlsASVaJsMEBHx+3TobO4Udxp
	EALRw9tG25TFf62wa75H8me4MO2WNPXr8CsWL2jjLtxVsj0zzezBbwkv2sYLyiPzDLZgKxwoZbF
	MJR4TbsV2tIAeTEGSPWb3bhUsY8ZJd3xTUhklICljYiBmawmAZuNlffZCOkOkLjuaFIHcGAuoq9
	B9a0qKGj1pX4wziOySTx61vx0snYlp/chg8wbszNp6BjLDUf8uzL9UZmzPjH3AflYhMO8MMbKsn
	KLfuXtwsr0Px0n7OE2nXqMJ+0BKI7fmXwKcjhfuWeR73FL07X0gKIUjSxdOSA+ASY42mfwyUS4i
	IJTsg9q+bYgbab5DI=
X-Received: by 2002:a05:6000:2988:10b0:47f:6981:a04a with SMTP id ffacd0b85a97d-47f6981a22bmr13980470f8f.31.1784661881488;
        Tue, 21 Jul 2026 12:24:41 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.186.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63e49ce4sm41781481f8f.8.2026.07.21.12.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 12:24:40 -0700 (PDT)
Message-ID: <1642e709-df23-43a4-9ac9-2e004e2b3bdc@linaro.org>
Date: Tue, 21 Jul 2026 20:24:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
 <_t1jiMTX3iIXhUkTDz0Cbh_uZhdUK_Y8vlIwxt1VNRbuKuRnpVCWabal-b4AuFrVaKrDnQSFOWtDn6-VCbS3DA==@protonmail.internalid>
 <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
 <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
 <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
 <wzsAes-UM4_r8scRyy_yhd39ZdxvT8W9VroVPOGWABLsw7MqR05o_z2MwhgiC1gTSBgfVHpXWADbsqoIOsR0Uw==@protonmail.internalid>
 <ec3d6035-d4de-4e38-8c72-b29a04b263ae@linaro.org>
 <1f128571-ed46-4a60-9594-74fdd5f440d0@kernel.org>
 <864c13a0-a52c-43f4-9d94-646bf66ba31a@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <864c13a0-a52c-43f4-9d94-646bf66ba31a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_122443_673470_1FF6A1F6 
X-CRM114-Status: UNSURE (   9.49  )
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

T24gMjEvMDcvMjAyNiAxNDozNSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+PiAtIGJ1cy10
eXBlIGZyb20gdGhlIG1lZGlhLWNvbnRyb2xsZXIKPj4gwqDCoMKgIEFscmVhZHkgc3BlY2lmaWVk
IHdpdGggY2Ftc3Mgc3RpbGwgYWxpZ25zIHdpdGggUm9iJ3MgZGVjbGFyYXRpb24KPj4gwqDCoMKg
ICJ0aGUgY29uc3VtZXIgZGVmaW5lcyB0aGUgbW9kZSIgc28gSSdtIGNvbWZvcnRhYmxlIHdpdGgg
dGhpcwo+PiDCoMKgwqAgY29tcHJvbWlzZSBwb3NpdGlvbi4KPj4gwqDCoMKgIFRoaXMgd2lsbCBz
dGlsbCBmYWNpbGl0YXRlIENQSFkgd29yay9tb2RlLXNlbGVjdGlvbiB2aWEKPj4gwqDCoMKgIHBo
eV9vcHMtPmNvbmZpZ3VyZSgpIHdpdGggaG93IHRvIGRlZmluZSB0aGUgQ1BIWSBwYXJ0IFRCRC4K
PiAKPiBBcyBpdCB3YXMgZGlzY3Vzc2VkIHRoZXJlIHNob3VsZCBiZSBubyBwaHkgc3BlY2lmaWMg
aW50ZXJmYWNlcwo+IGJldHdlZW4gdGhpcyBwaHkgZHJpdmVyIGFuZCBDQU1TUyBkcml2ZXIuCj4g
Cj4+IC0gZGF0YS1sYW5lcyA9IDwwIDEgMiAzPiB2YWxpZAo+IAo+IFdvdWxkIGJlIG5pY2UgdG8g
Z2V0IGFuIGFjayBmcm9tIGxpbnV4LW1lZGlhIG1haW50YWluZXJzIG9uIGl0LgoKT0sgc28gY2xl
YXJseSB0aGUgY29uc2Vuc3VzIEkgdGhvdWdodCB3ZSBoYWQgcmVhY2hlZCBkb2Vzbid0IGV4aXN0
LgoKVmlub2QgSSB3b3VsZCBhc2sgdG8gbWVyZ2UgdGhpcyBzZXJpZXMgYXMtaXMuCgotLS0KYm9k
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
