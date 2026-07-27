Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60EDEC531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 20:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BOhsDkm9uj+4HfyRciBVjHiycBhzx3ymWWQIa8ZCJg=; b=ukvHTYnEgDL6ya
	7Ayoh65MxC0oIUzbZffrpYbH+dfVjduOFWO6JAhDIsG4WlkCDvU35ZlVko2ZIvzZbYpHG6YBRSALQ
	1LRIM/52l2NXVHPu6MXrmoI5JoF/MUYyILdSQkEuQ0VnobX2qzoXjbHlYcWAtEM16lnRIB+IfZYXy
	Vci/ynQJO5d4ltx65MljIS4BQFfwogqzIXKTBRhuEImdWBXK0qrc17PDcsonRwUvNIEQDY1LdBLNK
	EnZkP1ZU3s61fdEWR+VNztupV80D4Heta+z8aELtToQJiMvKXdAo95TXrJ3apIGU6IInF3wEgD3oY
	Te78wNoz2dxXBWwbqnug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRbK-00000003o6z-0MDh;
	Mon, 27 Jul 2026 20:07:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRbG-00000003o5t-2B7c
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 20:07:01 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-493f75f7172so26325085e9.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 13:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785182816; x=1785787616; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wetn3gRf3r576PuDu2lS5jC7fWv6xVZ19kQlvaEDCdk=;
        b=HOKkutOgQ5Iezg6o3uIQ3uU37yVlKV0+y4NZJngfzOKIia85GB0MWpBY87i88LrP9r
         hIn0oJGthmIieTLYI4p0ecCB9QhZO8mMcRzORv5LeJTD/qaRNHC9JYDMdKhF/5t28+Zr
         nkLaM1VOHqFBJp9xHcx71XhAiXLy6E2lsBodiBjOfogYaB/KBrLE7DaS+eAXbXrI4y6R
         eWsvBUAQYgvGZSVWzf9v/z49SPmcmZrr8D6UKa1xdf5TjXkx6og+N9/NksSUxArwtyvg
         fHpGhoWVp7pwT6ORmrVJkdWZXyYgtacJfShBYno4Gu5jf6qrgpGgeJRHpAFDQAd4Wjv2
         tknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785182817; x=1785787617;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wetn3gRf3r576PuDu2lS5jC7fWv6xVZ19kQlvaEDCdk=;
        b=I7cwVkEHrpQ0kBz4WzoEeRYgZ19TWvvRkX/6o6XYVCWzDsbZ/81T4WxvtVL19AHylX
         0/Zp4Eg4TIfEu1SRLGuyk4PEOHkOECh5tCCsJPkKRnfXImRnqoa15qSAGkLHGTWa5nKU
         Odf4vdJ8UymHbVtIHEYUCMT6b4827mfMPeSTE4MtK8shPOgv1M0PxMt4FKJQQ0A4PbCX
         ZdpCLHnpV5Ugm9NUG+f6Tvx1vXNPfN8SLuxIav0WCkF7Jr59BIRbRqSfn+1IMDGDYtfX
         W37oP2zWfXWG8dny0g7N2XX4sdPrAL2ZIEBq3YMaqbMveVXBZCaoiJ0eGrSGJpa7vsrh
         corQ==
X-Forwarded-Encrypted: i=1; AHgh+RqQ/R+wKGljAlRep1+jDkosq6R/vA4HS1/82XX+HZoc096FnxR4Es5pLDS0lGped0vcPx/g+zUvVzc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXzzdytE2g5w4/Qjremn0dUVHUuDJ7C+lrdZL8+qZ/YzEHtsLx
	dEH7w6+Rh/t4OykzDteG/Orpe91LoBzywzW9cjZKq88vg0LcfZhZT+yECTr2UMDt5is=
X-Gm-Gg: AR+sD10F8vnRdTrfk8CFuGuwUzOcoQhOFsmJbwqtkCfLMZJXR8EKGJpehKZdK9+xnhR
	8/4z7OLyynLn9/S4B5uXfbvP8GRLO8QIR+AAvQh4e9Z2C9hd6ImSrc7A2P3L3gnmUn/nAhtt+CY
	3cgNog8NPlNncF0lVlEm6L56qyVL95m70rWRS1dBkfKxQi8B1UwZ/f2qVVKdmOFcx3X4txC/HdB
	HN/6ThTf3zfErP9M3FSQGEpC7AnSqGnYHAQjyrtgvzG+pRJ2wAQy+joaAH/GycXQWENBpkOrps3
	2oNinJfwT91eArp1Yn1RLhQg9OSQ3RWTToR76ygeNb3fe6FJGezSb5hu/llcaq6kuPXQ7RswCJu
	67nP1dH3/ZtDQCBugHjXFYMA/iAAlw58z6xUyV0hxGjhNQR6FvOjTVDG0g0WnQA7+hGw6zHWvoU
	I3hfUN3Cbb2JThwFeavmgRRj7q
X-Received: by 2002:a05:600c:4248:b0:492:437a:a653 with SMTP id 5b1f17b1804b1-496b5700246mr67328175e9.26.1785182816614;
        Mon, 27 Jul 2026 13:06:56 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.105.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c46240c4sm17482495e9.12.2026.07.27.13.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 13:06:55 -0700 (PDT)
Message-ID: <e9cbff02-fd47-453d-8743-8816560f0f6b@linaro.org>
Date: Mon, 27 Jul 2026 21:06:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260727-x1e-csi2-phy-v14-0-27d1bf477593@linaro.org>
 <20260727-x1e-csi2-phy-v14-1-27d1bf477593@linaro.org>
 <1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_130658_567004_61E8614B 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjcvMDcvMjAyNiAyMTowMywgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRlc2NyaXB0aW9uOgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBMb2dpY2FsIGxhbmUgaW5kaWNlcyAwLTMsIG5vdCBwaHlzaWNh
bCBwYWQgcG9zaXRpb25zLgo+IAo+IEluIGhhcmR3YXJlIGRlc2NyaXB0aW9uIGl0J3MgcGh5c2lj
YWwgZGF0YSBsYW5lIGluZGV4ZXMsIHRoZSBzYW1lIGlzIAo+IHNhaWQgaW4KPiB2aWRlby1pbnRl
cmZhY2VzLnlhbWwgZG9jdW1lbnRhdGlvbiwgdGhlIG51bWVyYXRpb24gc3RhcnRpbmcgZnJvbSB6
ZXJvIGlzCj4gc2VsZWN0ZWQgdG8gZm9sbG93IGV2ZW4gYml0cyBpbiBDU0lfQ09NTU9OX0NUUkw1
IHJlZ2lzdGVyIChELVBIWSBtb2RlKToKPiAKPiAqIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnLyAK
PiBhbGwvNTkzMzFhYTctODQzMC00NzU0LTg2MWMtNGJhNmE0ODEwY2NkQG9zcy5xdWFsY29tbS5j
b20vCgpJJ20gbm90IHN1cmUgd2hhdCB5b3UncmUgYXNraW5nIGZvciBoZXJlIC0gdGhpcyBleGFj
dCB0ZXh0ID8KCkFDSyB0aGUgcmVzdC4KCi0tLQpib2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
