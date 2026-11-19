Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642C7606A325
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 07:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ev5Ji08X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=O6vB0Y1a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dchlinWZo5cs1rD/quUjfUjzcAP8BiQ4KqdTZrbYXlQ=; b=Ev5Ji08XeYDfRIb+D+bWdpm372
	gnIm4gb4ggKBGm8hnDnQMYZSNv2Dm7EM8ZemWBP0oHn522OfC4a0i93y+om/7p4dmR0X1bGFIC3by
	jQmP/qNxAOM+DCLKlgwzkD8Mj30JcWJ4QX8L8ZUAHFCtw3j9hHoFgt08Vpf8p/LRE5bQ+0EtmuY6x
	yyHDg/JSHBZH1gV3wKNLzpY1YXm1yaexP3g7YAtNCUeOSMcJtrMFuIAKkqmPefMiIyl1kqEeG42q7
	ztk8Aig1DZcTZpPOjFRqA9ywxFDwrN4STZY+/uUv1voPPFYshHuNpIfKR3UOj7nZJGIBHZwlE1w+R
	4JkUwcSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTx2F-0000000B7hO-4BCL;
	Thu, 19 Nov 2026 07:58:24 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTx2B-0000000B7fq-45EJ
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 07:58:22 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4a9a8d6cea8so7609785e9.1
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 23:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795075098; x=1795679898; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pdQlb2CsGbWPGWlbFcx6D3f/AbXcJrTux+zl7o+qrMU=;
        b=O6vB0Y1aGqTZIDya6p6hkNt793Si3/UqiPJ3xWr+HddfiHtN/W2JietFYDkrPhzcwc
         xBqbfEXdhZLxrfM6vsUoNLVDgCC3/8z9OO5rwJFfK4D7xCJZUxvjl0ocUzerHauo7u9R
         t4h90FlMaLPgtc5OQeu9Rs20nmD6PXruZ2Yn3qCp0YqOsLvQfJc8dSib2kTDdYEHsUw0
         7qcyPTaTiCFsAywwi8dHFcwnwHVzH4ofvKOGtTxTjNhCroJ6CziTcnLRHuIHR6wmQD6+
         Fpr99qKyXOPE9VFJ2kjFNj6iA0aSMox7/c31q/v1/5P8vfB7uE2Y6mZqFs3sQmS0e7KO
         Bs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795075098; x=1795679898;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pdQlb2CsGbWPGWlbFcx6D3f/AbXcJrTux+zl7o+qrMU=;
        b=BkatYRVokxMJ5jY6HzB9eCKVly9pY7UOk8g1+SrmtSS+nhs9p/Lsbhoyt0Costc0sH
         IsqACulmaLekKI5c9i99FLjfb0tEkG2dFThe75ucR1+BoJYBY0IzFpiiapYzodqDA2PE
         zDgPQThRahPXuUeAlybRvmKpln6+B3FxnCtKIj0N5q7Y1Bg+khKLx5kNGj04oSkcSXL0
         Pag3sYNrgRIeKqkxDNB/JT/5zhfNdicaWrdVpqjk6JFWj8WD5PEGMtegNzZq1Gal2CUd
         RbS3IAeo3wGuQSfmUbbGE2fzUKtPQwtmhzWEHPL6ZlOYFhs6Ivnem8J8xcu1KKXh8N2B
         tawg==
X-Forwarded-Encrypted: i=1; AL+hErED1Dgy0Yg9BI/+9wtl2zY5A9ReHoC6KXrWYec4wHGTGviKbyBD1HzYt/4rWDetu8/KoYSx8RwZJGA=@lists.infradead.org
X-Gm-Message-State: APuU4Z9yIIx35Oelj99w0io4X23sKR5JD/29k+yu70lp9RlLmOo0lJ19
	/AhPH2dpq/nUGC7vmN7LPjpdoXmXnaFJbifmNshyZiynq7NsrcKcA8NF8MJy2BYFKTk=
