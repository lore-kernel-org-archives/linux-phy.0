Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84283C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 15:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOPC1GATJtliOuQKnS6gWsW4861KWB9rlPdiXElZnzQ=; b=jvdDsm3T6F/5yakeubfgaIL0BR
	F/J02mWFj4J8XYrMusJLXoaAZkV0cssMqAE44kqtqnqTgF6rxdlKRHHvFhcuz27SU0fowJeg3wkF6
	JHyqtdWtR2UhkAsbBg4NXl25TC3LQ1G4R0rnt4hmolM9n10/MxDW/nhSYGtJ+yCIM/yBDuYQHcu0V
	jaKKNaLvQ1u6d0OkCfVxBhoveh1Y9uP1m/rDByZfoaURwkn4FPdVDsmbSLCwMC4+TafgjTwe2lzF+
	bYdznZqS8nnWzvuApAYbaRbzq/AtgMI8KMxzcvTunFGYOlNqoTF7nZDbuCKkmZlz4IeIWS7/sP0Lf
	iepbPihw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thVvF-00000000MAa-1A6A;
	Mon, 10 Feb 2025 15:42:09 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thVmr-00000000Kc6-1xPA
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 15:33:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-43944c51e41so11106985e9.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 07:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739201608; x=1739806408; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TVrkz1XR/5L7o4lXRR2CcNoJwEZ5Op4zpWZ8bBSgElM=;
        b=Qv9hvB7MzKNMuYFAPpHnq2zO4xgInLfeUC9lwH+bC99/crAXckAi14huAbwU2Us6TO
         gLWdFBrP0f4Ar5SLVt+iDFVj1ANy0ySMTsDoUbCsP9Yh2agbU+POJBGkdL7XZdNZeRvp
         rhcQPWHcr8OgWnzf/xSo6Fc5wTnGGJhH1HEJLcqql97/UhtJPbHer8/fvnFWu55VFSvo
         lsOhjPQKSNqWdja8Gvc6FPRuO66oabctWi/9ownYXit/rfsuvIXVz9Cy7kG+3y16uC2g
         HqqtWtCtOq6sD2vOEOvbqUzjwJqi69lvu4kmL34LQ39NMwlVmA9sbtl0fjLq5MlLdA8U
         QKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739201608; x=1739806408;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TVrkz1XR/5L7o4lXRR2CcNoJwEZ5Op4zpWZ8bBSgElM=;
        b=qUPMHxGZz85sQLth6o0L9pTW098wZbmYa6HWwBTFXoG5TM7M7+jGQgJ91mqaIuJzG5
         haxut8pC4ycL9y26PyGqcKAk3pZ/+sb8krVchZCi08Fp+nRC4WHaXX0P85UpASog6VZ7
         1x3Ta4/A+MVUqP1xpApP7kJHk/IIY5sPgzvRw53g2Y2SN0oROpie9L2Ec3AOwnfh6lmS
         zfKT0NDiAqBRMoh/nDe0UlLE9gmmJmoWfeY1dfJvO6dfdaO7CThhLUWmnJtjEqey4Exs
         BiANE83tgLQg3+s7BC3Y0qYCP7a0EdCEJtZ77YfkW4z/45QWEze5fA4t/F3Uf0cKh1J3
         7Vnw==
X-Forwarded-Encrypted: i=1; AJvYcCUVXAOzUndOGHJiOxD8BpmiM+M+NFGSOWPu/5hNkA+zE68lQ4b8dp/bAYeoGX8zhqLXwuywgcuSTns=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3ZUDq9ql88DPvHBtFkC6rIF+paWnDHDbfcXzSPujfZ4O+zWa2
	rPoYX+RrNgDehdmCNowfs1N/lX9+EARqRwLyvyeIZLLbAXE4W+p/cr2WlBMxkDk=
X-Gm-Gg: ASbGncvTPoJRlCIS0x3GBRyFaokj0nb8ftUoUZJMNMuGZkMJvYPXi+fNUwVHcWVTLvc
	6JiXPpE831QHU2hlhItv+Ilus75CbhYdvmzvKP9FqsXf7co93ToyPVLhenwVPRxtHMx7CCujAAi
	ova6CRg9nqAInldIrtR1uFTKnYnY/SdGP0EcxqtaD9C+PNgPx9R4RFTejagsCvmC0oF3EgiE8QS
	bk1erBLkrNsOtuFSk8OaYKQCsEGbhCOQTGfrpKKqij4QcnefVsWpj2vQ1wVJmnE3wR8MW7QvAhD
	NLqT/bhy+zVSb0SKB1cxkMIpxpieZWrkrEiv8iKktwNaCDjfbPwFnHp/VuQ7KdFy8bWe
