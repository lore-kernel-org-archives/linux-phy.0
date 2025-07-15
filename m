Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99874C83F22
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDCH2JMCYjtqivYQDlkKT0lil5MtQQrTHZGCLgZHcWc=; b=P668OMMx9ZFwiw
	SUKfiXGrNr8QB2b6JtLDK/zZNeiTcA0Y9+HLhdXiqcnBUoGOaXnHJ7dX7v3z3bds67FhWrgnC48W0
	nRbRshBMyiTZHpr+udFfdaIgxu8R0Bc5MFbgf2e8patmdmC80x6zdnYIvfKos8rL1RWq+lHSLZ7NL
	UwZPanu7fQ25m9Bji0XAiJv7lpTSDSGSSalrHLLL45iUCVHSPN2UwzJ3ftDVeLGwdMVKbmHYGswUN
	DFbpKkK46dT5J0olrYJcjRJu+4ZQI1GpC/2C7nxm/25OReNqnKwIYKnNNAnDczO7IJxQEtMkb6oJo
	VDNYG7aAzGQ0DtvdkEDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcKp-00000004kun-1GiI;
	Tue, 15 Jul 2025 09:52:27 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbpU-00000004eWp-36k9
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 09:20:06 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-558fd84da64so325472e87.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 02:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752571203; x=1753176003; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7HNruVe4qBBDUZL0Lbc5vbGw4m9jJzAK3Orw+77L13s=;
        b=TBkjevS5g1eNweLZfeqdOrUNt12H7EI7mmaKpeN5Iiofahg61BuyhG3k9lQAht63Vp
         nsg510ApflTZwcp6HIryy6WH1+0jw40K5HuAY/WkrgscRqIkBEVS19VFoJBW13pysJ9v
         ApPl4moE60i3tnDNXxlLX9zlVsytASwCSgBgLxsmx71Vm+5Z80n6HZ7OPKnS/CKiq7na
         K1z/YnjFS+sMTofDEhQVMfGd6c2WD5HX4b/bzXbvmUTxzK+X9tmyrIVLaLbwjFLtBJ/t
         Kh0eC/hgqI6JbLpoa0giJjFEpajTSBrFlI61dh+3iE9DcpZwawMoXE2XHc1qjOmezGda
         FrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752571203; x=1753176003;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7HNruVe4qBBDUZL0Lbc5vbGw4m9jJzAK3Orw+77L13s=;
        b=u2TyGa0USy5m2e7e2E2tLIjENumLqHQJIqGhOEnU1uttrikMoziTk+l5RwFnvDZtMk
         PdBz/6808cm1Doq2ilyviWo1WID3rcnJOoB9jVR1tecCPCc37xyItri/N+fIzMHKnR+w
         c4NaZfS1pcqOyPJhyJ8GoMXV66O0ghq1B6vvvX/id1aUHnQBs4v5D8gDxLSpIk2O9zl1
         /UUsttRYJ38oEt0Fcv/jz5Wpts6KTNFlHZ977pvFViCE1IMrwLKNkYS5h55yPvNyDlfn
         nBYo8MsYusy3DwhVjPh/ouZw7u5bLcriSZBpo12IOklpI9wli/lQxqx1coUlYUGnDl4I
         fTxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTvb2rSzBHZk2SASPN5irqlpcunYRacZ24xr7iHkZX4JWlzMXiZp8xsQRMTbIibth5Xq/xWQS6JMU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj5Ew7LSeiCU09uO1WO53wJz9KizRlq/M9yKb6uI5fh+OuedBU
	YHTkgrzV6p2se0uPbO+2ZkrBGRB4RENbTr+oHc2QgLjh2XJ2i9AbMmytjc4e0gYnVpg=
