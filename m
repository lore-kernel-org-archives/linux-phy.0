Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B3F4EDEBF7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 22:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5xVALdeXiV38lERUtoxHGfyCEiYskxoth5tPFBGUIY=; b=eRpCmj4yzvi0I+
	JKXi3GCMD1IvxmzKX7UuP8JylnjtlpO/VqDYyCdUqhCQoqE/Jk7/yvCrmNEMfUF1UURssJAAF1V6R
	m0RIOIONBQamOokSXkQSTxEIT/+/YyyTlBhSj8X2vqJCE5xm9M94PgoHOmDpETudFUMUeD0ZxCrZI
	cuCpIbjRflIpooguro6evIOHPP7Db8vKmAz73X9Oj+Oeu21vuqJUxiWqwZsKw2HqyLWcQFAIzqtw9
	MXK3BktZdq7YiThYDCmg3ftlofPOFrii5ogEGwx5c/koIuFz2YwyPlM6eqvRD8yrkomcOcVpfowTu
	9uIfeTW4XsHLfSPc0hkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYcc-0000000G3sM-2v38;
	Tue, 03 Mar 2026 22:53:46 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYca-0000000G3ri-2gna
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 22:53:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-439c6fc2910so89627f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 14:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772578422; x=1773183222; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YS4rmu/Plq/GT8U8U/B/TnIeQy/JnY6psImqbAy1u5E=;
        b=fNhgqP2AamI2OrJnrrJWTqqqYL9fuudvrACzjHP+73Us8mZ+TIeOLo/ILDSWjHcq9G
         xij0+GujDBOfK/k/GPsS1J8GBnGltoNzWGTp7WKjni0C9WTlmdikvmwO2n0IfZsmrERa
         mVk1y6A+yFt7YvL99hjEzUYatFm3r9qkwwmUfTFY9W2LGGSWOj/pUipmyMWv6ZW7jdm7
         UYpKYZEXvmktpw5hNJo4/lRZVyRdO1esT+55oK7VGNk93bKH0Jn+cH4gU44DuNTSL3gX
         ggg0iR74EezB6yyV+LFIBEn6QSeNWAr5eCW7nT5vMJtMPYN7s2ph3IUGRGJcg6ACbCOF
         4tsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772578422; x=1773183222;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YS4rmu/Plq/GT8U8U/B/TnIeQy/JnY6psImqbAy1u5E=;
        b=iaYORgI2fSJzh8NiaRTcWTeTId4ii8j0VaxNKD/gHSXKZnGHChir53L5i0/7L0/7T0
         sScvocH4qwq802kJr7yTtepHBWt/czk6kM3X6bZw8jgMnfG+4vDxVHkwcIELUUw4GG/E
         j2B7vVjS4+RceCt9mP6XxDjOQpZ+mo6wpQudalQzBLyD8rsxl6PF8+noRWOochJt7hne
         SX5AuW4Mx5x5SkSYW5NGhiz8+TNLP095Ip1FmjYt21X56Ga/kxUQHRjE4NEKgSYbGiyX
         gOLg4A3lZP5oFChIGouEmy667V3u6uehhSFWTKtx0caUF+Nb9tdgrgqe3UPLvUz/RQnf
         Pe5A==
X-Forwarded-Encrypted: i=1; AJvYcCX29Eaq0C5E7Tr4Yp20yhRpPQIYxuo8w/m/WkA0B6uPsIh8Qn7IjMe0Pj8cUsm5z7qPD9IH8Ciph5o=@lists.infradead.org
X-Gm-Message-State: AOJu0YzY184o44wkJN8Xs424m/UpYBGn9AmEXJgJf6WzHybAADUcyJPc
	v8IVTiaDd/VQP052JzKchZ1axlWGeFihbSlYv9ku+Ux36R9xXBbEq29ADCIR/tpfae4=
