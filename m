Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E08CCEDDA5
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 15:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PLy28ViylJwMUq/i6Lk1IYs+c9qhicm/EQv/3FbuggI=; b=kLNIxmwXLSwRduYjkDDS6jM6Ou
	7XCQSyMcu33Jx1MwFPCfPoMLniyYmHtd3ca3BxwA+gqXAsTizGRFPYE73DbTGzPy4FoGzy0DzGF7Q
	G+MVOBNuUgBURaN1ku+JlkFbudU/MVTBJgbSpoBKtP+t/0Q6EpXc+nQJrv63g8czjf/z0ZRkhPY2R
	jU1rn6pSp0kHXI3+cIGSC5EIv6epw38AfEIXEfO+qfjepxCXHELp5yljrwW4FjMDWvqxY9Xk3D9Ii
	VT2XGfNj112nr5JRhoV/PAIe0y9VMcRHS4q7OllosEd8mrQNlzRXwzylv93wIFbtdXxyTRZz6SHqR
	ZxDHtgcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLNFD-00000000b2i-333O;
	Tue, 18 Nov 2025 15:03:47 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLNFA-00000000b2I-2xyB
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 15:03:46 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47774d3536dso46708345e9.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 07:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763478223; x=1764083023; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E8WV+lVIvrjo7rZmjE+gswziL7WbppYyzdAivTHQVq0=;
        b=MlJBqjBA4Dz04lyj43hkPZS2VPxNy4wVUuPk5CwOcEHA0pDj8raWHetAMoGsXlRJBX
         AWQrsgNgX2hajozIrrfCKzBihFnO4D1f7I2wWa2EQAdn1kun0gBekxMKjMeao3mzLwpW
         hGh/GGOaZOxnx2XBxxOSGHdZusUnHaxK5yfx/e3EGESlVM4IlvY9OEYJoZBUATgSMwpc
         FjrWy8jj399n8hcxZ3mNuKWRLjAO7+9dcs62qdA4qmiZM+zt84ZQiZTTKNTmgjP2dlBU
         BLdR/fJKacHh3p/XdwGuuuOmNZqMFSl2Qp6gQfkLAvH3dfKp/j3ptshwu2M8rugwQUI7
         FY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478223; x=1764083023;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8WV+lVIvrjo7rZmjE+gswziL7WbppYyzdAivTHQVq0=;
        b=CaGsVBw9DQ07daFL7BBDffPo7lnyxePt7c9oSXUK9k2cn2z7ZxYXOYpIcAZAV05qVX
         dptaRFSEMU71OGd7hcoc6SwWcDZWQwAR7KW+aJx6nZnVVskGc+kg1PL4mHF1VbpufiPg
         KuGM3cNBZiLyIgiiArw93twpkHMnKc6UZs7jccCtZI5g80yQevuBcUkufHICSTAYgvR+
         w07oia4GOD3vze0D3c9CPkaqJAso0xfwIJHfAojmUKwR9us/O+z3jCGQPXJqEifTst80
         ZLHeSiqqJx9hqdQMEukP3Hpwh7Yl4PL7nMbnNsQh6CuQnrRMjmGdiCIVYrv/VtmXcuAz
         dVeg==
X-Forwarded-Encrypted: i=1; AJvYcCWkGNid9GmQiVGjbG1zPJ/RczNO02YXNzM+jaeCl17YvqeHROupByBt3yX/zJw8YL1A+u5A9BSYGv4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9Fn9og5/VDSrMhYT5jH4veqsgEr/+JRk1dix7p1kOVb/zfqi1
	OxdZoCjStDB3k+x2KxGBSJtgVjG9SYyhjHA6ifWZhkC6cs5zii3wWooSgqkoW/xpbrg=
