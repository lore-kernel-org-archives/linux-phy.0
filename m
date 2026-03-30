Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6565AFF4956
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 07:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fG2/9lYIO1rQ3/BwnH3BlzWja8OJxCQ5cv5myNHmKMU=; b=JjcvXD71uhGKu8WQaOSC9lpU4A
	/y8EjbhRBlyV1ji7DtvlhWkU2bBn9cdIY1c2EIQsh202D+W+uE8EnJ5sWmT6ut2J3jIHed7Kj1ZVb
	Cx0vBHTySlYo5Ja5vvwawPWGQITjbjH/RkHqngz2g17Gl6oACK9s+QOLxQMVk4of1YbmT6fcdutMm
	8Kar56YWXHzYWtHFutFGrAdEPZY3QgDByhinv0Z9Wr0zboBM4vs/wB7+IxwrKaoKincEqCFc3kRc3
	rLzJOSfwwL5VgI8uWiLdsgksiU5fICJScqzsGHcb1g5IftHZs4R+ot1Y31YZgvQGrHNgR5Aw3/Wh3
	bjwbOZ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77N4-0000000AmqF-47LQ;
	Mon, 30 Mar 2026 07:49:14 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77N2-0000000Amp9-16ql
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 07:49:13 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4873ce69ba9so5930665e9.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 00:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774856950; x=1775461750; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l/nFmeNNFWPp+7jec/T1A0Kyh+DGfRIv+rs3nkdXw+U=;
        b=EJ5aiArsc3dLUP93EqEJAPmvhLpHVo3gRZUTSyqELpYxx04/M4+Hwt2OxI6h6subUm
         YZ4d3+7UfY+VHq1g4uB1B/i3rQjrelvmiJo9cTFdSu5in7UxsjqzJzeHYEU7ytwjxiQK
         syx0ivyDkZl+vED/58TabLE0IfbApcBeQbMch+BRMFM9zFhKB9tJmLr6vzTK4lpO/8Bb
         zY7K13zAOoirTeNaCuquE0dOIjWhRDvga/aEZ6tKy9gsm90A1Hz3JUMM4gkPhnTH6HGQ
         h7CgxctC3syPgyvtx/4JUgzcMFKoRR80cshmDXHV4oCKwe/6MdS5MA9IACMpWro67UWA
         godw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774856950; x=1775461750;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/nFmeNNFWPp+7jec/T1A0Kyh+DGfRIv+rs3nkdXw+U=;
        b=rosCL5ImnvI0GKCB+1cxYi/OBbTNeUtIo3NBzNVhaZ8YU/eW8LjcpgSpYoMKX65A37
         0DUSDHSFcYyz9LSWuj2OvZ6WdiQGW60gDjkhVQppvJRsPIBUPYK4bFbJjpYoLrcBZDFw
         0om1qY4wXeJW6Je+PiEyjbbX/sPUpsZv3zYfPa7pgf6j/uv4wjK8EeUK/H1yK2+6RxpR
         P9KGuLWgqcDe2Ne/JS2apcK4IZUy57CkcBtKxq5qoUQk/q6Z9DIU3cvKB40kmi8fsNA9
         gVRcyssvxSWdeEz64EYAH8tcimHDw5QCO3667+L4nledbIpat7xcLOTZrb0VbmG2+R4x
         Vvkg==
X-Forwarded-Encrypted: i=1; AJvYcCV+INv4/Z/nk8hYocyr2enWWYXjpEXCscEeAQwgUiXBFyC19UQnimRJmRw27zlXw9MVHe36EMgXyTU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyNUyGf6FOFFFmJcyDq9neBqgKd37yxOeeIRhz8KkWLMnJZFwn
	Y527NOKvy4qSlPtTFUy8Z3bEr9SgW1mYVNTVkXXbgBa7Vt1mKCwbczbyd17o6zGFvLg=
