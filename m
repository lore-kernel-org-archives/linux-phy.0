Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1BE7C35FFC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Mar 2025 07:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6SeiJrtkYIbfhbyGQb+iPduFzGj5wyHn4p/3O1TmwQ=; b=guR4Lz9tKcxwEWwKJuV9VTPXTU
	o7ImEAloCTvOdFgHJbiRe4FRVXQE4wORWYvSIU3Q7gds/L5er4yFVy/4xCxgsgBB52/AGXNN/5fN9
	S89c0kOnxFxAyXJJwql/lJkpSo+EbeMeM694COK9IBsU1y2N1SlA4qS6GWVAucbHKtNl//Ti/8590
	k2Wq79kcmbzzMSVdD7dJUikkw5CchNbD6iueBCimjwX6NFTlqbRHqJuLKewdn5q9jfbU1BSygMTyJ
	CT78nWLDN1AcpD8TO5w4T8zZl73081Hd2CYwJPWQ8e4BDqMQbFnHOnl6Mpdfi/QnTv6/LbvPjyMNX
	e6CmSavw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twyo8-000000056HN-1Iya;
	Tue, 25 Mar 2025 07:34:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twynv-000000056Fc-1iRe
	for linux-phy@lists.infradead.org;
	Tue, 25 Mar 2025 07:34:32 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so39304835e9.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Mar 2025 00:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742888069; x=1743492869; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dw4NCGNv66MAAuIS/WGnZWAoOWEAhDyM06XM2XtuC0M=;
        b=SRXN5z4rvJKHcFTvueHEemA8W3YIf6CyrIhhGPV3NdxcoAGV3rdLSFxDYqm2wHAbIw
         plfJDhzgGy/Phuy1enY1wA43FYiDFhc/AeA1b/ff169tLFfBfx0qFt+IN17+SnscMA4L
         0HqeYnQzbV0oq6Sf0/hntEkgDztUphluBTXlLnfXji6+A8IHVF6qEZorEDh95BrYTf3h
         Ub1lkaHmSKdIBeOGLV01lfrUEldkMObMUX5cyaaPTyEwTEbjODlnw0A7DI6TIDeQ7CzS
         yCWU5UPMigRWJ1Gmk25b6YTIM2zZehXy+p2earymIi/aj1pbGPnEnX3SRPo29T9gogeK
         WHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742888069; x=1743492869;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dw4NCGNv66MAAuIS/WGnZWAoOWEAhDyM06XM2XtuC0M=;
        b=pkpmCcJ802cK9+Pd2RT0Gzxa2K4Kj5J0lO4SjdHByaxbxyrBtI4mvDeSjdtIT7FaMw
         iWzKq3yPGwChf9C7Rkb6wT0LYZ3w4XJF+tKv2DVRT8DBzYjfdldK/C7dGZ3MFjSqv963
         yiVxoMucoq+FCrOUdtGbgQNjx3p8HboeLSoi0ZPZiYYAgILCvJVFs6P53XnJvk+WdZlU
         0t7DNpw98dBsveyrciDLKTTZS8Xbg/+1oopmd3MjSSKOkK1ldZRAR2tftMnawctm640B
         uz/02ybcL6rfs2pLDR3MApqByC/+nDTgUVNLRjh/TsUfv19AxCBBQtA8YRnbo/YINT42
         Rlkw==
X-Forwarded-Encrypted: i=1; AJvYcCWe4zmXZbHaVanbXiY4j9GWeuDJW6Owk8Gq5AVao0NIlecfYwArWzNFL4BFz0c73DEOhwvwGHBwsxI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx66EU/rzGrQk81GUGwNXMrMOYW7pbBIdS9TCf2T6DGEZXu/NnQ
	MJq4yegMw3PO3VZyx6GHUNKXeV4wsxUAwscciiA+1UCf6EWl7W8m2Ktlp5oWq7k=
