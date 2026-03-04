Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53707EDEBFD
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 00:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6rxgu8+7/lOZtB76aO1D3KdAqZCxdidip6dZC3Sw5w=; b=kjn6AiiD/TXly1
	Gxg/Ih1/9hyQ7/5rGnYw0DzHtKikvkz22wpSCmbmI8XDLiQYOlnnK+qYJRlZdBEpjqDS8n8Bz2iNG
	JRJnvtNM72TcGZ05zF5aeJWMmfIA3MgM485Cv553+OaYTxMXJMwR6NbWdd+kVvPcp3y9CA0mIb+Rk
	antU8FyfbYt1/PVsgVYqDUFoG06HYzMvRG0To/aH8Qpwjr6Xs2ynD17adKSQMH1SfWgL0e+/x/PB3
	nFox7XXxWUtxgNT4riyfAWKDy8s/IU2leJC4UkrFo4ddxyeI3QexpsN9gfEotD0r7T5KiC2tBZYOw
	9NshyGj07ktrF/Y9OWUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZh3-0000000G7sF-3C99;
	Wed, 04 Mar 2026 00:02:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZh2-0000000G7ro-0c2E
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 00:02:25 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so73533535e9.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 16:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772582541; x=1773187341; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3A33foWrGV/3pmx7ubiIaObP2mGudnBEt53Evwina6s=;
        b=ywolJbf4IhcIIb0UEjU3iWp+udbMC2soNi2iOn1v9H18uDrYb/25VQry2OTGriGLuz
         KBZAVP+WRHr37QvsUqYAr6DMVwWOh8CsPq62g97wc9CvPnFlDPhy3yZtk+LKQ3nQhGG7
         eWjfo0e4Bk7gcxDos6oMCKgQNyP1IlurHxNhaMPbG7TF6qAxFQK+7b0UCZooVwVYPvni
         GiD30wkTTmmooVQeFXoyNfZcpppJGDCP8R4qfWyx0CUBawsV6okEzN1Ok9W4Kn5/Q99o
         Czi3MqUANrDKevgETcw2CkGqBHRxvQc3jIUUHVtvf4Xseit1anYZL0sAtwJrTor1MLRm
         kU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772582541; x=1773187341;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3A33foWrGV/3pmx7ubiIaObP2mGudnBEt53Evwina6s=;
        b=bznd1y/aG6Sx+mpvd3cQkva464kh0DRv6/F+eAXpAP+v/GTn6RjYegf4WZUzfcsNLY
         zz8+bQbo8waDNUEwbefF3KMPE/8o8xRrmKonet3zTUrQgPiRZNjC3C0vkRSRdcwh6gcu
         4RrtLHgu7DZvps0MdAu6euSFTajqVs8HEn6K5KNuHBIviEfHRmGvO9p+HLXcApz/w/Fd
         e4SUvTrJUr/VGAPjxhBIGNkdRTj26/xr7cBatbDVOSclVXb7mBxHwPSNFlt10xFfCjJ0
         +/JeYulckYVq0T4uowwpjxffqvitjdTiPMpVTN9lIQpTn2lw3ikjeoXC4bZv+WB+bWub
         dbgQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6fjMLxxcftY5hCszEV734cv1Pc5vNFtioTWUnxzV+wO29wDeeHbDowX4xmXmCcIaHKNimM9Oy1k0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLxKrJif/zS6RjHP2CghgEEBnnM7tGbo0865ALOijINMv6N/yK
	MVG4I9QJaA+ZtfNZBWjz5WwrplAbfL0bS7xXxvT9ztXp0bPZq07h2cqMOb+f3xu34fQ=