X-Gm-Gg: ATEYQzwXXrYWO6WTI0llOdCRsSPKxBrVrFRDZ0GwDX68wujGhA3Sxt167dA0g5/kpCG
	BZLctvII4nCFEAbFUpWZjQxdQYlbBuH1rRTMw4CwZWh0wk1xx46O45BL3gbdw+6N4eLtMEHH6F6
	E8pU1N2Up5f/nMkJncHDoNRNNUKENTFkGY+ErStGrJkURexivgfyPEqmf2y0xnsOqsQhEC6aKWc
	5tF0ECVk/yzl/pJ88Gmj6wvD02zJVo+/Q1kGPB+ItLXGenk9qVZL4srxm54xMFkOrTPRvRXtNFI
	QuiPoOA36HcqIw+b3snrfg9hC+m7raWy71ORK85clyBfpSdapnReKEmG/ALEugYK34QeNK3Rq2j
	XRyXk83DUk+aBDFBTR9JDVCplzK8qfpWJj4pOMRbUnaHK7sLuyJBv9cFWL3+g8zuEgf8Zp5UIM/
	3Ts19N7poqsZbuBrZw7VnZ4kxNFc5R7Mrhf7RFCmsW3DocixagpGt7ASyKs/nGQXfuwruh9SFH6
	ePmPHY=