X-Gm-Gg: ASbGncv4Dvjezt1ZS9PN682nbl7U7RB4Fhbk4i2DnijqU1FhRbGN6tgmHzhpzojseLY
	q69gfO8G0Y4/Nt6BlqAUKO8qRMcDT8W/+8LPkOpjIyA9gjE8MaBwduIhtAgo7BbRErTBT/h9HSp
	9Bk3iHTz66R/7nHbR7hh1yNSchK4NMQkt2goLCnemNACuXMC7HCi2b3eMqDBuBXQ+xavTLAbI+w
	cBRqyQ03+2ngjk6WJ0OzLFV1Z1/Vdq2iKfQxfS90clMbIShA7lZxCy3tMFtRVUXVbSHY0VLwHn9
	RhzyxdBd0JVX5toOZi7ZYDgtvQeHEaKBVCPcqddUbtpaXminGXF7PFoCFtKFq5X3VFJNS10C+uf
	golQHgbbXemC1+OFR
X-Google-Smtp-Source: AGHT+IHWBeEyvVjrXMWACuoAPAwFdFBSgnXABio9agz6uinOol23K1b216zwJPS2SDqRfbcDRCxUBA==
X-Received: by 2002:a05:6000:1a86:b0:391:2e6a:30fa with SMTP id ffacd0b85a97d-3997959cc2amr15956115f8f.27.1742888069073;
        Tue, 25 Mar 2025 00:34:29 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:7a:6952:5850:1802? ([2a01:e0a:3d9:2080:7a:6952:5850:1802])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b3ebcsm12812684f8f.47.2025.03.25.00.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 00:34:28 -0700 (PDT)
Message-ID: <731f1ad1-8979-49a1-b168-56e24b94f4fb@linaro.org>
Date: Tue, 25 Mar 2025 08:34:28 +0100
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
In-Reply-To: <430ed11c-0490-45be-897b-27cad9682371@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_003431_455082_672D1B54 
X-CRM114-Status: GOOD (  22.41  )
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

