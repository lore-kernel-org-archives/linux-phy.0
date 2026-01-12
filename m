Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 522C4C9EC8B
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VVpC2bcIqKV3+6c6aAiqDE3S+SmXXtnygdbiPaoAAqs=; b=nGVeSbjple0ua5/TBjCnIBHhah
	8vr9rTRlQD0mbotiMdatyuHm2zbRhMid+mLkqkaQBzsSKipnjSnnzHxpOcO42dowjVRMHEcBDfxGz
	ufCqMt448TUPvUTmSnHL0l6sKX43WM5diVyRk2i2roD24Bk0v/p/l4zH6jCoea+u9kndQEVAmzJhx
	oMw/o0Ah0FVqg/FadSZ1ZG1Rp1vk9Pza9dvqfTX3btrd7CT0wKRbUTzzRoJUsX3h13FIFcSqgyrFH
	2AMFlsEkdLpWXTwPo/7Dg00v5IKZcuLSPbRgmYfkXeJRvLPvZfpv6y06Sl7JfCIJP1lv9C6wQmMIa
	NFl//84A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHfE-00000005Nc2-0IEz;
	Mon, 12 Jan 2026 13:08:56 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHfB-00000005NbL-1oUV
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:08:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477632b0621so39772765e9.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768223331; x=1768828131; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BF9HRCZwVM8HohHOVVmaFmMZoI1kBoRSnqS8ZzxwdRQ=;
        b=onTthxGFTrQaUmdY+RW60vbRw6YGbIWRt+JDgagB2n7AJAxASyGCYDHvnQzKsEegQO
         wwARzoCVHpywex9BaWk91vclhicVoGkwJ6/narMtM2HGM2THyGk8MskzZ6EG57RdeVkE
         z7kt1WoBCUtnCIJNEkEdimJ+eCBMpiyzsotqy9plHmGWJzk8rww16eY1gdzor/SbPXDE
         FVWldVbmp+0WyipFNd6KVCbyceOjy0KOCoZGVmW/5YN8LijIuwuNqZzYI+q+mVz9thck
         V3vfH1dCPQaABL7GpFItVehODW0gAzl8frDFtazLHtiiJ0qzVKdMWRGekPO2VoaK0bL5
         PszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768223331; x=1768828131;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BF9HRCZwVM8HohHOVVmaFmMZoI1kBoRSnqS8ZzxwdRQ=;
        b=jHHMi+ay8DbjIzPmWTwmkRjF9By8iJDS1NCB+bZnG8q7LoNblJmYSddJkWxkP2EXCL
         Z2MP6kPLU0vh5xZe3cK6vX3xkEjoNngsqLbPZ+QNgRJcvzXlI/iFNkxl0SBbLgzJOBnI
         SfKaC/b1i4xp3xVxGRrgFctJ1lYeJd5+pgWKvOGqJ/EWH84FAlI3y0SwJaQIKyqh6Ue9
         BBPYP/Q3LtGl2jmLopoa268Pfei4YEqL4SU3j2m2eCSdHk/toTlFAAWpzZm29mJ7ysFL
         mjtglEw37clig8WFg7l2IH8WH6RWjXJqJ5kOlQANM1Cr42oyGeZjFrso/cfdiIFNowQH
         pZhA==
X-Forwarded-Encrypted: i=1; AJvYcCWsupv68njgphflLZKcHbx2UBjM5XFfCJm8bw7/Kpa2xK2KH1H+gwW5AHQoFH0Z7hdS3NyhrXd2b5c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5lm+yYDRrE75Kz8pOGQQJDsTdi4QmlSvg9gwxdQNFpY3mpy5M
	bLHQdtNmFaWyntZ8QZzPQFtw1L4ahPXXTpkXvdWfJE+j1MjUGREuVgpAWJzkdkE5LD8=
