Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BFB4CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 15:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N6YOwnVGuLzaYkX4YG4yAfQD+QZvJJ62GSrclqXvzKc=; b=OVgxWe7JYZsG0eQgYjx+NKOV1t
	41FcOKau/zWQwC0C2LeNl0sDYoEDJb96VpDN4Y3OtCQeoSc8zH2V3BskJdinUsRjMXNlKM0auPWes
	23Mx3+qqK1GDn9qrzXO8nrwcgtH82rPIQWQQCELJWGHBb/YpB7aqk9kmnIJCuwQWHRXx4ZUEMB4Ce
	f0ROwR7uftvgnKavOrwUt6v0lZRlD32C8CTski28w5fHlgJkRBQVWGujNx31fMwuypEFv2Bq2+2ej
	qDCINze3eFt/rvv0KLFRC2x/m6jGAhwJSoXzOd1bWOfZOEWD/poAutgIy2MvY5bficY3M1X34CI0j
	vin0ZU0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETqq-00000002jAq-2ZlG;
	Wed, 07 Oct 2026 15:46:40 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETqm-00000002jA8-3EMi
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 15:46:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-48441a2ba1bso2500981f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 08:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791387995; x=1791992795; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZIEG87PtykDgSmEipVVByUwVuUkH5dnKkndrTa4A8vM=;
        b=uPQ5RqO6+olnoff3UfxqTkRUlHxiAHBhOkFG2sm81iZN5Acn8Tk8TKqpZPVzkCSLPM
         fNt9OypRANp2usumfl7Keii2zj3N9o1UFGwBqJU+TKSSOiftHvfC3ARorDQK7qvopIch
         sBKDojHXJAFOmBPr/wmXd5halNaWueYt3sUojs71wywRb5rfJgA1Rj956jKkypmcdDSL
         vNeDJuA/oqkGgWtuGV07XsmFOr3WLE9YmeiUiVdoUB/tqRcseQXVVamU0nAJmitaimL0
         fQhQwkyX2sYzvEMXswLxprp4gxLhAsk29nnLfcPHzFeONEKaFST3Z4PeZJMAxi/Ght7I
         HhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791387995; x=1791992795;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZIEG87PtykDgSmEipVVByUwVuUkH5dnKkndrTa4A8vM=;
        b=BNYdor+fGNT1YDBAdG9WbBSicezm08sCfuePauDydTuii49a0JR21AMbWlbUY6xTJx
         Mlie6faWUmhql4o2MUmIbsTN6JT14n3bmZIg75+Gt/ibpNVizc+B+RM/ytTgCQNxbIy5
         RZp0GrXqS6sACA/xJdSzkyD1WGC4ml06xPjHzHaksICPKrmvOKszmNnkjZwFudZaF0g7
         DnYzB58pLAbFQKn1ctt+Y5SN0eDphvz3usar1OzraWE0jvSLYxyvK3smpfB+Z6oxUU4u
         WRmuMueQGcP/EG2VmzCdlB3pBoG8vg8FeAbsLgYMjGOom2MwJKZY9wq6s0wDjG6xy/X2
         2rrA==
X-Forwarded-Encrypted: i=1; AKwUvBypUwIQn1oOZmeksCQdQ2RQtieElsK1p2MPg3f7cScjQZ41ZNa+Y2e40ilVHFRn9WhOtNbq3+/v/cs=@lists.infradead.org
X-Gm-Message-State: AFq9FYKYjYc6b9ZZKxwzgNpHcT0p0pzbvVVZKbEsFTcj60fnkcjCC5Rq
	GteIau40R44A8gA9aG/gsnEUSdk+98O3r3mRu2OfWB6PoulsiXkuqLN9ogEVbQsCKto=
