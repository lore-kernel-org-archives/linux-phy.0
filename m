Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96395CCA476
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 15:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jfHtX4MFaWWJGHvUss4KSl4BUOKhqahfIDxh2p2DPzQ=; b=Py+w/VK9EHMyQZOx3FiQG0Ewde
	P17axKbca0Be9iQaz4bLUGEETWjuVZF4oeLPGRUWw4tgDDgTG2i54eMR5mVdMQOD/BIQcaTpDiqjI
	ZmIo+JPyTwwnRyEOelrNpzE9CTVkdew1TwzCT3WE0q3oSwhJ1J+GGoYOWZ0GmUrYvVPUoOUZeNmcS
	2E/43M9aRlul7CIhveNBvtAcWjGHKJTmNsL/k9je/ufHMlfTrfioeW5LmQoVlUjosGpyz4jWtrUcG
	TXXqU8yqltZlclH/9kEI9AAE4v1U13dS+FLtD8VK8fU6Xv6o6lJusTRL/N76SJEbWCQDE04FXvIO+
	p02P5hlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7F2X-00000008ozT-1Cqm;
	Fri, 10 Oct 2025 15:28:17 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7F2U-00000008oyi-1Pey
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 15:28:15 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-84827ef386aso160223185a.0
        for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 08:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760110092; x=1760714892; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=02ulIOF15u2TAsSXJa5XZYITsq/3fozin0D7AHbGChU=;
        b=FMSMYhu16H7V9hrAzdKVKYJjjuvG3maxQn1ZRMb0AznL5ydnVpbfBQ9EzGO5mD88od
         s5P/Qh/7g7jhncZpCeef30K29zASOeyqKux347jg1OmDekRmxF6u0htQs7MXQZAr2iKl
         lfSPPXsMnN2+e/yJT0iliJZeulrnTPgUGwO45M+RyWbseK92Yx2f/E8MaLbGUyCgdnba
         mcIMd28Qk4xQXh0jsg5+FSyRLwBogBj3OjwthgC6hv3JfQpXhqfw6Fut8ZK7oBgo7NJh
         CR7Yu8xNFp/JC+wmNWxsDzTJS08dX31t1svEt5uhDNyCGqlqCUG7gxrh38JcxXeQY5Ec
         MzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760110092; x=1760714892;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=02ulIOF15u2TAsSXJa5XZYITsq/3fozin0D7AHbGChU=;
        b=IekMTZSXQ5xxqn9mOgZWj4YZsG2GDYwvczEGvOH5YrwJhDWEwLrwYbsgxgcn3Ljhdz
         7OAZ2NwwFgR9s+ErYHLVMxemG8f9URl73Z59Cgrhx4XkdAHWlPbnY+KgMh0FgPIc3Nar
         eazl/h8Asaw4byn1MXvoCXxzPZWihGuyGyWXA4bjA6qKks9ejl6eY8xqHQyX89gBGWIB
         VyAjUnxWz2c1c//+0afmjR9wkxgi/DU4cf0orzT9DRG+GHMUTnIL8FWmKy5MzkD3nX1L
         vlS+hTu9M66D3WP5R6xO21v2MZmVsSVg7vgeZTurJAoxy2aFojHMJK+UKCNqL2BL49Z0
         tlbg==
X-Forwarded-Encrypted: i=1; AJvYcCW+CCm5sckY5c3/20ZThc54qg2cO3WYIisUwN2eZw7wybPT/kaqZOeKQ5rJeUpacl3kIHP+7Cv+dZQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmPDdYBSz5QTqkdzQWJjFSqF2mWcTbdCNNXNvcEEJoeF9fiMmQ
	rqtz5sNNf0QJec/mLU6XKDA4rHBwYwSbsTEK1MUhER/d7E23AcMlozqRMI45v1qHiScwsL1cXHn
	WVFGp
X-Gm-Gg: ASbGncuFhrbtJnBMwGMdF442j5h94/SZ1DILx9L70bvioe9mnKC+DxVeLBTmT6dEDLh
	yCYRlE9CKbqUPCuaFXW6Mi0usM9VdM6XYxCFbCDwxrrWC7Jmbn70YV3L69NCC4Uj8nSOs0Qmwvj
	FmJo6vAEwWqkeTQY6lWT6xJMDqeut4YxbQCPbTimjzdcfyL11+XYWKMXsbiNIB7tnZ5AE7RyQAA
	jHeAg1MeO8ertFO2ykNUYeF0FsGC5uHHQFzs3tIzP/DNCRUQan9VxEOw8uEaPhSMjVuvhBJqnON
	VVQXgY81iPevRb0bcihSarc3hIwVLypixR0OF2lDYsicdbAswRYwyoDgYLIF6Mcfi4ehunvrdGR
	oZzk6TjUi+lI424pVP2CPfF3sLCJc5LyUSktUfB0fNgBDMxB/02bUN8KFxtmciJTdpM9GA2r7cY
	TAxO8KUK7MEY0il7yeVOvdmQ==