X-Gm-Gg: ASbGncuLqUnKjzWBVCCK9RB8gq7MKSZ57caM0XtNh7mddN0wOpLKxJDuSDynBPDTC2F
	tH1G8nVdIWtj8vcSvWeGrzVkrDUrPOShnsxsLk8rSX2qv7ay6tbnx/YPV+WVS2zXoLqi8VFmm+B
	OtVV9clb3PmQuntU8OhQGqH5LDk2xwZNDEvgJIBKBFd1qVn5LPhsDRxEqG0W++dzTRmspDXSVHb
	5hCKb8aEtD+Y7igV+knZ1LYXFWXSx6IB0tL0smNXSZwL823y99x1tPP5cObmdjJ4+DvHwt9/r6O
	DirUSfQbUlINmuc3JtUc8T2FaFa1VvE7xg3eHq3VUeIuQRxHxizorErtb1ZE0Q5x16+U2t9htk0
	K/bmci/ei9w+pelTVN77++7LyJHT/7fKbOhHzupdvEYMC59lzazZ9B/8QTxYMFVNyy2v+wNW1sI
	peUmY15szo+WWM0ZV2XFb3936b/sB+fMk2jvWRm/Fo+u6tTXqX4Yal83JGtb3O7/qoYrx4dlFr4
	Q==
X-Google-Smtp-Source: AGHT+IEetwF3Ns90esL57qVwnG2Jl6XJFWtUfNJDvD/LIHAt+CrVEPkL7/d2f7BaOrYGKuhrh7at7Q==
X-Received: by 2002:a05:600c:3208:b0:477:14ba:28da with SMTP id 5b1f17b1804b1-477ae88dabfmr10448415e9.5.1763478221075;
        Tue, 18 Nov 2025 07:03:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e43c2fsm351648875e9.6.2025.11.18.07.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:03:40 -0800 (PST)
Message-ID: <ab085051-27fd-415c-83b4-5ca087bdb0c8@linaro.org>
Date: Tue, 18 Nov 2025 16:03:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
 <4d486bd8-9e87-4bf2-a96f-38aa0f701c45@linaro.org>
 <047df95e-b1b6-4e7b-89f7-d7cb69559a49@tuxon.dev>
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
In-Reply-To: <047df95e-b1b6-4e7b-89f7-d7cb69559a49@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_070344_788872_5E7494E0 
X-CRM114-Status: GOOD (  19.75  )
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

