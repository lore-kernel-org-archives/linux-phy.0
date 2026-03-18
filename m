Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7772A103E195
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 15:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XiizxdNpMAKgvu5qpB7pwrwmA38Ta6rngfU/1k4OEk=; b=d+dNRzPbUpyKl5aq4ayGjJmprD
	93luBesJA2FQh0ImXEVEuA40rHnKAIM35rU2seaHX55ROX7Hz5iU06AgGYBW1gNBvgC7qo/HbvTVZ
	OftaVtHYQClNhKgDz0XHG4X6IZrL6UjHvmFaNsePtl4gImAWTDm6al4sm6P6lXp+08s3uozAxjanf
	92z1rnK9fCzK7UaGIli44mBL3qaCqL14J+6jWRitDNZ29hfJ4q6t16KzUjSCiP2oQw0gOgQnQK1Qd
	dYrst55jxui/04NVHWyB9NzZ9Cna8BmE2J8i0sraQALKmz2xyGeuFME3qTDUXhSJ/ZzNT/IBSSlGv
	lsUcMR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sUs-00000008evT-0rK8;
	Wed, 18 Mar 2026 15:07:46 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sUp-00000008ev5-3e9w
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 15:07:45 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so78372175e9.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 08:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773846462; x=1774451262; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFLt/AnnZVIYBmUJ6Ma21B1/LPas1wfia2xtndFkX+Y=;
        b=sOh3E5VDtSem3f7jBwk+MkL+nuOUBw1o937EDlleBdmSChl0H+Dpx6DXY7+r51aTxc
         qXzavvjzyl6jETImcvsFS6pIDtCeN9+vdPGdHmPa6u1WKfGiE2VkGbseTUJ0TtqTa4G+
         NecpRDQFOkYoHDHsWGmCoZfLTusQDpK0kx6GlubS3a83cKU+Hg528pdGewnzROjaddDc
         7E3BA9tcgORdsraB8xmu+Uu2e56bd3V5+fKJhQybzioNfyqmbazcXxIlCC2e5awMyRWl
         vDms8krJUYPqATRos43dTALwaujsrPJe83/FzYmHX4LilL9YsThHUZ8o0aNPbbQooDSp
         GGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846462; x=1774451262;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFLt/AnnZVIYBmUJ6Ma21B1/LPas1wfia2xtndFkX+Y=;
        b=rVysGoUF4Gp51l2Di4m1vVrrcv1/aezASmCKoVubcDEeMHKGWVPx3pUeixCjqNlRCR
         OciCFJbaeYFq2TmoYpwWDqguJXdu+E9NGrb/CPdKypBnCAZxZ2P9p3o/k3USv4vP+oq4
         7D5Swvk6fX0WIH0dxrMF+AsYxia7whXVgNiedRM3DxXoIVmv8zT4eGz53a1zGysIToPF
         VGl4W/XxKzfpadDFsRNF+ZToKi4Q7OUMSuq9Pk17BMpRkhEcbCz7YKZuAStZamNTqWqG
         Lz5urJnifBIVif8oYLLLzYC/BQj6s+oS7Gz1eN3O0RaAy6JNumhznIIEnXP6qWHaUAit
         Xu/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPgvmHVDSeD32f8u6ZIQWY1VyHsoPmpbvSnuxKo7wQSxYZILhfDWUnStOEJlOVGg7V2y5Ye3cCWCo=@lists.infradead.org
X-Gm-Message-State: AOJu0YykpqCINvFvYmTdCwmkqTsLmJJIRZXnafHu4HIM8fk0KEBMyK+B
	3wKpjXhea5JsMWwhRX6oRWSePyQTlHUAHL1dBhWe9yJOUxGXw6YK3QaWjLC+h+ig+2c=