SGksCgpPbiAyNS8wMy8yMDI1IDA0OjEyLCBOaXRpbiBSYXdhdCB3cm90ZToKPiAKPiAKPiBPbiAz
LzI0LzIwMjUgMTE6NDAgUE0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24g
MTAvMDMvMjAyNSAyMjoxMiwgTWVsb2R5IE9sdmVyYSB3cm90ZToKPj4+IEZyb206IE5pdGluIFJh
d2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgo+Pj4KPj4+IEFkZCBTTTg3NTAgc3BlY2lm
aWMgcmVnaXN0ZXIgbGF5b3V0IGFuZCB0YWJsZSBjb25maWdzLiBUaGUgc2VyZGVzCj4+PiBUWCBS
WCByZWdpc3RlciBvZmZzZXQgaGFzIGNoYW5nZWQgZm9yIFNNODc1MCBhbmQgaGVuY2Uga2VlcCBV
RlMKPj4+IHNwZWNpZmljIHNlcmRlcyBvZmZzZXRzIGluIGEgZGVkaWNhdGVkIGhlYWRlciBmaWxl
Lgo+Pj4KPj4+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGlu
YXJvLm9yZz4KPj4+IENvLWRldmVsb3BlZC1ieTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1
aWNpbmMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1
aWNpbmMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FA
cXVpY2luYy5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1xc2VyZGVzLWNvbS12Ni5oIHzCoMKgIDcgKwo+Pj4gwqAgLi4uL3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1xc2VyZGVzLXR4cngtdWZzLXY3LmjCoMKgwqAgfMKgIDY3ICsrKysrKysrCj4+PiDC
oCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgMTgwICsrKysrKysrKysrICsrKysrKysrKy0KPj4+IMKgIDMgZmlsZXMgY2hhbmdl
ZCwgMjQ2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pgo+Pgo+PiA8c25pcD4KPj4K
Pj4gVGhpcyBjaGFuZ2UgYnJlYWtzIFVGUyBvbiB0aGUgU004NTUwLUhESzoKPj4KPj4gW8KgwqDC
oCA3LjQxODE2MV0gcWNvbS1xbXAtdWZzLXBoeSAxZDgwMDAwLnBoeTogcGh5IGluaXRpYWxpemF0
aW9uIHRpbWVkLW91dAo+PiBbwqDCoMKgIDcuNDI3MDIxXSBwaHkgcGh5LTFkODAwMDAucGh5LjA6
IHBoeSBwb3dlcm9uIGZhaWxlZCAtLT4gLTExMAo+PiBbwqDCoMKgIDcuNDkzNTE0XSB1ZnNoY2Qt
cWNvbSAxZDg0MDAwLnVmc2hjOiBFbmFibGluZyB0aGUgY29udHJvbGxlciBmYWlsZWQKPj4gLi4u
Cj4gCj4gSGkgTmVpbCwKPiAKPiBUaGFua3MgZm9yIHRlc3RpbmcgYW5kIHJlcG9ydGluZy4KPiBJ
IGRpZCB0ZXN0ZWQgdGhpcyBwYXRjaCBvbiBTTTg3NTAgTVRQLCBTTTg3NTAgUVJELCBTTTg2NTAg
TVRQLCBTTTg1NTAgTVRQIGFuZCBTTTg4NTAgUVJEIGFsbCBvZiB0aGVzZSBoYXZlIHJhdGUgQiBh
bmQgaGVuY2Ugbm8gaXNzdWUuCj4gCj4gVW5mb3J0dW5hdGVseSBvbmx5IFNNODU1MCBIREsgcGxh
dGZvcm0gd2hpY2ggVUZTNC4wIGFuZCBSYXRlQSBjb3VsZG4ndCBnZXQgdGVzdGVkLiBBcyB3ZSBr
bm93IFNNODU1MCB3aXRoIGdlYXIgNSBvbmx5IHN1cHBvcnQgcmF0ZSBBLgo+IAo+IEkgd2FzIGFw
cGx5aW5nIHJhdGUgQiBzZXR0aW5nIHdpdGhvdXQgY2hlY2tpbmcgZm9yIG1vZGUgdHlwZS4gU2lu
Y2UKPiBTTTg1NTAgaXMgb25seSBwbGF0Zm9ybSB3aGljaCBzdXBwb3J0IG9ubHkgcmF0ZSBBIHdp
dGggVUZTNC4wIC4gSGVuY2UKPiB0aGlzIGNvdWxkIGJlIHRoZSBpc3N1ZS4KPiAKPiBNZWFud2hp
bGUgY2FuIHlvdSBoZWxwIHRlc3QgYXQgeW91ciBlbmQgd2l0aCBiZWxvdyBjaGFuZ2UgYW5kIGxl
dCBtZSBpZiBpdCByZXNvbHZlcyBmb3IgeW91LiBJIHdpbGwgYWxzbyB0cnkgYXQgbXkgZW5kIHRv
IHRlc3QgYXMgd2VsbC4KPiAKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBpbmRleCA0NWIzYjc5MjY5NmUuLmIzM2UyZTJiNTAx
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBAQCAtMTc1
NCw3ICsxNzU0LDggQEAgc3RhdGljIHZvaWQgcW1wX3Vmc19pbml0X3JlZ2lzdGVycyhzdHJ1Y3Qg
cW1wX3VmcyAqcW1wLCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcKPiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHFtcF91ZnNfaW5pdF9hbGwocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJs
YXlbaV0pOwo+ICDCoMKgwqDCoMKgwqDCoCB9Cj4gCj4gLcKgwqDCoMKgwqDCoCBxbXBfdWZzX2lu
aXRfYWxsKHFtcCwgJmNmZy0+dGJsc19oc19iKTsKPiArwqDCoMKgwqDCoMKgIGlmIChxbXAtPm1v
ZGUgPT0gUEhZX01PREVfVUZTX0hTX0IpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cW1wX3Vmc19pbml0X2FsbChxbXAsICZjZmctPnRibHNfaHNfYik7Cj4gIMKgfQo+IAo+ID09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQoKV2l0aCB0aGlzIGNoYW5nZSB0aGUgVUZTIHdvcmtzIGFnYWlu
LgoKVGhhbmtzLApOZWlsCgo+IAo+IAo+IFRoYW5rcywKPiBOaXRpbgo+IAo+Pgo+PiBHSVQgYmlz
ZWN0IHBvaW50cyB0bzoKPj4gYjAyY2M5YTE3Njc5M2IyMDdlOTU5NzAxYWYxZWMyNjIyMjA5M2Iw
NSBpcyB0aGUgZmlyc3QgYmFkIGNvbW1pdAo+PiBBdXRob3I6IE5pdGluIFJhd2F0IDxxdWljX25p
dGlyYXdhQHF1aWNpbmMuY29tPgo+PiBEYXRlOsKgwqAgTW9uIE1hciAxMCAxNDoxMjozMCAyMDI1
IC0wNzAwCj4+Cj4+IMKgwqDCoMKgIHBoeTogcWNvbS1xbXAtdWZzOiBBZGQgUEhZIENvbmZpZ3Vy
YXRpb24gc3VwcG9ydCBmb3Igc204NzUwCj4+Cj4+IGJpc2VjdCBsb2c6Cj4+IGdpdCBiaXNlY3Qg
c3RhcnQgJ2ZmN2Y5YjE5OWUzZicgJ3Y2LjE0LXJjMScKPj4gZ2l0IGJpc2VjdCBnb29kIDM2YzE4
YzU2Mjg0NjMwMGQ0ZTU5ZjFhNjUwMDg4MDBiNzg3ZjRmZTQKPj4gZ2l0IGJpc2VjdCBnb29kIDg1
Y2YwMjkzYzNhNzU3MjZlN2JjNTRkM2VmZGM1ZGM3ODNkZWJjMDcKPj4gZ2l0IGJpc2VjdCBnb29k
IGIyY2Q3M2UxOGNlYzc1ZjkxN2QxNGI5MTg4ZjgyYTJmZGVmNjRlYmUKPj4gZ2l0IGJpc2VjdCBi
YWQgYjI0NzYzOWQzM2FkMTZlYTc2Nzk3MjY4ZmQwZWVmMDhkODAyN2RmZAo+PiBnaXQgYmlzZWN0
IGdvb2QgOWIzZjJkZmRhZDFjYzBhYjkwYTBmYTM3MWM4Y2JlZTA4YjI0NDZlMwo+PiBnaXQgYmlz
ZWN0IGJhZCA4ZGMzMGMzZTRjZjhjNGUzNzBjZjA4YmQwOWViODdiMGRlY2NkM2RlCj4+IGdpdCBi
aXNlY3QgYmFkIDEwMGFlYjAzYTQzN2YzMDMwMDg5NDA5MTYyN2U0NDA2NjA1ZWUzY2IKPj4gZ2l0
IGJpc2VjdCBiYWQgYjJhMWEyYWU3ODE4YzlkOGRhMTJiZjdiMTk4M2M4YjlmNWZiNzEyYgo+PiBn
aXQgYmlzZWN0IGdvb2QgOGY4MzFmMjcyYjRjODlhYTEzYjQ1YmQwMTBjMmMxOGFkOTdhM2YxYgo+
PiBnaXQgYmlzZWN0IGdvb2QgZTQ1Y2M2MmMyMzQyOGVlZmJhZTE4YTliNGQ4OGQxMDc0OTc0MWJk
ZAo+PiBnaXQgYmlzZWN0IGJhZCBlYmYxOThmMTdiNWFjOTY3ZGI2MjU2ZjQwODNiYmNiZGNjMmEz
MTAwCj4+IGdpdCBiaXNlY3QgZ29vZCAxMjE4NWJjMzhmNzY2N2IxZDg5NWIyMTY1YThhNDczMzVh
NGNmMzFiCj4+IGdpdCBiaXNlY3QgYmFkIGU0NmU1OWI3N2E5ZTZmMzIyZWYxYWQwOGE4ODc0MjEx
ZjM4OWNmNDcKPj4gZ2l0IGJpc2VjdCBiYWQgYjAyY2M5YTE3Njc5M2IyMDdlOTU5NzAxYWYxZWMy
NjIyMjA5M2IwNQo+Pgo+PiBDSSBydW46IGh0dHBzOi8vZ2l0LmNvZGVsaW5hcm8ub3JnL2xpbmFy
by9xY29tbHQvY2kvc3RhZ2luZy9jZGJhLSB0ZXN0ZXIvLS9qb2JzLzIyOTg4MCNMMTI4MQo+Pgo+
PiAjcmVnemJvdCBpbnRyb2R1Y2VkOiBiMDJjYzlhMTc2NzkKPj4KPj4gTmVpbAo+IAoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
