Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B663EC5B549
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 12:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lOo38nnAK9eiLR9qccmv61Ua+QdZKFavFZt7UmJB6Pc=; b=iqjBEvGmnPEswYsoEDeW1jcXk9
	gPkF/HstE0WXFwrUgZYtE14kGj7V/ZLhASOq2p0lZgttcbNuQJZXf7A3icJnllbI2zbnx29Th4Fav
	h0HVEXAPb96bpQwfKuUIRVh1YE9W7asAQgI+Ga3tF/ZNJ/CSbpzo5xeUVy8Fdd+viYet5/wngIW3y
	A4H2vMGENWhia8PHNJKqlpD4JtXqB510lGjnMEypVoQ0lPNB4ndavn65See6BAyEvpnMytLL52GTQ
	fTjirvgPJqXvdRqRr+N+6wp5QYtsO58aeuYMJ9sEEyKyKjHnpnp2udKJFM/Gf86T8h1vN2a5Y6Hcs
	MjWPyAYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnGt-0000000DKlm-1DVj;
	Wed, 04 Jun 2025 12:31:07 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnGq-0000000DKlP-0Dj6
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 12:31:05 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3a366843fa6so3611532f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 05:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749040262; x=1749645062; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7yj0zlMR49toHUQXpYH0dEn/fkSQomXHurjcyLF6CYY=;
        b=iX8O7bVK+EGnZzO75Mk98x/4WviRUBEn645HwJJ1JP4ixijoB+iNWULjnlXlYR/4D0
         z6NXpI1Y6r+cC78H3v+p/K62FiU3t2OawXkkhYPQOATqqFzObR/ZIPBdHdKP14XJ5m+d
         +Ab3N6qpI7+IjCIb3MF3Mq9/V1JkfG0+e75rbnOLk6uP7KdPzJiGDRYZaA1Xs6AyY6j6
         K0rrZgCwZYaa3/RvMkBJPO/6crhAM5GkfdLJE/y6mxr4hYu7oOlQLVOyQzQgTv8OGzi/
         DSzo2XRyhp6ST7dZOqD6FSPBpq0IIe+ZCGG2Xs5tfmZ5LIi/YCtNSXYPTpQ3WXincVPZ
         rcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749040262; x=1749645062;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7yj0zlMR49toHUQXpYH0dEn/fkSQomXHurjcyLF6CYY=;
        b=pfq7VBD/hGe6GaPCtqQ3cxAdNsju4+/vVLQ+A1ZMrGAAjw6ZME+Z/SuRMx6hMvTFer
         xUZ5WCW0cNhygoX0SDb/2vRfa3bbDGBUFHf0tnumtwKV7B9N7lGhz75JnTHEqHpsfTx2
         6buh9JjrSA68g9v3wX5qRE2p9OZc6rJL9pKMvXrBfuC3FDIYRDZBf29ET1oSwrtSD8AF
         Ytp+sGi3fHXCVxsgE8vz49XhaBkT2w0Twty4NcV2PS3tnb3uAEtYIiZP3aZOaMsUH80T
         Uv14gSejCZDQZSrJjlSWm8g/xop7qP8KCRl5Fx70PRBaPAFSXm7pXCSyywO2RaTa9UHJ
         dgMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdpBnYbddtvrH03kqNizQI3NJNBqFWffh+wRLgq9EUxSerkjkEWcfyZMYXqRRg784dDId8LAo+n5w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx14XOyjS5TSLosCcZggbTGfJPt/Jfnt6fxbUke9yu/DYVZR115
	lw2A5RCwQfh3TaAjQ2epG4Y6C/RZrtWCKgtoRhzICGEixsuIcw6nqv51L9w32ZMkdV0=