X-Gm-Gg: AY/fxX5gsWj3IHy1Bkgvqu/Yt8cnHCs/YxFMuATiVMSQ7deL9z5rcY5eaE4gChUDE4a
	d6Vz0qL+62uu2FR7BN+e1CsbpROFMVJu3wv3qKGDbJUV7sn+uKTTDDkgAVg6XtVAK6ChMzAspWi
	4JH4G1g5hY7lJJ3zl5QcO/6V8p5ErN9QE3dqJeDcUnkbF7XJs8E0IM13slRku5ZH4ArXiVgi9yZ
	fbb9WsBfgiVgTRKSAPbj2BCUqPKp8BXUa4pU128ptPWz1CgZUJupXvPKmyF5iS8UGEwvwR3248f
	MZ68quVwqg2OlSJ7/RTQ7Gu+s5iwYh4QycnSxVyMMHhAtx11kBBj6aE+WJKKhVsaAxJWFUzTsTc
	/LsolQxwtGZkhzYXPant3y34Ib9B37dekemWnlZikEbYiuI0lZAuMXFrhZfzNwSKqzmsvsx3Mmi
	xEUEv7UWgW7EzlIefgCC8Vn1JE7HEo7Zn0SVQCUC0=
X-Google-Smtp-Source: AGHT+IEtO2xzsh2F6bjVyeH53ljL8NiwROmn+6MmXlos+dptQWGriTYDZzCaDlYWz//1QpK6zSKEIg==
X-Received: by 2002:a05:600c:3110:b0:479:3a86:dc1a with SMTP id 5b1f17b1804b1-47d84b41176mr203344865e9.36.1768223331152;
        Mon, 12 Jan 2026 05:08:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe67csm38528840f8f.40.2026.01.12.05.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 05:08:50 -0800 (PST)
Message-ID: <99ec09fa-b4e3-4f68-9980-a3dfb81635e8@linaro.org>
Date: Mon, 12 Jan 2026 14:08:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Luca Weiss <luca.weiss@fairphone.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
 <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
 <543d9e55-c858-40f9-8785-c9f636850120@linaro.org>
 <DFMH8W40TCJ0.XCTHNRJFJE4T@fairphone.com>
 <ccbaff51-d7fa-4b22-8d4e-02bea5d8a529@oss.qualcomm.com>
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
In-Reply-To: <ccbaff51-d7fa-4b22-8d4e-02bea5d8a529@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_050853_524056_79FD9DF7 
X-CRM114-Status: GOOD (  17.06  )
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

