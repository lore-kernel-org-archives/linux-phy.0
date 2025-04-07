Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CEFC3601E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 07:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76sQjb0AackkwdhT8F140sMQXEQWJFkcMazlVbl2KuM=; b=LHYk6osNkz3SH8DyYdiZob9qm/
	QIuDvBMCpT+vc6SzwzyL5YhTnszcJz9SSM1IEo5p/C3t4xpc7IYWClLEW0ieM4gEaPyEG9eoqSJmj
	UpSV+d9jCkA3yxZeqvGIsw7/okxbPHpWI8Qby3B3DKKt2gK8LPMR37JgI4TUg63w/2NlQaOE+W8N+
	TdfKvMV9mDgviKcSY0hoY26KMwY/ocFVPZcvDcGO92XcC6ANhURNxaB4G04kiAhJKTZSGmk258VYI
	xxqbQJQUVs+IwloVEZIVQiD3bG92pLcy1vehC27FgqXVVFmgKifDD39mFRT52pov2nofNeYbqxxPN
	vJITF3nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hCX-0000000GqQJ-2g0c;
	Mon, 07 Apr 2025 07:47:25 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1goe-0000000Gk3e-0Nwk
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 07:22:45 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso25349975e9.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Apr 2025 00:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744010562; x=1744615362; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuGZUnSASk10lNE/9ifp4v0eahsXlHOvwT8MRApN0Og=;
        b=gCpkAYWWp5E6fYRH9F8+q/LGOyS3ZyVDgzeqgKF+ie4LQbmGQfyKB9seH06c+RQZwh
         SmJY+bkAAjARV3UV69ijW4hyrZ4hBM3u2aPs+G0u2jY+PXytb1LAlovZZxsODsaxT21t
         zWsN5OgbQ/rNEdGzBG9uONrwjifOxI1dgubpTWmWLlk4H+q0W1xdsDjgJ1oi1qyXPs0X
         iYXE+dp9833wRIL2CjWjPFFFVVxZXD9yQrGpIralPxg+Hdas3lb1TdB/ied6Wytjvf14
         xAzQtKDR84V+IWfUswm2eAsM+wuR+/zoC3PdrCWKNG6wmOTuC5e/wWd9gvPBa+S/jSbP
         8EIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744010562; x=1744615362;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JuGZUnSASk10lNE/9ifp4v0eahsXlHOvwT8MRApN0Og=;
        b=wS1t1NIa76nQCM95F1xJbOMbpbWUfThKWOWp4YQPxEQGZOirrqp8xeQzRUD1kTHXS6
         XdV847gBe+NVkOrMh3UcMy6uUP6v0h6SfiAuXEwquIvFsAJjcskwWRYri0XG8BM+o+qy
         y/rJTClqDbCqjAM8Gs3Os9nSCFeWneEJapIjqkiAADLupYVqVQHOK+ayvgZWSaTzWEn7
         17Nh+m/ZZzPEUIX8HCNJprd4aTIO8Z/oP1EhfeB8icD9JOMeYt+wD8Jx+OSLcJq0+vJ7
         VtYRNP/w3bzzGQCH6J95WFkJLA2krzBX9sKE8J2WhJpMLJB7vL6NyLllRlej+woGOKkT
         6TIA==
X-Forwarded-Encrypted: i=1; AJvYcCWr4VyH+WbVcLfE7wSDKlFRTquBFF0q+zxmpw6sOLrmNqNYLkg3m2Su7O8C3pQfjmL9O1u8r/anLKU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxCWmhF9nOufmuXlBE9Uo6u+m1ZbW9z8rKTKQene+fJ2XiwbgI
	+mggYb1egz96klQBezFaZ1f9iNp6VIC8lxjUAAHKLpiODyaBQouuuRgFVdBhlAE=
X-Gm-Gg: ASbGncuT7Y38/hn2Wm24ny5DowmbnPo9aS14YITXMdsoiwnzyyQh3KBO+IZ1O3vMO8Z
	MMkizV3PY4hnEQtxsdbr+BRgStDVs+E7t30d7YgXDv3CZ84Qai4OnhcT24hu7y61tC96FkMo4rK
	wWhSorbiUwgPU7vEREMOoAVyk+uB2pNBbpSIBagOjJbSVQc1u4LMZFCrit7MpDNG3/dmGwppfcZ
	tdgqYV363f9xY3eBIS18XzZOFG5nXYU2Ke6N+dpND1MY824EMglC+q3nVZzLpg4OIvXuBipzPIh
	AKIQ+WCYGzAfEZnppQ1R2HDTJJ03bETq3EQ/tIS0rjibcXtKlp+fLEYbGDuKkVsK5ALXhmYC8RN
	7clCU8+JW0SKD09BTyMGOOg==
