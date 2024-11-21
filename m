Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 266F4D6E2A4
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 10:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0s/ThKY3UFxvBHRfjIItK+H7odL82XYEilTSxf9rWM=; b=eY31a4FYvLVpzK
	QEjYrfr1n9i75e4rhYd3r86R2eszFSZh/0bJk4Bdd9ow3qJFHGW77fiB4ttDKoufRFTYBdUPYowtQ
	aGR6X6j9uDnuqc6yHVGQq3V0TPfY1BJigpHmtZHkaY9GiK7cWyGPVd5OanIW5U8Yq+NgQUWHPuxUO
	5bJpSvoDllNQ2sGr8WNodmXn+rsLJzY5pj4rFL2anym+uGJjU09x8ppQLCLR34QcTdC45q4nJsBK9
	YUxFm0fV1+uLAPMpcZj+dOC01WvEZA/elBDdAs9BhILAM+7nY1rWPJW/5p9+brSfTbXzGmHXERz9D
	0SFsclRzAR5HKWQnR2Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE40L-0000000HIgC-0xYv;
	Thu, 21 Nov 2024 10:01:41 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE40I-0000000HIeg-2By1
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 10:01:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4314e64eba4so268745e9.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Nov 2024 02:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732183296; x=1732788096; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rmhHnsY+RuLEc30H9+/JH1oprc05PF6GVYC48mw3MuY=;
        b=Pftwo3+dmdQI2hizK5OBzFD/n6OqEUGrg0K3A/BImD+7qIlQDIQ8g3OBotqc9WoWJp
         5OSPWFUa+EQgkNaG58tBrTvsE5zj/zlU3jh7Yfq8aLuUlMZV4JCmXuLyRR5gy+NGWlKI
         6WoOASvBBSvIQGG0AvbeELwgIErKotX9hYIe4OWreBaHCPlEuYTsll9HrK/rui5+mUgz
         yPC+dEMCv15PLYH0sJbI7f+bsLlmhrfPiMhYiR5TFqHfqLqPmlfgpQLELWRS3yFmjswR
         IHW00GM/GSe3RXJMHkenH6IeMiKE7FYrfHJ6ERKrxKpW09hrBmED/WFnca9UYyMSVw7Q
         wYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732183296; x=1732788096;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmhHnsY+RuLEc30H9+/JH1oprc05PF6GVYC48mw3MuY=;
        b=tBtAvw8x9Az2uznGMIwNT/ZjOimxPO7pth4ZqDhMscO+Oe1VRcqmwq3wTLnEvADA/I
         LixqTm5BCK20RPUiZ+8OTAUHBEwmVVgi23J5qdB2DOUQDpClJVyDZ88K5PukYkal3x0C
         OneRBya/7J8Nat/4+zd3fv8kTS7fqsuPEmKM/l+1BX8xTUbe6eGXpiI0XZGleLrbrznP
         0aRfcG2mP0DGuwNZyjUBPL7lUENKzCgp/kR9vQnqo4sJQ4CT52Fun82QL64Fj5mCbLWX
         9DXiW8TPpQAM3HmjK9AQkQD+pcZKg3Vqbu00iTAm3blXdAd7MlM3U4CKzQZHM1ttAAh1
         K2Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXhUQ+zomWrQV+OJu6NvtFVFOtBjaNkKZg+jsTJvMhye6Ttj2QSIQonumBtNV2AvobQTVdHdgPQ46Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBN2CoYVjZlukpsdKb/HmXbUnTP4d4dzLyb4VY1U2pZVcWtM8Q
	z4qNuY8hr0UdAxHXzq7EoSkTuKn9BByf5Gf+c2jgOeJNljR++/VbsDqPY3Ft2DM=
X-Gm-Gg: ASbGncvs/edIUSzj8SPj2iVwCNSuGFM8Lyt9yaKKMwa01lowCoGEKZwQDjFPVcs/SLk
	+gWCznQ3a8OXpVyuPjBLdI5sAGbgJYgY/QBxujZjHw9cQmAdUYS6+xHeV3C8iH66/7b5qCJdYtv
	cAw+tGWvhAdcRycn9Txw8SGZwoPPxGj4ltswWIWrn6cDAlkLiDxHW4jZNULjO3GaE3NTkxU/yK9
	6mkid+fBrpdAujNE+maHrdV3zGM430wW8iws2uh+7sWdua6zKw4H6jWwpa5BLIsFcyMzg==