X-Gm-Gg: ATEYQzzBOCG6xNjOzVOVUD0KEqIDLh5nmTszlOLh5ijm7Y4kl6j6nNufdye6/PrSCdB
	yydyGaTtFytWEO6wkmMOLnqhtVU9Cr7LFY2uLM1Dg9RxHrKKadfMsB/AMDYQuvD3XUR9oD4ArT3
	h5+xalS9okevFULxtgWvvUOA6IlFeRUrTJ/+EnkxdfLBE82YVHAxGJ97T8AVzX1AcZJNY33yK/Z
	/AeUnSIwUwagamd2+V1V+c5A2PtiSIPoSt9wrbR9SbO0QerxyC0w/yDX0CAJakEAxdbbK55JAv6
	Bj9Me4rdSnTXM/rTkoqtlzYUD1hTElhrbw0Pc581F3mEncrTtbjC+zqtj+wHux5Q3ydG+70i16a
	B1wsuByVrGe2jVgeWRGZy3bAkOmQX9Sgim0R0o1rfRd/5A0s2j19392gMCgvvNv4wZF8uDZdqgx
	+Bjh4J03LttYcK1ygMQED/VxhVeviuMxhshIhtALuFw5J0CA5F0zzXdkR8nGSUYKPm
X-Received: by 2002:a05:600c:8105:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-48519840222mr1722765e9.10.1772582541304;
        Tue, 03 Mar 2026 16:02:21 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485187ced3bsm11058185e9.8.2026.03.03.16.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 16:02:20 -0800 (PST)
Message-ID: <39828202-9f48-44f9-9f28-574f141e2ee9@linaro.org>
Date: Wed, 4 Mar 2026 00:02:18 +0000
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
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
 <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
 <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_160224_246470_A10737C5 
X-CRM114-Status: GOOD (  12.37  )
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

