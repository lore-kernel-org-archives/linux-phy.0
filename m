Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2600606A324
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 08:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p3NvOvpd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=iiW0RAEc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HJ/UtH7tmxxOl6nIhljpk4QWS6aogR1+HNy3s56OdiY=; b=p3NvOvpd9wz/qoUJNzZHAL9fjt
	qWxj3B8rueGuXfEBVGYA97ho2Yuypx7y4HOAuoPJUI6+3FfH4m4agF67P7MnapvL/yCwzJ7eUcBKd
	2vSPk4NqzgTEANMDeyxATTFE3gauUBtGhi3IF3MC5uETPJ+QRPlj2g/IxBpbFmoQLaL9XZmHJGUUw
	yZqUlDJbaZyWSnM59c1B2Cdg/yM4QI4uKh7GMTAF1OEajMDl/vzlc/xFsSrBy9dBk3f2GD/rSVMZc
	hxFm48jhIUtF6gNJ4U8o8SNLWZqkTqfAabr9Gim6SxR2jGDzOeQdEU2XOQlMo/8Z90KDjsXg6Pcy7
	TNZtVbUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAJR-00000001eZ4-2zDp;
	Tue, 03 Nov 2026 08:56:13 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAJN-00000001eWU-1Pp9
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 08:56:12 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48e46e449e8so2365258f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 00:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793696167; x=1794300967; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0jyamYHXzSg2ziaLDwiS5/5BeZM4xaO8pbQEHrQdYGE=;
        b=iiW0RAEcZYPw0AdhAvbSNZrNPaoNqlMbzmstN3Gry7ZxzWlr8g11kZp5SbCXdnXGsi
         2EIAkAFCMvCylk6LhrgLtM5LYXkoEt4hdYCPaWnqE2hAAuu2jejWGmbSkn+Ww+3AQZaU
         HThPrcK1Hjl4FkDxQuHhPyEFiG2ldOoULi7vgiORh0ciYDRuF01Ea9jcT1vj6dfT/Yke
         z26vt+txSJFh1tWWFk6TKfS6y08Kqgml52HkcutH9CK6M89pK2gIvgQOSA5ibKKyclwA
         m5zfTUeg9R5bztcBWs+O0QbVAyMPBstNFqHkX+Tzrl0ZcjAQRpBppERo4YBEhkEl+vOa
         75Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793696167; x=1794300967;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0jyamYHXzSg2ziaLDwiS5/5BeZM4xaO8pbQEHrQdYGE=;
        b=LFODF/htNubWnqtksZLj77oBj9HQvyynaBFvOFvexiNoIl3JAjRC+WouZ451k+aFu5
         mgfkun5XMGzmUiFM1tEv9b9OjF2Xm9b1Y1vc1Q9ajDUGN7fa0OrF+8QwVnuLQC69ZEdt
         I59WdX492saLFW7JCKYwq+hJw8uxOH5OOjHmKCQIWjPMIKf6Vvn/3T/7Hlg4qpqTaTHO
         STyUPbFzxXA1Jzx0apJYow2SND912JE5aM8LnSDiwXWQuWd4kShKghmw8woIgqPv6e7g
         aJZdAN0OSfHrIPPvKXE2FS61luBT2zTyNVMK1ILn44//iJx3a02l0oLALb6KDWdLKSJe
         FLEg==
X-Forwarded-Encrypted: i=1; AKwUvBzJX1CtQ5KJDruJIJm/4BwTOEevI4eGJ6diXYj+1wZ/04ayQy9TH292dmfcOFIyp0x2T8IALwXytSo=@lists.infradead.org
X-Gm-Message-State: APuU4Z8no5jhBHPKWNGYigRrISmm1on7ddvOOo2cYCXbBK5mg4/zBB1/
	kcmrcGL0DT0/xrWwOJFaHZ+K12hLi7pW1q2vgJT4eGc+ZOA3E5IS670rkEGkFneioNY=
