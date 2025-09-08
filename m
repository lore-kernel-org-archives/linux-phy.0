Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCB73CAC589
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uvo7GhUF0MV0pisR7gB505QyIIHDLeW3EuzutFBoHGQ=; b=sob+w6muTgPOT/YnOdapqb1RVe
	Su9rNhx2Go0TBUGhhNU9RgvgMAwHhPg/mUXv0jdcZYyLlUPykWOT64geA3YCZ6Q14H9TiAmgAF9tq
	3jehA/7t3pYWHkviMCtsvg7GTo6xZ32bpgIcd65q5K/tnnAQ/SGSJ6thJY5ufmZ6ZSKW0o7FrzSQm
	iIBir9Aa6IDTJq2IJqiE0MngNQZrMZxXcyDEVeoqk/m4cEyc9B38GkXRcNKnTwjPcECKnceN4WfBM
	naUPb/Hc6VCt2RhQq/OcnJUq1DGPSiZWUEXaz+Y4Of8r8ETY0WFDYRjSb1EzMlPAT76plU8HysmZD
	lz0Tp1kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfLu-0000000115A-2GVu;
	Mon, 08 Sep 2025 17:08:26 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvb7a-0000000H41Q-1RWU
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 12:37:23 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45de6490e74so8602155e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 05:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757335041; x=1757939841; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6NFJOGdTOAIrWSGSI9q3EKjG6ufco2aZBuT9TNv9EzI=;
        b=UqdkvMGce8F/0A1ai+RkjzOqQvCBKxF/wGq9FS+cpaXB0IL8HisAHvdnJgx4RwFcwt
         13m8fs9pIy+zpeTo5yNuIUyFLqFr/cBmxB6JAfaTtiA8yRidYlWSu05TGDWsNHauWZI+
         5VOPpiX/CKdN99MqPjeiFKVxXyo1tjE9hvv4Uie1c4Q/OtWgJWY07j9CXOP2lr16sojP
         7ofoX6GGJT2/I2cB9v6Xh+9rqtzs35aumNJlo6j1Q1D/vF2mh9BcBg4Mwk2r3a99Jc+7
         zyfp99nNXhQl80m/rWh7viBMwyli5QCH+Ks/qZtP/QNy62Uin4tsR2phd6D2zLkssMMx
         GlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757335041; x=1757939841;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6NFJOGdTOAIrWSGSI9q3EKjG6ufco2aZBuT9TNv9EzI=;
        b=eXZnfhIpOCC4NyfleHtw2pttmNvvEwdpBjrhpYMCqqETJG5ykXFccMBMWdOtYYq/qU
         2+UiVKs0584kuh8OvUnQrfe4BeB1G5OsmHFobzFuF4gC9ab/qgRZOoBYejyYdwKsmRgW
         lqjrM7z5MHIgkln3yNJllWjIndiBaH5A9mepi3s0WXsEqhjoNr+a8Nj1alw57YlL7xTK
         60kdgyBobSSmRqOfpeqxN7tL7lmtVCtM06uW8el5XqjhuFolpko2589MMhuHpq4wIfEy
         wNPj1d53Cso5fsQLtTdIG3DLe2wVBicB6cLHUNGdulZ58JyC5S/g5qQCK+RJ7LppUepD
         oVtQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6VZVOXY7bvcPRhi8oUYSbhuEtR73MGy0uIt5EuIhiw0fB1aRoNKEPDhpiF9kQaOgQv+5wpSI50K8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOBHOlcJkjid3RnMZ0+0W4f8HGO0q7085sEJ6rdIZQ304im9vF
	rboJszWGelQRMYFG1P90rkqD2F3ObX5U0W/pFOnCQFePcCnry+s56A5kD46A83SXqus=
X-Gm-Gg: ASbGncsjpYiCPZI6XBQ2kC5J3HlgUpWXdgKwHUhPHdYEdRRdgeIcJTGB5bmaH9pZ8+2
	4emMptm/9LDw4i/AhOGzXJtAKsiGG8JKb9Ssj1D7V3JGPw+I3/0+3Z///tcEmQTlf4bgYrAXa1J
	3lq4lA3rT0qT1LnsBd6gGX1FkHWyI0rLvurXTQWq4wEuwd4yh1Chnt1lRo98mu5SXCN5sEe/26f
	uDeupzpsl/Eh7kE07+/PgQrorUkeqDrg/Y9VtRiI5rqvlz1YVfezY4Nh+ZS1aMyvGypf9S6SMRF
	CKvlW6TTd6PxNIe8sm62H1lXjFg+rIs1MgSGLOtRbusiogdrsCFTXSmjMmBZa+WQBpJ4HxnPgCO
	Ff9DQIwrm1Mlnpv5jGtdA04SfaYtAQllzMiQISZAzWKoARuw4rEyRg6rxpIna4ZYPFbSXs6RxFI
	vf1v+AwnxoPg==