X-Gm-Gg: AYBFou2icZwxlx3Rm2IuEslLMn4auV7luAJyRg686UNYUAq3Rw2NAOU/RiO7/D4K42Q
	gnfNcfcxK+11rHFfGCQNauVVOckwsIymeBKLPoHZp/Fn0g9PShnBf7TLgUKmJ0uPf1exTvgzQEF
	LFhF3o276EckwtqaJfT+39kilyGUFdXfQeLSGQh3vtnislMgd/ye6x7DtqFB8vd3bygczWSXHC4
	DBnG0a9LlH2pAB3Ea0q6Py/FAmah1y8o1EgY7ERapeRky3LQdhqhRKnpydUTFyc6Gww11LPCoR7
	mUi/XkSImqKIipqZEdmZSkc+XkfqkYnU/ClYgvhkHWy1rL82+lt7ETa+y6aoxM5BDjX2p+qL2Rc
	5Ll3451JNd0p9NIM0jlSACqEjHqYAWU4FUCyXyh9vRLXSGkeddCs+tcjmC3aCwZglWlxQ5j/3f3
	YBoIuXRn+mI7QrJvSwRpWL0ieZEFV8CDzLVx/K/cb7mQjs30di0Hr6pxCYJNsh2+W7X0TIpI1X9
	GvzeIRH5XH40bGBqTet6CaFXg5qHGw=
X-Received: by 2002:a5d:6f16:0:b0:487:767:b301 with SMTP id ffacd0b85a97d-48c728ac770mr5327147f8f.57.1791387994322;
        Wed, 07 Oct 2026 08:46:34 -0700 (PDT)
Received: from [192.168.151.46] (90-182-211-1.rcp.o2.cz. [90.182.211.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c75b53fb7sm3303784f8f.58.2026.10.07.08.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 08:46:33 -0700 (PDT)
Message-ID: <87cbf5d0-e019-4acb-906b-0030043bd518@linaro.org>
Date: Wed, 7 Oct 2026 17:46:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop unused reset names
To: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20261003093559.199326-1-vkoul@kernel.org>
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
In-Reply-To: <20261003093559.199326-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_084637_427215_F0295F84 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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

T24gMTAvMy8yNiAxMTozNSwgVmlub2QgS291bCB3cm90ZToKPiBDb21taXQgZTM5N2M4NTA3ZTM2
ICgicGh5OiBxY29tOiBxbXAtcGNpZTogQWRkIE5vcmQgR2VuNXgxNiBQQ0llCj4gbXVsdGktUEhZ
IHN1cHBvcnQiKSBhZGRlZCBhIGJ1bmNoIG9mIHJlc2V0IG5hbWVzLCBidXQgYWxzbyBhZGRlZCB0
d28KPiB3aGljaCBhcmUgbm90IGJlaW5nIHVzZWQuCj4gCj4gVGhpcyBsZWFkcyB0byBjb21waWxl
ciB3YXJuaW5nczoKPiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS1tdWx0
aXBoeS5jOjc1MDoyNzogZXJyb3I6IOKAmG5vcmRfcGNpZXBoeV9wb3J0X2Jfbm9jc3JfcmVzZXRf
bOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9
XQo+ICAgIDc1MCB8IHN0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgbm9yZF9wY2llcGh5X3BvcnRf
Yl9ub2Nzcl9yZXNldF9sW10gPSB7Cj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jOjc0NjoyNzogZXJyb3I6IOKAmG5vcmRfcGNp
ZXBoeV9wb3J0X2Ffbm9jc3JfcmVzZXRfbOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJv
cj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+ICAgIDc0NiB8IHN0YXRpYyBjb25zdCBjaGFyICog
Y29uc3Qgbm9yZF9wY2llcGh5X3BvcnRfYV9ub2Nzcl9yZXNldF9sW10gPSB7Cj4gICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn4KPiAKPiBEcm9wIHRoZXNlCj4gCj4gRml4ZXM6IGUzOTdjODUwN2UzNiAoInBoeTogcWNvbTog
cW1wLXBjaWU6IEFkZCBOb3JkIEdlbjV4MTYgUENJZSBtdWx0aS1QSFkgc3VwcG9ydCIpCj4gU2ln
bmVkLW9mZi1ieTogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMgfCA4IC0tLS0tLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgOCBkZWxldGlvbnMoLSkKUmV2aWV3ZWQtYnk6IE5laWwgQXJt
c3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgoKVGhhbmtzLApOZWlsCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