X-Gm-Gg: AYBFou3S7vN1Jx/+AQbiG9bmsCWYXsniNYJFEgK8K7HQm3giA2pKLYcY1sDBR1VWpCN
	TXI80I96ZFmDw5fcUNUTVRhTY/D8Nq0axWciKudx8sPyv1CPni90Z/88dBC2Y8lDfKt7lBTdrGa
	8BrcD958aZ1+2nBX9qZfyf5P8vSKwIAEoGCbAV489Jwba/E7Mp9GY4x1xePnUf+r0P+n3vOfxNL
	hQLIs1Rh2BsFp7S3xT7pHNDsz0EWXIYjfBg4ENtQqUvnw9LjRwW/0RWETn8tFcw7M4RUFOBMTDq
	/gpdxI+8au1pSvLicmiS9COPUlVPayHtCoKURn18BaK28z67+0AIvTcazgX9KJMMVeA6TlBcmJh
	89TDqyvTibrg4UBt6fyyuctrUMwF338oOuwPVKhxzfjPmgVvrn0oY0ujMWO5bmrpNc9G3t1J1mu
	LOX4GiU2IhE0R97fNyRpoN5vF1U7ULtvWC7IOMfRc/Y/H+R4x7xQI9bRZw4sQJrtW8/KEK/1n3Q
	yxA+btvzp6mtGVIkz9UHjvZdca2iuZcTgg4WrurXbZ7px+VCwbgIJJBc32vRKImDcnK6gafQSsb
	fvHDTH5t92rCkaIbzY3g7hZuZKED/BdCpMMucSiL4MSB56nwJoisxZMB2WuBoX3TrQQI3asVcFa
	uH/PnOt7C
