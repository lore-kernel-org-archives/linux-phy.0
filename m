Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9651C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 10:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKmE0UB/g8hhJjFFPSOUtt2OCHBzZvGyiSMxhiw/U/w=; b=FoppfdhcSlOiPM
	1xyxnTzXTDtTq/GLmqUwNfmuGPE/lOtje4/wmxmthT5Jg61mYUhWzDlAYURKMvoVtrjsOswTA4FFP
	Y/lKhpR/iIsw9GDh4CxeJuM8UbVz17xY6cwPMkur3POVEQFHrtsEDB/znruqFIpHE2D16alBshzVE
	qLj7av5Z80X006M7hwdTD35eceasxjydLNIjpB7Yh/0VWc7JkSx3r+uW1ADd5pU8bhPM8IW4Gm2Bv
	9T1h/7kSkxCUDttLFPGuAiwNfqooGs/bzPfReJyW93m1KZ97DgNa0m2M5WD1i8oG1fPQytl/CJxMS
	UuAIHrKOzn7kmQ+L2aDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outAW-009uyV-21; Tue, 15 Nov 2022 10:27:52 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ousmu-009gpx-Rt
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 10:03:30 +0000
Received: by mail-lj1-x231.google.com with SMTP id h12so16826955ljg.9
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 02:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVHAqVOFOIO3tvRqDcBAu+xC9tXo1pnoVyzEBNhSiIc=;
        b=jUkX3LGnWXLFPccugErlLKf68JDx/jZoWcVO6kWP1HwVvtz1fOTZp4SZBX59SPNvWY
         MsKc08pZYciDJ36dBdwLpTQ4P2q2590OJgQmv7luTOOv9NZKUVFzE6QUclW1Yey2upSN
         BsK/DZlasP5usE3/L/gIVHHAv5OrcWstZr1LRkiSUZe9CRWLU/aXfzylvTbH9pqyXeeH
         yLTmgDoU+4Wnp+bd0Wmw1Xb2sUn0EUel4SNk2Ut0vw5d8AUtyC/G9W/8SWWtv2Kl0BN2
         2UlOYTLAH3Hp2grtskfOej31t9iZ929WwRZ5QFkmiqrvu8MYSBp/1p5jZ8Iprd93Ld5t
         8p4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jVHAqVOFOIO3tvRqDcBAu+xC9tXo1pnoVyzEBNhSiIc=;
        b=mE68IlgoVzY8/xc14ZUf77vguBcnU9PnpBvcEW8dd7wGvLAyIZtHymCVsLEyJc9821
         /Gvg0c2zoqwuOaB3WcnZSKxMc8gDevS3oGl5HNHEMKdZhsa2vuwHTsVV4TnhpxmumGqD
         8wpoTXKTYJ1+11lfB7+QYydulqHtGPxJWNVemWb70AcU6oaLVndKO3ZcVI6ThOLQMyPy
         jfS85CyYp0HuVLwwY0qpqq6xjlbngwMv+1w8ETpQve34yZpDMf9goHTjx3Lv2M03r9hg
         yh+euKHzDOtZF7POla9ZM+Wexf+ZNaO5uSOpyKuLxAaCWDeeY3pIP0NzQ1jMRDbV/rPR
         Bgww==
X-Gm-Message-State: ANoB5pk+KopHsSI7Jf/WF+CLI8/qodt6qceOnm8z2Q2KUJD+AB5jdfsD
	T9t/1uYdW/QJF0njArzbywmRyw==
X-Google-Smtp-Source: AA0mqf4ZBOY+NbRidImWf6BOalvJHq++fwVTExCvgKtrjTOUuDgujwmoiIXE80tURsxs7CC5ZKhoJw==
X-Received: by 2002:a2e:a815:0:b0:277:1d7e:9f6b with SMTP id l21-20020a2ea815000000b002771d7e9f6bmr5078984ljq.421.1668506605985;
        Tue, 15 Nov 2022 02:03:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b10-20020a056512070a00b004948378080csm2151660lfs.290.2022.11.15.02.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 02:03:25 -0800 (PST)
Message-ID: <52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
Date: Tue, 15 Nov 2022 11:03:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Content-Language: en-US
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-4-andre.przywara@arm.com> <Y2ypy0CM8rJGu2g4@matsya>
 <4438485.LvFx2qVVIh@jernej-laptop>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4438485.LvFx2qVVIh@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_020328_928217_B90A55AB 
X-CRM114-Status: GOOD (  12.93  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTUvMTEvMjAyMiAwNzowMSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSDEjWV0cnRl
aywgMTAuIG5vdmVtYmVyIDIwMjIgb2IgMDg6MzU6MzkgQ0VUIGplIFZpbm9kIEtvdWwgbmFwaXNh
bChhKToKPj4gT24gMDYtMTEtMjIsIDE1OjQ4LCBBbmRyZSBQcnp5d2FyYSB3cm90ZToKPj4+IEZy
b206IEljZW5vd3kgWmhlbmcgPHV3dUBpY2Vub3d5Lm1lPgo+Pj4KPj4+IFRoZSBGMUMxMDBzIFNv
QyBoYXMgb25lIFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQgdG8gYSBNVVNCIGNvbnRyb2xsZXIuCj4+
Pgo+Pj4gQWRkIHN1cHBvcnQgZm9yIGl0cyBVU0IgUEhZLgo+Pgo+PiBUaGlzIGRvZXMgbm90IGFw
cGx5IGZvciBtZSwgcGxlYXNlIHJlYmFzZSBhbmQgcmVzZW5kCj4+Cj4+IEFsc28sIGNvbnNpZGVy
IHNwbGl0dGluZyBwaHkgcGF0Y2hlcyBmcm9tIHRoaXMuIEkgZG9udCB0aGluayB0aGVyZSBpcwo+
PiBhbnkgZGVwZW5kZW5jeQo+IAo+IERUIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMgZGVwZW5kIG9u
IGZ1bmN0aW9uYWxpdHkgYWRkZWQgaGVyZS4KPiAKCkRUUyBhbHdheXMgZ29lcyBzZXBhcmF0ZWx5
IGZyb20gZHJpdmVyIGNoYW5nZXMgYmVjYXVzZSBpdCBpcyBhIGhhcmR3YXJlCmRlc2NyaXB0aW9u
LiBEZXBlbmRpbmcgb24gZHJpdmVyIG1lYW5zIHlvdSBoYXZlIHBvdGVudGlhbCBBQkkgYnJlYWss
IHNvCml0IGlzIGFscmVhZHkgYSB3YXJuaW5nIHNpZ24uCgpCZXN0IHJlZ2FyZHMsCktyenlzenRv
ZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
