Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F0FCCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 16:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGV+gnvMOrf9U3OnhL1OsKRC+cwgVG33BzxaRbhgpEw=; b=qqEPmqxoIvnRed8ROhLLlsea6j
	cCIVXQ/KMbBASvzfheGMnMBF3RhPwhdpLA9MYad05PX5PVQCix++JcHZFuAJLWyEwP3r0cFYHit/h
	hCrh/A4/PnFAxQb9CZ1ktk5RSXX/SjCmi/TgDI8voMNg2u9ZXMag555v74WSBJ/h54w1Nuif8WHga
	Z/G5KRAu4KPKIUm7mblnbcINkllt78IB7dohiuVgeKn7zY5soNMHMouaU2nAh5BQu0A2BicBRq/SR
	+Q1CQ0xz/0yrdumYEyHCTpF4b/Gu1cQCuUXMC7iDfqR7nlAlF6Yjyl6chiLIdX0kF2tGORFKKOoV1
	3Lh073TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6tek-00000006hqi-3VFs;
	Thu, 09 Oct 2025 16:38:18 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6teh-00000006hpj-3xdq
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 16:38:17 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e2e6a708fso8279365e9.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 09:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760027894; x=1760632694; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rcBStxH+Wrq6khr9+aB3AtD7KnFNOJRAT4fdx7tuAMo=;
        b=m8bCqQixEk83sw32CmRRy8xaleOccx6mtvhWtOuUlx8lhAP9oH/hFf3r6/2EZFDdgq
         BQdFQsYnZ3odsFIoBM1ukSy/HQ/fsNxedD8I028DyPIRVUXYXcTQw5imBkXo6GhUhMx4
         QG0XQyVRGyBvSj2FsGMQRt5zDxpjyzMhQvvxYJ5VTFIjQlHQoQrDFuMYB/gbloZXodGF
         OGstzVDBVI1GrvGSqY/DsgLV4p3x67oDYeCVsgsVlfgl9w3VbgyeBEzTU7k3b4e8tSFF
         YSJ7mmG+u0QDFaVqXOooGZItJIVchIL4yvM7pX92UvTQyCeWjKwzhEYlei+kJcfj7M+O
         Zt1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760027894; x=1760632694;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rcBStxH+Wrq6khr9+aB3AtD7KnFNOJRAT4fdx7tuAMo=;
        b=CljO91Gf80egicGo5599Swu0ei2QMy6X/ZKP9aF9pu6Qtxw7CdDtiYwHYGR/irDHDL
         PGKCP6nihhptWLUOKbPU/kX4F6qXtcvyeHSWhfFGsYXHq3jl0EkQT2g6gifVvy00wGMG
         ceBXqk5brMnviK1SETdsy9a5iLcExow4LH1wZqiS9QZFXlHizHlXyCe76mW0W12qY+29
         4pSvaRRQeZn4ubc8hRdprI7MiRtvhkvi0yCniu4zFilQBmXLPsqCkp6Dk8GvBAz8/nIF
         qm/B/r8mXmYE5oEekvlZjyiNlZigw5IS0E4kLhqpRkO+q6QKT8LwMWe6pR8y3lU0xuhU
         8XTA==
X-Forwarded-Encrypted: i=1; AJvYcCWHVWMEej+z0Voq0JMb27NMUtCNp+pr1nhD9tJf9h0QdfQrRvrCI5msDLN51GKJ6ONRZiRMTbGgeAs=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq95ru7yW01ldNYzUyO8lycHTAFbq42ah+JhaqY+s89X1DFQWk
	CE14GuYLQnb82ik1Ek3KkwzAZNTJwtL8/TItLXffM3mRsUOMlz7AqMrFAodrWrwJYFU=
X-Gm-Gg: ASbGnctouteBJZmRWoECSIq2HySBrdE3lSemECUXK+uiBawPaYL7foU4zKiPHB8BQkp
	GAsZgBd6UYj1yYSBFHz/3C8c7B+z9pjJze8B1O6LWbfDJFHPU7gWBnWGex8Pk/YswAZpi+X/H/8
	wlLIuaYdZgqQyfFFNzV911xswib1iJc04q49tu2DNaot/wtFhSm9YlumlYIya59A3oPeq0he2m5
	9lNpbcn02zfGUr0S0FK8kQIjG5ZT2Yy4VHBMr+eh3ZzPwciJUFCWA7A0W9ZPghCo6wcIT0pvl9i
	4JLsREWjjykWMVUXXw5oiS4qm5PCYROlp+WYSoATgMg7uDGlkLNDAcqNQ5ZUwZV7IKKG2ZLv7yv
	LokzhPecnmCrhjPLh1w/5S/BjcxC2qeGx4UCXgtzdYuyk4pt4kLcf7jng4mN1IwBODnjeLTnGp0
	Hj2Qlj2/gQmArRNxOFxZQRFCw/UcIMH0vF8sCxsw==