X-Gm-Gg: ATEYQzwLjMY4ZDQnO1A7Z/Io2lYa9Fw44yaZh5OCdtAtYW12GSSf9AQFA4R/ZFX6sxY
	W25Y6ao5ALVKjYx7E5r1i6S0znFp/Qs5xDZ2pBN/n615tGWiy+oudDcsKNOrzaZvUgt0fWz+vbH
	5l78ytTJ+15pIZIzT9DZI4LLwN32J9fN2tI99nN+VW5sVlD749j/bjnZl65oeT5ezij9UmcESCT
	RTdom2P1ldNNwvhaCLjJwWqasexeIIwbQ/CyaiTKYTyEB4S0+da+n5HlPPXe+D5FmtuYdXOVWt+
	fmdrM7HWHpy2pxRf4SFFMEkPZdd8uRnhYCMk504WjhvwGm30THHj4o3nBVwfxzmQY+3oY8tukZZ
	KpMZIsRpFt88T0t4RrI0dPwmwZx4RdRCXMeY8LqrPRsanSRt2irpI77pAX7QQTH2r8SfZxJ9i8e
	6+HvmvsGReCNq4WE56uwmEFOTmG2dr4UreSusErfVjiUv0imhCDXneY9VF7igjwURYXVDWfdNYm
	48SxsY=
