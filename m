Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A462606A32E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 08:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=azVwhmuQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=amRkfW6m
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IgY3uKVkj2hg7iZrnMYG74WIBJ3+rwG7BINHss4Vw4k=; b=azVwhmuQmvp9gh0P0N/yxC9JA1
	4woVxOknEh+rJJRtx22UHiuGyP8QXcthFmjh2Z9yAOusJNf197/X9BxdCDtoAB8tsjrYp6hs2gbhl
	9qBEqKEkAVXYEU2LjbcVxgYFoBqgm/BH7BfGIGAqXD+mOFsebgiv0/unmSkXxy6NyTUCBE7MkiiA/
	fP7FANvEyhhmMkHM+d/F1rK8qHFfku+aaLYf2YOwdYkaQZ1HP08Bhf1XYSjR1+Q2yHOVUsqqAyc4L
	1+CFO5Vw/b2ZnzDKKJkle6TqVNhjd5FIoCbJqvvoXvCdXmVlMATBq7dkI0iwOkICxm0EOvgJarXCJ
	/s/fDIJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW8AB-000000091Jm-15LK;
	Wed, 25 Nov 2026 08:15:36 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW89Y-0000000913Z-3U6J
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 08:14:59 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4bb69f5b161so35337175e9.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 00:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795594495; x=1796199295; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Rc4aqCyzYBjWOigmv1O5fiE2Ptnz+1fYVaVELpdQ2fQ=;
        b=amRkfW6mBhHowcM1XSnCqpAiOuudZRpQEOtJQ/e13mrKu8Ijl1dp7fqAL+5OyJ0fm0
         +Cp554gxiryPNUX33Ac202vcuit8OSifP7VxdJGipAjnfam6H7pyggtaZ2tW05pk54XZ
         5XesgzkIBNmC2V1PhqYXaPVZb2Xah1f42avHZRZLGaYLp47WuR61IwzrCt4bABlinCa4
         lRfnqc/sDtvS9PQ7RhRF1NeiyDVnyiSi1SEdtqMpnr/sC6m2e85N2z33TKAtj2vV2SV/
         aHs5azNfS7OhQ6burN6SOC9VN6Fsg65Fj/2OE3dfGEt3oTmr/FrFIkDAEFeoqh574Zqs
         LVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795594495; x=1796199295;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Rc4aqCyzYBjWOigmv1O5fiE2Ptnz+1fYVaVELpdQ2fQ=;
        b=dAwUG+JKTqfCpgyDsGfwvyWR2K4f5DxVIwyhZwSFLHad56wTC1CvntGAecXrLNyNGR
         +ozw6GRXfEORwyazH0PYXbGEigsFGu4XPaRwSm0kmlkUst/9+jNY7GAy6RBuXdBLIgHz
         EwfdR0WfZRuqJyVgc1NSdvNxicyhRZvkJls2XeZslNz/HJ2JuqL42GogZRNutSTLivQh
         uKb0stMOBqf5JSm+Z8eUIqJNrsju+Hb95biuXzlS00EG3KSiaR0A0QkUIR1EWiprjaIY
         oj5PjcWkRdQd/dxGOM/dwgN1v2ioQ9BJKnFapGrcLzYnHw/bwvzujcDgX/6sT95prA0A
         3YSg==
X-Forwarded-Encrypted: i=1; AL+hErGtWAmBUedNmHK2bjBShbW9ubq4LTu+IT2e1c9DnJGE1hBmNbN28szTTaZf/h+xji/Q2oyUDb40qE4=@lists.infradead.org
X-Gm-Message-State: APuU4Z/+RvkmI3vkXzw9jx8mdUSUe2z2h5X1eSoiEsW48lOJS9l0KCCS
	xEtVOzI1T6jIiVcw3bddznU27iB4jn3NuTYPFWcq1cdlpV0o1aynW2QlX2A5yk7VeHiLxL+28xr
	zoiUbtiU1hA==