X-Gm-Gg: AYBFou0UBtcHCrs5aUQB4bizhGU6EpaVKctVF/OipsfMbdOPxyGUwjdVIlYLsldIA0p
	cyXjhrQZZ5HiO9kl/dq2vSxehUqXbVvsVaMrYznLl7aZ9R+I66C25LrMXG/c565LzoerRqmgOL2
	xVGdA9oG0Yua5dH/k3IxjI0iUmn6mZJmy0zzViuU5rjWncR3nvxbbsna2TttqCJKpQbia2yJULz
	A27vhd/keCxsKqc6gwCxAAKC3TdQVjzyX1h/34cvXeN5bIAIZ2kCvWxENL8HVWekRLKXWIfMAuA
	9m5u0r1fPO+a7Jo0Ik56RuM49sibuxRnrcQOKK0k10HFvsA+dtBSrAQQHH//fv3/z+Lbd9WfYkO
	cFpQNE5c1tBOb9Ysuet7/y6r4oovbFdIoCvY0WimBQV7NRQlfPKRPuKl+8Vp9nKyaynu8tnfhGr
	Xcs2Dlf0PVc0ubN9HgdN6ljt/3cBKfn4fmoBxEetB/qpTH4cQ+/H8NLf+8eaoZh5sJZcyYAvJlV
	gk+CgWLGJ6+hyRTg7O/TttWXKRx7OBs2geEWwFhMzn0W0gkBGZWsT1xIPr0f7Nf6igNBCrBOMRD
	nEtK9C00vVdr8n9J0zu9jTYtwtrBC2hgTDc0OokP9Z79mRYqGVADbDT7vR6e5z+Mau9QdA54mle
	8QBOTSdg8