X-Received: by 2002:a05:6000:2504:b0:48e:5df9:1ec9 with SMTP id ffacd0b85a97d-48e6e500979mr30641989f8f.24.1793696167199;
        Tue, 03 Nov 2026 00:56:07 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:95a2:4869:9f46:45f0? ([2a01:e0a:106d:1080:95a2:4869:9f46:45f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e88876946sm4998576f8f.5.2026.11.03.00.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 00:56:06 -0800 (PST)
Message-ID: <c1c38ee8-5a7c-4b08-89c1-e1e27a2043d1@linaro.org>
Date: Tue, 3 Nov 2026 09:56:06 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/2] phy: amlogic: meson-g12a-usb2: add S4 support
To: christian.koever-draxl@student.uibk.ac.at, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, vkoul@kernel.org,
 mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_Stefan_K=C3=B6v=C3=A9r-Draxl?= <ckoever@outlook.de>
References: <20261025192202.209045-1-christian.koever-draxl@student.uibk.ac.at>
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
In-Reply-To: <20261025192202.209045-1-christian.koever-draxl@student.uibk.ac.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_005609_687735_64FC7BAD 
X-CRM114-Status: GOOD (  14.86  )
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

T24gMTAvMjUvMjYgMjA6MjIsIGNocmlzdGlhbi5rb2V2ZXItZHJheGxAc3R1ZGVudC51aWJrLmFj
LmF0IHdyb3RlOgo+IEZyb206IENocmlzdGlhbiBTdGVmYW4gS8O2dsOpci1EcmF4bCA8Y2tvZXZl
ckBvdXRsb29rLmRlPgo+IAo+IFRoZSBTNCBVU0IyIFBIWSBpcyB0aGUgQTEgZGVzaWduIHdpdGgg
ZGlmZmVyZW50IGFuYWxvZyB0cmltcyBhbmQgYW4KPiBleHRyYSBkaXNjb25uZWN0IHRocmVzaG9s
ZDsgd2l0aG91dCBpdHMgUE1BIHVwZGF0ZSBiaXQgdGhlIGhvc3Qgc2VlcyBubwo+IHJvb3QgcG9y
dHMuIEFkZCBhIGNvbXBhdGlibGUgYW5kIHRoZSBTNCBzZXR0aW5ncyBmcm9tIHRoZSB2ZW5kb3Ig
ZHJpdmVyLgo+IAo+IFRlc3RlZDogYm90aCBob3N0IHBvcnRzIGVudW1lcmF0ZSBrZXlib2FyZHMs
IG1pY2UsIGh1YnMgYW5kIHN0b3JhZ2UuCj4gCj4gVG9vbCB1c2UgKERvY3VtZW50YXRpb24vcHJv
Y2Vzcy9nZW5lcmF0ZWQtY29udGVudC5yc3QpOgo+IFRoaXMgd29yayB3YXMgZG9uZSB3aXRoIHRo
ZSBoZWxwIG9mIGFuIEFJIGNvZGluZyBhc3Npc3RhbnQsIENsYXVkZQo+IChBbnRocm9waWMpLCB1
c2VkIHRocm91Z2ggQ2xhdWRlIENvZGUgb3ZlciBtYW55IHNlc3Npb25zLiBJdCBkaWQgYSBsYXJn
ZQo+IHBhcnQgb2YgdGhlIGhhbmRzLW9uIHdvcms6IGl0IHJlYWQgdGhlIHZlbmRvciBrZXJuZWwg
YW5kIHRoZSBmaXJtd2FyZQo+IGludGVyZmFjZXMsIHByb2JlZCByZWdpc3RlcnMgb24gdGhlIGJv
YXJkLCBkcmFmdGVkIHRoZSBjb2RlIGFuZCB0aGUKPiBjaGFuZ2Vsb2dzLCBhbmQgcmFuIHRoZSBi
dWlsZHMsIGNoZWNrcGF0Y2gsIGR0X2JpbmRpbmdfY2hlY2sgYW5kIHRoZQo+IHRlc3RzIG9uIHRo
ZSBoYXJkd2FyZS4gSSBkaXJlY3RlZCB0aGUgd29yaywgcmV2aWV3ZWQgZXZlcnkgY2hhbmdlIGFu
ZAo+IHRoZSBmaW5hbCBwYXRjaGVzLCBhbmQgdGFrZSByZXNwb25zaWJpbGl0eSBmb3IgdGhlbS4g
VGhlcmUgaXMgbm8gc2luZ2xlCj4gcHJvbXB0IHRvIHF1b3RlOyB0aGUgc2Vzc2lvbnMgd2VyZSBv
ZiB0aGUgZm9ybSAiZmluZCBvdXQgd2h5IFggZmFpbHMgb24KPiB0aGlzIGJvYXJkLCBmaXggaXQs
IHRlc3QgaXQgb24gdGhlIGJveCIuCj4gCj4gVGVzdGVkIG9uIGFuIEFtZWRpYXRlY2ggWDk4USBU
ViBib3ggKEFtbG9naWMgUzkwNVcyLCBTNCBmYW1pbHksIDIgR2lCKSwKPiB2ZW5kb3IgVS1Cb290
IGFuZCBCTDMxL09QLVRFRSwgTGludXggNy4zIHBsdXMgdGhpcyB3b3JrLgo+IAo+IENocmlzdGlh
biBTdGVmYW4gS8O2dsOpci1EcmF4bCAoMik6Cj4gICAgZHQtYmluZGluZ3M6IHBoeTogYW1sb2dp
YyxnMTJhLXVzYjItcGh5OiBhZGQgUzQgY29tcGF0aWJsZQo+ICAgIHBoeTogYW1sb2dpYzogbWVz
b24tZzEyYS11c2IyOiBhZGQgUzQgc3VwcG9ydAo+IAo+ICAgLi4uL2JpbmRpbmdzL3BoeS9hbWxv
Z2ljLGcxMmEtdXNiMi1waHkueWFtbCAgIHwgIDEgKwo+ICAgZHJpdmVycy9waHkvYW1sb2dpYy9w
aHktbWVzb24tZzEyYS11c2IyLmMgICAgIHwgNjUgKysrKysrKysrKysrKystLS0tLQo+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPiAKPiAKPiBi
YXNlLWNvbW1pdDogN2JlNGJjNTJmZDllMGU1NWRjOWEyZTAyMzJiODk0MjdkMmM0YjYxNAoKQWNr
ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgoKVGhhbmtz
LApOZWlsCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
