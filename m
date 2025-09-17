Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2003CA0EE8
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 07:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UP+T33vG4nra7/GbKDH7qp56Y7AgFs+N8TxonGxqvRE=; b=xvTen4Ru3iViT3
	1sXTF0sbiVYqeGKlhrZ/SpR7NUhAcCFNDlwdmfQpGJ++W+TK1islLDzAPYmjzLca82jHer1k9YF2X
	cUjIMiwnyw0LL2pUVjEIwqn+EDx5IgiFfxEoPh4KwsdiMdNXhcLdTBzwGkuXE/lut34l48vcb5W8w
	BRwj1DuZeqm05FgrPte5Fge68PYwH4ZurlNJGuUQ95TpSYh7bWJmYVn/ipGwf8736O40DAd2BC61V
	WbXWaBQ2/pI+yEjE36NkHpAZ4pF7EMTLkL+mOxkvYWhQO/M5hqxuXa0btIj8l4QDZpr3n31Ehf1mX
	UAZtxS98HqCsCw4N4v+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uym9l-0000000AO7i-0ES3;
	Wed, 17 Sep 2025 07:00:47 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uym9i-0000000AO6T-1JeK
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 07:00:43 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3ebc706eb7bso1537223f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 00:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758092440; x=1758697240; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6A9uNx1+mps+BdZiLl551t3BtT+GzBC5veNKQdOvG0I=;
        b=ivay6ucm3jZLNug72YQR9ijU7ROdiDyKnY0w7vOi39F4xlAD4m0Lb+VuA63nkFzi9o
         4Ct3yVrs6Td81Iz219SjxHdHKPRFMsnLVisvZWlZhXHNixtYSSWaenCiIewvrkUSdaCG
         dqKT3SC+jWIhSJqBn4bLWF64t7RUV+JeMDxAakNOQJZAHzo2I947sE4AsX5hn4pFD1e2
         9l1t6ifhyXs01jRQQ8GMqhIzXzkm+lcb9YzteQJxG87+hULnzfk7qDaPK8MeW26oas9+
         nQLKZZQBzB0dReN19cjgnUzsiu3LjCKUEGd6aU2eexFzhcRLPkA0yKiTnyGz56/SPGId
         Uy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758092440; x=1758697240;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6A9uNx1+mps+BdZiLl551t3BtT+GzBC5veNKQdOvG0I=;
        b=CC5WrSci/1g35eGZ2arwKEu1cimT6lZPxTEux7EzBCiWjVnz753CzlCw1KYh7hvCwh
         3xORnZ+yh1qvjbc97Wk/xcQvomY6AODM+xJC6k6aqffrFRkwNBiGeoSTck1qeoCtVBvy
         2gSxmpJCeT9lAj6jEXP+puwTnBW1gD6ZW2gvHw9cdKt7aaEdj2DBvqjX090DbyL+zlI0
         /d0X61JMGVyg+sHTCIIRiYIAy0yQPJ797MSSe8Uca4+gVtKXBW7H4h6vyUM4YXPSeamk
         J53n4xf0NwxRO6CkEb85vWVoWpErVEpXFfe0WX2FL8RLIZNL3funXuDUt7QsdqUoiyHE
         Gv+w==
X-Forwarded-Encrypted: i=1; AJvYcCVjeGPfksT3m9B/oANxDxXkSNOTSqzI2YcikhGYn1Psi2yXjXJIOty+OJ2g9TZe6ukUmMHLLTWj5sA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv6WywklMV0e7XLxCwLsWqE8rpNozML6B7ksWUv6+nnC2RwuK8
	ryBjKiX3HI/8knJDWr35HoGJuziyT1S0hpvOND/41Brx4ginAXFA9e+hpN+85ZjG/9Q=
X-Gm-Gg: ASbGncsgJJpzdWIiQmktbGXssfbYDCVKMvlf1hwUUd7d4e+ZuayA9ut27lNfMgJv+CU
	qT/SkddCg9eSHUmV41zCp0zrotijXWA4HMeDtia1iUhDSUx7B8pAB/TjZtPZrJbWZn7Zwju2dcc
	JFywMk29ew2C1pwSGeTuMu4rt9FMkHRFWeG5ATG/yWY8Dubm/9vwlWQ0/XJBeV4OmARF7gvoDdU
	0xczl1aT5pnNQwZv4NR/0jFjSfC1R4fOVrfmN+HMW62vHnADDZR6FUE4meU0mjBKa1RBOIY+nPf
	cuW4jLfCrW5QDWbf5CmHnONg4jeQ8LM1Uplq3Dkn3nOl4Ft2XOPUSSSB3f5TvnSQjAoBx3AWIzn
	6NXji1KHEJ+k2wXbilV7kJlxorfVZmT3L/2XBwEzMCg3ZaO8Msd33K48AYF5W6vNN7ksckE94ZR
	vGcak916hrTQ==
