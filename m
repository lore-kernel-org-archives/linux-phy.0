Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3400CCF34CB
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 15:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Row/O8Gh05BqFf/urXrf5kPZaKriqQdMMlBUaO4PgqI=; b=I8ce/S+KSo6KMc
	BhPXsrh6asrRgzJQ5RUkXS8Rog7g/RiGOy8WpXOvevPeuNl0HydTIfxrbwJGTRpRLp8Mou7q8cyFa
	2FPdzWHKot6Yb8S8QXHm5niY2NiuzRpf/eHe9bTZdtxvB8VN/ccScyt2BjML7fNT6bdWAHptBA/2I
	3Nrd7OtwMV176sbZEF8uXBDp6OIfv9aGtQLgf+qpN+FKI+1/nQZ83cXjp4S8lVyWjnc6pDiAkPdYO
	7tzN6JkqiT8QYF0Udt0A9nrHsc/J3GhLCXUozwjSWMQ/cJs9AT5i1Kmu76YSbYt70MiSf/NjyBHHJ
	JR99aBJYUEYgFo6Ffy2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjmP-00000003Szf-44It;
	Wed, 19 Nov 2025 15:07:33 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjmO-00000003SzG-02Q5
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 15:07:33 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-429c4c65485so5710063f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 07:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763564850; x=1764169650; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b8MXHRVY48CutCxVOD2Cd8MderTR1vjNZQmBDMhIq4I=;
        b=ibZSEak7p0zoHxjkMqeGEHpAzJnfFMajQEyVK084TH6ncVD3v3GFx1vczah+cTWw3M
         v9fgbIYaGUDsxgMkZa1EfDwyxWFWGAVQooF9wwEhnqKvjPjWbTOm86QVL4kpU+KF4FyC
         baoDEip1r+wQ8Was0H+a1UyMqZDU9yNamXBl3SrnQd5GZSsvIn6AvZj/RkBZR9cMPQmu
         xJcFCMxlUurUySHZDcbYZ2jHXgtS9jPCDLfKCSNdRj9CTl/guPgiWi4R0MGNeSOwMgVm
         7v5XollDt73fLDcEwh7eFE66qrQNv3SthsOhwHoD2ztJEM+wP8JlLgAUtdkDc0rjhFu6
         S7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763564850; x=1764169650;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8MXHRVY48CutCxVOD2Cd8MderTR1vjNZQmBDMhIq4I=;
        b=lK/OjCcWQ4V6LnRU3IS8wQRb1kjx7RPM9fw5OCl9CI1Xg+mHFNBU7dQxA9ShCpzmzl
         sp4blyrfPAC2z+U2HAwmIHIeliPfbVWqV3JXITefTGUBrMdlG45ema38KeAWK+gLzFFI
         W5+kY4VPy0cCevnb+/ouzvlKIlrZ0OZezTLFZinz8FMYkIpUcXya4KMQlrOnubBdy+kq
         EwfclJTUDVv0VaIz+S+zlV7zuPk0Xid8gj6lR1wNl1SGEVD25T0GOBUngozGcRRFGVU6
         liXPgzNFHm0jKcBQDZQ7Oj62Zwtip4cCOj05Ld6j7V2CU1M2SbliTJc67MqWh8kBx9OI
         AzOg==
X-Gm-Message-State: AOJu0YzDEzQr/qEPD9XrOz7T1ryH+AhM1+kx+cfDr0FHKDENDN7SaYOC
	w3E3q7QHP1P/t30P7fkDpQsc1/bZobmVXn3bpy/Qdh7gVuyTtQGmqyoAkrgCBvwColM=
X-Gm-Gg: ASbGnct/sy2ob34JW2xWYhp3p9ECB99yLjO1rTDqBYmD1rGrpAioEq0BRROu280yBZ7
	5D5uVuWXvUzgppvEvyoUoQ1EWww4iUoXqb2+wIcsndysXatUkPc3Vc0qzx65VD+J58kK1GJzXvk
	aeZfJJcb3rPP6ebX5KOkCAgMwXEwgPIjuAPFN5pk1YgUJvQhjX8S3shQMCOQDNR9ig3rYJXfjUT
	qmsW64nkxUopQNG9VU0m0o/GGm4lZFQMMZhXKBB/ejawA28bNfNrwY7uxgI91/tZCE1mLeWASrl
	RXF1rVpnZj66rug7teIyUZWPVx6y+88VHBU+AIPIu24Th6DwD4LhM84PPEuENMUhtFiPzNNgvgK
	fUeLw15a2whdCmWx0QlzWJDNOrMYnC2ly1+ZNJyiM1ml4KZwcXAADWxWiWqzomjtys2C+jD/unb
	IHRqNab8mfw5WBash86iVv/qZ/zgqF/RciUB6tiUIofwefWHmdfb4+RrBDPOFo+F0=
