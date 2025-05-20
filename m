Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E2FC3ABDD
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 07:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ohe+SLwDNlrWTB4fF0QLEWwUk99pdcxuJncKIQwQWno=; b=zii6Rh3dyvbhQ/L+Pff7bTshQK
	++uKk6N0T0qfvOeN3g19ZNe4uU3dmUc+Aeqp5D9fNbKheqqeTfDev9ywAVEM4PhZSPbv+aKBxkCPa
	vd3dKnToIE5ugS3W9iFVj8Bs90ZF1noPcBdRPrGmsrSelHdhjgbPebiZzQXKzpDelRg9PLRq8e8g0
	aqReR0z+6uxCXEojmTZRL+LwY7TUh7w6Yv8YVFb/EWH9Tn7P6r7nOElztiHGqnaEXZW47Puj8Dnpv
	cDDbUf4BrE7uIOKD+/uw1MTAwRudU17zjWSq4OfXL9ohn9SpFsM6YBoaVQUhEPghiGUtB1p7i1Kkh
	VL5+R9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHNO-0000000BqwJ-115y;
	Tue, 20 May 2025 07:27:02 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHMI-0000000BqkI-17jH
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 07:25:55 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so39798925e9.1
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 00:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747725953; x=1748330753; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UP5sbw/o/th42O3rAuhXBR1VcsVlw4tZ0UyWVZPqQrY=;
        b=LX2obqlipPnTVietL4tyX3aRAOzGIIltZqw8QJulYYAuCF5aTRZIo0XCF56dTX+7ye
         V+tTPldPlzuEIrZFai6wJrl2wXj8VVbMJqwHBipzNdrNsDZ7O0HcUL9fgil5vnysaTVF
         eanfP7uUBsmdGm60K31Y2LxcMCy5NWGUWUmdI/4RbQKh7PfJ96nFILRAaQQB9makS2mV
         Z6qotJh7e04mTAc8T3kDnW1nhMV/9sfxTkYqZF7M8tRtEciK2QBTqrKTMoMT5Z8TG99p
         O6PNNmJDdWSuexKy85QAWQHTwQ0SewwRzjqTtwT9+wuIgpDjO6RTR+fSIPLKijPdyfM0
         tCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747725953; x=1748330753;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UP5sbw/o/th42O3rAuhXBR1VcsVlw4tZ0UyWVZPqQrY=;
        b=A/OhwSYUPYwiWWUUlmV3YDHtOru89qC6izDCE8bWJMg+G2hQxXVupLqd9qQOB6SL/r
         g6pglVqyYK6Ip6YOe39YrAlVf34MLrfbaHwqD6kjQdK1wGLhuP3PZhSeHqiHsAlI+3Hx
         vw3uniA7D7qBUPQAfbygz2IKox3y7w75+IZTwkQFAfExMtTJjtEKXBVx+BpBav2bJP6V
         qCPT5zeO/+oCb1Mlg2HpV7Kyd69a9bWoUm3klBf9ZG17GX4zEjyuoT4+/hGB6YTwniZt
         Axej+P396dxHE7GG1JQGBfEcb58ir3Q9hubeD6V6BgMOgO9wSlplRQb1U0pBSjhS6RsT
         Hm9w==
X-Forwarded-Encrypted: i=1; AJvYcCXkdcqFjmYr/EK+u0HiuIAZHJlxbGby7bPsgodiOD5rd10efC3byA7pU0jpQYI/HvnulC1V5lhm9b8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeC0zaRaDvQAbLSacitMOoV9wG8dy/duzmed6Lt39UKl2dQUwK
	fvJNeuX8HMhv8MO41a8y6p84ssp23L+LY0QcqeV0Fhdz8LWvv5Hn85zCOJo7SWyW3io=
X-Gm-Gg: ASbGncvqxzqKXLgRChr622RkA9gh7cHChLvCFXmsa33e16CdfBhG1urxVdMsz5fNXg7
	8oEQZOa2aEnuQiDYOyFijQ1aIMetA5L5/8OOanhZR8ny0+4UtByZM17n15V2dJ42FF9FVZZsCSd
	5zo2zRw7r9dsAnOpYZU2JhbJu4cQIcbdcR944gyhaXle+3sJxNGMCzkB2npf4Ilm6/xqoKDphOY
	qQw+GmyL7O2BMOFUVubBzZZcdJ8HSmETj167ahySn4Mer79mHbtnQCZWdrkNCVhjCARNxVHZWFu
	Gz/5tt51UpR8EBm1I1jKvFFXjxIZxtlkCzQ5YUOYHXnPcxzsvW2zRxV7zJjVyBu1zYKppgtvcdv
	gAVEX57zckTEjVfHc6eWemYA4gAD8
X-Google-Smtp-Source: AGHT+IGX1ouqdPz6YkedzAISFSFYo/jA67bLEFX97CJnnDf9kq6Edax1FsWtb5/PdGMGY7Uc5FvEng==
X-Received: by 2002:a05:600c:5012:b0:440:69f5:f179 with SMTP id 5b1f17b1804b1-442f84d5511mr184356115e9.7.1747725952828;
        Tue, 20 May 2025 00:25:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fb2e:6266:4e39:ce68? ([2a01:e0a:3d9:2080:fb2e:6266:4e39:ce68])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd99absm19162985e9.37.2025.05.20.00.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 00:25:52 -0700 (PDT)