X-Gm-Gg: ASbGncsFUjsln9C+JrM7/l/EvzFwZNGL8ATuSRPFtt1XczLlZrFXlHjAYMjK4opAMsW
	yYXSIGEWesnMQAMbPI8EX2a+jbbl+C7YEuSLJ/+oJqDJsugJEfFBczgKPC5sQgY1ywJ1SN/YpZ0
	8SGiU0koHaHqh4vo35XBBT9gEyaSST8UfBv2ICbl6snY9DZ8WgBTPQ+VsGzt8Ew76Ghviy8p/2x
	Q67pdErxeqmWDxmDbtPZoeVF4z4zB08LViuhQNrQmuv732HOOtenQyekYQbPAa50+Pf0YlEGicQ
	SrPc8gtwUW8LDGa0qNHPuudbkUwJ0dnfT+fM5ukmLO+qxAko3YI5l3GfrUDDZ02Ij/rj1qIhC76
	EWrmGfqk4T0cICEHKmNiQrj6KXyznQin0F6heSQMfBUSSKMhwK5CeuIdh7vAFRmuxI5efrHPD5I
	oCKotB8oKCFO4=
X-Google-Smtp-Source: AGHT+IEtlBg+zNyCSrOBvHI33+JpaeCaJB/UDUCJntM9+i8ejxLCPtnoDTFHXY1bC6tD2cE1QVQIRA==
X-Received: by 2002:a05:6512:3b1f:b0:553:2421:f5e5 with SMTP id 2adb3069b0e04-55a1fdd2b75mr99165e87.9.1752571202789;
        Tue, 15 Jul 2025 02:20:02 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b6f497sm2192227e87.188.2025.07.15.02.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 02:20:02 -0700 (PDT)
Message-ID: <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
Date: Tue, 15 Jul 2025 12:20:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_022004_785975_06192D26 
X-CRM114-Status: GOOD (  15.58  )
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