X-Google-Smtp-Source: AGHT+IGpA9PaiK6p4H62d6eljIWg3SGWCwAKEJi8YPHrwmXIK87FySy7IShnB6R6GLTtXuuKMtPpxA==
X-Received: by 2002:a05:600c:35c8:b0:43c:f513:9591 with SMTP id 5b1f17b1804b1-43ecf86b406mr99142655e9.14.1744010561890;
        Mon, 07 Apr 2025 00:22:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f2a4:b974:cba3:a605? ([2a01:e0a:3d9:2080:f2a4:b974:cba3:a605])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ea9a346e3sm109314875e9.1.2025.04.07.00.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 00:22:41 -0700 (PDT)
Message-ID: <58471b67-98ab-4452-8508-d6276d47695e@linaro.org>
Date: Mon, 7 Apr 2025 09:22:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson
 <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>,
 Linux regressions mailing list <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
 <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
 <430ed11c-0490-45be-897b-27cad9682371@quicinc.com>
 <731f1ad1-8979-49a1-b168-56e24b94f4fb@linaro.org>
 <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
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
In-Reply-To: <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_002244_152680_147BCE37 
X-CRM114-Status: GOOD (  15.60  )
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

SGksCgpPbiAyNS8wMy8yMDI1IDA4OjM3LCBOaXRpbiBSYXdhdCB3cm90ZToKPiAKPiAKPiBPbiAz
LzI1LzIwMjUgMTowNCBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4gSGks
Cj4+Cj4+IE9uIDI1LzAzLzIwMjUgMDQ6MTIsIE5pdGluIFJhd2F0IHdyb3RlOgo+Pj4KPj4+Cj4+
PiBPbiAzLzI0LzIwMjUgMTE6NDAgUE0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4+IEhpLAo+
Pj4+Cj4+Pj4gT24gMTAvMDMvMjAyNSAyMjoxMiwgTWVsb2R5IE9sdmVyYSB3cm90ZToKPj4+Pj4g
RnJvbTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Cj4+Pj4+Cj4+Pj4+
IEFkZCBTTTg3NTAgc3BlY2lmaWMgcmVnaXN0ZXIgbGF5b3V0IGFuZCB0YWJsZSBjb25maWdzLiBU
aGUgc2VyZGVzCj4+Pj4+IFRYIFJYIHJlZ2lzdGVyIG9mZnNldCBoYXMgY2hhbmdlZCBmb3IgU004
NzUwIGFuZCBoZW5jZSBrZWVwIFVGUwo+Pj4+PiBzcGVjaWZpYyBzZXJkZXMgb2Zmc2V0cyBpbiBh
IGRlZGljYXRlZCBoZWFkZXIgZmlsZS4KPj4+Pj4KPj4+Pj4gUmV2aWV3ZWQtYnk6IE5laWwgQXJt
c3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+Pj4+PiBDby1kZXZlbG9wZWQtYnk6
IE1hbmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWljaW5jLmNvbT4KPj4+Pj4gU2lnbmVkLW9mZi1i
eTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1aWNpbmMuY29tPgo+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPj4+Pj4gLS0tCj4+
Pj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12Ni5o
IHzCoMKgIDcgKwo+Pj4+PiDCoCAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhy
eC11ZnMtdjcuaMKgwqDCoCB8wqAgNjcgKysrKysrKysKPj4+Pj4gwqAgZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE4MCArKysr
KysrKysgKysgKysrKysrKysrLQo+Pj4+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDI0NiBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+Cj4+Pj4gPHNuaXA+Cj4+Pj4KPj4+PiBU
aGlzIGNoYW5nZSBicmVha3MgVUZTIG9uIHRoZSBTTTg1NTAtSERLOgo+Pj4+Cj4+Pj4gW8KgwqDC
oCA3LjQxODE2MV0gcWNvbS1xbXAtdWZzLXBoeSAxZDgwMDAwLnBoeTogcGh5IGluaXRpYWxpemF0
aW9uIHRpbWVkLW91dAo+Pj4+IFvCoMKgwqAgNy40MjcwMjFdIHBoeSBwaHktMWQ4MDAwMC5waHku
MDogcGh5IHBvd2Vyb24gZmFpbGVkIC0tPiAtMTEwCj4+Pj4gW8KgwqDCoCA3LjQ5MzUxNF0gdWZz
aGNkLXFjb20gMWQ4NDAwMC51ZnNoYzogRW5hYmxpbmcgdGhlIGNvbnRyb2xsZXIgZmFpbGVkCj4+
Pj4gLi4uCj4+Pgo+Pj4gSGkgTmVpbCwKPj4+Cj4+PiBUaGFua3MgZm9yIHRlc3RpbmcgYW5kIHJl
cG9ydGluZy4KPj4+IEkgZGlkIHRlc3RlZCB0aGlzIHBhdGNoIG9uIFNNODc1MCBNVFAsIFNNODc1
MCBRUkQsIFNNODY1MCBNVFAsIFNNODU1MCBNVFAgYW5kIFNNODg1MCBRUkQgYWxsIG9mIHRoZXNl
IGhhdmUgcmF0ZSBCIGFuZCBoZW5jZSBubyBpc3N1ZS4KPj4+Cj4+PiBVbmZvcnR1bmF0ZWx5IG9u
bHkgU004NTUwIEhESyBwbGF0Zm9ybSB3aGljaCBVRlM0LjAgYW5kIFJhdGVBIGNvdWxkbid0IGdl
dCB0ZXN0ZWQuIEFzIHdlIGtub3cgU004NTUwIHdpdGggZ2VhciA1IG9ubHkgc3VwcG9ydCByYXRl
IEEuCj4+Pgo+Pj4gSSB3YXMgYXBwbHlpbmcgcmF0ZSBCIHNldHRpbmcgd2l0aG91dCBjaGVja2lu
ZyBmb3IgbW9kZSB0eXBlLiBTaW5jZQo+Pj4gU004NTUwIGlzIG9ubHkgcGxhdGZvcm0gd2hpY2gg
c3VwcG9ydCBvbmx5IHJhdGUgQSB3aXRoIFVGUzQuMCAuIEhlbmNlCj4+PiB0aGlzIGNvdWxkIGJl
IHRoZSBpc3N1ZS4KPj4+Cj4+PiBNZWFud2hpbGUgY2FuIHlvdSBoZWxwIHRlc3QgYXQgeW91ciBl
bmQgd2l0aCBiZWxvdyBjaGFuZ2UgYW5kIGxldCBtZSBpZiBpdCByZXNvbHZlcyBmb3IgeW91LiBJ
IHdpbGwgYWxzbyB0cnkgYXQgbXkgZW5kIHRvIHRlc3QgYXMgd2VsbC4KPj4+Cj4+PiA9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC11ZnMuYyBiL2RyaXZlcnMvcGh5LyBxdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMK
Pj4+IGluZGV4IDQ1YjNiNzkyNjk2ZS4uYjMzZTJlMmI1MDE0IDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4+PiArKysgYi9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPj4+IEBAIC0xNzU0LDcgKzE3NTQsOCBAQCBz
dGF0aWMgdm9pZCBxbXBfdWZzX2luaXRfcmVnaXN0ZXJzKHN0cnVjdCBxbXBfdWZzICpxbXAsIGNv
bnN0IHN0cnVjdCBxbXBfcGh5X2NmZwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcW1wX3Vmc19pbml0X2FsbChxbXAsICZjZmctPnRibHNfaHNfb3ZlcmxheVtpXSk7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgIH0KPj4+Cj4+PiAtwqDCoMKgwqDCoMKgIHFtcF91ZnNfaW5pdF9hbGwo
cW1wLCAmY2ZnLT50YmxzX2hzX2IpOwo+Pj4gK8KgwqDCoMKgwqDCoCBpZiAocW1wLT5tb2RlID09
IFBIWV9NT0RFX1VGU19IU19CKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcW1w
X3Vmc19pbml0X2FsbChxbXAsICZjZmctPnRibHNfaHNfYik7Cj4+PiDCoMKgfQo+Pj4KPj4+ID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQo+Pgo+PiBXaXRoIHRoaXMgY2hhbmdlIHRoZSBVRlMgd29y
a3MgYWdhaW4uCj4gCj4gVGhhbmtzIE5laWwgZm9yIHF1aWNrIHJldmVydC4gSSdsbCByYWlzZSB0
aGUgb2ZmaWNpYWwgY2hhbmdlLgoKQW55IG5ld3Mgb2YgYSBmaXggaGVyZSA/CgpUaGFua3MsCk5l
aWwKCj4gCj4gUmVnYXJkcywKPiBuaXRpbgo+IAo+Pgo+PiBUaGFua3MsCj4+IE5laWwKPj4KPj4+
Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gTml0aW4KPj4+Cj4+Pj4KPj4+PiBHSVQgYmlzZWN0IHBvaW50
cyB0bzoKPj4+PiBiMDJjYzlhMTc2NzkzYjIwN2U5NTk3MDFhZjFlYzI2MjIyMDkzYjA1IGlzIHRo
ZSBmaXJzdCBiYWQgY29tbWl0Cj4+Pj4gQXV0aG9yOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3
YUBxdWljaW5jLmNvbT4KPj4+PiBEYXRlOsKgwqAgTW9uIE1hciAxMCAxNDoxMjozMCAyMDI1IC0w
NzAwCj4+Pj4KPj4+PiDCoMKgwqDCoCBwaHk6IHFjb20tcW1wLXVmczogQWRkIFBIWSBDb25maWd1
cmF0aW9uIHN1cHBvcnQgZm9yIHNtODc1MAo+Pj4+Cj4+Pj4gYmlzZWN0IGxvZzoKPj4+PiBnaXQg
YmlzZWN0IHN0YXJ0ICdmZjdmOWIxOTllM2YnICd2Ni4xNC1yYzEnCj4+Pj4gZ2l0IGJpc2VjdCBn
b29kIDM2YzE4YzU2Mjg0NjMwMGQ0ZTU5ZjFhNjUwMDg4MDBiNzg3ZjRmZTQKPj4+PiBnaXQgYmlz
ZWN0IGdvb2QgODVjZjAyOTNjM2E3NTcyNmU3YmM1NGQzZWZkYzVkYzc4M2RlYmMwNwo+Pj4+IGdp
dCBiaXNlY3QgZ29vZCBiMmNkNzNlMThjZWM3NWY5MTdkMTRiOTE4OGY4MmEyZmRlZjY0ZWJlCj4+
Pj4gZ2l0IGJpc2VjdCBiYWQgYjI0NzYzOWQzM2FkMTZlYTc2Nzk3MjY4ZmQwZWVmMDhkODAyN2Rm
ZAo+Pj4+IGdpdCBiaXNlY3QgZ29vZCA5YjNmMmRmZGFkMWNjMGFiOTBhMGZhMzcxYzhjYmVlMDhi
MjQ0NmUzCj4+Pj4gZ2l0IGJpc2VjdCBiYWQgOGRjMzBjM2U0Y2Y4YzRlMzcwY2YwOGJkMDllYjg3
YjBkZWNjZDNkZQo+Pj4+IGdpdCBiaXNlY3QgYmFkIDEwMGFlYjAzYTQzN2YzMDMwMDg5NDA5MTYy
N2U0NDA2NjA1ZWUzY2IKPj4+PiBnaXQgYmlzZWN0IGJhZCBiMmExYTJhZTc4MThjOWQ4ZGExMmJm
N2IxOTgzYzhiOWY1ZmI3MTJiCj4+Pj4gZ2l0IGJpc2VjdCBnb29kIDhmODMxZjI3MmI0Yzg5YWEx
M2I0NWJkMDEwYzJjMThhZDk3YTNmMWIKPj4+PiBnaXQgYmlzZWN0IGdvb2QgZTQ1Y2M2MmMyMzQy
OGVlZmJhZTE4YTliNGQ4OGQxMDc0OTc0MWJkZAo+Pj4+IGdpdCBiaXNlY3QgYmFkIGViZjE5OGYx
N2I1YWM5NjdkYjYyNTZmNDA4M2JiY2JkY2MyYTMxMDAKPj4+PiBnaXQgYmlzZWN0IGdvb2QgMTIx
ODViYzM4Zjc2NjdiMWQ4OTViMjE2NWE4YTQ3MzM1YTRjZjMxYgo+Pj4+IGdpdCBiaXNlY3QgYmFk
IGU0NmU1OWI3N2E5ZTZmMzIyZWYxYWQwOGE4ODc0MjExZjM4OWNmNDcKPj4+PiBnaXQgYmlzZWN0
IGJhZCBiMDJjYzlhMTc2NzkzYjIwN2U5NTk3MDFhZjFlYzI2MjIyMDkzYjA1Cj4+Pj4KPj4+PiBD
SSBydW46IGh0dHBzOi8vZ2l0LmNvZGVsaW5hcm8ub3JnL2xpbmFyby9xY29tbHQvY2kvc3RhZ2lu
Zy9jZGJhLSB0ZXN0ZXIvLS9qb2JzLzIyOTg4MCNMMTI4MQo+Pj4+Cj4+Pj4gI3JlZ3pib3QgaW50
cm9kdWNlZDogYjAyY2M5YTE3Njc5Cj4+Pj4KPj4+PiBOZWlsCj4+Pgo+Pgo+IAoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