X-Google-Smtp-Source: AGHT+IGid3k2FbUqpmxPUw0L/CPBfwbLK7sR1jKTvwOdIaiv7UN/Cz5YznPz0xaogVOdoCqoXeZsjg==
X-Received: by 2002:a05:600c:444f:b0:430:4db0:3ffd with SMTP id 5b1f17b1804b1-4334f013d8cmr21221655e9.4.1732183294620;
        Thu, 21 Nov 2024 02:01:34 -0800 (PST)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b45f9d99sm51608945e9.13.2024.11.21.02.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2024 02:01:34 -0800 (PST)
Message-ID: <26392a7f-82c6-4b7b-829e-76f3d78115d1@linaro.org>
Date: Thu, 21 Nov 2024 11:01:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
To: Xin Liu <quic_liuxin@quicinc.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
 quic_sayalil@quicinc.com
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-2-quic_liuxin@quicinc.com>
 <d9c3dc82-24e5-465d-bd1c-7a7c97e17136@kernel.org>
 <eae9d141-9c88-4856-9287-2ba6ea6f4a06@kernel.org>
 <242451d6-2b77-417c-bd98-4455f739dc0d@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <242451d6-2b77-417c-bd98-4455f739dc0d@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_020138_558617_23CF2895 
X-CRM114-Status: GOOD (  10.18  )
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

T24gMjEvMTEvMjAyNCAwOTozNywgWGluIExpdSB3cm90ZToKPiAKPiAKPiDlnKggMjAyNC8xMS8y
MSAxNTo0MCwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4+IE9uIDIwLzExLzIwMjQgMTc6
NTcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAxOS8xMS8yMDI0IDAzOjIwLCBY
aW4gTGl1IHdyb3RlOgo+Pj4+IEZyb206IFNheWFsaSBMb2toYW5kZSA8cXVpY19zYXlhbGlsQHF1
aWNpbmMuY29tPgo+Pj4+Cj4+Pj4gRG9jdW1lbnQgdGhlIFVuaXZlcnNhbCBGbGFzaCBTdG9yYWdl
KFVGUykgSG9zdCBDb250cm9sbGVyIG9uIHRoZSBRdWFsY29tbQo+Pj4+IFFDUzYxNSBQbGF0Zm9y
bS4KPj4+Pgo+Pj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yu
a296bG93c2tpQGxpbmFyby5vcmc+Cj4+Pj4gQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
U2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4+Pj4gQ28tZGV2ZWxv
cGVkLWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4+PiBTaWduZWQtb2Zm
LWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4+IFRoYXQncyBhIGJpdCBv
ZGQgU29CIGNoYWluLiBGaXJzdCwgdGhlc2UgYXJlIGp1c3Qgb25lLWxpbmVycy4gU2Vjb25kLAo+
Pj4gd2hvIGF1dGhvcmVkIHRoZSBwYXRjaGVzPwo+PiBUbyBiZSBjbGVhcjogU29CIHJlZ2FyZGlu
ZyBhdXRob3JzaGlwIGlzIGNvcnJlY3QsIGJ1dCByZWdhcmRpbmcgQWNrcyBhbmQKPj4gUmV2aWV3
cyBpcyBub3QuIFNhdmFsaSBkaWQgbm90IHJlY2VpdmUgdGhlc2UgdGFncy4gSWYgc28sIHBsZWFz
ZSBwb2ludAo+PiB0byBsb3JlIGRpc2N1c3Npb24gd2l0aCBpdC4KPj4KPj4gQWxsIHRoaXMgbmVl
ZHMgZml4aW5nLgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50cy4gVGhlc2UgYXJlIHRoZSB0
d28gcmV2aWV3cyBJIHJlY2VpdmVkLiBPbmUgCj4gaXMgeW91ciByZXZpZXdkLWJ5LCBhbmQgdGhl
IG90aGVyIGlzIE1hbml2YW5uYW4ncyBhY2tlZC1ieS5JIGhhdmUgYWxzbyAKPiBjYyBTYXlhbGkg
b24gdGhlIGVtYWlsLgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20v
cnYzdWt6NnJoZ3AzeDMyczc0bmJmdG1vcW1keGp4bW9paTN6c2Q0d2lwbWh1ZHlxN3FAaGE0bDJz
dmw1bGltLwo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMjAyNDEx
MTIwNzU2MTkuMmlsc2Njbm5rNGxlcW1keUB0aGlua3BhZC8KCkkgbWVhbnQgb3JkZXIgb2YgdGFn
cy4gV2hvIHJlY2VpdmVkIHRoZW0/IFlvdSwgbm90IFNheWFsaS4gVGhlbiB0aGV5CmNhbm5vdCBi
ZSBiZWZvcmUgU2F5YWxpIFNvQi4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
