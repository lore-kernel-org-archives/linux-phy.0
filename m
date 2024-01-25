Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37E14C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 07:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6yCUICDrqHebdLBkH+oBg9I1zYvoEYHGHZ9cxkXAVEA=; b=sxO3Q8VHectoyl7tFSxbmJsAy3
	jPbxBtFLDY/H2/BjKTLoDKmKDFxJimlctFXVI57djA70UT/mgzw2gD7gWW9OsPGIJuHQR1gWgQvAD
	Gp0ywpIPVQOqysGvIIvLDpiaRtUqCcgpMrwIAT6VK8eDGCE3jnf6LpjFEwDiyacW1l7Eqmem8fGHV
	t+t6ys+4PjxIMC19ZYp2TIUkx7ojnOGX7S4pB//8xJ7uF/QeJBXqbFKOQSEUZFr/FQ759DFRJJXMP
	lGsnm2TcwmQ9A5PFy49ZYt/6HgwlYLZNzTlw0soEeJZadborSBWUQmygdLbNKJ4HGfJpcZ7+7D4S9
	viUGpYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuYP-007ANT-1h;
	Thu, 25 Jan 2024 07:53:41 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuYM-007AME-0N
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 07:53:39 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40e80046246so2287195e9.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 23:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706169214; x=1706774014; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYRx1TvAQfGyLvVsVin1GHvu8ITzf9xdpcm8DHtMUFo=;
        b=lP4Lx8GUgCtFUsoeUkJDnQRmwV3QYBBU69fM7cd03GFNrODY8O1UZ8+VoffjVNdfPI
         TFt2mtrUl4UsATJivdXAjHFS+U+ilC+KVvKp6Om/367mkHL85tRRcvO5Yhd5be3HfbLH
         TR0Z787v70YK7ynWLwUXrJoTjCDX4Ln6hmDAvjt5cAkRUROMdniTsB3L5O0bFsdxI150
         9XaBYMitk5BaheC9KVVUJxLQdjYhF6vKVXb9SSEFoVtx+I/OkyWzGJmNNJIjHuC51pft
         Dm0a9V9JRhpIetyw5gjlzNPH52/wwhrqOfjKgmqV6yD3t+Ea3jrygEhwuf1N4716Zx3s
         vbqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706169214; x=1706774014;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iYRx1TvAQfGyLvVsVin1GHvu8ITzf9xdpcm8DHtMUFo=;
        b=QCOLt16Fa8CEXr+XLrr700QsbyUK1CgQgHtVUBIQgdYjJRKQCJtr15/RuZ+iyUkOV/
         8cedlBtqlGpwb0EWQDyLoAXbpXxq6+PI9SU5ryCjJIaP8BP2t9Wfyz6Ge0YmNP0kKRRQ
         mnnYVvfW0VmA5DVR6lrHLeCIZTaImEXz1Ngv1IBdn3jlC+uVKkuD/lCdqvOwNEsL9nzs
         /GXw86fQai3COYYxRtHlsnadXJwdQEG6nK5aKBM+VUoJ13IoFv7OLFxkbcovTNQN6fjL
         XHL5x4T9ztkxSFv3PHpgYmOkEZ/A43eCw24SDwXCATMiX4FSUwlk8QV5095W6oT4idUQ
         1xlg==
X-Gm-Message-State: AOJu0YxR/Tcr+TrDpVYFVqTksLot0EVkF6Pomco7gwkCDw0fn05c27k8
	dwyEwBl8orCRYjhoVxOcVkj7QCfiruMmVWuGlIQTiGjbFJ5WjEAAkd+bIPDbeJo=
X-Google-Smtp-Source: AGHT+IFB4sW0msAL+NpLgtyBr8Djuh672Yx0WUtzXlzM5hFUfy3/3/hI5lKiAwg9GeCdQZjd0yGcaw==
X-Received: by 2002:a05:600c:220a:b0:40e:44bd:dc39 with SMTP id z10-20020a05600c220a00b0040e44bddc39mr259135wml.84.1706169213711;
        Wed, 24 Jan 2024 23:53:33 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3? ([2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3])
        by smtp.gmail.com with ESMTPSA id l1-20020a05600c4f0100b0040e549c77a1sm1599408wmq.32.2024.01.24.23.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 23:53:33 -0800 (PST)
Message-ID: <aa445a92-e640-4f1d-969c-20cafefcf44e@linaro.org>
Date: Thu, 25 Jan 2024 08:53:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
To: Qiang Yu <quic_qianyu@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_mrana@quicinc.com
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
 <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
 <0a3f486d-0135-454e-9da6-b888e516a39e@quicinc.com>
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
Organization: Linaro Developer Services
In-Reply-To: <0a3f486d-0135-454e-9da6-b888e516a39e@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_235338_168048_5488BEDA 
X-CRM114-Status: GOOD (  10.00  )
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