X-Gm-Gg: AZFdTZcxZCeX8XaIDijlII4OSWIjyj4AGwPHv9/kIVtefHWyi7N1rBAG6N5eVUqhkm1
	gC693GeG9yo9HunsDWLXHQ2HH2f4H+ERp7LmqsgZt7p7RhR/NDq/sCiYxdJox28h8QyWFxuYN1h
	L6NsZNzjNeJ4MsoRfKymZMRN2Mu4K2wsTlJgOETfcDJC9szr7ZGdsWUF6uzTmVnI0dGUdCVDogZ
	td9JGWyQrMEmYevgYdhN/TwRrb41sQyc/4tZB7II7IowROz/ytvgYbfbOs6zRRXzVR0eAutG5GK
	JppLvEWWGPmaKIMwvpRKHy9WfvLL7jf8tEx8qbFHof0ClVjdgYvGYsWgC6xsL5TDFW15mrrMJvj
	cIx9qRKr9VJ+gSqHiWbJN7SUcxF7FGQTFaYx4/6KYEdyGs0uYidXAPcUMSg/0D7f0Fsr3R1vS6H
	nvwK7mCxHUA3Or41eO9pTz4K5Eh14UjAoAmfIiV/YCwe1LmWdhAW7/0ZeISoUsCTLKer3Nf+i6y
	h+Z6cDmT+yKMOeUDodO9lAzFGhi3ijPsluOv1LO0v35tcYrXjrfxNL4/WQpJRgKSjcKj+ECAaIh
	6RTjs1IsYdIIPnNTqPLQ//EYIXeW2A1juCzDJB/zQT0395rpSEFvfa622E/fE9GoJlcKRSIzcOl
	8Pb8V6E/C
X-Received: by 2002:a05:600c:1548:b0:4a1:e00b:a10b with SMTP id 5b1f17b1804b1-4bb88800020mr372318965e9.7.1795594494562;
        Wed, 25 Nov 2026 00:14:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:f368:ae2e:e717:e970? ([2a01:e0a:106d:1080:f368:ae2e:e717:e970])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bba3d3679bsm26993885e9.2.2026.11.25.00.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 00:14:54 -0800 (PST)