T24gMS8xMi8yNiAxMToyOSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAxLzEyLzI2IDk6NDUg
QU0sIEx1Y2EgV2Vpc3Mgd3JvdGU6Cj4+IEhpIE5laWwsCj4+Cj4+IE9uIE1vbiBKYW4gMTIsIDIw
MjYgYXQgOToyNiBBTSBDRVQsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4gT24gMS83LzI2IDE0
OjUzLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IE9uIDEvNy8yNiAw
OTowNSwgTHVjYSBXZWlzcyB3cm90ZToKPj4+Pj4gQWRkIHRoZSBub2RlcyBmb3IgdGhlIFVGUyBQ
SFkgYW5kIFVGUyBob3N0IGNvbnRyb2xsZXIsIGFsb25nIHdpdGggdGhlCj4+Pj4+IElDRSB1c2Vk
IGZvciBVRlMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgV2Vpc3MgPGx1Y2Eud2Vp
c3NAZmFpcnBob25lLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICDCoCBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vbWlsb3MuZHRzaSB8IDEyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0KPj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAxMjQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9t
aWxvcy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21pbG9zLmR0c2kKPj4+Pj4gaW5k
ZXggZTFhNTFkNDM5NDNmLi4wZjY5ZGVhYmI2MGMgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9taWxvcy5kdHNpCj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9taWxvcy5kdHNpCj4+Pj4+IEBAIC03OTcsOSArNzk3LDkgQEAgZ2NjOiBjbG9jay1j
b250cm9sbGVyQDEwMDAwMCB7Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZzbGVlcF9jbGs+LAo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwwPiwgLyogcGNpZV8wX3BpcGVfY2xrICovCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPDA+LCAvKiBwY2llXzFfcGlwZV9jbGsgKi8KPj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwPiwgLyogdWZzX3BoeV9yeF9zeW1ib2xf
MF9jbGsgKi8KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwPiwgLyog
dWZzX3BoeV9yeF9zeW1ib2xfMV9jbGsgKi8KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDwwPiwgLyogdWZzX3BoeV90eF9zeW1ib2xfMF9jbGsgKi8KPj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdWZzX21lbV9waHkgMD4sCj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnVmc19tZW1fcGh5IDE+LAo+Pj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZ1ZnNfbWVtX3BoeSAyPiwKPj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD47IC8qIHVzYjNfcGh5X3dyYXBw
ZXJfZ2NjX3VzYjMwX3BpcGVfY2xrICovCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAjY2xvY2stY2VsbHMgPSA8MT47Cj4+Pj4+IEBAIC0xMTUxLDYgKzExNTEsMTI3IEBAIGFnZ3Jl
Ml9ub2M6IGludGVyY29ubmVjdEAxNzAwMDAwIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHFjb20sYmNtLXZvdGVycyA9IDwmYXBwc19iY21fdm90ZXI+Owo+Pj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgIH07Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCB1ZnNfbWVtX3BoeTogcGh5QDFk
ODAwMDAgewo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20s
bWlsb3MtcW1wLXVmcy1waHkiOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8
MHgwIDB4MDFkODAwMDAgMHgwIDB4MjAwMD47Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY2xvY2tzID0gPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPiwK
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdGNzciBUQ1NSX1VGU19D
TEtSRUZfRU4+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJy
ZWYiLAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJy
ZWZfYXV4IiwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAicXJlZiI7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0g
PCZ1ZnNfbWVtX2hjIDA+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1l
cyA9ICJ1ZnNwaHkiOwo+Pj4+PiArCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2Vy
LWRvbWFpbnMgPSA8JmdjYyBVRlNfTUVNX1BIWV9HRFNDPjsKPj4+Pj4gKwo+Pj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8MT47Cj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MD47Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+
Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHVmc19tZW1faGM6IHVmc2hjQDFkODQwMDAgewo+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20sbWlsb3MtdWZz
aGMiLCAicWNvbSx1ZnNoYyIsICJqZWRlYyx1ZnMtMi4wIjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVnID0gPDB4MCAweDAxZDg0MDAwIDB4MCAweDMwMDA+Owo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSAyNjUgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPjsKPj4+Pj4gKwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
bG9ja3MgPSA8JmdjYyBHQ0NfVUZTX1BIWV9BWElfQ0xLPiwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19BR0dSRV9VRlNfUEhZX0FYSV9DTEs+LAo+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfQUhC
X0NMSz4sCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0Nf
VUZTX1BIWV9VTklQUk9fQ09SRV9DTEs+LAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZ0Y3NyIFRDU1JfVUZTX1BBRF9DTEtSRUZfRU4+LAo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xL
PiwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VRlNf
UEhZX1JYX1NZTUJPTF8wX0NMSz4sCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1CT0xfMV9DTEs+Owo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsCj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImJ1c19hZ2dyX2NsayIsCj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImlmYWNlX2NsayIsCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNvcmVfY2xr
X3VuaXBybyIsCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgInJlZl9jbGsiLAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJ0eF9sYW5lMF9zeW5jX2NsayIsCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgInJ4X2xhbmUwX3N5bmNfY2xrIiwKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicnhfbGFuZTFfc3luY19jbGsiOwo+
Pj4+PiArCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmZ2NjIEdDQ19V
RlNfUEhZX0JDUj47Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzID0g
InJzdCI7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0
cyA9IDwmYWdncmUxX25vYyBNQVNURVJfVUZTX01FTSBRQ09NX0lDQ19UQUdfQUxXQVlTCj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZtY192aXJ0IFNMQVZF
X0VCSTEgUUNPTV9JQ0NfVEFHX0FMV0FZUz4sCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8JmdlbV9ub2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFH
X0FDVElWRV9PTkxZCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICZjbm9jX2NmZyBTTEFWRV9VRlNfTUVNX0NGRyBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFk+
Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcmNvbm5lY3QtbmFtZXMgPSAidWZz
LWRkciIsCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgImNwdS11ZnMiOwo+Pj4+PiArCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBv
d2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNfUEhZX0dEU0M+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4+Pj4+ICsKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmdWZzX29wcF90
YWJsZT47Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW9tbXVzID0gPCZh
cHBzX3NtbXUgMHg2MCAwPjsKPj4+Pgo+Pj4+IGRtYS1jb2hlcmVudCA/Cj4+Cj4+Cj4+IEdpdmVu
IHRoYXQgZG93bnN0cmVhbSB2b2xjYW5vLmR0c2kgaGFzIGRtYS1jb2hlcmVudCBpbiB0aGUgdWZz
aGNAMWQ4NDAwMAo+PiBub2RlLCBsb29rcyBsaWtlIHRoaXMgaXMgbWlzc2luZyBpbiBteSBwYXRj
aC4KPiAKPiBTZWVtcyB0aGF0IHdheQo+IAo+Pj4+Cj4+Pj4gYW5kIG5vIE1DUSBzdXBwb3J0ID8K
Pj4KPj4gTm90IHN1cmUsIEkgY291bGQgb25seSBmaW5kIG9uZSByZWZlcmVuY2UgdG8gTUNRIG9u
IGNyZWF0ZXBvaW50IGZvcgo+PiBtaWxvcywgYnV0IGdpdmVuIHRoZXJlJ3Mgbm8gbWNxX3NxZC9t
Y3FfdnMgcmVnIGRlZmluZWQgZG93bnN0cmVhbSwgYW5kIEkKPj4gY291bGRuJ3QgZmluZCBhbnl0
aGluZyBmb3IgdGhlIHNhbWUgcmVnaXN0ZXIgdmFsdWVzIGluIHRoZSAuRkxBVCBmaWxlLCBJCj4+
IGRvbid0IHRoaW5rIE1pbG9zIGhhcyBNQ1E/IEZlZWwgZnJlZSB0byBwcm92ZSBtZSB3cm9uZyB0
aG91Z2guCj4+Cj4+Pgo+Pj4gU28sIHBlb3BsZSBqdXN0IGlnbm9yZSBteSBjb21tZW50ID8KPj4+
Cj4+PiBNaWxvcyBpcyBiYXNlZCBvbiBTTTg1NTAsIHNvIGl0IHNob3VsZCBoYXZlIGRtYS1jb2hl
cmVudCwgZm9yIHRoZSBNQ1EKPj4+IEkgaG9wZSB0aGV5IHVzZWQgdGhlIGZpeGVkIGFkZGVkIHRv
IHRoZSBTTTg2NTAgVUZTIGNvbnRyb2xsZXIgZm9yIE1DUS4KPj4KPj4gTm90IHN1cmUgd2hhdCB0
aGlzIHNob3VsZCBtZWFuIHJlZ2FyZGluZyBNQ1EuLi4KPiAKPiBUaGlzIHBsYXRmb3JtIGRvZXNu
J3Qgc3VwcG9ydCBNQ1EKCkFjaywgaXQgbXVzdCBiZSBzYW1lIHNpdHVhdGlvbiBhcyBLYWlsdWEg
dGhlbiwKClRoYW5rcwpOZWlsCgo+IAo+IEtvbnJhZAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
