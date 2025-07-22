Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DC7C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 08:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pp0+ym4D5ZBEaREERImY0V2ue3eJDUzHW2r4W78YJRk=; b=3Un5/EvEbAT72ceeTM7i+b+Kw9
	rnqGmk0BHm1T3wiZh47z4bz0QbDw94509y10gTPW1s7KVyqjhy9y0cA1oCYvkdKench3bmn0bCDiV
	7JjgB5GLHyE/hJAWvvBFkzkgp9fg6t7vv8tOh6WjVNqwPeIuOJ6idgy7pJgxkpOuean9ue+LDgKHX
	RzFca9941DPi6zZRQzTtl6FYwzpDjGyGUvC9hm7iereMm7Hx7oANAijP688Mith013U4X+5aJ6kHb
	18YkijL+GivZjPApUXMqbXYDVoHxViUG1cpsW2yHxQVQ3x1cFs3EsSfPvgAXe0akJoU/fgG/ZzyT3
	rIszxNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8ST-00000001qQj-42yh;
	Tue, 22 Jul 2025 08:34:45 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8Q8-00000001qFi-0yL1
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 08:32:21 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4561514c7f0so54083405e9.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 01:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753173139; x=1753777939; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EmqRihQE4cEXI6g+dRmCaPE8w5nJ7dL9XpOBOkXpgns=;
        b=cmbduPut/WgPsxXNlVZ+uKshrWnd5/dXBgiV8lqi/dMqF9NlC2FWDr4Mi25xPq1+9n
         IdhM/+bRSzQpnI/3nGc6CfdPg2DxUwNGtvsBJYN8k7kdGtLbieRG50ohaMlbKVCzNOnQ
         fTo6nYF/ojZdM5qSBnVYXtHFGaAiN+R0PUM28GpB2HwpEOGD6elss0YXzCbKcJ+9nLnX
         mShEOrEvSBJG1hf5rEffi6bnI1H8VBHmm8vSg/La3Q0iulNFi6r+ER21wjR2EKa5Bd3e
         Co/ltwEYLFXGXFE9wGx/+3lWLgIEpq1xOT1S8Wf3B5Oaz9zLXb7Bpfwo77RR5hd4iBhc
         WpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753173139; x=1753777939;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EmqRihQE4cEXI6g+dRmCaPE8w5nJ7dL9XpOBOkXpgns=;
        b=pIoQu110DfKAZFkRjNOWw1+fqIqelkkybH1yC6JbgbJXMPYbvYHu46bnxccXvR7XmG
         e/ecaMadJNA/RD9L1WOybcQK2+Bwv89+Pzj/i3Bdrq+s3jWZfdb2qFyCFlBj8khTYddU
         8LCO79/Cemzg89vFuEqIaVC78+sL/h7N25hJXnGlpIhrY18bgu7jG8kfW9CMDDhUWEjt
         SC3Cf/eFNQDz/nXlEQrPgBKoqx0l9JVswB6p1yWlJdyfOMbi52y+mbTX9rZ6buMCoRwF
         UbTi0QqS4wYcrogEgHqwhNG3jTeU6WLyGQVN1gyJrKuWxQnlX9qTROCOv7zQPjpllm+O
         SktA==
X-Forwarded-Encrypted: i=1; AJvYcCUfZTdI4R3Fq5YJt8f8cF/ZsVGthDtQgNya0rPbcS88ObD9eu0VC2Rncqb/t/7W1IFQK2IKHQr9RlY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtFUU8wJIi9MRWQ5CM8mAZ6ohznX/xM52OUQiP6KDG21sHNS2e
	I40EUYYwkqJXXQqLemcPJGQGpcUxkZ4bHOfI2zvaqZS1QiDEKOZYzWNvQhoS8p7twKE=
X-Gm-Gg: ASbGnct6qaGB/MB7bggQvQP8jLfrqjWv3G5pSsZoIdAFszg6ZrQCvXSI08QgWl9hNzK
	9XoZ4PP2i1HCzaDrGqX0KFlUtuk29va7JUt3aXH8kMOieGjgIp17ULQMq6nx3fvAysCi0UmX529
	344XSqNs3/1cEJ/5KsR5ErV5Y5BZbi9xigS3nuz1ZXZfcv0rM9eeyNLh7u072ibT8l1LEpSL3nb
	Qw8HsbIphp46NamBflwufkMh6GFGhxMWx59R90dsRseGFe/9tyfFr3T96JAXj4B1iFWH1dsSIpr
	Aa5McJPoQwaxvbvEb43H+RJsNCwyuNs3hTXQrAF/Za8MaaBYPLz7vZa/Jg4pmOVtMAR+uY5C8Pq
	/EpMPxedgWsiyJxP0BHGGeu2smzjunP+JBkZaID3uegL5kaVS0kMYxfgM2YNSdpsm/Q69j7IKta
	g=