X-Google-Smtp-Source: AGHT+IEgbSrDBPs4jShYRmrpIelnSLdiWABx9BTrJU9pmtlQs9UWdJ8j+RxcwelFukfDfOS44F2Nrg==
X-Received: by 2002:a05:600d:4301:b0:46f:aa8a:d2e7 with SMTP id 5b1f17b1804b1-46faa8ad4bamr35482135e9.4.1760027893916;
        Thu, 09 Oct 2025 09:38:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee? ([2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426cd93f8d8sm196019f8f.2.2025.10.09.09.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 09:38:13 -0700 (PDT)
Message-ID: <6941e754-0c2b-42b5-a01b-54351e8714f1@linaro.org>
Date: Thu, 9 Oct 2025 18:38:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Xilin Wu <sophon@radxa.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <60E11B9D37CEE163+8cf864e4-579f-432a-a507-9711d03776ed@radxa.com>
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
In-Reply-To: <60E11B9D37CEE163+8cf864e4-579f-432a-a507-9711d03776ed@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_093816_015485_A5D0CA52 
X-CRM114-Status: GOOD (  13.30  )
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

T24gMTAvOS8yNSAxNjo1MSwgWGlsaW4gV3Ugd3JvdGU6Cj4gT24gMTAvNi8yMDI1IDk6NTUgUE0s
IE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBUaGUgUU1QIFVTQjMvRFAgQ29tYm8gUEhZIGhvc3Rz
IGFuIFVTQjMgcGh5IGFuZCBhIERQIFBIWSBvbiB0b3AKPj4gb2YgYSBjb21ibyBnbHVlIHRvIHJv
dXRlIGVpdGhlciBsYW5lcyB0byB0aGUgNCBzaGFyZWQgcGh5c2ljYWwgbGFuZXMuCj4+Cj4+IFRo
ZSByb3V0aW5nIG9mIHRoZSBsYW5lcyBjYW4gYmU6Cj4+IC0gMiBEUCArIDIgVVNCMwo+PiAtIDQg
RFAKPj4gLSAyIFVTQjMKPj4KPj4gR2V0IHRoZSBsYW5lcyBtYXBwaW5nIGZyb20gRFQgYW5kIHN0
b3AgcmVnaXN0ZXJpbmcgdGhlIFVTQi1DCj4+IG11eGVzIGluIGZhdm9yIG9mIGEgc3RhdGljIG1v
ZGUgYW5kIG9yaWVudGF0aW9uIGRldGVtaW5lZAo+PiBieSB0aGUgbGFuZXMgbWFwcGluZy4KPj4K
Pj4gVGhpcyBhbGxvd3Mgc3VwcG9ydGluZyBib2FyZHMgd2l0aCBkaXJlY3QgY29ubmVjdGlvbiBv
ZiBVU0IzIGFuZAo+PiBEaXNwbGF5UG9ydCBsYW5lcyB0byB0aGUgUU1QIENvbWJvIFBIWSBsYW5l
cywgbm90IHVzaW5nIHRoZQo+PiBVU0ItQyBBbHRtb2RlIGZlYXR1cmUuCj4+Cj4+IFJldmlld2Vk
LWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+
Cj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8u
b3JnPgo+PiAtLS0KPiAKPiBbLi4uXQo+PiArc3RhdGljIGludCBxbXBfY29tYm9fZ2V0X2R0X2xh
bmVzX21hcHBpbmcoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgZW5kcG9pbnQsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyICpkYXRhX2xh
bmVzLCB1bnNpZ25lZCBpbnQgbWF4LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCAqY291bnQpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0
IGRldmljZV9ub2RlICplcDsKPj4gK8KgwqDCoCBpbnQgcmV0Owo+PiArCj4+ICvCoMKgwqAgZXAg
PSBvZl9ncmFwaF9nZXRfZW5kcG9pbnRfYnlfcmVncyhkZXYtPm9mX25vZGUsIDAsIGVuZHBvaW50
KTsKPj4gK8KgwqDCoCBpZiAoIWVwKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7
Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSBvZl9wcm9wZXJ0eV9jb3VudF91MzJfZWxlbXMoZXAsICJk
YXRhLWxhbmVzIik7Cj4+ICvCoMKgwqAgaWYgKHJldCA8IDApCj4+ICvCoMKgwqDCoMKgwqDCoCBn
b3RvIGVycl9ub2RlX3B1dDsKPj4gKwo+PiArwqDCoMKgICpjb3VudCA9IHJldDsKPj4gKwo+PiAr
wqDCoMKgIHJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KGVwLCAiZGF0YS1sYW5lcyIs
IGRhdGFfbGFuZXMsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG1heF90KHVuc2lnbmVkIGludCwgKmNvdW50LCBtYXgpKTsKPiAKPiBJIHRoaW5rIHRoaXMgc2hv
dWxkIGJlIG1pbl90IGluc3RlYWQgb2YgbWF4X3QuCgpZb3UncmUgcmlnaHQsIHRoYW5rcyBmb3Ig
bm90aWNpbmcgIQoKPiAKPiBXaXRoIHRoaXMgZml4ZWQsCj4gCj4gVGVzdGVkLWJ5OiBYaWxpbiBX
dSA8c29waG9uQHJhZHhhLmNvbT4gIyBxY3M2NDkwLXJhZHhhLWRyYWdvbi1xNmEKPiAKCgpUaGFu
a3MsCk5laWwKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
