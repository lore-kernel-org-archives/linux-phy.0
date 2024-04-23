Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AB1FC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ou+4xO4Ux2HwD58rWee4CcMDaSfkL5X1tMVsDTijypE=; b=JBmq9qcCTjcc5GG3netcZIjEju
	F3qTnkCNcE7BC6V1UAZ/ugB/mYq/0VpHKHehTrAjFvTmj5NwntHnNKFqYH2V49bXT0wO5/S1rRSSv
	8KxncKmAZEVJAb0lWq5Crwh6qf7j4tAo4qwy44kdDbAfEU2nk6rWz2fXwPJ7OKcJ6gL6OwEooJzJp
	lfOKlBk4WP85BjPRDGuz9RFTr0U4nV7WyxEFDxyc8mM/fkMkWTS25U3vU9cqZHuGTBdOuqTgE1fsP
	nUwr//086j8RgmxRhkyj+D7SKQPgR7sTRm1KEjrTvnCUCJz1N4YRx5xMnECNxmb9t9FgA5bV+j1Ct
	abABDxfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzGpO-00000000EZd-3jMW;
	Tue, 23 Apr 2024 14:08:58 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzGpE-00000000EUZ-09On
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 14:08:57 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41a5b68eceeso16259825e9.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 07:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713881325; x=1714486125; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b1BoVNFpU0aThQ3DZVA1XTVmetSk4HOUliHNQd7s2Lg=;
        b=PWE+H/JE7aRl7rblknznY1gocp2WCAxOGTRTapOfqCJnJSl52Q1N787wYOX3p0fAez
         +l5GAyQWDeu6iUyDxGEGH29dDLpBQHFIx9ZPCBeJijT6TLnDeVxIOJq525ZdfiWNt0nL
         OkPIcdPPPZSMQrK/1b0gtlh1Gp61Pt6qOQPcwfl4NZ6nneh4iHcCI0M+iT9xltO6A8uY
         9vVM9XnBG8eKG0LzhpcV8b9yhkX4XFL9Ugf2FRyFVsu34hoxFoOyqHKnIh7AnrYZoxHp
         nAyrOUzRIlLU7YtdQJkoBMvKq0Mxkx9Te2dXfDCaQrWX5r/mK8OFZJ6sQp6Z/ENQVt6F
         Y6CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713881325; x=1714486125;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b1BoVNFpU0aThQ3DZVA1XTVmetSk4HOUliHNQd7s2Lg=;
        b=R3eGbt3g0FL/R5r6aNilUZbhm7qkRwJefD7v1v3CjvktbboMgRdiTfv691fI9mBL9V
         4v8PJiXghFTucoTLSucuJJewcuvfadL9DKEdwrHzF1aWCj7fbGKBVqrZRPeusEjfR724
         ishUjzDzjBOh4LyhQ+p8gzEYatz79EKeztqVzy8eHemZSS3usredC3+3nQHm1f4JNXbv
         bnhei6KDEfFJEs7q2njV4wQYrPiTk9JmEoAl0iM5zDi+2yylVSnoS5Ti8i8rYJIVV9I2
         LhA23ffDbyNH98gy6RwPQ6bHV5HfbHNlbqli1P0/eLt7phJYotHSj4F8pX19oa0DDdTc
         dtPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAXfIj94WQma7QbwLcwniEacqxQtqqWbmBuFm8/PINBAQdsHBUELMxdnWlyHW6zF1IL1YLATzMfire1cNdOvJspM0K8IwXM67QERa0Bw==
X-Gm-Message-State: AOJu0Yw8ZZwmfNIjCIiY4KrZ9ZPVZ4QrqQwKEK9TP3Z6KuPS3dMjbHvR
	EesGZfAMl081lZLI2W+B6eJ62QugddL+TMc1HGltgpMUCHg2j9ueUdpejKqZeGE=
X-Google-Smtp-Source: AGHT+IG40KDQ1MC6cSzKj7qM2lR4kQsCPwKdIVDQbpX2/BBZIqVwoVg6yVQRHufyqvSCY9BG+P/NYA==
X-Received: by 2002:a5d:4d4b:0:b0:33e:7fbc:caea with SMTP id a11-20020a5d4d4b000000b0033e7fbccaeamr9901956wru.34.1713881325174;
        Tue, 23 Apr 2024 07:08:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:dfee:1061:7e39:bfff? ([2a01:e0a:982:cbb0:dfee:1061:7e39:bfff])
        by smtp.gmail.com with ESMTPSA id q12-20020adfcd8c000000b00343cad2a4d3sm14625332wrj.18.2024.04.23.07.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 07:08:44 -0700 (PDT)