T24gMDMvMDMvMjAyNiAyMzo1MCwgVmlqYXkgS3VtYXIgVHVtYXRpIHdyb3RlOgo+IFN1cmUsIEkg
d2FzIGp1c3QgZ2l2aW5nIGFuIGV4YW1wbGUuIEkgaGF2ZW4ndCBsb29rZWQgYSBsb3QgaW50byB0
aGUgCj4gSVBDQVQgLyBjbG9jayBjb3JuZXJzIG9mIHRoaXMgdGFyZ2V0IHBhcnRpY3VsYXJseS4g
U29tZW9uZSBuZWVkcyB0byAKPiBjaGVjayB0aGUgY2xvY2sgcGxhbiwgCgpJIG1lYW4sIGZlZWwg
ZnJlZS4KCnVuZGVyc3RhbmQgd2hpY2ggUEhZcyByZXF1aXJlIHdoaWNoIHBvd2VyIGRvbWFpbnMK
PiBhbmQgYWRkIHRoYXQgaW4gdGhlIGZvbGxvd2luZyBPUFAgdGFibGUgYW5kIGFzIGZvciBzY2Fs
aW5nIHlvdSBjYW4gdXNlIAo+IHRoZSBzYW1lIFJQTUggbGV2ZWxzIGZvciBhbGwgdGhvc2UgcG93
ZXIgZG9tYWlucy4gQnR3LCBpZiB5b3UgaGFkIAo+IGRlZmluZWQgdGhlIGJlbG93IE9QUCB0YWJs
ZSBmb3IgVE9QIEdEU0MsIEkgdGhpbmsgdGhhdCBpcyB3cm9uZy4gSXQgb25seSAKPiBoYXMgdHdv
IHBlcmYgc3RhdGVzIChvbiBhbmQgb2ZmKSBhbmQgZG9lc24ndCBuZWVkIE9QUCBzY2FsaW5nLiBJ
ZiB5b3UgCj4gbG9vayBhdCB0aGUgSXJpcyBkcml2ZXIsIHRoZXkgbGluayBvbmx5IHRoZSBteGMg
YW5kIG1tY3ggcG93ZXIgZG9tYWlucyAKPiB0byB0aGUgT1BQIHRhYmxlIHVzaW5nICdQRF9GTEFH
X1JFUVVJUkVEX09QUCwgbm90IHRoZSBHRFNDcy4KPj4KPj4gK8KgwqDCoCBjc2lwaHlfb3BwX3Rh
YmxlOiBvcHAtdGFibGUtY3NpcGh5IHsKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAi
b3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIG9wcC0zMDAwMDAw
MDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAw
MDAwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhw
ZF9vcHBfbG93X3N2c19kMT47Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDC
oMKgwqDCoCBvcHAtNDAwMDAwMDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BwLWh6
ID0gL2JpdHMvIDY0IDw0MDAwMDAwMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1
aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+PiArwqDCoMKgwqDCoMKgwqAgfTsK
Pj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgb3BwLTQ4MDAwMDAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NDgwMDAwMDAwPjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPjsKPj4gK8Kg
wqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4KPj4gLS0tCj4+IGJvZCAKClllcywgd2Ug
c2hvdWxkIHNjYWxlIHRoZSBNWCosIHRoYXQncyBpbmNvcnJlY3QuCgpjc2lwaHlfbXhjX29wcF90
YWJsZTogb3BwLXRhYmxlLWNzaXBoeS1teGMgewogICAgIGNvbXBhdGlibGUgPSAib3BlcmF0aW5n
LXBvaW50cy12MiI7CgogICAgIG9wcC0zMDAwMDAwMDAgewogICAgICAgICBvcHAtaHogPSAvYml0
cy8gNjQgPDMwMDAwMDAwMD47CiAgICAgICAgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBf
bG93X3N2c19kMT4sCiAgICAgICAgICAgICAgICAgICAgICAgICA8JnJwbWhwZF9vcHBfbG93X3N2
c19kMT47CiAgICAgfTsKCiAgICAgb3BwLTQwMDAwMDAwMCB7CiAgICAgICAgIG9wcC1oeiA9IC9i
aXRzLyA2NCA8NDAwMDAwMDAwPjsKICAgICAgICAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29w
cF9sb3dfc3ZzPiwKICAgICAgICAgICAgICAgICAgICAgICAgIDwmcnBtaHBkX29wcF9sb3dfc3Zz
PjsKICAgICB9OwoKICAgICBvcHAtNDgwMDAwMDAwIHsKICAgICAgICAgb3BwLWh6ID0gL2JpdHMv
IDY0IDw0ODAwMDAwMDA+OwogICAgICAgICByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xv
d19zdnM+LAogICAgICAgICAgICAgICAgICAgICAgICAgPCZycG1ocGRfb3BwX2xvd19zdnM+Owog
ICAgIH07Cn07Cgpjc2lwaHlfbXhhX29wcF90YWJsZTogb3BwLXRhYmxlLWNzaXBoeS1teGEgewog
ICAgIGNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7CgogICAgIG9wcC0zMDAwMDAw
MDAgewogICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47CiAgICAgICAgIHJl
cXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2c19kMT4sCiAgICAgICAgICAgICAgICAg
ICAgICAgICA8JnJwbWhwZF9vcHBfbG93X3N2c19kMT47CiAgICAgfTsKCiAgICAgb3BwLTQwMDAw
MDAwMCB7CiAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NDAwMDAwMDAwPjsKICAgICAgICAg
cmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwKICAgICAgICAgICAgICAgICAg
ICAgICAgIDwmcnBtaHBkX29wcF9sb3dfc3ZzPjsKICAgICB9OwoKICAgICBvcHAtNDgwMDAwMDAw
IHsKICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDw0ODAwMDAwMDA+OwogICAgICAgICByZXF1
aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+LAogICAgICAgICAgICAgICAgICAgICAg
ICAgPCZycG1ocGRfb3BwX2xvd19zdnM+OwogICAgIH07Cn07Cgpjc2lwaHkwOiBwaHlAYWNlNDAw
MCB7CiAgICAgcG93ZXItZG9tYWlucyA9IDwmcnBtaHBkIFJQTUhQRF9NWEM+LAogICAgICAgICAg
ICAgICAgICAgICA8JnJwbWhwZCBSUE1IUERfTU1DWD47CiAgICAgb3BlcmF0aW5nLXBvaW50cy12
MiA9IDwmY3NpcGh5X214Y19vcHBfdGFibGU+OwogICAgIC4uLgp9OwoKY3NpcGh5NDogcGh5QGFj
ZWMwMDAgewogICAgIHBvd2VyLWRvbWFpbnMgPSA8JnJwbWhwZCBSUE1IUERfTVhBPiwKICAgICAg
ICAgICAgICAgICAgICAgPCZycG1ocGQgUlBNSFBEX01NQ1g+OwogICAgIG9wZXJhdGluZy1wb2lu
dHMtdjIgPSA8JmNzaXBoeV9teGFfb3BwX3RhYmxlPjsKICAgICAuLi4KfTsKCi0tLQpib2QKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