X-Google-Smtp-Source: AGHT+IFCx8qWLzEWowJjY2uRE93rwEETbujkQqV4hxx0CGnBG1GMQzaFpRPAyUPxe8RBB4Sd+qTUdw==
X-Received: by 2002:a05:600c:a43:b0:45b:81ad:336 with SMTP id 5b1f17b1804b1-45dddea520dmr85902925e9.16.1757335040676;
        Mon, 08 Sep 2025 05:37:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:61c1:5d31:4427:381b? ([2a01:e0a:3d9:2080:61c1:5d31:4427:381b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3dedea839c1sm19912772f8f.63.2025.09.08.05.37.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 05:37:20 -0700 (PDT)
Message-ID: <7462e29c-7602-45fc-b8f6-31e881ef3fc4@linaro.org>
Date: Mon, 8 Sep 2025 14:37:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_053722_395859_CD617DE3 
X-CRM114-Status: GOOD (  12.14  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDYvMDkvMjAyNSAxMDo0MSwgSmVucyBHbGF0aGUgd3JvdGU6Cj4gT24gMjEuMDguMjUgMTU6
NTMsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBUaGUgVGhpbmtwYWQgVDE0cyBlbWJlZHMgYSB0
cmFuc3BhcmVudCA0bGFuZXMgRFAtPkhETUkgdHJhbnNjZWl2ZXIKPj4gY29ubmVjdGVkIHRvIHRo
ZSB0aGlyZCBRTVAgQ29tYm8gUEhZIDQgbGFuZXMuCj4+Cj4gWy4uLl0KPj4gwqAgLi4uL2R0cy9x
Y29tL3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2nCoMKgwqAgfCA0NCArKysrKysr
KysrKysrKysrKysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4g
Wy4uLl0KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU3ODEwMC1s
ZW5vdm8tdGhpbmtwYWQtdDE0cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4
MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKPj4gaW5kZXggNGNmNjFjMmEzNGUzMTIzM2Ix
YWRjOTMzMzJiY2FiZWYyMmRlM2Y4Ni4uNWI2MmI4YzMxMjM2MzMzNjBmMjQ5ZTNlY2RjOGVhMjNm
NDRlOGUwOSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4MTAw
LWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKPiBbLi4uXQo+PiArJm1kc3Nf
ZHAyIHsKPj4gK8KgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmbWRzc19k
cDJfb3V0IHsKPj4gK8KgwqDCoCBkYXRhLWxhbmVzID0gPDAgMSAyIDM+Owo+PiArfTsKPj4gKwo+
IAo+IEhpIE5laWwsCj4gCj4gc2hvdWxkbid0IG1kc3NfZHAyX291dCBhbHNvIGhhdmUgdGhlIGxp
bmstZnJlcXVlbmNpZXMgcHJvcGVydHk/Cj4gCj4gK8KgIMKgIGxpbmstZnJlcXVlbmNpZXMgPSAv
Yml0cy8gNjQgPDE2MjAwMDAwMDAgMjcwMDAwMDAwMCA1NDAwMDAwMDAwIDgxMDAwMDAwMDA+Owo+
IAo+IE9yIGlzIGl0IHNvbWV0aGluZyB0aGUgYnJpZGdlIGFscmVhZHkgbmVnb3RpYXRlcz8KCk5v
LCBpbmRlZWQgSSdsbCBhZGQgaXQsIGl0IHdpbGwgZmFsbCBiYWNrIHRvIEhCUjIgYW55d2F5IChh
cyBhY3R1YWxseSkgaWYgdGhlIGxpbmsgcXVhbGl0eSBpcyBsb3cuCgpOZWlsCgo+IAo+IHdpdGgg
YmVzdCByZWdhcmRzCj4gCj4gSmVucwo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