X-Google-Smtp-Source: AGHT+IGZH+cXUgzHi50tWmYat0JhKpfjMAywO/xvrjiS+LeEv8IM/8RbRGSLqjTRz/gsQJZp0D0k7Q==
X-Received: by 2002:a05:600c:1c88:b0:455:fc16:9ed8 with SMTP id 5b1f17b1804b1-4562e3b9144mr229030715e9.30.1753173138546;
        Tue, 22 Jul 2025 01:32:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bce4:725d:6922:d1ba? ([2a01:e0a:3d9:2080:bce4:725d:6922:d1ba])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4563b5a4055sm126753905e9.5.2025.07.22.01.32.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 01:32:18 -0700 (PDT)
Message-ID: <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
Date: Tue, 22 Jul 2025 10:32:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
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
In-Reply-To: <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_013220_298290_66F34DF9 
X-CRM114-Status: GOOD (  20.31  )
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

T24gMjEvMDcvMjAyNSAxODoxNiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAyMS8wNy8y
MDI1IDE2OjQ2LCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+PiBPbiAxNS8wNy8y
MDI1IDExOjMzLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+Pj4gT24gNy8xNS8yNSAxMToyMCBBTSwg
VmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4+IE9uIDcvMTUvMjUgMTI6MDEsIEtvbnJhZCBE
eWJjaW8gd3JvdGU6Cj4+Pj4+IE9uIDcvMTUvMjUgODozNSBBTSwgVmxhZGltaXIgWmFwb2xza2l5
IHdyb3RlOgo+Pj4+Pj4gT24gNy8xNS8yNSAwMzoxMywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToK
Pj4+Pj4+PiBPbiAxNC8wNy8yMDI1IDE2OjMwLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSSB0aGluayB0aGF0IGlzIGdlbnVpbmVseSBzb21ldGhpbmcgd2Ug
c2hvdWxkIGhhbmRsZSBpbiBjYW1zcy1jc2lkLmMKPj4+Pj4+Pj4+IG1heWJlIHdpdGggc29tZSBt
ZXRhLWRhdGEgaW5zaWRlIG9mIHRoZSBwb3J0cy9lbmRwb2ludHMuLgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gVGhpcyBpcyBhIENTSVBIWSBwcm9wZXJ0eSwgYSBDU0lQSFkgaGFyZHdhcmUg
Y29uZmlndXJhdGlvbiBhbmQgYSB3aXJpbmcKPj4+Pj4+Pj4gb2Ygc2Vuc29ycyB0byBhIENTSVBI
WS4gV2hlcmUgaXMgdGhlIHJlbGF0aW9uIHRvIENTSUQgaGVyZT8gVGhlcmUgaXMgbm8uCj4+Pj4+
Pj4KPj4+Pj4+PiBBbGwgdGhlIFBIWSByZWFsbHkgbmVlZHMgdG8ga25vdyBpcyB0aGUgIyBvZiBs
YW5lcyBpbiBhZ2dyZWdhdGUsIHdoaWNoCj4+Pj4+Pj4gcGh5c2ljYWwgbGFuZXMgdG8gbWFwIHRv
IHdoaWNoIGxvZ2ljYWwgbGFuZXMgYW5kIHRoZSBwaXhlbCBjbG9jay4KPj4+Pj4+Pgo+Pj4+Pj4+
IFdlIHNob3VsZCBhZGQgYWRkaXRpb25hbCBzdXBwb3J0IHRvIHRoZSBLZXJuZWwncyBELVBIWSBB
UEkgcGFyYW1ldGVycwo+Pj4+Pj4+IG1lY2hhbmlzbSB0byBzdXBwb3J0IHRoYXQgcGh5c2ljYWwt
dG8tbG9naWNhbCBtYXBwaW5nIGJ1dCwgdGhhdCdzIG5vdAo+Pj4+Pj4+IHJlcXVpcmVkIGZvciB0
aGlzIHNlcmllcyBvciBmb3IgYW55IGN1cnJlbnRseSBrbm93IHVwc3RyZWFtIHVzZXIgb2YgQ0FN
U1MuCj4+Pj4+Pj4KPj4+Pj4+Pj4gUGxlYXNlIHNoYXJlIGF0IGxlYXN0IGEgZGV2aWNlIHRyZWUg
bm9kZSBkZXNjcmlwdGlvbiwgd2hpY2ggc3VwcG9ydHMKPj4+Pj4+Pj4gYSBjb25uZWN0aW9uIG9m
IHR3byBzZW5zb3JzIHRvIGEgc2luZ2xlIENTSVBIWSwgbGlrZSBpdCBzaGFsbCBiZSBkb25lCj4+
Pj4+Pj4+IGV4cGVjdGVkbHkuCj4+Pj4+Pj4gJmNhbXNzIHsKPj4+Pj4+PiDCoCDCoMKgwqDCoMKg
wqAgcG9ydEAwIHsKPj4+Pj4+PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVz
MDFfZXA6IGVuZHBvaW50MCB7Cj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBkYXRhLWxhbmVzID0gPDAgMT47Cj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNvcjBfZXA+Owo+Pj4+Pj4+IMKgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH07Cj4+Pj4+Pj4KPj4+Pj4+PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
c2lwaHkwX2xhbmVzMjNfZXA6IGVuZHBvaW50MCB7Cj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBkYXRhLWxhbmVzID0gPDIgMz47Cj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNvcjFfZXA+Owo+Pj4+Pj4+
IMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKgwqAgfTsK
Pj4+Pj4+PiB9Owo+Pj4+Pj4KPj4+Pj4+IERvbid0IHlvdSB1bmRlcnN0YW5kIHRoYXQgdGhpcyBp
cyBicm9rZW4/Li4gVGhhdCdzIG5vIGdvb2QuCj4+Pj4+Pgo+Pj4+Pj4gUGxlYXNlIGxpc3RlbiBh
bmQgcmVyZWFkIHRoZSBtZXNzYWdlcyBnaXZlbiB0byB5b3UgYWJvdmUsIHlvdXIgcHJvcG9zZWQK
Pj4+Pj4+ICJzb2x1dGlvbiIgZG9lcyBub3Qgc3VwcG9ydCBieSBkZXNpZ24gYSB2YWxpZCBoYXJk
d2FyZSBzZXR1cCBvZiB0d28KPj4+Pj4+IHNlbnNvcnMgY29ubmVjdGVkIHRvIHRoZSBzYW1lIENT
SVBIWS4KPj4+Pj4+Cj4+Pj4+PiBJIHdvdWxkIHByb3Bvc2UgdG8gc3RvcCBmb3JjZSBwdXNoaW5n
IGFuIHVuY29ycmVjdGFibGUgZHQgc2NoZW1lLCBpdAo+Pj4+Pj4gbWFrZXMgbm8gc2Vuc2UuCj4+
Pj4+Cj4+Pj4+IElmIGFsbCB5b3UncmUgYXNraW5nIGZvciBpcyBhbiBhYmlsaXR5IHRvIGdyYWIg
YW4gb2ZfZ3JhcGggcmVmZXJlbmNlCj4+Pj4+IGZyb20gdGhlIGNhbXNzICh2NGwyKSBkcml2ZXIs
IHlvdSBjYW4gc2ltcGx5IGRvIHNvbWV0aGluZyBhbG9uZyB0aGUKPj4+Pj4gbGluZXMgb2Ygb2Zf
Z3JhcGhfZ2V0X3JlbW90ZV9wb3J0KHBoeS0+ZGV2LT5vZl9ub2RlKQo+Pj4+Pgo+Pj4+Cj4+Pj4g
SXQncyBub3QgYWJvdXQgdGhlIGRyaXZlciBzcGVjaWZpY3MsIG15IGNvbW1lbnQgaXMgYWJvdXQg
YSBwcm9wZXIKPj4+PiBoYXJkd2FyZSBkZXNjcmlwdGlvbiBpbiBkdHMgbm90YXRpb24sIHBsZWFz
ZSBzZWUgdGhlIGRldmljZSB0cmVlIG5vZGUKPj4+PiBuYW1lcy4KPj4+Cj4+PiBJJ20gYSBsaXR0
bGUgbG9zdCBvbiB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gYXJndWUgZm9yLi4KPj4+Cj4+PiBJIGNv
dWxkIG1ha2Ugb3V0Ogo+Pj4KPj4+IDEuICJ0aGUgcGh5IHNob3VsZCBiZSBhIG11bHRpbWVkaWEg
ZGV2aWNlIgo+Pj4gMi4gIlRoZXJlIGlzIG5vIHBvcnRzIGF0IGFsbCwgd2hpY2ggbWFrZXMgdGhl
IGRldmljZSB0cmVlIG5vZGUgdW51c2FibGUsCj4+PiDCoMKgwqAgc2luY2UgeW91IGNhbiBub3Qg
cHJvdmlkZSBhIHdheSB0byBjb25uZWN0IGFueSBzZW5zb3JzIHRvIHRoZSBwaHkuIgo+Pj4KPj4+
IEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgIzEuLiBtYXliZSB0aGF0IGNvdWxkIGJlIHRoZSBj
YXNlIGlmIHRoZSBQSFkKPj4+IGhhcyBhIG11bHRpdHVkZSBvZiB0dW5hYmxlcyAod2hpY2ggSSBk
b24ndCBrbm93IGlmIGl0IGRvZXMsIGJ1dCB3b3VsZG4ndAo+Pj4gYmUgZXhhY3RseSBzdXJwcmlz
ZWQgaWYgaXQgZGlkKSB0aGF0IG1heSBiZSB1c2VjYXNlL3BpcGVsaW5lLXNwZWNpZmljCj4+Pgo+
Pj4gQXMgZm9yICMyLCBJIGRvIHRoaW5rIGl0IG1ha2VzIHNlbnNlIHRvIGNvbm5lY3QgdGhlIHNl
bnNvcnMgdG8gdGhlIFBIWSwKPj4+IGFzIHRoYXQncyBhIHJlcHJlc2VudGF0aW9uIG9mIGVsZWN0
cmljYWwgc2lnbmFscyB0cmF2ZWxsaW5nIGZyb20gdGhlCj4+PiBwcm9kdWNlciB0byB0aGUgY29u
c3VtZXIgKHBsdXMgdGhlIGRhdGEgcGFzc2VkIGluIGUuZy4gZGF0YS1sYW5lcyBpcwo+Pj4gZGly
ZWN0bHkgcmVsYXRlZCB0byB0aGUgUEhZIGFuZCBuZWNlc3NhcmlseSBjb25zdW1lZCBieSBpdHMg
ZHJpdmVyKQo+Pgo+PiBUaGUgcG9ydC9lbmRwb2ludCBzaG91bGQgcmVwcmVzZW50IHRoZSBkYXRh
IGZsb3csIGFuZCBpZiB0aGUgc2lnbmFsIGlzIHRoZSBmb2xsb3dpbmc6Cj4+Cj4+IHNlbnNvciAt
PiBjc2lwaHkgLT4gY3NpZAo+IAo+IEknbGwgYmUgaG9uZXN0Lgo+IAo+IEkgbG9va2VkIGF0IHlv
dXIgdXBzdHJlYW1lZCBjb2RlCj4gCj4gZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhn
LW1pcGktZHBoeS5jIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wYXJjaC9hcm02
NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWtoYWRhcy12aW0zLXRzMDUwLmR0c29jL21lc29uLWF4
Zy5kdHNpCj4gCj4gQW5kIGRpZG4ndCByZWFsbHkgdGhpbmsgQ1NJUEhZIG5lZWRlZCB0byBiZSBp
bmNsdWRlZCBpbiB0aGUgZGF0YS1ncmFwaC4KClRoaXMgaXMgRFNJLCBidXQgSSB1bmRlcnN0YW5k
IHlvdXIgcG9pbnQuCgpUaGUgd2hvbGUga2V5IHBvaW50IGhlcmUgaXMgdGhlIGNvbWJvIG1vZGUs
IGFzIEkgdW5kZXJzdG9vZCB0aGUgY29tYm8gbW9kZSBmZWF0dXJlCm1ha2VzIHRoZSBQSFkgbGFu
ZXMgYXZhaWxhYmxlIGFzIDIgc2VwYXJhdGUgc3RyZWFtcywgbGlrZSBpZiB5b3UgZ290IDIgImNv
bnRyb2xsZXJzIgphdHRhY2hlZCB0byB0aGUgc2FtZSBQSFkuIFNvIGluIGZhY3QsIHRoZSBQSFkg
c2hvdWxkIGhhdmUgYSBzaW5nbGUgbm9kZSwgYnV0IDIgUEhZCmludGVyZmFjZXMgaW4gY29tYm8g
bW9kZS4KClRoaXMgbWFrZXMgYWxsIHRoaXMgY29udHJvbGxlci9waHkgbW9kZWwgdmVyeSBjb21w
bGV4IHRvIGhhbmRsZSBhbmQgYWRkIGEgbG90IG9mCmxvZ2ljIGluIHRoZSBjYW1zcyBzaWRlLiBN
b3ZpbmcgdGhlICJjc2lwaHkiIGFzIGFuIGluZGVwZW5kZW50IG1lZGlhIGRldmljZSB0aGF0CmNh
biBkZWNsYXJlIHVwIHRvIDIgZW5kcG9pbnRzIGluIGNvbWJvIG1vZGUgbWFrZXMgdGhpbmdzIG11
Y2ggc2ltcGxlciwgYW5kIGFsbG93cwp1cyB0byBhdHRhY2ggZWFjaCAiY3NpcGh5IiBzdHJlYW0g
dG8gYW55ICJjb250cm9sbGVyIiBzaWRlIG9mIGNhbXNzLgoKTmVpbAoKPiAKPiAtLS0KPiBib2QK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