X-Gm-Gg: ATEYQzyANaURCPeUkL7lE3t0Jl8N/LL/XA4iE8k1O6Nad21m8m+etwSaYTu0CXaOE01
	7lLLGK3YWPI33OQvKogD8V3BHIaaSdktvSW55Ele4KEuutlFZ0/M0o3RbM9tQKWzdraIN3Bi9i0
	12pLFKsD3G1f71jsuiPMb2ORdTeDRGx9sstlHMz8X2MmvPltIC5ofvz/1iYWVV/mvWMuz+hpTbj
	iuoNQCRBGsr0UrcIMQqcYSQRSsv7sgRvKE/94mb52Vkwi9zDwCyDYlKhzZbpgpvzTmIFNpHyD0p
	tloMLJkonJcvVdZhgDl6OxeX/zCskiid1cU5QwflLT/avyuJSwgdW40sqXAukYsp+anVjAvggP6
	FmerGQc6ATgqWuO+3Zu1RKzPwFkKyTAT5Uy08z+9QyWXh82XgN9hgwKbtDQAN90R2ZhyrKmoogk
	7pUBXPKh5kWbca604gxCW1H5hYlf+6Axh1y9Tsq43/BjIOK7GcUtGNe3yifp3gl0TeRgQnNU4gE
	88=
X-Received: by 2002:a05:6000:2207:b0:439:bc2b:cb50 with SMTP id ffacd0b85a97d-439c7f64eadmr257072f8f.4.1772578422246;
        Tue, 03 Mar 2026 14:53:42 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm20135391f8f.25.2026.03.03.14.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 14:53:40 -0800 (PST)
Message-ID: <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
Date: Tue, 3 Mar 2026 22:53:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_145344_711943_A4FC54CE 
X-CRM114-Status: GOOD (  10.90  )
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