T24gNy8xNS8yNSAxMjowMSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA3LzE1LzI1IDg6MzUg
QU0sIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPj4gT24gNy8xNS8yNSAwMzoxMywgQnJ5YW4g
TydEb25vZ2h1ZSB3cm90ZToKPj4+IE9uIDE0LzA3LzIwMjUgMTY6MzAsIFZsYWRpbWlyIFphcG9s
c2tpeSB3cm90ZToKPj4+Pj4KPj4+Pj4gSSB0aGluayB0aGF0IGlzIGdlbnVpbmVseSBzb21ldGhp
bmcgd2Ugc2hvdWxkIGhhbmRsZSBpbiBjYW1zcy1jc2lkLmMKPj4+Pj4gbWF5YmUgd2l0aCBzb21l
IG1ldGEtZGF0YSBpbnNpZGUgb2YgdGhlIHBvcnRzL2VuZHBvaW50cy4uCj4+Pj4+Cj4+Pj4KPj4+
PiBUaGlzIGlzIGEgQ1NJUEhZIHByb3BlcnR5LCBhIENTSVBIWSBoYXJkd2FyZSBjb25maWd1cmF0
aW9uIGFuZCBhIHdpcmluZwo+Pj4+IG9mIHNlbnNvcnMgdG8gYSBDU0lQSFkuIFdoZXJlIGlzIHRo
ZSByZWxhdGlvbiB0byBDU0lEIGhlcmU/IFRoZXJlIGlzIG5vLgo+Pj4KPj4+IEFsbCB0aGUgUEhZ
IHJlYWxseSBuZWVkcyB0byBrbm93IGlzIHRoZSAjIG9mIGxhbmVzIGluIGFnZ3JlZ2F0ZSwgd2hp
Y2gKPj4+IHBoeXNpY2FsIGxhbmVzIHRvIG1hcCB0byB3aGljaCBsb2dpY2FsIGxhbmVzIGFuZCB0
aGUgcGl4ZWwgY2xvY2suCj4+Pgo+Pj4gV2Ugc2hvdWxkIGFkZCBhZGRpdGlvbmFsIHN1cHBvcnQg
dG8gdGhlIEtlcm5lbCdzIEQtUEhZIEFQSSBwYXJhbWV0ZXJzCj4+PiBtZWNoYW5pc20gdG8gc3Vw
cG9ydCB0aGF0IHBoeXNpY2FsLXRvLWxvZ2ljYWwgbWFwcGluZyBidXQsIHRoYXQncyBub3QKPj4+
IHJlcXVpcmVkIGZvciB0aGlzIHNlcmllcyBvciBmb3IgYW55IGN1cnJlbnRseSBrbm93IHVwc3Ry
ZWFtIHVzZXIgb2YgQ0FNU1MuCj4+Pgo+Pj4+IFBsZWFzZSBzaGFyZSBhdCBsZWFzdCBhIGRldmlj
ZSB0cmVlIG5vZGUgZGVzY3JpcHRpb24sIHdoaWNoIHN1cHBvcnRzCj4+Pj4gYSBjb25uZWN0aW9u
IG9mIHR3byBzZW5zb3JzIHRvIGEgc2luZ2xlIENTSVBIWSwgbGlrZSBpdCBzaGFsbCBiZSBkb25l
Cj4+Pj4gZXhwZWN0ZWRseS4KPj4+ICZjYW1zcyB7Cj4+PiAgwqDCoMKgwqDCoCBwb3J0QDAgewo+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVzMDFfZXA6IGVuZHBvaW50MCB7Cj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGF0YS1sYW5lcyA9IDwwIDE+Owo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmc2Vuc29yMF9lcD47
Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBj
c2lwaHkwX2xhbmVzMjNfZXA6IGVuZHBvaW50MCB7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZGF0YS1sYW5lcyA9IDwyIDM+Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJlbW90ZS1lbmRwb2ludCA9IDwmc2Vuc29yMV9lcD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4+PiAgwqDCoMKgwqDCoMKgIH07Cj4+PiB9Owo+Pgo+PiBEb24ndCB5b3UgdW5kZXJzdGFu
ZCB0aGF0IHRoaXMgaXMgYnJva2VuPy4uIFRoYXQncyBubyBnb29kLgo+Pgo+PiBQbGVhc2UgbGlz
dGVuIGFuZCByZXJlYWQgdGhlIG1lc3NhZ2VzIGdpdmVuIHRvIHlvdSBhYm92ZSwgeW91ciBwcm9w
b3NlZAo+PiAic29sdXRpb24iIGRvZXMgbm90IHN1cHBvcnQgYnkgZGVzaWduIGEgdmFsaWQgaGFy
ZHdhcmUgc2V0dXAgb2YgdHdvCj4+IHNlbnNvcnMgY29ubmVjdGVkIHRvIHRoZSBzYW1lIENTSVBI
WS4KPj4KPj4gSSB3b3VsZCBwcm9wb3NlIHRvIHN0b3AgZm9yY2UgcHVzaGluZyBhbiB1bmNvcnJl
Y3RhYmxlIGR0IHNjaGVtZSwgaXQKPj4gbWFrZXMgbm8gc2Vuc2UuCj4gCj4gSWYgYWxsIHlvdSdy
ZSBhc2tpbmcgZm9yIGlzIGFuIGFiaWxpdHkgdG8gZ3JhYiBhbiBvZl9ncmFwaCByZWZlcmVuY2UK
PiBmcm9tIHRoZSBjYW1zcyAodjRsMikgZHJpdmVyLCB5b3UgY2FuIHNpbXBseSBkbyBzb21ldGhp
bmcgYWxvbmcgdGhlCj4gbGluZXMgb2Ygb2ZfZ3JhcGhfZ2V0X3JlbW90ZV9wb3J0KHBoeS0+ZGV2
LT5vZl9ub2RlKQo+IAoKSXQncyBub3QgYWJvdXQgdGhlIGRyaXZlciBzcGVjaWZpY3MsIG15IGNv
bW1lbnQgaXMgYWJvdXQgYSBwcm9wZXIKaGFyZHdhcmUgZGVzY3JpcHRpb24gaW4gZHRzIG5vdGF0
aW9uLCBwbGVhc2Ugc2VlIHRoZSBkZXZpY2UgdHJlZSBub2RlCm5hbWVzLgoKLS0gCkJlc3Qgd2lz
aGVzLApWbGFkaW1pcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
