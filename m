Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA34C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 16:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ko5fv6oVH32yCZXg9OwA665fXFd0ox889UE3cwUPadU=; b=aeh9k+K0KkKnoCtLizL74v7CFQ
	xcwt2PCCjXHVVOYS4nluHhjeNHTIRFaveGNMY4eY12mcr9wi+MdnLAvL61gPfvmyUuBUZdA+s0rbv
	gRlJX0SQTTDeLjFb2vXafYorSHWwvywkYXCb83wZfnBHw6XNGG/FZHdB8/j8c7YHrjIsPaT5iziNt
	Mx12PJW3zgb/edhf6LHdz7azycGUWLmfqFd0Gl8+n9+plC11uV7ng1KDOcwLqOg5aFSSKuVvcKyuj
	NTfZmaqLcYI3G14NIMJPvykbsERYjrMZtcIeer2pkmkbfsxKxTJFRziBsAzC1cPr9J+CXi0fcP88B
	rzX9vAcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtnP-00000000FAE-47Yd;
	Mon, 21 Jul 2025 16:55:23 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udsjA-000000006mR-21tO
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 15:46:57 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b611665b96so2478520f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 08:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753112814; x=1753717614; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71JdOjhcRzTfEZ2kGP13U0soxm4bQUZhtALxxJcwpGY=;
        b=zUGL8cBnIGtAwDF7HbgA6K2P2p0K/aE/cRce/csvuyMApIYhP4adTb8IUoloRwsJJY
         pvvzKw2kMf/+4eTpqmCTn36jWeHJ2lFc2CTRqVRis6z7nKcX5lQ3QocQ72uzgteMtC7x
         7TEOIt1bPBH7BTRWEEzhtkq6BTANcSqx9B5MwGy0cz0gQeuVQvsGVZa4XMRhkKHhB0N3
         7OFIlYG09sFoIxx3WbC0WFJscl0sRzQvgPa8SjffBQlcKwOKxmLXlmGRWGENMq2VS/pD
         NOU8j/SD0hAjW1nqJag0x71gwxPTdj/eea1LD5AoCrAPncq9Bp3eeRmqwHhdXXbA/Ckz
         sutg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753112814; x=1753717614;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=71JdOjhcRzTfEZ2kGP13U0soxm4bQUZhtALxxJcwpGY=;
        b=B4y3dhH0YQF5hvuoq1J7TRHXO/wcFiippD/Bsq1qLq82kSul68IM3ITt5qmCI3Ye3R
         sZ4APg7+zbsuv1FLaFsH6WQZy0lzHBdHgQH+ZqjpXxaD77HCLGRlNQLC00dWT79YqHkT
         h/czqvMRta9uPM6Qp/jDpg0kgk3MqMrheQzBlsTex+13g9l9AM0yHThLyVTi1p+jtZ4D
         8aP8wknZbdEPRgLw1R8WOFpnevhVjyU2xLIeBGYTf7b8jxGEPzZoLcYnLvPN/BxBkorh
         fPbyR9R4BsqyL78RWTL6IM5i3zZsnWYwsW6JunguSpIoOUJ0MNRnzvkn10M1XyNR1DUY
         mxvg==
X-Forwarded-Encrypted: i=1; AJvYcCVNbEAtmqK5GfglZa0IuZyvAlcUptwiR9j1DE4pB5kgkoJAcfrkJ+hjQ/kwt/fv6dC/GpepLo8VuCA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlkjv83OKG5hwSnG9JEA+/C9XNxvzfsHPnIm8Qz/5pCvN9ce8U
	5nn+kgdiAsMNu3mYf3J1Hbc+heq0PWjOD4wVKVywViArXVvJG5LTNQa/51TYp36Ag/o=
X-Gm-Gg: ASbGncuX7wIru6DFOyfiihXL6uNPyDEXhu3l1/dfzuNFIMMFLNFd4idJbI/3J4eU6tU
	ihFT/qgHghOK+tQSFJFW9J8d7FXOTE07bww+I5vMI9G7NqqoYWWWytWqDKEhk2MqdOH/uQn9XI3
	vgkg1egz2ar2GE5N1pAUtHBzjtvD8QmV2CL+WTQT3U570XE8bzJPaDDH6Dc1m93d5qFHHRxzsn2
	w43O+nRrdEHFCWL/d99rOYvzJC5Q40/LDZjmHVzlUzUnX2/3tudf3fwkOOl1AsLbdEPXX8g7yp3
	tsfeJNs4cF0oKSAxcHUr6CxRYnNtaBXS7PWZMWp3NN7GxKBfjz97fgWrPpctJSgRFKKWrKqqvHD
	XOWFunedSaQHrEIt3qooIMHw+cBA4WdJ4uSgHr1+ElXJKftl19X+kAARi4KrMvH8NkjIDNRLi0l
	w=