T24gMjUvMDEvMjAyNCAwMzo1OSwgUWlhbmcgWXUgd3JvdGU6Cj4gCj4gT24gMS8yNC8yMDI0IDQ6
NTggUE0sIG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4+IE9uIDI4LzEyLzIwMjMg
MDY6NDIsIFFpYW5nIFl1IHdyb3RlOgo+Pj4gQWxpZ24gUENJZTAvUENJZTEgUEhZIHNldHRpbmdz
IHdpdGggU004NTUwIGxhdGVzdCBQQ0llIFBIWSBIYXJkd2FyZQo+Pj4gUHJvZ3JhbW1pbmcgR3Vp
ZGUuCj4+Pgo+Pj4gQ2FuIEd1byAoMSk6Cj4+PiDCoMKgIHBoeTogcWNvbTogcW1wLXBjaWU6IFVw
ZGF0ZSBQQ0llMSBQSFkgc2V0dGluZ3MgZm9yIFNNODU1MAo+Pj4KPj4+IFFpYW5nIFl1ICgxKToK
Pj4+IMKgwqAgcGh5OiBxY29tOiBxbXAtcGNpZTogVXBkYXRlIFBDSWUwIFBIWSBzZXR0aW5ncyBm
b3IgU004NTUwCj4+Pgo+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBj
aWUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIwICsrKysrKysrKysrKysrLS0tLS0tCj4+
PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLXBjaWUtdjYuaMKgwqDC
oMKgwqAgfMKgIDIgKysKPj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1w
Y3MtcGNpZS12Nl8yMC5owqDCoCB8wqAgMiArKwo+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjcy12Nl8yMC5owqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+Pj4gwqAgLi4u
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy10eHJ4LXY2XzIwLmjCoMKgIHzCoCAy
ICsrCj4+PiDCoCA1IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCj4+Pgo+Pgo+PiAtIE9uIFNNODU1MC1IREs6Cj4+ICMgbHNwY2kKPj4gMDAwMDowMDowMC4w
IFBDSSBicmlkZ2U6IFF1YWxjb21tIERldmljZSAwMTEzCj4+IDAwMDA6MDE6MDAuMCBOZXR3b3Jr
IGNvbnRyb2xsZXI6IFF1YWxjb21tIERldmljZSAxMTA3IChyZXYgMDEpCj4+IDAwMDE6MDA6MDAu
MCBQQ0kgYnJpZGdlOiBRdWFsY29tbSBEZXZpY2UgMDExMwo+PiAwMDAxOjAxOjAwLjAgTm9uLVZv
bGF0aWxlIG1lbW9yeSBjb250cm9sbGVyOiBQaGlzb24gRWxlY3Ryb25pY3MgQ29ycG9yYXRpb24g
RTEyIE5WTWUgQ29udHJvbGxlciAocmV2IDAxKQo+Pgo+Pgo+PiAjIGxzcGNpIC1udnYKPj4gMDAw
MDowMDowMC4wIDA2MDQ6IDE3Y2I6MDExMyAocHJvZy1pZiAwMCBbTm9ybWFsIGRlY29kZV0pCj4+
IMKgwqDCoMKgwqDCoMKgIExua0NhcDrCoMKgwqAgUG9ydCAjMCwgU3BlZWQgOEdUL3MsIFdpZHRo
IHgyLCBBU1BNIEwwcyBMMSwgRXhpdCBMYXRlbmN5IEwwcyA8NHVzLCBMMSA8OHVzCj4+IMKgwqDC
oMKgwqDCoMKgIExua1N0YTrCoMKgwqAgU3BlZWQgNUdUL3MsIFdpZHRoIHgyCj4+IDAwMDE6MDA6
MDAuMCAwNjA0OiAxN2NiOjAxMTMgKHByb2ctaWYgMDAgW05vcm1hbCBkZWNvZGVdKQo+PiDCoMKg
wqDCoMKgwqDCoCBMbmtDYXA6wqDCoMKgIFBvcnQgIzAsIFNwZWVkIDE2R1QvcywgV2lkdGggeDIs
IEFTUE0gTDBzIEwxLCBFeGl0IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPj4gwqDCoMKgwqDC
oMKgwqAgTG5rU3RhOsKgwqDCoCBTcGVlZCA4R1QvcywgV2lkdGggeDIKPj4KPj4gVGVzdGVkLWJ5
OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gIyBvbiBTTTg1NTAt
SERLCj4+Cj4+IC0gT24gU004NTUwLVFSRDoKPj4gIyBsc3BjaQo+PiAwMDowMC4wIFBDSSBicmlk
Z2U6IFF1YWxjb21tIERldmljZSAwMTEzCj4+IDAxOjAwLjAgTmV0d29yayBjb250cm9sbGVyOiBR
dWFsY29tbSBEZXZpY2UgMTEwNyAocmV2IDAxKQo+Pgo+PiAjIGxzcGNpIC1udnYKPj4gwqDCoMKg
wqDCoMKgwqAgTG5rQ2FwOsKgwqDCoCBQb3J0ICMwLCBTcGVlZCA4R1QvcywgV2lkdGggeDIsIEFT
UE0gTDBzIEwxLCBFeGl0IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPj4gwqDCoMKgwqDCoMKg
wqAgTG5rU3RhOsKgwqDCoCBTcGVlZCA1R1QvcywgV2lkdGggeDIKPj4KPj4gVGVzdGVkLWJ5OiBO
ZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gIyBvbiBTTTg1NTAtUVJE
Cj4+Cj4+IFRoYW5rcywKPj4gTmVpbAo+IAo+IEhpIE5laWwsCj4gCj4gVGhhbmtzIGZvciB0ZXN0
aW5nIHRoaXMgcGF0Y2guIEkgdmVyaWZpZWQgb24gYWltMzAwLCBkaWQgbm90IHNlZSBzcGVlZCBk
b3duZ3JhZGUuIExldCBtZSBoYXZlIGEgdHJ5IG9uIEhESzg1NTAuCgpJIGhhdmVuJ3Qgc2VlbiBz
cGVlZCBkb3duZ3JhZGUgZWl0aGVyIG9uIHRoZSBIREs4NTUwCgpOZWlsCgo+IAo+IFRoYW5rcywK
PiBRaWFuZwo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