Message-ID: <864063fb-eeae-4eb7-9089-0d98011a0343@linaro.org>
Date: Tue, 23 Apr 2024 16:08:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
 <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
 <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
 <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
 <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
 <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com>
 <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org>
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
In-Reply-To: <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_070848_113756_5281A032 
X-CRM114-Status: GOOD (  18.96  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjMvMDQvMjAyNCAxNTowMywgS29ucmFkIER5YmNpbyB3cm90ZToKPiAKPiAKPiBPbiA0LzUv
MjQgMTI6MTksIEx1Y2EgV2Vpc3Mgd3JvdGU6Cj4+IE9uIEZyaSBBcHIgNSwgMjAyNCBhdCAxMDow
OCBBTSBDRVNULCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IEhpIEx1Y2EsCj4+Pgo+Pj4gT24g
MjkvMDMvMjAyNCAxMDowMiwgTHVjYSBXZWlzcyB3cm90ZToKPj4+PiBPbiBUdWUgTWFyIDI2LCAy
MDI0IGF0IDEwOjAyIFBNIENFVCwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+Pj4gT24gMTYuMDMu
MjAyNCA1OjAxIFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+Pj4+PiBPbiBGcmksIE1hciAx
NSwgMjAyNCBhdCAwNjozNToxNVBNICswMTAwLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+Pj4+
PiBPbiAxNS8wMy8yMDI0IDE4OjE5LCBMdWNhIFdlaXNzIHdyb3RlOgo+Pj4+Pj4+PiBPbiBUaHUg
RmViIDI5LCAyMDI0IGF0IDI6MDcgUE0gQ0VULCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+Pj4+
Pj4+IFJlZ2lzdGVyIGEgdHlwZWMgbXV4IGluIG9yZGVyIHRvIGNoYW5nZSB0aGUgUEhZIG1vZGUg
b24gdGhlIFR5cGUtQwo+Pj4+Pj4+Pj4gbXV4IGV2ZW50cyBkZXBlbmRpbmcgb24gdGhlIG1vZGUg
YW5kIHRoZSBzdmlkIHdoZW4gaW4gQWx0bW9kZSBzZXR1cC4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBU
aGUgRGlzcGxheVBvcnQgcGh5IHNob3VsZCBiZSBsZWZ0IGVuYWJsZWQgaWYgaXMgc3RpbGwgcG93
ZXJlZCBvbgo+Pj4+Pj4+Pj4gYnkgdGhlIERSTSBEaXNwbGF5UG9ydCBjb250cm9sbGVyLCBzbyBi
YWlsIG91dCB1bnRpbCB0aGUgRGlzcGxheVBvcnQKPj4+Pj4+Pj4+IFBIWSBpcyBub3QgcG93ZXJl
ZCBvZmYuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhlIFR5cGUtQyBNb2RlL1NWSUQgb25seSBjaGFu
Z2VzIG9uIHBsdWcvdW5wbHVnLCBhbmQgVVNCIFNBRkUgc3RhdGVzCj4+Pj4+Pj4+PiB3aWxsIGJl
IHNldCBpbiBiZXR3ZWVuIG9mIFVTQi1Pbmx5LCBDb21ibyBhbmQgRGlzcGxheVBvcnQgT25seSBz
bwo+Pj4+Pj4+Pj4gdGhpcyB3aWxsIGxlYXZlIGVub3VnaCB0aW1lIHRvIHRoZSBEUk0gRGlzcGxh
eVBvcnQgY29udHJvbGxlciB0bwo+Pj4+Pj4+Pj4gdHVybiBvZiB0aGUgRGlzcGxheVBvcnQgUEhZ
Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFRoZSBwYXRjaHNldCBhbHNvIGluY2x1ZGVzIGJpbmRpbmdz
IGNoYW5nZXMgYW5kIERUIGNoYW5nZXMuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhpcyBoYXMgYmVl
biBzdWNjZXNzZnVsbHkgdGVzdGVkIG9uIGFuIFNNODU1MCBib2FyZCwgYnV0IHRoZQo+Pj4+Pj4+
Pj4gVGhpbmtwYWQgWDEzcyBkZXNlcnZlZCB0ZXN0aW5nIGJldHdlZW4gbm9uLVBEIFVTQiwgbm9u
LVBEIERpc3BsYXlQb3J0LAo+Pj4+Pj4+Pj4gUEQgVVNCIEh1YnMgYW5kIFBEIEFsdG1vZGUgRG9u
Z2xlcyB0byBtYWtlIHN1cmUgdGhlIHN3aXRjaCB3b3Jrcwo+Pj4+Pj4+Pj4gYXMgZXhwZWN0ZWQu
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhlIERpc3BsYXlQb3J0IDQgbGFuZXMgc2V0dXAgY2FuIGJl
IGNoZWNrIHdpdGg6Cj4+Pj4+Pj4+PiAkIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvYWUwMTAw
MC5kaXNwbGF5LWNvbnRyb2xsZXIvRFAtMS9kcF9kZWJ1Zwo+Pj4+Pj4+Pj4gwqDCoMKgwqBuYW1l
ID0gbXNtX2RwCj4+Pj4+Pj4+PiDCoMKgwqDCoGRybV9kcF9saW5rCj4+Pj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoCByYXRlID0gNTQwMDAwCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBudW1fbGFuZXMg
PSA0Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEhpIE5laWwsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgdHJpZWQg
dGhpcyBvbiBRQ002NDkwL1NDNzI4MCB3aGljaCBzaG91bGQgYWxzbyBzdXBwb3J0IDQtbGFuZSBE
UCBidXQgSQo+Pj4+Pj4+PiBoYXZlbid0IGhhZCBhbnkgc3VjY2VzcyBzbyBmYXIuCj4+Pj4+Pj4+
Cj4+Pj4+PiBbLi5dCj4+Pj4+Pj4+IFsgMTc3NS41NjM5NjldIFtkcm06ZHBfY3RybF9saW5rX3Ry
YWluXSAqRVJST1IqIG1heCB2X2xldmVsIHJlYWNoZWQKPj4+Pj4+Pj4gWyAxNzc1LjU2NDAzMV0g
W2RybTpkcF9jdHJsX2xpbmtfdHJhaW5dICpFUlJPUiogbGluayB0cmFpbmluZyAjMSBmYWlsZWQu
IHJldD0tMTEKPj4+Pj4+Pgo+Pj4+Pj4+IEludGVyZXN0aW5nICMxIG1lYW5zIHRoZSA0IGxhbmVz
IGFyZSBub3QgcGh5c2ljYWxseSBjb25uZWN0ZWQgdG8gdGhlIG90aGVyIHNpZGUsCj4+Pj4+Pj4g
cGVyaGFwcyBRQ002NDkwL1NDNzI4MCByZXF1aXJlcyBhIHNwZWNpZmljIHdheSB0byBlbmFibGUg
dGhlIDQgbGFuZXMgaW4gdGhlIFBIWSwKPj4+Pj4+PiBvciBzb21lIGZpeHVwcyBpbiB0aGUgaW5p
dCB0YWJsZXMuCj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBJIHRlc3RlZCB0aGUgc2FtZSBvbiByYjNn
ZW4yIChxY3M2NDkwKSBhIGNvdXBsZSBvZiB3ZWVrcyBhZ28sIHdpdGggdGhlCj4+Pj4+PiBzYW1l
IG91dGNvbWUuIExvb2tpbmcgYXQgdGhlIEFVWCByZWFkcywgYWZ0ZXIgc3dpdGNoaW5nIHRvIDQt
bGFuZSB0aGUKPj4+Pj4+IGxpbmsgdHJhaW5pbmcgaXMgZmFpbGluZyBvbiBhbGwgNCBsYW5lcywg
aW4gY29udHJhc3QgdG8gc3VjY2VlZGluZyBvbmx5Cj4+Pj4+PiBvbiB0aGUgZmlyc3QgMiBpZiB5
b3UgZS5nLiBmb3JnZXQgdG8gbXV4IHRoZSBvdGhlciB0d28uCj4+Pj4+Pgo+Pj4+Pj4gQXMgc3Vj
aCwgbXkgZXhwZWN0YXRpb24gaXMgdGhhdCB0aGVyZSdzIHNvbWV0aGluZyB3cm9uZyBpbiB0aGUg
UU1QIFBIWQo+Pj4+Pj4gKG9yIHBvc3NpYmx5IHJlZHJpdmVyKSBmb3IgdGhpcyBwbGF0Zm9ybS4K
Pj4+Pj4KPj4+Pj4gRG8gd2UgaGF2ZSBhbnkgZG93bnN0cmVhbSB0YWcgd2hlcmUgNGxhbmUgZHAg
d29ya3M/IEknbSB3aWxsaW5nIHRvIGJlbGlldmUKPj4+Pj4gdGhlIFBIWSBzdG9yeS4uCj4+Pj4K
Pj4+PiBKdXN0IHRlc3RlZCBvbiBGYWlycGhvbmUgNSBkb3duc3RyZWFtIGFuZCA0IGxhbmUgYXBw
ZWFycyB0byB3b3JrIHRoZXJlLgo+Pj4+IFRoaXMgaXMgd2l0aCBhbiBVU0ItQyB0byBIRE1JIGFk
YXB0ZXIgdGhhdCBvbmx5IGRvZXMgSERNSS4KPj4+Pgo+Pj4+IEZQNTovICMgY2F0IC9zeXMva2Vy
bmVsL2RlYnVnL2RybV9kcC9kcF9kZWJ1Zwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0ZT0w
eDIwYTUKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGlua19yYXRlPTI3MDAwMAo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBudW1fbGFuZXM9NAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXNvbHV0
aW9uPTI1NjB4MTQ0MEA2MEh6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBjbG9jaz0yNDE1MDBL
SHoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYnBwPTI0Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHRlc3RfcmVxPURQX0xJTktfU1RBVFVTX1VQREFURUQKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
bGFuZV9jb3VudD00Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGJ3X2NvZGU9MTAKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgdl9sZXZlbD0wCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBfbGV2ZWw9
MAo+Pj4+Cj4+Pj4gU291cmNlcyBhcmUgaGVyZToKPj4+PiBodHRwczovL2dlcnJpdC1wdWJsaWMu
ZmFpcnBob25lLnNvZnR3YXJlL3BsdWdpbnMvZ2l0aWxlcy9rZXJuZWwvbXNtLTUuNC8rL3JlZnMv
aGVhZHMvb2RtL3JjL3RhcmdldC8xMy9mcDUKPj4+PiBBbmQgcHJvYmFibHkgbW9yZSBpbXBvcnRh
bnRseSB0ZWNocGFjay9kaXNwbGF5Ogo+Pj4+IGh0dHBzOi8vZ2Vycml0LXB1YmxpYy5mYWlycGhv
bmUuc29mdHdhcmUvcGx1Z2lucy9naXRpbGVzL3BsYXRmb3JtL3ZlbmRvci9vcGVuc291cmNlL2Rp
c3BsYXktZHJpdmVycy8rL3JlZnMvaGVhZHMvb2RtL3JjL3RhcmdldC8xMy9mcDUKPj4+PiBEdHMg
aWYgdXNlZnVsOgo+Pj4+IGh0dHBzOi8vZ2Vycml0LXB1YmxpYy5mYWlycGhvbmUuc29mdHdhcmUv
cGx1Z2lucy9naXRpbGVzL2tlcm5lbC9tc20tZXh0cmEvZGV2aWNldHJlZS8rL3JlZnMvaGVhZHMv
a2VybmVsLzEzL2ZwNQo+Pj4KPj4+IENvdWxkIHlvdSByZXRyeSB3aXRoIHRoaXMgYXBwbGllZCA/
Cj4+Pgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwNDA1MDAwMTExLjE0NTA1
OTgtMS1zd2JveWRAY2hyb21pdW0ub3JnLwo+Pgo+PiBVbmZvcnR1bmF0ZWx5IEkgZG8gbm90IHNl
ZSBhbnkgY2hhbmdlIHdpdGggdGhpcyBvbiBRQ002NDkwIEZhaXJwaG9uZSA1Cj4+IGFuZCA0LWxh
bmUgRFAuCj4gCj4gSG0sIGNvdWxkIHlvdSBsaWtlIGR1bXAgYWxsIHRoZSBQSFkgcmVnaW9ucyB1
cCBhbmQgZG93bnN0cmVhbSB3aXRoIHRoZSBkaXNwbGF5Cj4gY29ubmVjdGVkIChhbmQgbm90aGlu
ZyBjb25uZWN0ZWQpIGFuZCBjb21wYXJlIHRoZW0/CgpZZXMgd291bGQgYmUgZ3JlYXQsIFBIWSBy
ZWdpb25zIGFuZCBEUCByZWdpb25zIGFzIHdlbGwuCgpOZWlsCgo+IAo+IEtvbnJhZAoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