X-Received: by 2002:a05:600c:1d08:b0:486:fab9:a578 with SMTP id 5b1f17b1804b1-48727e95417mr189631935e9.11.1774856949649;
        Mon, 30 Mar 2026 00:49:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:cb3c:d0d2:870b:6ad0? ([2a01:e0a:106d:1080:cb3c:d0d2:870b:6ad0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48722c9506dsm251920295e9.7.2026.03.30.00.49.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 00:49:09 -0700 (PDT)
Message-ID: <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
Date: Mon, 30 Mar 2026 09:49:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
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
In-Reply-To: <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_004912_371913_B95A279E 
X-CRM114-Status: GOOD (  28.92  )
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

T24gMy8yNy8yNiAxODo0MiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAyNy8wMy8yMDI2
IDE1OjI4LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IFRvIGJlIGZyYW5rbHkgaG9uZXN0IHlv
dSBjYW4gbWFrZSBhbiBhcmd1bWVudCBmb3IgaXQgZWl0aGVyIHdheS4gSG93ZXZlciBteSBob25l
c3RseSBoZWxkIHBvc2l0aW9uIGlzIGFuYWx5c2luZyBvdGhlciB1cHN0cmVhbSBpbXBsZW1lbnRh
dGlvbnMgY29ubmVjdGluZyB0byB0aGUgUEhZIG1lYW5zIHdlIGNhbid0IG1ha2UgdGhlIFBIWSBk
ZXZpY2UgYSBkcml2ZXJzL3BoeSBkZXZpY2UgLSBpdCB3b3VsZCBoYXZlIHRvIGJlIGEgVjRMMiBk
ZXZpY2UgYW5kIHRoZW4gZm9yIG1lIHRoZSBxdWVzdGlvbiBpcyB3aHkgaXMgdGhhdCBldmVuIHJl
cXVpcmVkID8KPj4KPj4gVGhpcyBpcyBwbGFpbiB3cm9uZywgRFQgZGVmaW5pdGlvbiBpcyBkaWZm
ZXJlbnQgZnJvbSBzb2Z0d2FyZSBpbXBsZW1lbnRhdGlvbiwgeW91IGNhbiBkbyB3aGF0ZXZlciB5
b3Ugd2FudCBpZiB5b3UgZGVzY3JpYmUgSFcgYWNjdXJhdGVseS4KPiAKPiBJJ20gbm90IHN1cmUg
d2hhdCBwb2ludCBpdCBpcyB5b3UgYXJlIHRyeWluZyB0byBtYWtlIGhlcmUuIEFyZSB5b3UgdHJ5
aW5nIHRvIHNheSBkcml2ZXJzL3BoeSBpcyBPSyB3aXRoIHlvdSBidXQgeW91IHdhbnQgYW4gZW5k
cG9pbnQgPyBJZiBzbywgcGxlYXNlIGp1c3Qgc2F5IHNvLgoKSSdtIGFnYWluc3QgdXNpbmcgdGhl
ICJwaHlzID0gPD4iIHByb3BlcnR5IGluIHRoZSBDQU1TUyB0byByZWZlcmVuY2UgdGhlIFBIWXMs
IGEgIlBIWSIgaW4gdGhlIGNsYXNzaWMgdGVybWlub2xvZ3kgaXMgdGllZCB0byBhIHNpbmdsZSBj
b25zdW1lciwgYW5kIGlmIGl0IGNhbiBiZSBzaGFyZWQgdG8gbXVsdGlwbGUgY29uc3VtZXIgeW91
IG11c3QgbW9kZWwgYSBtdXggb3Igd2hhdGV2ZXIgaW4gdGhlIG1pZGRsZS4KClRoZSBQSFkgQVBJ
IGFzIGFuIGludGVybmFsIHNvZnR3YXJlIGltcGxlbWVudGF0aW9uIGlzIHByb2JhYmx5IGZpbmUs
IGV2ZW4gaWYgaXQgbWFrZXMgaW1wbGVtZW50YXRpb24gb2Ygc3BsaXQgbW9kZSBtdWNoIG11Y2gg
aGFyZGVyIGFuZCBkb2Vzbid0IHJlYWxseSBzb2x2ZSBhbnl0aGluZywgeW91IGNhbiBqdXN0IGNh
bGwgaW5pdCgpL3Bvd2Vyb24oKS9wb3dlcm9mZigpL2V4aXQoKSBkaXJlY3RseSBmcm9tIHRoZSBD
U0lQSFkgbWVkaWEgY2FsbGJhY2tzLgoKPiAKPiBJIGNhbiBzZWUgYW4gYXJndW1lbnQgZm9yIHRo
YXQgaGVuY2UgbXkgcmVzcG9uc2UgdG8gS29ucmFkLCBJIGp1c3QgZG9uJ3Qgc2VlIHdoeSBpdHMg
YSBRdWFsY29tbSBzcGVjaWZpYyBhcmd1bWVudCBhbmQgb2YgY291cnNlIHVuZGVyc3Rvb2Qgc3R1
ZmYgYnViYmxlcyB1cCBpbiByZXZpZXcsIHdlIGhhdmUgYSBwdWJsaWMgZGViYXRlIGFuZCBjb21l
IHRvIGEgY29uc2Vuc3VzIC0gdGhhdCdzIGEgZ29vZCB0aGluZy4KPiAKPiBIb3dldmVyLCBJJ2Qg
d2FudCB3aWRlciBidXktaW4gYW5kIHVuZGVyc3RhbmRpbmcgdGhhdCBlbmRwb2ludHMgaW4gdGhl
IFBIWXMgaXMgYSBtb3JlIGFjY3VyYXRlIGRlc2NyaXB0aW9uIG9mIHRoZSBkYXRhLWZsb3cuCgpJ
dCBpcywgYW5kIGl0IHdhcyBkZXNpZ25lZCBmb3IgdGhhdCwgYW5kIGV4dGVuc2l2ZWx5IHVzZWQg
aW4gdGhlIG1lZGlhIERUIHJlcHJlc2VudGF0aW9uLCBzbyBJIHdvbmRlciBoZXJlIHlvdSB3b3Vs
ZCBub3QgdXNlIGl0Li4uCkluIGFuIGlkZWFsIHdvcmxkLCB5b3Ugd291bGQgYWRkIG5vZGVzIGZv
ciBlYWNoIENBTVNTIGh3IGVsZW1lbnRzIGFuZCBhZGRzIHBvcnQvZW5kcG9pbnRzIGxpbmtzIGJl
dHdlZW4gYWxsIG5vZGVzIHRvIGRlc2NyaWJlIHRoZSBkYXRhIGdyYXBoLCB0aGlzIHdvdWxkIGJl
IHVzZWQgdG8gY29uc3RydWN0IHRoZSBtZWRpYSBjb250cm9sbGVyIGdyYXBoLCBhbmQgbWFrZSBp
dCBtdWNoIGVhc2llciBzdXBwb3J0aW5nIG5ldyBoYXJkd2FyZS4KCj4gCj4gV2UndmUgYmVlbiBh
cHBseWluZyBEVCBiaW5kaW5ncyBhcGxlbnR5IHdpdGhvdXQgdGhhdCBzbyBmYXIuIFNvIHdlIHdv
dWxkIGVzdGFibGlzaCBuZXcgQ1NJMiBQSFkgYmluZGluZ3Mgc2hvdWxkIHJlcHJlc2VudCB0aGUg
c2Vuc29yIGVuZHBvaW50cy4KCldlJ3ZlIGJlZW4gdXNpbmcgYSBkdW1teSByZXByZXNlbnRhdGlv
biBvZiBDQU1NIGluIGEgc2luZ2xlIG5vZGUgd2l0aCBvbmx5IGVuZHBvaW50cyBjb25uZWN0aW5n
IHRvIHRoZSBzZW5zb3JzIGFuZCBoaWRpbmcgYWxsIHRoZSBoYXJkd2FyZSBsYXlvdXQgaW4gY29k
ZSwgaXQgZG9lc24ndCBzY2FsZSBhbmQgbWFrZXMgc3VwcG9ydGluZyBuZXcgSFcgaGFyZC4KSSBt
ZWFuIHRoaXMgaXMgY29tbW9uIHNlbnNlLCB3aHkgd291bGQgd2UgY29udGludWUgdG8gc3RpY2sg
dG8gdGhlIGN1cnJlbnQgQ0FNU1MgYmluZGluZ3MgPz8/Cgo+IAo+IElzIHRoYXQgd2hhdCB5b3Ug
d2FudCA/Cj4gCj4+IFRoZSBDU0lQSFlzIGFyZSBub3QgdGllZCB0byBhIHNpbmdsZSAiY29uc3Vt
ZXIiIGJsb2NrLCB0aGV5IGNhbiBiZSBjb25uZWN0ZWQgdG8gZGlmZmVyZW50IGNvbnN1bWVycyBh
dCBydW50aW1lLCB3aGljaCBpcyBub3Qgc29tZXRoaW5nIGNsYXNzaWMgUEhZIGRldmljZXMgYXJl
IGRlc2lnbmVkIGZvci4gU28gdGhleSBhcmUgZGUgZmFjdG8gYSBtZWRpYSBlbGVtZW50IGluIHRo
ZSBkeW5hbWljIGNhbWVyYSBwaXBlbGluZS4KPiAKPiBUaGUgZXhpc3RpbmcgQ0FNU1MgYmluZGlu
ZyBhbmQgbWVkaWEgZ3JhcGggYXJlIG5vdCBjaGFuZ2VkIGJ5IHRoaXMgc2VyaWVzLgoKVGhpcyBp
cyBub3QgbXkgcG9pbnQsIEkgZG9uJ3QgY2FyZSBhYm91dCB0aGUgc29mdHdhcmUgaW1wbGVtZW50
YXRpb24gYXQgYWxsLCBJIGNhcmUgYWJvdXQgYWNjdXJhdGUgaGFyZHdhcmUgcmVwcmVzZW50YXRp
b24uIFVzaW5nIHRoZSAicGh5cyA9IDw+IiBwcm9wZXJ0eSBkb2VzIG5vdCBkZXNjcmliZSBoYXJk
d2FyZSBhY2N1cmF0ZWx5LgoKSW4gb3RoZXIgd29yZHM6IFRoZSBDU0lQSFkgYXJlIG5vdCBjb25u
ZWN0ZWQgdG8gQ0FNU1MuIFRoaXMgaXMgX25vdF8gdHJ1ZSwgdHlpbmcgdGhlIENTSVBIWXMgdG8g
dGhlIENBTVNTIGJsb2NrIGhpZGVzIHRoZSByZWFsIGRhdGEgbXV4aW5nIGluIHNvZnR3YXJlLgoK
UGxlYXNlIHJlbWluZCBEVCBpcyB1c2VkIGJ5IG11bHRpcGxlIG9wZXJhdGluZyBzeXN0ZW1zLCBh
bmQgcHJvcGVybHkgZGVzY3JpYmluZyBoYXJkd2FyZSBpbiBEVCB3aWxsIGhlbHAgaGF2ZSBnb29k
IHNvZnR3YXJlIHN1cHBvcnQgb3ZlciBhbGwgT1Nlcywgbm90IGp1c3QgTGludXguCgo+IAo+PiBB
bmQgYWN0dWFsbHkgUm9iIEhlcnJpbmcgYXNrZWQgdXNlIHRvIGRlZmluZSB0aGUgY29tcGxldGUg
ZGF0YSBmbG93LCBpdCB3YXMgYSBzdHJvbmcgcmVxdWlyZW1lbnQuIEkgZG9uJ3Qgc2VlIHdoeSB3
ZSB3b3VsZG4ndCBoZXJlLgo+IAo+IEknbSBpbXBsZW1lbnRpbmcgZmVlZGJhY2sgZnJvbSBSb2Iu
Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAyNTA3MTAyMzA4NDYu
R0E0NDQ4My1yb2JoQGtlcm5lbC5vcmcvCgpXaGVyZSBkaWQgaGUgYXNrIHVzaW5nIHRoZSBQSFkg
RFQgYmluZGluZ3MgPyBJcyBoZSBhd2FyZSB0aG9zZSBDU0lQSFlzIGFyZSBtdXhlZCB0byBtdWx0
aXBsZSBjb25zdW1lcnMgd2hpY2ggYXJlIGJ1cnJpZWQgaW4gdGhlIENBTVNTIGNvZGUgPwoKPiAK
PiBUbyBtZSwgaGVyZSBpcyB3aGVyZSB3ZSBzdGFuZDoKPiAKPiAtIEluZGl2aWR1YWwgbm9kZXMg
LSB3ZSBhbGwgYWdyZWUgdGhhdAo+IC0gQXMgc3ViLW5vZGVzIC0gSSB0aGluayB0aGUgbWFqb3Jp
dHkgYWdyZWVzIHRoaXMgS3J6c3p0b2YsIERtaXRyeQo+ICDCoCBJJ20gZmluZSB3aXRoIGl0IHRv
by4KPiAtIGRyaXZlcnMvcGh5IC0gSSB0aGluayB3ZSBhcmUgYWNjZXB0aW5nIHRoaXMgaXMgYWxz
byBmaW5lID8KCkxpa2UgSSBzYWlkIHRoaXMgYWRkcyBhIHN1cHBsZW1lbnRhcnkgQVBJIGxheWVy
IGZvciBubyByZWFzb24gYW5kIHdpbGwgbWFrZSBsaWZlIGhhcmRlciwgYnV0IEkgZG9uJ3QgY2Fy
ZSBwZXJzb25hbGx5LgoKPiAtIGVuZHBvaW50cyBzaG91bGQgZmxvdyBpbnRvIHRoZSBQSFkgYW5k
IHRoZW4gYmFjayB0byB0aGUgY29udHJvbGxlcgo+IAo+IEkgZ2V0IHRoYXQgYXJndW1lbnQuIElu
IGZhY3QgSSBfbGlrZV8gdGhhdCBhcmd1bWVudCBhdCBsZWFzdCBJIGxpa2UgbXkgY29uY2VwdGlv
biBvZiB0aGF0IGFyZ3VtZW50Lgo+IAo+IEknbGwgc3RpcHVsYXRlIHRvIHRoYXQgYXJndW1lbnQg
bWVhbmluZyB0aGVuIHRoYXQsIG5ldyBDU0kyIFBIWXMgc2hhbGwgaW5jbHVkZSBlbmRwb2ludHMg
Zm9yIHRoaXMgcHVycG9zZSBnbG9iYWxseS4KPiAKPiBBcyBJJ3ZlIHNhaWQgYmVmb3JlLCB0aGVy
ZSdzIG5vdGhpbmcgUXVhbGNvbW0gc3BlY2lmaWMgYWJvdXQgdGhpcyBkaXNjdXNzaW9uLCByZWFs
bHkuCgpUaGVyZSBpcywgYmVjYXVzZSB0aGUgY3VycmVudCBRdWFsY29tbSBDQU1TUyBiaW5kaW5n
cyBhcmUgaW5zdWZmaWNpZW50IGFuZCBzaG91bGQgYmUgZW50aXJlbHkgcmVkZXNpZ25lZCBmcm9t
IHRoZSBncm91bmQgdXAgdG8gcHJvcGVybHkgZGVzY3JpYmUgdGhlIEhXLgoKTmVpbAoKPiAKPiAt
LS0KPiBib2QKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