Message-ID: <1527272e-fe7a-435d-a279-3ff73c245200@linaro.org>
Date: Tue, 20 May 2025 09:25:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
 quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
 quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
 <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
 <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
 <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
 <bpc4tsp4kghqohoxm42qls7gzd5me7xrpodmazyhpvjjlkkay2@paoq5zygczdd>
 <CAMyL0qNQWN1ORReZu3wrw_Ex+nAmAJxhTMCt4Jw6PyEN4tEtGQ@mail.gmail.com>
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
In-Reply-To: <CAMyL0qNQWN1ORReZu3wrw_Ex+nAmAJxhTMCt4Jw6PyEN4tEtGQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_002554_310122_348B9535 
X-CRM114-Status: GOOD (  15.52  )
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

T24gMTkvMDUvMjAyNSAxNDoxNiwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4gT24gU2F0LCBNYXkg
MTcsIDIwMjUgYXQgMzozM+KAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPj4KPj4gT24gRnJpLCBNYXkgMTYsIDIwMjUgYXQg
MDM6NTk6MDJQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4+PiBPbiBGcmksIE1heSAx
NiwgMjAyNSBhdCAyOjMw4oCvUE0gS29ucmFkIER5YmNpbwo+Pj4gPGtvbnJhZC5keWJjaW9Ab3Nz
LnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiA1LzE0LzI1IDY6MzggUE0sIG5laWwu
YXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4+Pj4+IE9uIDE0LzA1LzIwMjUgMTM6MzcsIE1y
aW5tYXkgU2Fya2FyIHdyb3RlOgo+Pj4+Pj4gRnJvbTogTXJpbm1heSBTYXJrYXIgPG1yaW5tYXku
c2Fya2FyQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4+Pgo+Pj4+Pj4gVGhlIG1heGltdW0gbGluayBz
cGVlZCB3YXMgcHJldmlvdXNseSByZXN0cmljdGVkIHRvIEdlbjMgZHVlIHRvIHRoZQo+Pj4+Pj4g
YWJzZW5jZSBvZiBHZW40IGVxdWFsaXphdGlvbiBzdXBwb3J0IGluIHRoZSBkcml2ZXIuCj4+Pj4+
Pgo+Pj4+Pj4gQWRkIGNoYW5nZSB0byByZW1vdmUgbWF4IGxpbmsgc3BlZWQgcHJvcGVydHksIFNp
bmNlIEdlbjQgZXF1YWxpemF0aW9uCj4+Pj4+PiBzdXBwb3J0IGhhcyBhbHJlYWR5IGJlZW4gYWRk
ZWQgaW50byB0aGUgZHJpdmVyLgo+Pj4+Pgo+Pj4+PiBXaGljaCBkcml2ZXIsIFBIWSBvciBDb250
cm9sbGVyID8KPj4+Pgo+Pj4+IENvbnRyb2xsZXIsIHNlZQo+Pj4+Cj4+Pj4gMDk0ODM5NTllMzRk
ICgiUENJOiBkd2M6IEFkZCBzdXBwb3J0IGZvciBjb25maWd1cmluZyBsYW5lIGVxdWFsaXphdGlv
biBwcmVzZXRzIikKPj4+Cj4+PiBZZXMsIHRoaXMgcGF0Y2ggaXMgaGVscGluZyB0byBzb2x2ZSBn
ZW40IHN0YWJpbGl0eSBpc3N1ZS4KPj4+Pgo+Pj4+IGFuZCBjb21taXRzIGFyb3VuZCBpdAo+Pj4+
Cj4+Pj4gZG9lcyB0aGlzIGNoYW5nZSBkZXBlbmRzIG9uIHRoZSBwYXRjaCAxIFBIWSBzZXR0aW5n
cyB1cGRhdGUgPwo+Pj4+Cj4+Pj4gVGhhdCBJJ20gY3VyaW91cyBhYm91dCB0b28sIGJ1dCBJIHdv
dWxkIGd1ZXNzdGltYXRlIG5vCj4+Pj4KPj4+IHRoaXMgY2hhbmdlIGRvZXNuJ3QgZGVwZW5kcyBv
biB0aGUgcGF0Y2ggMSBQSFkgc2V0dGluZ3MgdXBkYXRlCj4+Cj4+IFRoZW4gd2hhdCBoYXMgY2hh
bmdlZCwgYXMgcHJldmlvdXNseSBpdCB3YXMgZG9jdW1lbnRlZCB0byBoYXZlIHN0YWJpbGl0eQo+
PiBpc3N1ZXMuCj4+Cj4gQWN0dWFsbHkgdGhpcyBjb250cm9sbGVyIGNoYW5nZSBpcyBzb2x2aW5n
IHRoZSBzdGFiaWxpdHkgaXNzdWUgd2l0aAo+IGdlbjQ6ICJQQ0k6IHFjb206IEFkZCBlcXVhbGl6
YXRpb24gc2V0dGluZ3MgZm9yIDE2LjAgR1QvcyIKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1wY2kvMjAyNDA5MTEtcGNpLXFjb20tZ2VuNC1zdGFiaWxpdHktdjctMy03NDNmNWMxZmQw
MjdAbGluYXJvLm9yZy8KCk9rIHNvIHRob3NlIHBhdGNoZXMgc2hvdWxkIGJlIHNlbmQgc2VwYXJh
dGVseSBhbmQgd2lsbCByZWR1Y2UgbWFpbnRhaW5lcnMgd29yawpieSB0cnlpbmcgdG8gZmlndXJl
IG91dCBpZiB0aGVyZSdzIGEgZGVwZW5kZW5jeS4KCk5laWwKCj4gCj4gVGhhbmtzLAo+IE1yaW5t
YXkKPj4gLS0KPj4gV2l0aCBiZXN0IHdpc2hlcwo+PiBEbWl0cnkKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