X-Google-Smtp-Source: AGHT+IHFVA3VzBNPdHqWXiN9GjHITIJj4HsMCOuzc7U1O93FWbBFOPDyIbTjWxGMsr2FMozK4GF3lQ==
X-Received: by 2002:a05:6000:2012:b0:3eb:2313:ec03 with SMTP id ffacd0b85a97d-3ecdf9d1628mr968681f8f.27.1758092438446;
        Wed, 17 Sep 2025 00:00:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96b6:27e6:6a4b:3879? ([2a01:e0a:3d9:2080:96b6:27e6:6a4b:3879])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-462d525fdb2sm1290975e9.13.2025.09.17.00.00.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 00:00:37 -0700 (PDT)
Message-ID: <6d5009cf-9332-4c0f-acf3-baa6a0be3f0d@linaro.org>
Date: Wed, 17 Sep 2025 09:00:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <56ddc607-f30b-410b-af54-e2d9afc06540@linaro.org>
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
In-Reply-To: <56ddc607-f30b-410b-af54-e2d9afc06540@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_000042_396043_9CB94254 
X-CRM114-Status: GOOD (  16.66  )
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

SGksCgpPbiAwOC8wOS8yMDI1IDA5OjMzLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAwNS8w
OS8yMDI1IDE5OjU1LCBSb2IgSGVycmluZyB3cm90ZToKPj4gT24gVHVlLCBTZXAgMDIsIDIwMjUg
YXQgMDY6MTA6MDVQTSArMDIwMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+PiBCb3RoIGJpbmRp
bmdzIGRlc2NyaWJlIGEgZGlmZmVyZW50IGxheW91dCBvZiB0aGUgcG9ydHMgcHJvcGVydGllcywK
Pj4+IGxlYWRpbmcgdG8gZXJyb3JzIHdoZW4gdmFsaWRhdGluZyBEVCB1c2luZyB0aGlzIFBIWSBi
aW5kaW5ncyBhcwo+Pj4gcmVwb3J0ZWQgYnkgUm9iIEhlcnJpbmcuCj4+Pgo+Pj4gUmVwb3J0ZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4+PiBDbG9zZXM6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8xNzU0NjIxMjkxNzYuMzk0OTQwLjE2ODEwNjM3Nzk1Mjc4MzM0MzQy
LnJvYmhAa2VybmVsLm9yZy8KPj4+IEZpeGVzOiAzYmFkN2ZlMjI3OTYgKCJkdC1iaW5kaW5nczog
cGh5OiBxY29tLHNjODI4MHhwLXFtcC11c2I0M2RwOiBSZWZlcmVuY2UgdXNiLXN3aXRjaC55YW1s
IHRvIGFsbG93IG1vZGUtc3dpdGNoIikKPj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25n
IDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+Pj4gLS0tCj4+PiDCoCAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbMKgwqDCoCB8
IDggKysrKystLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1w
aHkueWFtbAo+Pj4gaW5kZXggYzhiYzUxMmRmMDhiNTY5NGM4NTk5ZjQ3NWRlNzg2NzlhNDQzODQ0
OS4uNTAwNTUxNGQ3YzNhMWU0YTg4OTM4ODM0OTdmZDIwNGJjMDRlMTJiZSAxMDA2NDQKPj4+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1x
bXAtdXNiNDNkcC1waHkueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sCj4+PiBAQCAtNzMs
OCArNzMsMTEgQEAgcHJvcGVydGllczoKPj4+IMKgwqDCoMKgwqAgZGVzY3JpcHRpb246Cj4+PiDC
oMKgwqDCoMKgwqDCoCBTZWUgaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LXFjb20tcW1wLmgK
Pj4+IC3CoCBtb2RlLXN3aXRjaDogdHJ1ZQo+Pj4gLcKgIG9yaWVudGF0aW9uLXN3aXRjaDogdHJ1
ZQo+Pj4gK8KgIG1vZGUtc3dpdGNoOgo+Pj4gK8KgwqDCoCAkcmVmOiAvc2NoZW1hcy91c2IvdXNi
LXN3aXRjaC55YW1sI3Byb3BlcnRpZXMvbW9kZS1zd2l0Y2gKPj4+ICsKPj4+ICvCoCBvcmllbnRh
dGlvbi1zd2l0Y2g6Cj4+PiArwqDCoMKgICRyZWY6IC9zY2hlbWFzL3VzYi91c2Itc3dpdGNoLnlh
bWwjcHJvcGVydGllcy9vcmllbnRhdGlvbi1zd2l0Y2gKPj4KPj4gVGhpcyBpcyBhIHBhdHRlcm4g
d2UgdHJ5IHRvIGF2b2lkIHdpdGggcmVmZXJlbmNlcyBhdCBhIHByb3BlcnR5IGxldmVsLiBJCj4+
IHByZWZlciB5b3UgbWFrZSBwb3J0IGFuZCBwb3J0cyBub3QgcmVxdWlyZWQgaW4gdXNiLXN3aXRj
aC55YW1sLgo+IAo+IFN1cmUgYnV0IHRoZSBwb3J0cyBkZWZpbml0aW9ucyB3aWxsIHN0aWxsIGNv
bGxpZGUgaW4gdGhpcyBjYXNlLgo+IAo+IFRoZSBvdGhlciBwcm9ibGVtIGhlcmUgaXMgdGhlIGRp
ZmZlcmVuY2UgaW4gcG9ydHMgZGVmaW5pdGlvbiwKPiBwb3J0QDAgYW5kIHBvcnRAMSBhcmUgbm90
IHRoZSBzYW1lLgo+IAo+IHFjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWw6Cj4gIMKg
IHBvcnRzOgo+ICDCoMKgwqAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9w
b3J0cwo+ICDCoMKgwqAgcHJvcGVydGllczoKPiAgwqDCoMKgwqDCoCBwb3J0QDA6Cj4gIMKgwqDC
oMKgwqDCoMKgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+ICDC
oMKgwqDCoMKgwqDCoCBkZXNjcmlwdGlvbjogT3V0cHV0IGVuZHBvaW50IG9mIHRoZSBQSFkKPiAK
PiAgwqDCoMKgwqDCoCBwb3J0QDE6Cj4gIMKgwqDCoMKgwqDCoMKgICRyZWY6IC9zY2hlbWFzL2dy
YXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+ICDCoMKgwqDCoMKgwqDCoCBkZXNjcmlwdGlvbjog
SW5jb21pbmcgZW5kcG9pbnQgZnJvbSB0aGUgVVNCIGNvbnRyb2xsZXIKPiAKPiAgwqDCoMKgwqDC
oCBwb3J0QDI6Cj4gIMKgwqDCoMKgwqDCoMKgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3By
b3BlcnRpZXMvcG9ydAo+ICDCoMKgwqDCoMKgwqDCoCBkZXNjcmlwdGlvbjogSW5jb21pbmcgZW5k
cG9pbnQgZnJvbSB0aGUgRGlzcGxheVBvcnQgY29udHJvbGxlcgo+IAo+IHVzYi1zd2l0Y2gueWFt
bDoKPiAgwqAgcG9ydHM6Cj4gIMKgwqDCoCAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9w
ZXJ0aWVzL3BvcnRzCj4gIMKgwqDCoCBwcm9wZXJ0aWVzOgo+ICDCoMKgwqDCoMKgIHBvcnRAMDoK
PiAgwqDCoMKgwqDCoMKgwqAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9w
b3J0Cj4gIMKgwqDCoMKgwqDCoMKgIGRlc2NyaXB0aW9uOgo+ICDCoMKgwqDCoMKgwqDCoMKgwqAg
U3VwZXIgU3BlZWQgKFNTKSBPdXRwdXQgZW5kcG9pbnQgdG8gdGhlIFR5cGUtQyBjb25uZWN0b3IK
PiAKPiAgwqDCoMKgwqDCoCBwb3J0QDE6Cj4gIMKgwqDCoMKgwqDCoMKgICRyZWY6IC9zY2hlbWFz
L2dyYXBoLnlhbWwjLyRkZWZzL3BvcnQtYmFzZQo+ICDCoMKgwqDCoMKgwqDCoCBkZXNjcmlwdGlv
bjoKPiAgwqDCoMKgwqDCoMKgwqDCoMKgIFN1cGVyIFNwZWVkIChTUykgSW5wdXQgZW5kcG9pbnQg
ZnJvbSB0aGUgU3VwZXItU3BlZWQgUEhZCgpEbyB5b3UgaGF2ZSBhbnkgYWR2aWNlIGhvdyB0byBz
b2x2ZSB0aGlzID8gUmVxdWlyZXMgaXMgbm90IHRoZSBwcm9ibGVtLCB0aGUgcHJvYmxlbSBpcyB0
byBoYXZlIHRoZSBwb3J0CmRlZmluaXRpb25zIGluIHVzYi1zd2l0Y2gueWFtbAoKTmVpbAoKPiAK
PiBOZWlsCj4gCj4+Cj4+IFJvYgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