X-Received: by 2002:a05:600c:698c:b0:485:3ca4:4ef4 with SMTP id 5b1f17b1804b1-486f4437560mr59882285e9.9.1773846461614;
        Wed, 18 Mar 2026 08:07:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0? ([2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4618e42sm23287495e9.6.2026.03.18.08.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 08:07:40 -0700 (PDT)
Message-ID: <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
Date: Wed, 18 Mar 2026 16:07:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
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
In-Reply-To: <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_080743_966780_057C8EBD 
X-CRM114-Status: GOOD (  16.57  )
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

T24gMy8xOC8yNiAxNDoxNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxOC8wMy8yMDI2
IDEwOjE1LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+ICvCoMKgwqAgLyoKPj4+ICvCoMKgwqDC
oCAqIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkubGFuZXMgc3RhcnRzIGZyb20gemVybyB0
bwo+Pj4gK8KgwqDCoMKgICogdGhlIG1heGltdW0gbnVtYmVyIG9mIGVuYWJsZWQgbGFuZXMuCj4+
PiArwqDCoMKgwqAgKgo+Pj4gK8KgwqDCoMKgICogVE9ETzogYWRkIHN1cHBvcnQgZm9yIGJpdG1h
c2sgb2YgZW5hYmxlZCBsYW5lcyBhbmQgcG9sYXJpdGllcwo+Pj4gK8KgwqDCoMKgICogb2YgdGhv
c2UgbGFuZXMgdG8gdGhlIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgc3RydWN0Lgo+Pj4g
K8KgwqDCoMKgICogRm9yIG5vdyB0YWtlIHRoZSBwb2xhcml0aWVzIGFzIHplcm8gYW5kIHRoZSBw
b3NpdGlvbiBhcyBmaXhlZAo+Pj4gK8KgwqDCoMKgICogdGhpcyBpcyBmaW5lIGFzIG5vIGN1cnJl
bnQgdXBzdHJlYW0gaW1wbGVtZW50YXRpb24gbWFwcyBvdGhlcndpc2UuCj4+PiArwqDCoMKgwqAg
Ki8KPj4KPj4gVGhpcyBpcyB3cm9uZyBzaW5jZSB5b3UgbG9vc2UgdGhlIGxhbmVzIG1hcHBpbmcg
ZGVmaW5lZCBpbiBEVCwgd2hpY2ggaXMgc3RpbGwgaW4gQ0FNU1MKPj4gYnV0IGlzIGEgUEhZIHBy
b3BlcnR5LiBUaGUgbGFuZXMgbGF5b3V0IGlzIG5vdCBhIHByb3BlcnR5IG9mIHRoZSBDU0kgY29u
dHJvbGxlciwKPj4gQ1NJIGNvbnRyb2xsZXIgb25seSBuZWVkIHRvIGtub3cgdGhlIGxhbmVzIGNv
dW50LCBhbmQgbm90IHRoZSBsYXlvdXQuCj4gCj4gTGFuZSBsYXlvdXQgaXMgYSBQSFkgY29uY2Vy
biBidXQsIHRoZSBQSFkgQVBJIGdpdmVzIHVzIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkg
d2hpY2ggc2hvdWxkIGJlIGV4dGVuZGVkIHRvIHByb3ZpZGUgbGF5b3V0IGFuZCBwb2xhcml0eS4g
VGhpcyB3b3VsZCB0aGVuIGJlIG9mIGJlbmVmaXQgdG8gbW9yZSB0aGFuIGp1c3QgcWNvbS9jYW1z
cy4KCldoeSA/IHRoZSBvbmx5IGNvbmNlcm4gYmV0d2VlbiBhIGNvbnRyb2xsZXIgYW5kIGEgUEhZ
IGlzIHRoZSBsYW5lIGNvdW50IHRvIGNhbGN1bGF0ZSB0aGUgYmFuZHdpZHRoLCB0aGUgYWN0dWFs
IHBpbiBsYXlvdXQgaXMgY2VydGFpbmx5IG5vdCBhIGNvbnRyb2xsZXIgY29uY2Vybi4KCj4gCj4g
UmlnaHQgbm93IG5vbmUgb2YgdGhlIENBTVNTIHVzZXJzIGZvciB0aGlzIGRyaXZlciBkZXBlbmQg
b24gYW55IG90aGVyIG1hcHBpbmcgYW5kIEkgcHJvcG9zZSBhIHNlcGFyYXRlIHNlcmllcyB0byBm
aXggcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSByYXRoZXIgdGhhbiBpbnRyb2R1Y2UgZGF0
YS1sYW5lcyB0byBEUEhZLgoKTm9uZSBvZiB0aGUgdXBzdHJlYW0gdXNlcnMgb2YgY2Ftc3MuCgpU
aGUgcHJvYmxlbSBpcyBldmVuIGxhcmdlciwgYXMgeW91IHJlcGxpZWQgaW4gWzFdLCB0aGUgY3Np
cGh5IGlzIHN0aWxsIGV4cG9zZWQgYXMgYSBtZWRpYSBlbGVtZW50IGZyb20gdGhlIENBTVNTIGRy
aXZlciwgdGhpcyBtZWFucyB0aGlzIGRyaXZlciBpcyBub3QgY29tcGxldGUsCml0IHNob3VsZCBi
ZSBhIG1lZGlhIGRyaXZlciBlbnRpcmVseSB3aXRoIGV2ZW50dWFsbHkgYW4gaW50ZXJuYWwgUEhZ
IGF1eCBkcml2ZXIsIGJ1dCB0aGlzIHdvdWxkIGJlIGVudGlyZWx5IGltcGxlbWVudGF0aW9uIHNw
ZWNpZmljLgoKRWl0aGVyIHRoZSBQSFkgaXMgc3RhbmRhbG9uZSBhbmQgdGhlIFBIWSBjb25zdW1l
ciBvbmx5IGNhbGxzIHBoeV9vcGVuL2luaXQvY29uZmlndXJlL3Bvd2VyX29uL3Bvd2VyX29mZi9l
eGl0LCBvdGhlcndpc2UgaXQncyBub3QgYSBmdWxseSBzdGFuZGFsaW5lIFBIWSBidXQgYSBjb21w
b3NpdGUgZGV2aWNlIGxpa2UgaGVyZS4KCkkgcHJvcG9zZSB0aGF0IHlvdSB3cml0ZSBhIHByb3Bl
ciBtZWRpYSBkcml2ZXIgZm9yIHRoZSBxY29tIGNzaXBoeSwgd2hpY2ggZXZlbnR1YWxseSBzcGlu
cyBhIFBIWSBkcml2ZXIgYXMgYW4gYXV4IGRldmljZS4KCk5laWwKCj4gCj4gLS0tCj4gYm9kCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