X-Google-Smtp-Source: AGHT+IHdI5AOlmNDX5m4IHoZ74FO5t2segG/koratGEOW9qb5av5beCTKzXqT4NvIhC8HV6z9TOzRg==
X-Received: by 2002:a05:6000:2010:b0:42b:55a1:214f with SMTP id ffacd0b85a97d-42b59340d6dmr20687485f8f.21.1763564849819;
        Wed, 19 Nov 2025 07:07:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:263d:925b:a11f:ae36? ([2a01:e0a:3d9:2080:263d:925b:a11f:ae36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e91f2dsm39622909f8f.19.2025.11.19.07.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 07:07:29 -0800 (PST)
Message-ID: <461244a1-3bc1-478f-b97f-b0607375e596@linaro.org>
Date: Wed, 19 Nov 2025 16:07:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: broadcom: bcm63xx-usbh: fix section mismatches
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, =?UTF-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?=
 <noltari@gmail.com>
References: <20251017054537.6884-1-johan@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20251017054537.6884-1-johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_070732_090029_35469A01 
X-CRM114-Status: GOOD (  17.75  )
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

T24gMTAvMTcvMjUgMDc6NDUsIEpvaGFuIEhvdm9sZCB3cm90ZToKPiBQbGF0Zm9ybSBkcml2ZXJz
IGNhbiBiZSBwcm9iZWQgYWZ0ZXIgdGhlaXIgaW5pdCBzZWN0aW9ucyBoYXZlIGJlZW4KPiBkaXNj
YXJkZWQgKGUuZy4gb24gcHJvYmUgZGVmZXJyYWwgb3IgbWFudWFsIHJlYmluZCB0aHJvdWdoIHN5
c2ZzKSBzbyB0aGUKPiBwcm9iZSBmdW5jdGlvbiBhbmQgbWF0Y2ggdGFibGUgbXVzdCBub3QgbGl2
ZSBpbiBpbml0Lgo+IAo+IEZpeGVzOiA3ODNmNmQzZGNmMzUgKCJwaHk6IGJjbTYzeHgtdXNiaDog
QWRkIEJDTTYzeHggVVNCSCBkcml2ZXIiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCSMg
NS45Cj4gQ2M6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogSm9oYW4gSG92b2xkIDxqb2hhbkBrZXJuZWwub3JnPgo+IC0tLQo+ICAg
ZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jIHwgNiArKystLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYyBiL2RyaXZlcnMv
cGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwo+IGluZGV4IDY0NzY0NGRlMDQxYi4uMjlm
ZDY3OTFiYWU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4
LXVzYmguYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwo+
IEBAIC0zNzUsNyArMzc1LDcgQEAgc3RhdGljIHN0cnVjdCBwaHkgKmJjbTYzeHhfdXNiaF9waHlf
eGxhdGUoc3RydWN0IGRldmljZSAqZGV2LAo+ICAgCXJldHVybiBvZl9waHlfc2ltcGxlX3hsYXRl
KGRldiwgYXJncyk7Cj4gICB9Cj4gICAKPiAtc3RhdGljIGludCBfX2luaXQgYmNtNjN4eF91c2Jo
X3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICtzdGF0aWMgaW50IGJj
bTYzeHhfdXNiaF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIHsK
PiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAgCXN0cnVjdCBiY202M3h4
X3VzYmhfcGh5CSp1c2JoOwo+IEBAIC00MzIsNyArNDMyLDcgQEAgc3RhdGljIGludCBfX2luaXQg
YmNtNjN4eF91c2JoX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAg
CXJldHVybiAwOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGJjbTYzeHhfdXNiaF9waHlfaWRzW10gX19pbml0Y29uc3QgPSB7Cj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGJjbTYzeHhfdXNiaF9waHlfaWRzW10gPSB7Cj4gICAJeyAuY29t
cGF0aWJsZSA9ICJicmNtLGJjbTYzMTgtdXNiaC1waHkiLCAuZGF0YSA9ICZ1c2JoX2JjbTYzMTgg
fSwKPiAgIAl7IC5jb21wYXRpYmxlID0gImJyY20sYmNtNjMyOC11c2JoLXBoeSIsIC5kYXRhID0g
JnVzYmhfYmNtNjMyOCB9LAo+ICAgCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY202MzU4LXVzYmgt
cGh5IiwgLmRhdGEgPSAmdXNiaF9iY202MzU4IH0sCj4gQEAgLTQ0Myw3ICs0NDMsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBiY202M3h4X3VzYmhfcGh5X2lkc1tdIF9faW5p
dGNvbnN0ID0gewo+ICAgfTsKPiAgIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGJjbTYzeHhfdXNi
aF9waHlfaWRzKTsKPiAgIAo+IC1zdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBiY202M3h4
X3VzYmhfcGh5X2RyaXZlciBfX3JlZmRhdGEgPSB7Cj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1f
ZHJpdmVyIGJjbTYzeHhfdXNiaF9waHlfZHJpdmVyID0gewo+ICAgCS5kcml2ZXIJPSB7Cj4gICAJ
CS5uYW1lID0gImJjbTYzeHgtdXNiaC1waHkiLAo+ICAgCQkub2ZfbWF0Y2hfdGFibGUgPSBiY202
M3h4X3VzYmhfcGh5X2lkcywKClJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1z
dHJvbmdAbGluYXJvLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