T24gMTEvMTgvMjUgMTU6MTMsIENsYXVkaXUgQmV6bmVhIHdyb3RlOgo+IEhpLCBOZWlsLAo+IAo+
IE9uIDExLzE4LzI1IDE1OjU0LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4gT24gMTEvNi8yNSAx
NTo0MSwgQ2xhdWRpdSB3cm90ZToKPj4+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJl
em5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4+Cj4+PiBUaGUgUmVuZXNhcyBSWi9HM1Mgc3VwcG9y
dHMgYSBwb3dlciBzYXZpbmcgbW9kZSB3aGVyZSBwb3dlciB0byBtb3N0IG9mIHRoZQo+Pj4gU29D
IGNvbXBvbmVudHMgaXMgdHVybmVkIG9mZi4gVGhlIFVTQiBQSFkgaXMgYW1vbmcgdGhlc2UgY29t
cG9uZW50cy4KPj4+IEJlY2F1c2Ugb2YgdGhpcyB0aGUgc2V0dGluZ3MgYXBwbGllZCBpbiBkcml2
ZXIgcHJvYmUgbmVlZCB0byBiZSBleGVjdXRlZAo+Pj4gYWxzbyBvbiByZXN1bWUgcGF0aC4gT24g
c3VzcGVuZCBwYXRoIG9ubHkgcmVzZXQgc2lnbmFsIG5lZWQgdG8gYmUgYXNzZXJ0ZWQuCj4+PiBB
ZGQgc3VzcGVuZC9yZXN1bWUgc3VwcG9ydC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1
IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4+PiAtLS0KPj4+Cj4+
PiBUaGlzIHBhdGNoIGlzIGJ1aWx0IG9uIHRvcCBvZiBwYXRjaGVzIDEvNywgMi83IGF0IFsxXQo+
Pj4KPj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTEwMjMxMzU4MTAuMTY4
ODQxNS0yLQo+Pj4gY2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20KPj4+Cj4+PiAgwqAg
ZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDY2ICsrKysrKysrKysr
KysrKysrLS0tLS0tLQo+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAx
OSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9w
aHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZlcnMvcGh5Lwo+Pj4gcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+Pj4gaW5kZXggYTM4ZWFkN2M4MDU1Li4zYzA2M2U0ZGVhNDEgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+PiArKysg
Yi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+PiBAQCAtMTMyLDYg
KzEzMiw3IEBAIHN0cnVjdCByY2FyX2dlbjNfY2hhbiB7Cj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3Qg
ZGV2aWNlICpkZXY7wqDCoMKgIC8qIHBsYXRmb3JtX2RldmljZSdzIGRldmljZSAqLwo+Pj4gIMKg
wqDCoMKgwqAgY29uc3Qgc3RydWN0IHJjYXJfZ2VuM19waHlfZHJ2X2RhdGEgKnBoeV9kYXRhOwo+
Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGV4dGNvbl9kZXYgKmV4dGNvbjsKPj4+ICvCoMKgwqAgc3Ry
dWN0IHJlc2V0X2NvbnRyb2wgKnJzdGM7Cj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgcmNhcl9nZW4z
X3BoeSBycGh5c1tOVU1fT0ZfUEhZU107Cj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgcmVndWxhdG9y
ICp2YnVzOwo+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IHdvcmtfc3RydWN0IHdvcms7Cj4+PiBAQCAt
Nzc4LDM1ICs3NzksMjQgQEAgc3RhdGljIHZvaWQgcmNhcl9nZW4zX3Jlc2V0X2Fzc2VydCh2b2lk
ICpkYXRhKQo+Pj4gIMKgIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX2luaXRfYnVzKHN0
cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCkKPj4+ICDCoCB7Cj4+PiAgwqDCoMKgwqDCoCBz
dHJ1Y3QgZGV2aWNlICpkZXYgPSBjaGFubmVsLT5kZXY7Cj4+PiAtwqDCoMKgIHN0cnVjdCByZXNl
dF9jb250cm9sICpyc3RjOwo+Pj4gIMKgwqDCoMKgwqAgaW50IHJldDsKPj4+ICDCoMKgwqDCoMKg
IHUzMiB2YWw7Cj4+PiAgwqAgLcKgwqDCoCByc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2FycmF5
X2dldF9zaGFyZWQoZGV2KTsKPj4+IC3CoMKgwqAgaWYgKElTX0VSUihyc3RjKSkKPj4+IC3CoMKg
wqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihyc3RjKTsKPj4+ICvCoMKgwqAgaWYgKCFjaGFubmVs
LT5waHlfZGF0YS0+aW5pdF9idXMpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiAg
wqAgwqDCoMKgwqDCoCByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7Cj4+PiAg
wqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
Pj4gIMKgIC3CoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChyc3RjKTsKPj4+IC3C
oMKgwqAgaWYgKHJldCkKPj4+IC3CoMKgwqDCoMKgwqDCoCBnb3RvIHJwbV9wdXQ7Cj4+PiAtCj4+
PiAtwqDCoMKgIHJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChkZXYsIHJjYXJfZ2VuM19y
ZXNldF9hc3NlcnQsIHJzdGMpOwo+Pj4gLcKgwqDCoCBpZiAocmV0KQo+Pj4gLcKgwqDCoMKgwqDC
oMKgIGdvdG8gcnBtX3B1dDsKPj4+IC0KPj4+ICDCoMKgwqDCoMKgIHZhbCA9IHJlYWRsKGNoYW5u
ZWwtPmJhc2UgKyBVU0IyX0FIQl9CVVNfQ1RSKTsKPj4+ICDCoMKgwqDCoMKgIHZhbCAmPSB+VVNC
Ml9BSEJfQlVTX0NUUl9NQkxfTUFTSzsKPj4+ICDCoMKgwqDCoMKgIHZhbCB8PSBVU0IyX0FIQl9C
VVNfQ1RSX01CTF9JTkNSNDsKPj4+ICDCoMKgwqDCoMKgIHdyaXRlbCh2YWwsIGNoYW5uZWwtPmJh
c2UgKyBVU0IyX0FIQl9CVVNfQ1RSKTsKPj4+ICDCoCAtcnBtX3B1dDoKPj4+ICDCoMKgwqDCoMKg
IHBtX3J1bnRpbWVfcHV0KGRldik7Cj4+PiAgwqAgLcKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gK8Kg
wqDCoCByZXR1cm4gMDsKPj4+ICDCoCB9Cj4+PiAgwqAgwqAgc3RhdGljIGludCByY2FyX2dlbjNf
cGh5X3VzYjJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+IEBAIC04NDYs
NiArODM2LDE4IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdAo+
Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiAg
wqDCoMKgwqDCoCB9Cj4+PiAgwqAgK8KgwqDCoCBjaGFubmVsLT5yc3RjID0gZGV2bV9yZXNldF9j
b250cm9sX2FycmF5X2dldF9vcHRpb25hbF9zaGFyZWQoZGV2KTsKPj4+ICvCoMKgwqAgaWYgKElT
X0VSUihjaGFubmVsLT5yc3RjKSkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihj
aGFubmVsLT5yc3RjKTsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFz
c2VydChjaGFubmVsLT5yc3RjKTsKPj4+ICvCoMKgwqAgaWYgKHJldCkKPj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXQgPSBkZXZtX2FkZF9hY3Rpb25f
b3JfcmVzZXQoZGV2LCByY2FyX2dlbjNfcmVzZXRfYXNzZXJ0LCBjaGFubmVsLQo+Pj4+IHJzdGMp
Owo+Pj4gK8KgwqDCoCBpZiAocmV0KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+
PiArCj4+PiAgwqDCoMKgwqDCoCAvKgo+Pj4gIMKgwqDCoMKgwqDCoCAqIGRldm1fcGh5X2NyZWF0
ZSgpIHdpbGwgY2FsbCBwbV9ydW50aW1lX2VuYWJsZSgmcGh5LT5kZXYpOwo+Pj4gIMKgwqDCoMKg
wqDCoCAqIEFuZCB0aGVuLCBwaHktY29yZSB3aWxsIG1hbmFnZSBydW50aW1lIHBtIGZvciB0aGlz
IGRldmljZS4KPj4+IEBAIC04NjEsMTEgKzg2Myw5IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3Bo
eV91c2IyX3Byb2JlKHN0cnVjdAo+Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gIMKgwqDC
oMKgwqAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hhbm5lbCk7Cj4+PiAgwqDCoMKgwqDC
oCBjaGFubmVsLT5kZXYgPSBkZXY7Cj4+PiAgwqAgLcKgwqDCoCBpZiAoY2hhbm5lbC0+cGh5X2Rh
dGEtPmluaXRfYnVzKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0ID0gcmNhcl9nZW4zX3BoeV91
c2IyX2luaXRfYnVzKGNoYW5uZWwpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycm9yOwo+Pj4gLcKgwqDCoCB9Cj4+Cj4+IEkg
ZG9uJ3Qgc2VlIHdoeSB5b3UgY2hhbmdlZCB0aGUgbG9naWMgb2YgY2FsbGluZwo+PiByY2FyX2dl
bjNfcGh5X3VzYjJfaW5pdF9idXMoKSwKPj4gbW92aW5nIHRoZSByZXNldCBzZXR1cCBhbmQgaGFu
ZGxpbmcgc2hvdWxkIGJlIGVub3VnaCwgbm8gPwo+Pgo+IFNvcnJ5LCBJIG1pc3NlZCB0byBtZW50
aW9uIGl0LiBJIGRpZCBpdCBsaWtlIHRoaXMganVzdCB0byBhdm9pZCB0aGlzIHBhdHRlcm46Cj4g
Cj4gCWlmIChjaGFubmVsLT5waHlfZGF0YS0+aW5pdF9idXMpIHsKPiAJCXJldCA9IHJjYXJfZ2Vu
M19waHlfdXNiMl9pbml0X2J1cyhjaGFubmVsKTsKPiAJCWlmIChyZXQpCj4gCQkJcmV0dXJuIHJl
dDsKPiAJfQo+IAo+IGluIGJvdGggcHJvYmUgYW5kIHJlc3VtZSBwYXRoLiBUaGUgY2hhbm5lbC0+
cGh5X2RhdGEtPmluaXRfYnVzIGNoZWNrIGlzIG5vdAo+IGVtYmVkZGVkIGluIHJjYXJfZ2VuM19w
aHlfdXNiMl9pbml0X2J1cygpLiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IHdhbnQKPiBtZSB0
byByZXZlcnQgaXQuCgpJdCdzIGFuIHVucmVsYXRlZCBjaGFuZ2UsIHNvIEkgdGhpbmsgaXQgc2hv
dWxkIGJlIG1vdmVkIHRvIGEgc2VwYXJhdGUgY2xlYW51cCBwYXRjaC4KClRoYW5rcywKTmVpbAoK
Cj4gCj4gVGhhbmsgeW91LAo+IENsYXVkaXUKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