T24gMDMvMDMvMjAyNiAxODo1OCwgVmlqYXkgS3VtYXIgVHVtYXRpIHdyb3RlOgo+Pj4gLSBUSVRB
Tl9UT1BfR0RTQwo+Pj4gLSBNWEMKPj4+IC0gTU1DWAo+Pj4gLSBNWEEgLSBmaXJzdCB0aW1lIEkn
dmUgaGVhcmQgb2YgdGhpcyByYWlsLCBmcm9tIG1lbW9yeSBJIGRvbid0IHJlbWVtYmVyCj4+PiDC
oMKgwqDCoMKgwqDCoMKgIGhhdmluZyBzZWVuIHRoaXMgaW4gaXBjYXQgd2hlbiBJIGNvdWxkIGRv
IHNvLgo+PiBNQ1ggYW5kIE1NQ1ggYXJlIGNvbW1pbmx5IHJlcXVpcmVkIHBvd2VyIGRvbWFpbnMg
YWNyb3NzIHRoZSBQSFlzIGJ1dCBhIAo+PiBzdWJzZXQgb2YgUEhZcyBoYXZlIHRoZSBkZXBlbmRl
bmN5IG9uIE1YQS4KPiBBY3R1YWxseSwgaXQncyBhIGJpdCBtb3JlIGNvbXBsaWNhdGVkIG9uIHRo
aXMgdGFyZ2V0IGFzIAo+IGNhbV9jY19jcGh5X3J4X2Nsa19zcmMgYWxzbyBkZXBlbmRzIG9uIE1Y
QSwgd2hpY2ggbWVhbnMgYWxsIHRoZSBDQkNzIAo+IGNvbm5lY3RlZCB0aGlzIFJDRyBkbyBhcyB3
ZWxsLgoKUmlnaHQgYnV0IHRoYXQncyBzb21ldGhpbmcgdG8gbW9kZWwgaW4gdGhlIGNsb2NrLWNv
bnRyb2xsZXIgdGhlbiBub3QgdGhlIApQSFkuCgppLmUuIGlmIGEgY2xvY2sgZGVwZW5kcyBvbiBN
WEEgdGhlbiB0aGUgY2xvY2sgY29udHJvbGxlciBzaG91bGQgCnJlcHJlc2VudCB0aGF0IGRlcGVu
ZGVuY3kgLSBub3QgdGhlIFBIWSB0aGF0IGRlcGVuZHMgb24gdGhlIGNsb2NrLgoKY2FtY2Mgb24g
aGFtb2EgbG9va3MgbGlrZSB0aGlzCgogICAgICAgICAgICAgICAgIGNhbWNjOiBjbG9jay1jb250
cm9sbGVyQGFkZTAwMDAgewogICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJx
Y29tLHgxZTgwMTAwLWNhbWNjIjsKICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4
MGFkZTAwMDAgMCAweDIwMDAwPjsKICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Z2NjIEdDQ19DQU1FUkFfQUhCX0NMSz4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmJpX3RjeG9fZGl2Mj4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmJp
X3RjeG9fYW9fZGl2Mj4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnNsZWVw
X2Nsaz47CiAgICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZycG1ocGQg
UlBNSFBEX01YQz4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZy
cG1ocGQgUlBNSFBEX01NQ1g+OwogICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWlyZWQtb3Bw
cyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JnJwbWhwZF9vcHBfbG93X3N2cz47CiAgICAgICAgICAgICAgICAgICAgICAg
ICAjY2xvY2stY2VsbHMgPSA8MT47CiAgICAgICAgICAgICAgICAgICAgICAgICAjcmVzZXQtY2Vs
bHMgPSA8MT47CiAgICAgICAgICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0g
PDE+OwogICAgICAgICAgICAgICAgIH07CgpTby4uLiB3ZSBtYXkgbmVlZCB0byBhZGQgTVhBIGhl
cmUsIHByb2JhYmx5IGRvIGJhc2VkIG9uIHdoYXQgeW91J3ZlIHNhaWQgCmJ1dCBJIGJlbGlldmUg
VElUQU5fVE9QX0dEU0MgaXMgdGhlIG9ubHkgcG93ZXItZG9tYWluIHdlIG5lZWQgdG8gbGlzdCAK
Zm9yIHRoZSBQSFlzIHRoZW1zZWx2ZXMsIGFzIHdoYXQgeW91J3ZlIGRlc2NyaWJlZCBhYm92ZSBp
cyBhIGNsb2NrIHBvd2VyIApkZXBlbmRlbmN5IHdoaWNoIHdlIGJhc2ljYWxseSBhbHJlYWR5IGNh
cHR1cmUgaW4gdGhlIGNsb2NrIGNvbnRyb2xsZXIgLSAKYWJzZW50IHRoZSBNWEEgLSB3aGljaCBp
cyBhcHBhcmVudGx5IGFsd2F5cyBvbi4uLgoKU2lkZW5vdGUsIGlzIE1YQSByZXF1aXJlZCBmb3Ig
dmlkZW9jYyB0b28gPwoKICAgICAgICAgICAgICAgICB2aWRlb2NjOiBjbG9jay1jb250cm9sbGVy
QGFhZjAwMDAgewogICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHgx
ZTgwMTAwLXZpZGVvY2MiOwogICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgwYWFm
MDAwMCAwIDB4MTAwMDA+OwogICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZiaV90
Y3hvX2RpdjI+LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1ZJ
REVPX0FIQl9DTEs+OwogICAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwm
cnBtaHBkIFJQTUhQRF9NTUNYPiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8JnJwbWhwZCBSUE1IUERfTVhDPjsKICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVp
cmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2cz4sCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPCZycG1ocGRfb3BwX2xvd19zdnM+OwogICAgICAgICAgICAgICAg
ICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+OwogICAgICAgICAgICAgICAgICAgICAgICAgI3Jl
c2V0LWNlbGxzID0gPDE+OwogICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1j
ZWxscyA9IDwxPjsKICAgICAgICAgICAgICAgICB9OwoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