X-Received: by 2002:a05:600c:4e86:b0:4a2:526b:d40f with SMTP id 5b1f17b1804b1-4bb8609ad6dmr6876015e9.0.1795075097389;
        Wed, 18 Nov 2026 23:58:17 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:3611:76ad:c4e1:77e7? ([2a01:e0a:106d:1080:3611:76ad:c4e1:77e7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb8532f1a9sm15704175e9.3.2026.11.18.23.58.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2026 23:58:16 -0800 (PST)
Message-ID: <04447713-32bb-46ff-8dd9-ba00bce186db@linaro.org>
Date: Thu, 19 Nov 2026 08:58:15 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 00/10] phy/drm: amlogic: Extract Meson HDMI TX PHY into a
 dedicated driver
To: linux-kernel-dev@aliel.fr
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
References: <20261117-meson-drm-create-hdmitx-phy-v1-0-9e0ac931381c@aliel.fr>
 <51831581-525f-418c-86ea-3b5c6a80709b@linaro.org>
 <bb027d3b-6a43-4dd3-9771-3448c86996b5@aliel.fr>
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
In-Reply-To: <bb027d3b-6a43-4dd3-9771-3448c86996b5@aliel.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_235820_705589_9A90A97B 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMTgvMjYgMjA6MzUsIGxpbnV4LWtlcm5lbC1kZXZAYWxpZWwuZnIgd3JvdGU6Cj4gT24g
MTEvMTgvMjYgMTM6MzgsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gMTEv
MTcvMjYgMjA6MzMsIFJvbmFsZCBDbGF2ZWF1IHZpYSBCNCBSZWxheSB3cm90ZToKPj4+IFRoaXMg
c2VyaWVzIG1vdmVzIHRoZSBBbWxvZ2ljIE1lc29uIEhETUkgVFggUEhZIGhhbmRsaW5nIChjb3Zl
cmluZyBHWEJCLAo+Pj4gR1hMLCBHWE0sIGFuZCBHMTJBIFNvQ3MpIG91dCBvZiB0aGUgbWVzb25f
ZHdfaGRtaSBEUk0gZHJpdmVyIGFuZCBpbnRvIGEKPj4+IGRlZGljYXRlZCBnZW5lcmljIFBIWSBk
cml2ZXIuCj4+Pgo+Pj4gVW50aWwgbm93LCBtZXNvbl9kd19oZG1pIGRpcmVjdGx5IG1hbmlwdWxh
dGVkIHRoZSBISEkgc3lzdGVtIGNvbnRyb2xsZXIKPj4+IHJlZ2lzdGVycyAoSEhJX0hETUlfUEhZ
X0NOVEwwLi41KSB0byBjb25maWd1cmUgYW5hbG9nIHBhcmFtZXRlcnMsIHRvZ2dsZQo+Pj4gcmVz
ZXRzLCBhbmQgbWFuYWdlIHBvd2VyIHN0YXRlcywgYXMgd2VsbCBhcyBtYW51YWxseSB1bmdhdGlu
ZyBIRE1JCj4+PiBjbG9ja3MgYW5kIHBvd2VyIGRvbWFpbnMgYWxyZWFkeSBkZXNjcmliZWQgaW4g
dGhlIERULgo+Pj4KPj4+IEJ5IGV4dHJhY3RpbmcgdGhpcyBsb2dpYyBpbnRvIGEgc3RhbmRhbG9u
ZSBQSFkgZHJpdmVyIHVuZGVyCj4+PiBkcml2ZXJzL3BoeS9hbWxvZ2ljLzoKPj4+IC0gSGFyZHdh
cmUgcmVwcmVzZW50YXRpb24gaW4gdGhlIERUIGlzIGNsZWFuZXIsIG1vZGVsaW5nIHRoZSBIRE1J
IFRYIFBIWQo+Pj4gIMKgwqAgYXMgYSBjaGlsZCBub2RlIG9mIHRoZSBISEkgc3lzY29uIHJlZmVy
ZW5jZWQgdmlhIHN0YW5kYXJkICJwaHlzIiBhbmQKPj4+ICDCoMKgICJwaHktbmFtZXMiIHByb3Bl
cnRpZXMuCj4+PiAtIFRoZSBEUk0gYnJpZGdlIGRyaXZlciByZWxpZXMgb24gdGhlIHN0YW5kYXJk
IGdlbmVyaWMgUEhZIEFQSQo+Pj4gIMKgwqAgKHBoeV9pbml0LCBwaHlfY29uZmlndXJlLCBwaHlf
cG93ZXJfb24vb2ZmLCBwaHlfZXhpdCkgcmF0aGVyIHRoYW4KPj4+ICDCoMKgIHRvdWNoaW5nIHN5
c2NvbiByZWdpc3RlcnMgZGlyZWN0bHkuCj4+PiAtIExlZ2FjeSBEVHMgbGFja2luZyB0aGUgInBo
eXMiIHByb3BlcnR5IHJlbWFpbiBzdXBwb3J0ZWQgdmlhIGEKPj4+ICDCoMKgIHRlbXBvcmFyeSBm
YWxsYmFjayBoZWxwZXIgKG1lc29uX2hkbWlfcGh5X2NyZWF0ZV9sZWdhY3kpIHRvIHByZXNlcnZl
Cj4+PiAgwqDCoCBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHRvIGJlIHJlbW92ZWQgb24gbmV4dCBw
aGFzZSBvZiBjb21wb25lbnQKPj4+ICDCoMKgIHJlbW92YWwuCj4+Pgo+Pj4gT3ZlcnZpZXcgb2Yg
dGhlIHNlcmllczoKPj4+IC0gUGF0Y2hlcyAxLTM6IEZpeCBjb21wYXRpYmxlIG1hdGNoaW5nIGlu
IG1lc29uLWd4LWhoaS1zeXNjdHJsIGJpbmRpbmdzLAo+Pj4gIMKgwqAgYWRkIHRoZSBuZXcgYW1s
b2dpYyxtZXNvbi1oZG1pLXR4LXBoeSBEVCBzY2hlbWEsIGFuZCBhbGxvdyB0aGUKPj4+ICDCoMKg
ICJoZG1pLXBoeSIgY2hpbGQgbm9kZSB1bmRlciB0aGUgSEhJIHN5c2Nvbi4KPj4+IC0gUGF0Y2gg
NDogQWRkIHRoZSBuZXcgTWVzb24gSERNSSBUWCBQSFkgZHJpdmVyIGltcGxlbWVudGluZyB0aGUg
SERNSQo+Pj4gIMKgwqAgUEhZIGNvbmZpZ3VyYXRpb24gb3BzLCBhbG9uZyB3aXRoIHRoZSB0ZW1w
b3JhcnkgbGVnYWN5IGNyZWF0aW9uCj4+PiAgwqDCoCBoZWxwZXIuCj4+PiAtIFBhdGNoIDU6IERv
Y3VtZW50IHRoZSBvcHRpb25hbCAicGh5cyIgYW5kICJwaHktbmFtZXMiIHByb3BlcnRpZXMgaW4K
Pj4+ICDCoMKgIHRoZSBhbWxvZ2ljLG1lc29uLWR3LWhkbWkgYmluZGluZy4KPj4+IC0gUGF0Y2hl
cyA2LTc6IENsZWFuIHVwIG1hbnVhbCBISEkgY2xvY2svcG93ZXItZG9tYWluIHdyaXRlcyBpbgo+
Pj4gIMKgwqAgbWVzb25fZHdfaGRtaSAocmVseWluZyBvbiBydW50aW1lIFBNIGluc3RlYWQpIGFu
ZCBjb252ZXJ0IHRoZSBkcml2ZXIKPj4+ICDCoMKgIHRvIHVzZSB0aGUgZ2VuZXJpYyBQSFkgZnJh
bWV3b3JrLgo+Pj4gLSBQYXRjaGVzIDgtMTA6IEFkZCB0aGUgImhkbWktcGh5IiBjaGlsZCBub2Rl
IGFuZCB3aXJlIHVwIHRoZSAicGh5cyIKPj4+ICDCoMKgIHBoYW5kbGUgZm9yIEcxMiwgR1hCQiwg
YW5kIEdYTCBEZXZpY2UgVHJlZXMuCj4+Pgo+Pj4gVGVzdGVkIG9uOgo+Pj4gLSBLaGFkYXMgVklN
MSAoR1hMKQo+Pj4gLSBkdGJzX2NoZWNrIGFuZCBkdF9iaW5kaW5nX2NoZWNrIHJ1biBjbGVhbmx5
IHdpdGggbm8gbmV3IHdhcm5pbmdzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFJvbmFsZCBDbGF2
ZWF1IDxsaW51eC1rZXJuZWwtZGV2QGFsaWVsLmZyPgo+Pj4gLS0tCj4+PiBSb25hbGQgQ2xhdmVh
dSAoMTApOgo+Pj4gIMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogc29jOiBhbWxvZ2ljOiBtZXNv
bi1neC1oaGktc3lzY3RybDogRml4IGNvbXBhdGlibGUKPj4+IG1hdGNoaW5nIGluIGNvbmRpdGlv
bmFscwo+Pj4gIMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogcGh5OiBhbWxvZ2ljOiBBZGQgTWVz
b24gSERNSSBUWCBQSFkgYmluZGluZwo+Pj4gIMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogc29j
OiBhbWxvZ2ljOiBtZXNvbi1neC1oaGktc3lzY3RybDogQWRkIGhkbWktcGh5Cj4+PiBjaGlsZCBu
b2RlCj4+PiAgwqDCoMKgwqDCoMKgIHBoeTogYW1sb2dpYzogQWRkIE1lc29uIEhETUkgVFggUEhZ
IGRyaXZlcgo+Pj4gIMKgwqDCoMKgwqDCoCBkdC1iaW5kaW5nczogZGlzcGxheTogYW1sb2dpYyxt
ZXNvbi1kdy1oZG1pOiBBZGQgcGh5cyBhbmQgcGh5LQo+Pj4gbmFtZXMKPj4+ICDCoMKgwqDCoMKg
wqAgZHJtL21lc29uOiBkdy1oZG1pOiBEcm9wIG1hbnVhbCBISEkgY2xvY2sgYW5kIG1lbW9yeSBQ
RCBzZXR1cAo+Pj4gIMKgwqDCoMKgwqDCoCBkcm0vbWVzb246IGR3LWhkbWk6IFVzZSB0aGUgZ2Vu
ZXJpYyBQSFkgZnJhbWV3b3JrIGZvciB0aGUgSERNSQo+Pj4gVFggUEhZCj4+PiAgwqDCoMKgwqDC
oMKgIGFybTY0OiBkdHM6IGFtbG9naWM6IEFkZCBIRE1JIFRYIFBIWSBub2RlIGZvciBHMTIKPj4+
ICDCoMKgwqDCoMKgwqAgYXJtNjQ6IGR0czogYW1sb2dpYzogQWRkIEhETUkgVFggUEhZIG5vZGUg
Zm9yIEdYQkIKPj4+ICDCoMKgwqDCoMKgwqAgYXJtNjQ6IGR0czogYW1sb2dpYzogQWRkIEhETUkg
VFggUEhZIG5vZGUgZm9yIEdYTAo+Pj4KPj4+ICDCoCAuLi4vYmluZGluZ3MvZGlzcGxheS9hbWxv
Z2ljLG1lc29uLWR3LWhkbWkueWFtbMKgwqDCoCB8wqDCoCA4ICsKPj4+ICDCoCAuLi4vYmluZGlu
Z3MvcGh5L2FtbG9naWMsbWVzb24taGRtaS10eC1waHkueWFtbMKgwqDCoCB8wqAgMzMgKysrCj4+
PiAgwqAgLi4uL3NvYy9hbWxvZ2ljL2FtbG9naWMsbWVzb24tZ3gtaGhpLXN5c2N0cmwueWFtbMKg
IHzCoCA0MyArKy0KPj4+ICDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEy
LWNvbW1vbi5kdHNpwqAgfMKgwqAgNyArCj4+PiAgwqAgYXJjaC9hcm02NC9ib290L2R0cy9hbWxv
Z2ljL21lc29uLWd4YmIuZHRzacKgwqDCoMKgwqDCoMKgIHzCoMKgIDcgKwo+Pj4gIMKgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1neGwuZHRzacKgwqDCoMKgwqDCoMKgwqAgfMKg
wqAgNyArCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL21lc29uL0tjb25maWfCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+PiAgwqAgZHJpdmVycy9n
cHUvZHJtL21lc29uL21lc29uX2R3X2hkbWkuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
MjAzICsrKysrKy0tLS0tLS0tCj4+PiAgwqAgZHJpdmVycy9waHkvYW1sb2dpYy9LY29uZmlnwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTEgKwo+Pj4g
IMKgIGRyaXZlcnMvcGh5L2FtbG9naWMvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4+ICDCoCBkcml2ZXJzL3BoeS9hbWxvZ2lj
L3BoeS1tZXNvbi1oZG1pLXR4LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMzA5ICsrKysrKysr
KysrCj4+PiArKysrKysrKysrCj4+PiAgwqAgaW5jbHVkZS9saW51eC9waHkvcGh5LW1lc29uLWhk
bWktdHguaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxOSArKwo+Pj4gIMKgIDEyIGZp
bGVzIGNoYW5nZWQsIDUxMyBpbnNlcnRpb25zKCspLCAxMzYgZGVsZXRpb25zKC0pCj4+PiAtLS0K
Pj4+IGJhc2UtY29tbWl0OiA2ZDU4MmQ3OGZhZDlkODI4ZTU3NWNhMGNkY2ZmOGVhNDdhNzcyMjBi
Cj4+PiBjaGFuZ2UtaWQ6IDIwMjYxMTE1LW1lc29uLWRybS1jcmVhdGUtaGRtaXR4LXBoeS00YWM0
MGE2NTRkMDkKPj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+PiAtLSAKPj4+IFJvbmFsZCBDbGF2ZWF1
IDxsaW51eC1rZXJuZWwtZGV2QGFsaWVsLmZyPgo+Pgo+PiBPdmVyYWxsIGl0J3MgdmVyeSBnb29k
LCBidXQgSSB3b3VsZCd2ZSBwcmVmZXJlZCBhIG1vcmUgc2VxdWVuY2lhbCBtb3ZlCj4+IHRvIHRo
ZSBQSFkgZHJpdmVyLCB3aXRoIGFuIGV4YWN0IGNvcHkgb2YgdGhlIGNvZGUgYW5kIHNpbXBsaWZp
Y2F0aW9uCj4+IHRvd2FyZHMgdGhlIGN1cnJlbnQgUEhZIGNvZGUuCj4+Cj4+IEFueXdheSwgdGhl
IHNhc2hpa28gcmV2aWV3IGNvbW1lbnRzIGFyZSBnb29kLCBlc3BlY2lhbGx5IHRoZSBvbmUgb24K
Pj4gcGF0Y2ggNiB0byBrZWVwIHRoZSBkcml2ZXIgd29ya2luZyBvbiBvbGQgRFRzLCBzb3JyeSBt
eSBiYWQuLi4KPj4KPj4gTmVpbAo+IAo+IFRoYW5rcyBmb3IgeW91ciBmZWVkYmFjaywgSSBhbSBh
bmFseXppbmcvdGVzdGluZyBzYXNoaWtvIGZlZWRiYWNrLgo+IAo+IEFib3V0IHRoZSBzdXNwZW5k
L3Jlc3VtZSB1bmJpbmQvYmluZCwgSSBkbyBub3QgaGF2ZSBhbnkgaXNzdWUgb24gbXkKPiBzaWRl
LCBidXQgSSBjYW4gY2hhbmdlIHRoZSBvcmRlcnMuCj4gCj4gQWJvdXQgcGF0Y2ggNiBhbmQgdGhl
IG9sZCBEVHMsIEkgd2lsbCByZWludHJvZHVjZSB0aGVtIHdpdGggdGhlIGxlZ2FjeQo+IGNoZWNr
LiBEbyB5b3Uga25vdyB3aGF0IHdvdWxkIGJlIGEgZ29vZCB0aW1lbGluZSB0byBhZGQgYSByZXF1
aXJlIG9uCj4gdGhvc2UgZWxlbWVudHMgYW5kIGRyb3AgdGhlIGZhbGxiYWNrIGNvZGUgPwo+IAoK
VGhlIHByb2JsZW0gaXMgbm90IG5lY2Vzc2FyaWx5IHRoZSBrZXJuZWwgRFQgYnV0IHRoZSBVLUJv
b3QgRFQgd2hpY2gKY291bGQgYmUgdXNlZCBieSB0aGUga2VybmVsLgoKVGhlIFUtQm9vdCBEVCB3
YXMgdXNpbmcgdjYuMiBiZWZvcmUgdjIwMjQuMDcgYW5kIGFmdGVyIGl0IHVzZXMgdGhlIHN5bmNo
cm9uaXplZApEVCBmcm9tIExpbnV4LCB3aGljaCBjb2luY2lkZXMgd2l0aCB0aGUgdjYuMTEgRFQg
d2hpY2ggY29udGFpbnMgdGhlIERUIGNsb2NrcwpjaGFuZ2VzLgoKSXQgc2VlbXMgbW9zdCBvZiB0
aGUgU0JDcyBkaXN0cm8gdXNlcyByZWNlbnQgVS1Cb290IHZlcnNpb25zLCBhbmQgc29tZSBuaWNl
IGRpc3RybwpzaGlwcyBvbGRlciBVLUJvb3QgdmVyc2lvbiwgc28gaXQgY291bGQgYnJlYWsgb24g
dGhvc2UgaWYgYSBuZXcga2VybmVsIHdhcyBkZXBsb3llZC4KCkJ1dCwgVS1Cb290IGFscmVhZHkg
c2V0IEhISV9IRE1JX0NMS19DTlRMIGFuZCBISElfTUVNX1BEX1JFRzAgd2hlbiBwcm9iaW5nIGR3
X2hkbWkKc2luY2UgMjAxOS4wNCBzbyBjb25zaWRlcmluZyB0aGF0IEkgdGhpbmcgdGhlIHJpc2sg
aXMgc3VwZXIgbG93LgoKQWRkIHRoaXMgdG8geW91ciBjb21taXQgbWVzc2FnZSBhbmQgc2VuZCBh
IHYyLgoKTmVpbAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