X-Google-Smtp-Source: AGHT+IH8KzPKIJFpE9/fR16Mqofh25U6y+DeqPlrc1MYvlK/oGM8nbRNuChvN6UxIVc3BEBodh8scw==
X-Received: by 2002:a05:620a:198b:b0:810:98c5:5ed2 with SMTP id af79cd13be357-8835651732fmr1781892785a.44.1760110092256;
        Fri, 10 Oct 2025 08:28:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2a00:b5fb:c622:3102? ([2a01:e0a:3d9:2080:2a00:b5fb:c622:3102])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-884a1ca2061sm440735585a.35.2025.10.10.08.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 08:28:11 -0700 (PDT)
Message-ID: <cad1c4c5-d5b4-4f5a-8d97-3c31982a5a42@linaro.org>
Date: Fri, 10 Oct 2025 17:28:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
 <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
 <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
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
In-Reply-To: <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_082814_413530_5C1F9022 
X-CRM114-Status: UNSURE (   8.22  )
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

T24gMTAvMTAvMjUgMTA6NDksIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gT24gMTAvOS8yNSA2OjQy
IFBNLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4gT24gMTAvOC8yNSAxMTozMSwgS29ucmFkIER5
YmNpbyB3cm90ZToKPj4+IE9uIDEwLzYvMjUgMzo1NSBQTSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6
Cj4+Pj4gVGhlIFFNUCBVU0IzL0RQIENvbWJvIFBIWSBob3N0cyBhbiBVU0IzIHBoeSBhbmQgYSBE
UCBQSFkgb24gdG9wCj4+Pj4gb2YgYSBjb21ibyBnbHVlIHRvIHJvdXRlIGVpdGhlciBsYW5lcyB0
byB0aGUgNCBzaGFyZWQgcGh5c2ljYWwgbGFuZXMuCj4+Pj4KPj4+PiBUaGUgcm91dGluZyBvZiB0
aGUgbGFuZXMgY2FuIGJlOgo+Pj4+IC0gMiBEUCArIDIgVVNCMwo+Pj4+IC0gNCBEUAo+Pj4+IC0g
MiBVU0IzCj4+Pj4KPj4+PiBHZXQgdGhlIGxhbmVzIG1hcHBpbmcgZnJvbSBEVCBhbmQgc3RvcCBy
ZWdpc3RlcmluZyB0aGUgVVNCLUMKPj4+PiBtdXhlcyBpbiBmYXZvciBvZiBhIHN0YXRpYyBtb2Rl
IGFuZCBvcmllbnRhdGlvbiBkZXRlbWluZWQKPj4+PiBieSB0aGUgbGFuZXMgbWFwcGluZy4KPj4+
Pgo+Pj4+IFRoaXMgYWxsb3dzIHN1cHBvcnRpbmcgYm9hcmRzIHdpdGggZGlyZWN0IGNvbm5lY3Rp
b24gb2YgVVNCMyBhbmQKPj4+PiBEaXNwbGF5UG9ydCBsYW5lcyB0byB0aGUgUU1QIENvbWJvIFBI
WSBsYW5lcywgbm90IHVzaW5nIHRoZQo+Pj4+IFVTQi1DIEFsdG1vZGUgZmVhdHVyZS4KPj4+Pgo+
Pj4+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5x
dWFsY29tbS5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJt
c3Ryb25nQGxpbmFyby5vcmc+Cj4+Pj4gLS0tCj4gCj4gWy4uLl0KPiAKPj4+PiArZXJyX25vZGVf
cHV0Ogo+Pj4+ICvCoMKgwqAgb2Zfbm9kZV9wdXQoZXApOwo+Pj4KPj4+IF9fZnJlZShkZXZpY2Vf
bm9kZSkKPj4KPj4gd2h5ID8gZXAgaXMgbm90IGFsbG9jYXRlZCwgaXQgZ29lcyB1cCB0bzoKPj4K
Pj4gc3RhdGljIHN0cnVjdCBkZXZpY2Vfbm9kZSAqX19vZl9nZXRfbmV4dF9jaGlsZChjb25zdCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcHJldikKPj4gewo+PiAgwqDC
oMKgwqBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5leHQ7Cj4+Cj4+ICDCoMKgwqDCoGlmICghbm9kZSkK
Pj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiBOVUxMOwo+Pgo+PiAgwqDCoMKgwqBuZXh0ID0gcHJl
diA/IHByZXYtPnNpYmxpbmcgOiBub2RlLT5jaGlsZDsKPj4gIMKgwqDCoMKgb2Zfbm9kZV9nZXQo
bmV4dCk7Cj4+ICDCoMKgwqDCoG9mX25vZGVfcHV0KHByZXYpOwo+PiAgwqDCoMKgwqByZXR1cm4g
bmV4dDsKPj4gfQo+IAo+IF9mcmVlKGRldmljZV9ub2RlKSBjYWxscyBkZXZpY2Vfbm9kZV9wdXQo
KSB3aXRob3V0IHlvdSBoYXZpbmcgdG8KPiBhZGQgZXhwbGljaXQgZ290b3MKCk9oLCB5ZWFoIHRo
aXMgb25lLCBvZiBjb3Vyc2UuIEluZGVlZCBJJ2xsIHVzZSB0aGF0LgoKTmVpbAoKPiAKPiAKPiBL
b25yYWQKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