X-Google-Smtp-Source: AGHT+IHgsDDIzZ/362b0PgA4OgoceC2gDSnSj2avMSkRco2nZxuQFo3QskAu+sfcxQLy2Ge5sZ83CA==
X-Received: by 2002:a05:6000:1fab:b0:38d:df05:4f5 with SMTP id ffacd0b85a97d-38ddf05078fmr3599039f8f.42.1739201607906;
        Mon, 10 Feb 2025 07:33:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5? ([2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390db110dfsm188164975e9.36.2025.02.10.07.33.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:33:27 -0800 (PST)
Message-ID: <2d1ab1fe-6d98-4b54-910c-f371f708039d@linaro.org>
Date: Mon, 10 Feb 2025 16:33:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
 <92e77d82-7c76-4cc4-8e7d-7b72b57ab416@quicinc.com>
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
In-Reply-To: <92e77d82-7c76-4cc4-8e7d-7b72b57ab416@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_073329_505596_6BDA2C83 
X-CRM114-Status: GOOD (  22.90  )
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

SGksCgpPbiAxMC8wMi8yMDI1IDEyOjE1LCBOaXRpbiBSYXdhdCB3cm90ZToKPiAKPiAKPiBPbiAy
LzEwLzIwMjUgMzowOSBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4gT24g
MDkvMDIvMjAyNSAxNjoyMSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4gT24gRnJp
LCBGZWIgMDcsIDIwMjUgYXQgMTE6NDc6MTJQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3cm90ZToK
Pj4+PiBPbiAxMy4wMS4yMDI1IDEwOjQ2IFBNLCBNZWxvZHkgT2x2ZXJhIHdyb3RlOgo+Pj4+PiBB
ZGQgVUZTIHN1cHBvcnQgZm9yIFNNODc1MCBTb0NzLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBNZWxvZHkgT2x2ZXJhIDxxdWljX21vbHZlcmFAcXVpY2luYy5jb20+Cj4+Pj4+IC0tLQo+Pj4+
PiBOaXRpbiBSYXdhdCAoNSk6Cj4+Pj4+IMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogcGh5OiBx
Y29tLHNjODI4MHhwLXFtcC11ZnMtcGh5OiBEb2N1bWVudCB0aGUgU004NzUwIFFNUCBVRlMgUEhZ
Cj4+Pj4+IMKgwqDCoMKgwqDCoCBwaHk6IHFjb20tcW1wLXVmczogQWRkIFBIWSBDb25maWd1cmF0
aW9uIHN1cHBvcnQgZm9yIFNNODc1MAo+Pj4+PiDCoMKgwqDCoMKgwqAgZHQtYmluZGluZ3M6IHVm
czogcWNvbTogRG9jdW1lbnQgdGhlIFNNODc1MCBVRlMgQ29udHJvbGxlcgo+Pj4+PiDCoMKgwqDC
oMKgwqAgYXJtNjQ6IGR0czogcWNvbTogc204NzUwOiBBZGQgVUZTIG5vZGVzIGZvciBTTTg3NTAg
U29DCj4+Pj4+IMKgwqDCoMKgwqDCoCBhcm02NDogZHRzOiBxY29tOiBzbTg3NTA6IEFkZCBVRlMg
bm9kZXMgZm9yIFNNODc1MCBRUkQgYW5kIE1UUCBib2FyZHMKPj4+Pgo+Pj4+IFlvdSBzdGlsbCBu
ZWVkIHRoZSBzYW1lIHdvcmthcm91bmQgODU1MC84NjUwIGhhdmUgaW4gdGhlIFVGUyBkcml2ZXIK
Pj4+PiAoVUZTSENEX1FVSVJLX0JST0tFTl9MU0RCU19DQVApIGZvciBpdCB0byB3b3JrIHJlbGlh
Ymx5LCBvciBhdCBsZWFzdAo+Pj4+IHRoYXQgd2FzIHRoZSBjYXNlIGZvciBtZSBvbiBhIDg3NTAg
UVJELgo+Pj4+Cj4+Pj4gUGxlYXNlIGNoZWNrIHdoZXRoZXIgd2UgY2FuIG1ha2UgdGhhdCBxdWly
ayBhcHBseSBiYXNlZCBvbiBjdHJsCj4+Pj4gdmVyc2lvbiBvciBzbywgc28gdGhhdCB3ZSBkb24n
dCBoYXZlIHRvIGtlZXAgZ3Jvd2luZyB0aGUgY29tcGF0aWJsZQo+Pj4+IGxpc3QgaW4gdGhlIGRy
aXZlci4KPj4+Pgo+Pj4KPj4+IFRoYXQgd291bGQgYmUgYSBiaXphcnJlLiBXaGVuIEkgYWRkZWQg
dGhlIHF1aXJrLCBJIHdhcyB0b2xkIHRoYXQgaXQgd291bGQgYWZmZWN0Cj4+PiBvbmx5IFNNODU1
MCBhbmQgU004NjUwICh0aGlzIG9uZSBJIGxlYXJuZWQgbGF0ZXIpLiBJJ20gbm90IGFnYWluc3Qg
YXBwbHlpbmcgdGhlCj4+PiBxdWlyayBiYXNlZCBvbiBVRlNIQyB2ZXJzaW9uIGlmIHRoZSBidWcg
aXMgY2FycmllZCBmb3J3YXJkLCBidXQgdGhhdCB3b3VsZCBiZSBhbgo+Pj4gaW5kaWNhdGlvbiBv
ZiBiYWQgZGVzaWduLgo+Pgo+PiBJc24ndCA4NzUwIGNhcGFibGUgb2YgdXNpbmcgTUNRIG5vdyA/
IGJlY2F1c2UgdGhpcyBpcyB0aGUgd2hvbGUgaXNzdWUgYmVoaW5kCj4+IHRoaXMgVUZTSENEX1FV
SVJLX0JST0tFTl9MU0RCU19DQVAsIGl0J3Mgc3VwcG9zZWQgdG8gdXNlIE1DUSBieSBkZWZhdWx0
Li4uIGJ1dAo+PiB3ZSBkb24ndC4KPj4KPj4gSXMgdGhlcmUgYW55IG5ld3MgYWJvdXQgdGhhdCA/
IEl0J3MgYSBjbGVhciByZWdyZXNzaW9uIGFnYWluc3QgZG93bnN0cmVhbSwgbm90Cj4+IGhhdmlu
ZyBNQ1EgbWFrZXMgdGhlIFVGUyBkcml2ZXIgc3RydWdnbGUgdG8gcmVhY2ggaGlnaCBiYW5kd2lk
dGggd2hlbiB0aGUgc3lzdGVtCj4+IGlzIGJ1c3kgYmVjYXVzZSB3ZSBjYW4ndCBzcHJlYWQgdGhl
IGxvYWQgb3ZlciBhbGwgQ1BVcyBhbmQgd2UgaGF2ZSBvbmx5IHNpbmdsZQo+PiBxdWV1ZSB0byBz
dWJtaXQgcmVxdWVzdHMuCj4gCj4gSGkgTmVpbCwKPiAKPiBUaGVyZSBpcyBubyByZWxhdGlvbiBi
L3cgTFNEQlNfQ0FQIFJlZ2lzdGVyIGFuZCBNQ1Egc3VwcG9ydC4KPiBUaGF0IHJlZ2lzdGVycyBq
dXN0IGluZGljYXRlIHdoZW4gTUNRIHN1cHBvcnQgaXMgcHJlc2VudCBvbiBhbnkgU09DLAo+IHdo
ZXRoZXIgU2luZ2xlIHF1ZXVlIG1vZGUgaXMgc3VwcG9ydGVkIG9yIG5vdCBvbiB0aGF0IFNPQy4K
PiAKPiBJbiBTTTg2NTAgYW5kIFNNODY1NTAsIGp1c3QgdGhlIHBvcmVkIHZhbHVlIG9mIHRoYXQg
cmVnaXN0ZXIgd2FzIGluY29ycmVjdCB3aGljaCB3YXMgZml4ZWQgYnkgV0EgYnV0IGFjdHVhbGx5
IGZ1bmN0aW9uYWxpdHkgd2FzIHByZXNlbnQgYW5kIHdvcmtpbmcgZmluZS4KPiAKPiBQb3JlZCB2
YWx1ZSBvZiB0aGF0IHJlZ2lzdGVyIGhhcyBiZWVuIGZpeGVkIGZyb20gU004NzUwIG9ud2FyZHMu
CgpUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiwgYnV0IHRoaXMgZG9lc24ndCBhbnN3ZXIgYWJv
dXQgdGhlIHN0YXRlIG9mIE1DUQpmb3IgU004NTUwLCBTTTg2NTAgYW5kIFNNODc1MC4gSSB3b3Vs
ZCd2ZSBleHBlY3RlZCB0byBoYXZlIE1DUSBmb3IgU004NzUwCmluIHRoZSBmaXJzdCBwYXRjaHNl
dC4KCk5laWwKCj4gCj4gUmVnYXJkcywKPiBOaXRpbgo+IAo+Pgo+PiBOZWlsCj4+Cj4+Pgo+Pj4g
LSBNYW5pCj4+Pgo+Pgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