X-Gm-Gg: ASbGncvU1Xn0HJXQU7LsZu+UwLlk55dHT2gekBQzyG/1VVdkt7SqqNjCrmBKxF8asrb
	Q1FKkm6O31/JLGDvlQicdNT9VjyScG2hRXXEvROcYXASEmxXjUBWox7I9NYkyUPqpJ5rUoV8eiT
	sI7j7CHun0JRGhTp6nzRzqP2x6nXhaNIrzEvQtEaJrjm5JBS9pDgYADt8/uBkmXhyymrfmhztjq
	3Fpryv9eZVUG2S6osK3HIt94JGYTHt5TT0V0Xnb9F+4ffl4qK0HC56/KNsh6x003n1zRk08hTVq
	6qFT3SAdnLBswfbw7OquFUxxy07HfQJY5HW8KP4wSCIqvdOVdZKk6qykVw8Q4R3C067HdPxBENt
	cCtXjcckJALMJnZl13HfPAHeZkg==
X-Google-Smtp-Source: AGHT+IHdxMRv0eANYE7IAurtOvGkbnskamym6COdAUNLPO97TgAsV/C0AQYjvjwt6nEMINDfaFGG1w==
X-Received: by 2002:a5d:64e2:0:b0:3a4:e5bc:9892 with SMTP id ffacd0b85a97d-3a51d9305e1mr2186384f8f.21.1749040262472;
        Wed, 04 Jun 2025 05:31:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8? ([2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b7a5sm21840554f8f.15.2025.06.04.05.31.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 05:31:02 -0700 (PDT)
Message-ID: <8d487a50-c253-4559-87f0-d10b21e31eb5@linaro.org>
Date: Wed, 4 Jun 2025 14:31:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
To: Udipto Goswami <quic_ugoswami@quicinc.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
 <80b21999-f69a-4546-8b8a-2acb59df3fa1@quicinc.com>
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
In-Reply-To: <80b21999-f69a-4546-8b8a-2acb59df3fa1@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_053104_103178_FB8781A5 
X-CRM114-Status: GOOD (  20.69  )
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

T24gMDQvMDYvMjAyNSAxMzoyNSwgVWRpcHRvIEdvc3dhbWkgd3JvdGU6Cj4gCj4gCj4gT24gNS8y
Ny8yMDI0IDI6MTIgUE0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBJbnRyb2R1Y2UgYW4gZW51
bSBmb3IgdGhlIFFNUCBDb21ibyBQSFkgbW9kZXMsIHVzZSBpdCBpbiB0aGUKPj4gUU1QIGNvbW1t
b24gcGh5IGluaXQgZnVuY3Rpb24gYW5kIGRlZmF1bHQgdG8gQ09NQk8gbW9kZS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4+
IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyB8IDQx
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDM2
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1jb21iby5jCj4+IGluZGV4IDE4M2NkOWNkMTg4NC4uNzg4ZTRjMDVlYWYy
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
Ywo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+PiBA
QCAtNjEsNiArNjEsMTIgQEAKPj4gwqAgI2RlZmluZSBQSFlfSU5JVF9DT01QTEVURV9USU1FT1VU
wqDCoMKgwqDCoMKgwqAgMTAwMDAKPj4gK2VudW0gcXBoeV9tb2RlIHsKPj4gK8KgwqDCoCBRUEhZ
X01PREVfQ09NQk8gPSAwLAo+IAo+IEhpIE5laWwsCj4gCj4gSSBoYXZlIGEgZG91YnQgaGVyZSwg
c2hvdWxkbid0IHRoaXMgYmUgYWxpZ25lZCB3aXRoIHdoYXQgdHlwZWNfYWx0bW9kZSBoYXMgPwo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2luY2x1ZGUvbGludXgvdXNiL3R5cGVjX2FsdG1vZGUuaD9oPXY2LjE1
I24xMTMKPiAKPiBUaGlzIHBhdGNoIG1hcmtzIENPTUJPIG1vZGUgYXMgMAo+IHdoZW4gdGhlIG11
eF9zZXQgd2hlbiBjYWxsZWQgZnJvbSBwbWljX2dsaW5rX2FsdG1vZGUuYwo+IGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90
cmVlL2RyaXZlcnMvc29jL3Fjb20vcG1pY19nbGlua19hbHRtb2RlLmM/aD12Ni4xNSNuMTYwCj4g
Cj4gdGhlIHN0YXRlIHdpbGwgc3RhcnQgZnJvbSAyIGlmIGknbSBub3Qgd3JvbmcgPwo+IAo+IEZv
ciB0aGUgc2ltaWxhciBpbXBsbWVudGF0aW9uIEkgcmVmZXJyaW5nIHRvIGZzYTQ0ODAuYyB3aGlj
aCBzZWVtcyB0byBiZSB1c2luZyB0aGUgZW51bXMgZnJvbSB0eXBlY19hbHRtb2RlLmMgdGhlcmVm
b3JlIGFza2luZy4KClRob3NlIGVudW1zIGFyZSBsb2NhbCB0byB0aGUgZHJpdmVyLCBub3QgcmVs
YXRlZCB0byBhbHRtb2RlIGJpdHMgYXQgYWxsLAp0aGV5IHJlcHJlc2VudCB0aGUgMyBwb3NzaWJs
ZSBzdGF0ZXMgb2YgdGhlIGNvbWJvIHBoeS4KCk5laWwKCj4gCj4gCj4gVGhhbmtzLAo+IC1VZGlw
dG8KPiAKPj4gK8KgwqDCoCBRUEhZX01PREVfRFBfT05MWSwKPj4gK8KgwqDCoCBRUEhZX01PREVf
VVNCX09OTFksCj4+ICt9Owo+PiArCj4+IMKgIC8qIHNldCBvZiByZWdpc3RlcnMgd2l0aCBvZmZz
ZXRzIGRpZmZlcmVudCBwZXItUEhZICovCj4+IMKgIGVudW0gcXBoeV9yZWdfbGF5b3V0IHsKPj4g
wqDCoMKgwqDCoCAvKiBQQ1MgcmVnaXN0ZXJzICovCj4+IEBAIC0xNTAzLDYgKzE1MDksNyBAQCBz
dHJ1Y3QgcW1wX2NvbWJvIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgbXV0ZXggcGh5X211dGV4Owo+
PiDCoMKgwqDCoMKgIGludCBpbml0X2NvdW50Owo+PiArwqDCoMKgIGVudW0gcXBoeV9tb2RlIGlu
aXRfbW9kZTsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcGh5ICp1c2JfcGh5Owo+PiDCoMKgwqDCoMKg
IGVudW0gcGh5X21vZGUgbW9kZTsKPj4gQEAgLTI1ODksMTIgKzI1OTYsMzMgQEAgc3RhdGljIGlu
dCBxbXBfY29tYm9fY29tX2luaXQoc3RydWN0IHFtcF9jb21ibyAqcW1wLCBib29sIGZvcmNlKQo+
PiDCoMKgwqDCoMKgIGlmIChxbXAtPm9yaWVudGF0aW9uID09IFRZUEVDX09SSUVOVEFUSU9OX1JF
VkVSU0UpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB2YWwgfD0gU1dfUE9SVFNFTEVDVF9WQUw7Cj4+
IMKgwqDCoMKgwqAgd3JpdGVsKHZhbCwgY29tICsgUVBIWV9WM19EUF9DT01fVFlQRUNfQ1RSTCk7
Cj4+IC3CoMKgwqAgd3JpdGVsKFVTQjNfTU9ERSB8IERQX01PREUsIGNvbSArIFFQSFlfVjNfRFBf
Q09NX1BIWV9NT0RFX0NUUkwpOwo+PiAtwqDCoMKgIC8qIGJyaW5nIGJvdGggUU1QIFVTQiBhbmQg
UU1QIERQIFBIWXMgUENTIGJsb2NrIG91dCBvZiByZXNldCAqLwo+PiAtwqDCoMKgIHFwaHlfY2xy
Yml0cyhjb20sIFFQSFlfVjNfRFBfQ09NX1JFU0VUX09WUkRfQ1RSTCwKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgU1dfRFBQSFlfUkVTRVRfTVVYIHwgU1dfRFBQSFlfUkVTRVQgfAo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBTV19VU0IzUEhZX1JFU0VUX01VWCB8IFNXX1VTQjNQSFlfUkVT
RVQpOwo+PiArwqDCoMKgIHN3aXRjaCAocW1wLT5pbml0X21vZGUpIHsKPj4gK8KgwqDCoCBjYXNl
IFFQSFlfTU9ERV9DT01CTzoKPj4gK8KgwqDCoMKgwqDCoMKgIHdyaXRlbChVU0IzX01PREUgfCBE
UF9NT0RFLCBjb20gKyBRUEhZX1YzX0RQX0NPTV9QSFlfTU9ERV9DVFJMKTsKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqAgLyogYnJpbmcgYm90aCBRTVAgVVNCIGFuZCBRTVAgRFAgUEhZcyBQQ1MgYmxv
Y2sgb3V0IG9mIHJlc2V0ICovCj4+ICvCoMKgwqDCoMKgwqDCoCBxcGh5X2NscmJpdHMoY29tLCBR
UEhZX1YzX0RQX0NPTV9SRVNFVF9PVlJEX0NUUkwsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgU1dfRFBQSFlfUkVTRVRfTVVYIHwgU1dfRFBQSFlfUkVTRVQgfAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNXX1VTQjNQSFlfUkVTRVRfTVVYIHwgU1dfVVNCM1BI
WV9SRVNFVCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gKwo+PiArwqDCoMKgIGNhc2Ug
UVBIWV9NT0RFX0RQX09OTFk6Cj4+ICvCoMKgwqDCoMKgwqDCoCB3cml0ZWwoRFBfTU9ERSwgY29t
ICsgUVBIWV9WM19EUF9DT01fUEhZX01PREVfQ1RSTCk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKg
IC8qIGJyaW5nIFFNUCBEUCBQSFkgUENTIGJsb2NrIG91dCBvZiByZXNldCAqLwo+PiArwqDCoMKg
wqDCoMKgwqAgcXBoeV9jbHJiaXRzKGNvbSwgUVBIWV9WM19EUF9DT01fUkVTRVRfT1ZSRF9DVFJM
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNXX0RQUEhZX1JFU0VUX01VWCB8
IFNXX0RQUEhZX1JFU0VUKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiArCj4+ICvCoMKg
wqAgY2FzZSBRUEhZX01PREVfVVNCX09OTFk6Cj4+ICvCoMKgwqDCoMKgwqDCoCB3cml0ZWwoVVNC
M19NT0RFLCBjb20gKyBRUEhZX1YzX0RQX0NPTV9QSFlfTU9ERV9DVFJMKTsKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqAgLyogYnJpbmcgUU1QIFVTQiBQSFkgUENTIGJsb2NrIG91dCBvZiByZXNldCAq
Lwo+PiArwqDCoMKgwqDCoMKgwqAgcXBoeV9jbHJiaXRzKGNvbSwgUVBIWV9WM19EUF9DT01fUkVT
RVRfT1ZSRF9DVFJMLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNXX1VTQjNQ
SFlfUkVTRVRfTVVYIHwgU1dfVVNCM1BIWV9SRVNFVCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBicmVh
azsKPj4gK8KgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgcXBoeV9jbHJiaXRzKGNvbSwgUVBIWV9WM19E
UF9DT01fU1dJX0NUUkwsIDB4MDMpOwo+PiDCoMKgwqDCoMKgIHFwaHlfY2xyYml0cyhjb20sIFFQ
SFlfVjNfRFBfQ09NX1NXX1JFU0VULCBTV19SRVNFVCk7Cj4+IEBAIC0zNjAzLDYgKzM2MzEsOSBA
QCBzdGF0aWMgaW50IHFtcF9jb21ib19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+PiDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9u
b2RlX3B1dDsKPj4gK8KgwqDCoCAvKiBTZXQgUEhZX01PREUgYXMgY29tYm8gYnkgZGVmYXVsdCAq
Lwo+PiArwqDCoMKgIHFtcC0+aW5pdF9tb2RlID0gUVBIWV9NT0RFX0NPTUJPOwo+PiArCj4+IMKg
wqDCoMKgwqAgcW1wLT51c2JfcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgdXNiX25wLCAmcW1w
X2NvbWJvX3VzYl9waHlfb3BzKTsKPj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHFtcC0+dXNiX3Bo
eSkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlIocW1wLT51c2JfcGh5KTsK
Pj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