X-Google-Smtp-Source: AGHT+IE18IBrQLiihCAuzNQ8PIrN0f+oNCcFrb048tnw4oH4ReNy5YSqf9fO8yU7sBsWjafeYv0hqA==
X-Received: by 2002:a5d:64c1:0:b0:3a6:d967:380e with SMTP id ffacd0b85a97d-3b60e4c521dmr14461783f8f.3.1753112814028;
        Mon, 21 Jul 2025 08:46:54 -0700 (PDT)
Received: from ?IPV6:2001:861:c12:13d0:4146:67eb:7420:1c39? ([2001:861:c12:13d0:4146:67eb:7420:1c39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e8ab7a1sm164661725e9.34.2025.07.21.08.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 08:46:53 -0700 (PDT)
Message-ID: <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
Date: Mon, 21 Jul 2025 17:46:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
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
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
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
In-Reply-To: <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_084656_534119_E9A0A08C 
X-CRM114-Status: GOOD (  25.92  )
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

T24gMTUvMDcvMjAyNSAxMTozMywgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA3LzE1LzI1IDEx
OjIwIEFNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+IE9uIDcvMTUvMjUgMTI6MDEsIEtv
bnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiA3LzE1LzI1IDg6MzUgQU0sIFZsYWRpbWlyIFphcG9s
c2tpeSB3cm90ZToKPj4+PiBPbiA3LzE1LzI1IDAzOjEzLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3Rl
Ogo+Pj4+PiBPbiAxNC8wNy8yMDI1IDE2OjMwLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+
Pj4+Pj4KPj4+Pj4+PiBJIHRoaW5rIHRoYXQgaXMgZ2VudWluZWx5IHNvbWV0aGluZyB3ZSBzaG91
bGQgaGFuZGxlIGluIGNhbXNzLWNzaWQuYwo+Pj4+Pj4+IG1heWJlIHdpdGggc29tZSBtZXRhLWRh
dGEgaW5zaWRlIG9mIHRoZSBwb3J0cy9lbmRwb2ludHMuLgo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4g
VGhpcyBpcyBhIENTSVBIWSBwcm9wZXJ0eSwgYSBDU0lQSFkgaGFyZHdhcmUgY29uZmlndXJhdGlv
biBhbmQgYSB3aXJpbmcKPj4+Pj4+IG9mIHNlbnNvcnMgdG8gYSBDU0lQSFkuIFdoZXJlIGlzIHRo
ZSByZWxhdGlvbiB0byBDU0lEIGhlcmU/IFRoZXJlIGlzIG5vLgo+Pj4+Pgo+Pj4+PiBBbGwgdGhl
IFBIWSByZWFsbHkgbmVlZHMgdG8ga25vdyBpcyB0aGUgIyBvZiBsYW5lcyBpbiBhZ2dyZWdhdGUs
IHdoaWNoCj4+Pj4+IHBoeXNpY2FsIGxhbmVzIHRvIG1hcCB0byB3aGljaCBsb2dpY2FsIGxhbmVz
IGFuZCB0aGUgcGl4ZWwgY2xvY2suCj4+Pj4+Cj4+Pj4+IFdlIHNob3VsZCBhZGQgYWRkaXRpb25h
bCBzdXBwb3J0IHRvIHRoZSBLZXJuZWwncyBELVBIWSBBUEkgcGFyYW1ldGVycwo+Pj4+PiBtZWNo
YW5pc20gdG8gc3VwcG9ydCB0aGF0IHBoeXNpY2FsLXRvLWxvZ2ljYWwgbWFwcGluZyBidXQsIHRo
YXQncyBub3QKPj4+Pj4gcmVxdWlyZWQgZm9yIHRoaXMgc2VyaWVzIG9yIGZvciBhbnkgY3VycmVu
dGx5IGtub3cgdXBzdHJlYW0gdXNlciBvZiBDQU1TUy4KPj4+Pj4KPj4+Pj4+IFBsZWFzZSBzaGFy
ZSBhdCBsZWFzdCBhIGRldmljZSB0cmVlIG5vZGUgZGVzY3JpcHRpb24sIHdoaWNoIHN1cHBvcnRz
Cj4+Pj4+PiBhIGNvbm5lY3Rpb24gb2YgdHdvIHNlbnNvcnMgdG8gYSBzaW5nbGUgQ1NJUEhZLCBs
aWtlIGl0IHNoYWxsIGJlIGRvbmUKPj4+Pj4+IGV4cGVjdGVkbHkuCj4+Pj4+ICZjYW1zcyB7Cj4+
Pj4+ICDCoMKgwqDCoMKgwqAgcG9ydEAwIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNz
aXBoeTBfbGFuZXMwMV9lcDogZW5kcG9pbnQwIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZGF0YS1sYW5lcyA9IDwwIDE+Owo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNvcjBfZXA+Owo+Pj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfTsKPj4+Pj4KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNzaXBoeTBf
bGFuZXMyM19lcDogZW5kcG9pbnQwIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZGF0YS1sYW5lcyA9IDwyIDM+Owo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNvcjFfZXA+Owo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4+IH07Cj4+Pj4KPj4+PiBEb24n
dCB5b3UgdW5kZXJzdGFuZCB0aGF0IHRoaXMgaXMgYnJva2VuPy4uIFRoYXQncyBubyBnb29kLgo+
Pj4+Cj4+Pj4gUGxlYXNlIGxpc3RlbiBhbmQgcmVyZWFkIHRoZSBtZXNzYWdlcyBnaXZlbiB0byB5
b3UgYWJvdmUsIHlvdXIgcHJvcG9zZWQKPj4+PiAic29sdXRpb24iIGRvZXMgbm90IHN1cHBvcnQg
YnkgZGVzaWduIGEgdmFsaWQgaGFyZHdhcmUgc2V0dXAgb2YgdHdvCj4+Pj4gc2Vuc29ycyBjb25u
ZWN0ZWQgdG8gdGhlIHNhbWUgQ1NJUEhZLgo+Pj4+Cj4+Pj4gSSB3b3VsZCBwcm9wb3NlIHRvIHN0
b3AgZm9yY2UgcHVzaGluZyBhbiB1bmNvcnJlY3RhYmxlIGR0IHNjaGVtZSwgaXQKPj4+PiBtYWtl
cyBubyBzZW5zZS4KPj4+Cj4+PiBJZiBhbGwgeW91J3JlIGFza2luZyBmb3IgaXMgYW4gYWJpbGl0
eSB0byBncmFiIGFuIG9mX2dyYXBoIHJlZmVyZW5jZQo+Pj4gZnJvbSB0aGUgY2Ftc3MgKHY0bDIp
IGRyaXZlciwgeW91IGNhbiBzaW1wbHkgZG8gc29tZXRoaW5nIGFsb25nIHRoZQo+Pj4gbGluZXMg
b2Ygb2ZfZ3JhcGhfZ2V0X3JlbW90ZV9wb3J0KHBoeS0+ZGV2LT5vZl9ub2RlKQo+Pj4KPj4KPj4g
SXQncyBub3QgYWJvdXQgdGhlIGRyaXZlciBzcGVjaWZpY3MsIG15IGNvbW1lbnQgaXMgYWJvdXQg
YSBwcm9wZXIKPj4gaGFyZHdhcmUgZGVzY3JpcHRpb24gaW4gZHRzIG5vdGF0aW9uLCBwbGVhc2Ug
c2VlIHRoZSBkZXZpY2UgdHJlZSBub2RlCj4+IG5hbWVzLgo+IAo+IEknbSBhIGxpdHRsZSBsb3N0
IG9uIHdoYXQgeW91J3JlIHRyeWluZyB0byBhcmd1ZSBmb3IuLgo+IAo+IEkgY291bGQgbWFrZSBv
dXQ6Cj4gCj4gMS4gInRoZSBwaHkgc2hvdWxkIGJlIGEgbXVsdGltZWRpYSBkZXZpY2UiCj4gMi4g
IlRoZXJlIGlzIG5vIHBvcnRzIGF0IGFsbCwgd2hpY2ggbWFrZXMgdGhlIGRldmljZSB0cmVlIG5v
ZGUgdW51c2FibGUsCj4gICAgc2luY2UgeW91IGNhbiBub3QgcHJvdmlkZSBhIHdheSB0byBjb25u
ZWN0IGFueSBzZW5zb3JzIHRvIHRoZSBwaHkuIgo+IAo+IEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3Rh
bmQgIzEuLiBtYXliZSB0aGF0IGNvdWxkIGJlIHRoZSBjYXNlIGlmIHRoZSBQSFkKPiBoYXMgYSBt
dWx0aXR1ZGUgb2YgdHVuYWJsZXMgKHdoaWNoIEkgZG9uJ3Qga25vdyBpZiBpdCBkb2VzLCBidXQg
d291bGRuJ3QKPiBiZSBleGFjdGx5IHN1cnByaXNlZCBpZiBpdCBkaWQpIHRoYXQgbWF5IGJlIHVz
ZWNhc2UvcGlwZWxpbmUtc3BlY2lmaWMKPiAKPiBBcyBmb3IgIzIsIEkgZG8gdGhpbmsgaXQgbWFr
ZXMgc2Vuc2UgdG8gY29ubmVjdCB0aGUgc2Vuc29ycyB0byB0aGUgUEhZLAo+IGFzIHRoYXQncyBh
IHJlcHJlc2VudGF0aW9uIG9mIGVsZWN0cmljYWwgc2lnbmFscyB0cmF2ZWxsaW5nIGZyb20gdGhl
Cj4gcHJvZHVjZXIgdG8gdGhlIGNvbnN1bWVyIChwbHVzIHRoZSBkYXRhIHBhc3NlZCBpbiBlLmcu
IGRhdGEtbGFuZXMgaXMKPiBkaXJlY3RseSByZWxhdGVkIHRvIHRoZSBQSFkgYW5kIG5lY2Vzc2Fy
aWx5IGNvbnN1bWVkIGJ5IGl0cyBkcml2ZXIpCgpUaGUgcG9ydC9lbmRwb2ludCBzaG91bGQgcmVw
cmVzZW50IHRoZSBkYXRhIGZsb3csIGFuZCBpZiB0aGUgc2lnbmFsIGlzIHRoZSBmb2xsb3dpbmc6
CgpzZW5zb3IgLT4gY3NpcGh5IC0+IGNzaWQKCmFuZCBpbiBhZGRpdGlvbiB0aGUgImNzaXBoeSIg
Y2FuIGhhbmRsZSB1cCB0byB0d28gc2Vuc29ycyBieSBzcGxpdHRpbmcgdGhlIGxhbmVzLAp0aGVu
IHRoZSBEVCBzaG91bGQgdGFrZSB0aGlzIGluIGFjY291bnQgYW5kIGVmZmVjdGl2ZWx5IHRoZSAi
Y3NpcGh5IiBzaG91bGQgYmUKYW4gZWxlbWVudCBvZiB0aGUgZ3JhcGggYW5kIHNob3VsZCB0YWtl
IGl0J3MgY29uZmlndXJhdGlvbiBmcm9tIHRoZSBEVCBncmFwaAp0byBwcm9wZXJseSBjb25maWd1
cmUgdGhlIGxhbmVzIGNvbmZpZ3VyYXRpb24uCgpXaGlsZSBpdCBjYW4gZmVlbCBzaW1wbGVyIHRv
IHNpbXBseSBtb3ZlIHRoZSBjc2lwaHkgY29kZSBpbnRvIHN0YW5kYWxvbmUKUEhZIGRldmljZSBh
bmQganVzdCByZXBsYWNlIGNhbXNzIGNvZGUgd2l0aCBwaHlfKigpIGNhbGxzLCBpdCBkb2Vzbid0
CnNvbHZlIHRoZSBwcm9wZXIgcmVwcmVzZW50YXRpb24gb24gdGhlIGRhdGEgZmxvdyBhbmQgZG9l
c24ndCBmaXggaG93CnRoZSBjb21ibyBtb2RlIGNvdWxkIGJlIGhhbmRsZWQuCgpUaGUgc29sdXRp
b24gc2hhcmVkIGJ5IFZsYWRpbWlyIChJIHRoaW5rIHRoZSAiY3NpcGh5IiBub2RlIHNob3VsZCBi
ZSBvdXQKb2YgdGhlIGNhbXNzIG5vZGUpLCBzb2x2ZXMgYWxsIHRoaXMgYW5kIHdpbGwgYmUgYWJs
ZSB0byBoYW5kbGUgbW9yZQpjb21wbGV4IHNpdHVhdGlvbnMgd2l0aCBzaGFyZWQgcmVzb3VyY2Vz
IGJldHdlZW4gImNzaXBoeXMiIGFuZCBzdGFydAptb3ZpbmcgZWxlbWVudHMgb3V0IG9mIHRoZSBn
aWdhbnRpYyBjYW1zcyBub2RlLgoKTmVpbAoKCj4gCj4gS29ucmFkCj4gCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