Message-ID: <6e408f48-17ca-4927-ae09-c4153e294371@linaro.org>
Date: Wed, 25 Nov 2026 09:14:53 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 00/11] phy/drm: amlogic: Extract Meson HDMI TX PHY into
 a dedicated driver
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel-dev@aliel.fr
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Ulf Hansson <ulfh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
References: <20261123-meson-drm-create-hdmitx-phy-v4-0-3fb94f5534ca@aliel.fr>
 <CAFBinCD822UPQrrd_8ZbVRUVCVJ-3pGN69vbZBxUE+0yeMcysg@mail.gmail.com>
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
In-Reply-To: <CAFBinCD822UPQrrd_8ZbVRUVCVJ-3pGN69vbZBxUE+0yeMcysg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_001456_925183_AAAC80C9 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMjQvMjYgMjM6MDUsIE1hcnRpbiBCbHVtZW5zdGluZ2wgd3JvdGU6Cj4gSGkgUm9uYWxk
LCBIaSBOZWlsLAo+IAo+IGZpcnN0IG9mIGFsbDogdGhhbmtzIFJvbmFsZCBmb3IgcGlja2luZyB0
aGlzIHVwIQo+IEkgbGlrZSB0aGUgb3ZlcmFsbCBhcHByb2FjaC4gQmVmb3JlIEkgZGl2ZSBkZWVw
IGludG8gdGhpcyBzZXJpZXMgSQo+IHdpbGwgZmluaXNoIHRoZSBjb2RlLXJldmlldyBvZiBWYWxl
cmlvJ3MgQVVESU4gc2VyaWVzLgo+IAo+IFR3byBxdWljayBub3RlcyBiZWxvdy4KPiAKPiBPbiBN
b24sIE5vdiAyMywgMjAyNiBhdCA4OjM44oCvUE0gUm9uYWxkIENsYXZlYXUgdmlhIEI0IFJlbGF5
Cj4gPGRldm51bGwrbGludXgta2VybmVsLWRldi5hbGllbC5mckBrZXJuZWwub3JnPiB3cm90ZToK
PiBbLi4uXQo+PiBPdmVydmlldyBvZiB0aGUgc2VyaWVzOgo+PiAtIFBhdGNoZXMgMS0zOiBGaXgg
Y29tcGF0aWJsZSBtYXRjaGluZyBpbiBtZXNvbi1neC1oaGktc3lzY3RybCBiaW5kaW5ncywKPj4g
ICAgYWRkIHRoZSBuZXcgYW1sb2dpYyxtZXNvbi1oZG1pLXR4LXBoeSBEVCBzY2hlbWEsIGFuZCBh
bGxvdyB0aGUKPj4gICAgImhkbWktcGh5IiBjaGlsZCBub2RlIHVuZGVyIHRoZSBISEkgc3lzY29u
Lgo+IEl0J3MgYmVlbiBhIGxvbmcgdGltZSwgYnV0IEkgdGhpbmsgd2UndmUgYmVlbiBhc2tlZCBi
eSB0aGUgZGV2aWNldHJlZQo+IG1haW50YWluZXJzIHRvIGhhdmUgcmVnIHByb3BlcnRpZXMgZm9y
IHRoZSBub2RlcyB3aXRoaW4gJmhoaQo+IEJ1dCBJIGNhbid0IGZpbmQgdGhlIG1lc3NhZ2UgYXQg
dGhlIG1vbWVudC4KClRoZSBoaGkgc3lzY29uIG5vZGVzIGRvZXNuJ3QgaGF2ZSAjW2FkZHJlc3N8
c2l6ZV0tY2VsbHMgYW5kIHNvIGZhciBpdAp3YXNuJ3QgcmVxdWlyZWQsIGxldCdzIHdhaXQgZm9y
IGEgcmV2aWV3IGZyb20gRFQgbWFpbnRhaW5lcnMsIEknbSBmaW5lCndpdGggdGhlIGN1cnJlbnQg
ZGVzaWduCgo+IAo+PiAtIFBhdGNoIDQ6IEFkZCB0aGUgbmV3IE1lc29uIEhETUkgVFggUEhZIGRy
aXZlciBpbXBsZW1lbnRpbmcgdGhlIEhETUkKPj4gICAgUEhZIGNvbmZpZ3VyYXRpb24gb3BzLCBh
bG9uZyB3aXRoIHRoZSB0ZW1wb3JhcnkgbGVnYWN5IGNyZWF0aW9uCj4+ICAgIGhlbHBlci4KPiBB
dCBxdWljayBnbGFuY2UgeW91ciBQSFkgYXBwcm9hY2ggd291bGQgYWxzbyBmaXQgcGh5LW1lc29u
OC1oZG1pLXR4LmMKPiBUaGVyZSBzZWVtIHRvIGJlIG1pbm9yIGRpZmZlcmVuY2VzOgo+IC0gdHdv
IGFkZGl0aW9uYWwgZW5hYmxlIGJpdHMgaW4gSEhJX0hETUlfUEhZX0NOVEwxIG9uIEdYQkIgYW5k
IG5ld2VyOgo+IEhETUlfRklGT19FTkFCTEU9QklUKDIpIGFuZCAgSERNSV9GSUZPX1dSX0VOQUxC
RT1CSVQoMykKPiAtIG5ld2VyIFNvQ3Mgc2VlbSB0byBoYXZlIEhISV9IRE1JX1BIWV9DTlRMMy4u
NQo+IAo+IE1lc29uOC84Yi84bTIgSERNSSBzdXBwb3J0IGlzIG5vdCB1cHN0cmVhbSB5ZXQuIFRo
YXQncyB3aHkgdGhvc2UgU29DJ3MKPiB3b24ndCBuZWVkIHRoZSBiYWNrd2FyZHMgY29tcGF0aWJp
bGl0eSBjb2RlLiBTbyBpZiB5b3UgbmVlZCB0byB0d2Vhawo+IHRoZSBkcml2ZXI6IGZlZWwgZnJl
ZSwgdGhlcmUncyBub3QgbXVjaCB5b3UgY2FuIGJyZWFrIQo+IAo+IAo+IEJlc3QgcmVnYXJkcywK
PiBNYXJ0aW4KClRoYW5rcywKTmVpbAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
