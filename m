Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1454BCD5BD1
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 22:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRGdZNKM5PqEpHKsNqqAx5sItppr4wtcF/Ng/lOf9o4=; b=GmJfr46w7tY5wk
	Zy6jEryWDmOhf/As9gt3zBVaQeDxneOAvkECEATT7C7ipR/tIOw72Yj4eIyn/gx1DzYX0Ea46BOnO
	eX9P+h7x+t504TPuJdAAGWmQ+eBl9vJsFHqz2BZ3B3KY26tT4KCI2yK88IHLXSrlSszmxi1nOTuM7
	kyn3+cvzh8WmcAhq6h9J7cDWFWfoMYhpzlId8xKqSRlFLPRaJ8jBy98Yj/SHV5SWH57A3bZt9ffPj
	8jGh6uy/ls4mHqTlaByvqFkOL9EAVklOCu8xQmgwklJ3kj+jIi0yLgiBEj6JjOLjQSofmaPDZplc7
	49mCX175fcAxVQE3KasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXVa-0000000Dshn-2c5N;
	Tue, 02 Jun 2026 22:22:50 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXVV-0000000DshP-21BL
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 22:22:49 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-490b211ee6aso11005675e9.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 15:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780438963; x=1781043763; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C5YMLNp4uCEpkwe9D6P+mENG3LiY0e9ha51X9dT+gkc=;
        b=SSJc1XJYtlza7ZVd9kNTHBdSX7CeqwIem6zx1W30bmXlCBIlZonqfOfQVwQpwHfGh6
         ld31FIpOV/atvicQ2vzfb9L0mefjrrcxp/bXRK83tez1u2PAKF0CVkg0voWNCaaVsKCI
         W4E+TuT2OPEf1XdvJb9EgyGtvcF6hMjnaC7+Q7FLwBnxDk4YU/MGrN6GOanrb9uSS+zq
         caIQ30ltmb/s8zr6ADCf7INVf8X+UqkBCDHH+A3UY9Mk3phRkgni8aiU8jRTIyYVlEp0
         R8fzARTXmuXBixbs9/QaM+Od7pUioW++NeI94PMJrH1RIG4lDrFExTQY+bP0s843sxa5
         UeWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780438963; x=1781043763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C5YMLNp4uCEpkwe9D6P+mENG3LiY0e9ha51X9dT+gkc=;
        b=oQihhRTiiv1StgFdBLTq5ey/TeohxvukTzwAvLxEdoonIIo5EJD6EMX5fq8unIAqi1
         eT9C2RXoUqIRvtaX1vif6TBZe7UVoVIBeGWmkKNuLS+0DSRtfYzQs7BHeeHi2gBg/yuP
         JBSOp1iliJYDXd+KZW+7bEytKzWsOMonTIgmCX0YgsU83FC/DCv0DPWE362ftLBu1Am3
         ZnUXCAAF051B4qx4vPjlpKmgWw192kbbXGByuzZ6Hy5mGhXfpJKb5rDh+7w3oY/ITTtJ
         UncNW+TeJC4XLeGlByTipjwEenr3HHUtpcUrOXnnW3r05KZoQrW2ZEejtSz+9TWXLlMD
         L+OA==
X-Forwarded-Encrypted: i=1; AFNElJ/WDuPRYSHSe32fEoXk7CPb68QWx6NljC0PRRBGdJ4IJ1nveZWexKEX0vMMGFrn3dHmGTyM9iTEuF4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKVnhNjf27j/jXeZ2eKRF996LYmU57CDt7K2K/Rjc0eBKq3+N8
	O/6MTaB4iXN4c4WgOvZG9n95IbXQUoS/QXdibyW1C5BsLp6OytS6VI7SJwj5D5HtAbg=
X-Gm-Gg: Acq92OHxS3HFPSMiTDsoi+OEJZhJ46QCbljnTSYcHAIm55SRIEixAjoZ0b2j0MqkN2Q
	HPf7U5utOxHm9pUbkciO8bsvEfw3uDV0QH40VMRWgQxqXQqCSN5+xS7C6fPeKc0JR+0rM/KiCI9
	Mx39yhU4vgQizV7nWSQDq3MPJgAprNXOOBDIh0QAb/Xc1qm+JCkCGBa4b4KyN95L7vvMCOEKGrb
	miSvWaa071Wcfc52D6yORdU+prHcYgHujLXrkOiiBXioKUpW2soxmO7xzwsaplD09Cs1cCFuI+o
	u44+ddBy1omwMvvyBOFw0K3UTvR9H046XfIA5fEXoLNX8dAm5GnRrT6nhhPO3/mVkE8KZs/G9KJ
	LmBtIgSqTeJrUxC+P+O8LQSFZfxKHkbLtFU2ecd5wYigTgJzZ3pXzVIExDiHF3j/myl1ZDL2eqe
	gczcGvDlLcb153DXM7Ot8R20fzteYLxmHK3zM9l1FWIy+e
X-Received: by 2002:a05:600c:1c1e:b0:48e:6db3:ff3a with SMTP id 5b1f17b1804b1-490b5eb137bmr11597745e9.16.1780438963385;
        Tue, 02 Jun 2026 15:22:43 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.42.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b5885c26sm5064835e9.10.2026.06.02.15.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 15:22:42 -0700 (PDT)
Message-ID: <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
Date: Tue, 2 Jun 2026 23:22:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_152245_525600_F777B3C6 
X-CRM114-Status: GOOD (  10.24  )
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

T24gMDIvMDYvMjAyNiAyMzowNywgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+PiArwqDCoMKg
IHJldCA9IGZ3bm9kZV9wcm9wZXJ0eV9yZWFkX3UzMihlcCwgImNsb2NrLWxhbmVzIiwgJmNsb2Nr
X2xhbmUpOwo+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrX2xh
bmUgPSBDU0kyX0RFRkFVTFRfQ0xLX0xOOwo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2luZm8oZGV2
LCAiVXNpbmcgZGVmYXVsdCBjbG9jay1sYW5lICVkXG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIENTSTJfREVGQVVMVF9DTEtfTE4pOwo+IAo+IFdoeSBDU0kyX0RFRkFVTFRfQ0xLX0xO
IGlzIHNldCB0byA3LCB3aGF0IGRvZXMgaXQgbWVhbiBhbmQgaG93IGlzIGl0IHVzZWQ/Cj4gCj4g
U2luY2UgIjciIGlzIGEgbWVhbmluZ2xlc3MgbnVtYmVyIGluIHRoZSBjb250ZXh0LCBJIGJlbGll
dmUgaXQncyAKPiBwcmFjdGljYWxseQo+IG5vdCB1c2VkIGF0IGFsbCwgYW5kIGlmIHNvLCAnY2xv
Y2stbGFuZXMnIHByb3BlcnR5IHNob3VsZCBiZSBqdXN0IHJlbW92ZWQuCgpEb2N1bWVudGF0aW9u
IHNob3dzIGNsb2NrIGxhbmUgYXQgbGFuZSA3LgoKVHJ1dGhmdWxseSBpdCBtYWtlcyBubyBzZW5z
ZSB0aGF0IHRoZSBjbG9jayBsYW5lIHdvdWxkIGdlbnVpbmVseSBiZSAKbG9ja2VkIHRvIGxhbmUg
NyBidXQgdGhlIGRvY3VtZW50YXRpb24gZG9lcyBzZWVtIHRvIHN1Z2dlc3QgaXQuCgpZZXMgaW4g
ZmFjdCBJIGFncmVlLiBjbG9jay1sYW5lcyBjYW4gYmUgcmVpbnRyb2R1Y2VkIGlmIHNvbWVvbmUg
Y2FuIHNob3cgCmhhcmR3YXJlIHRoYXQgc3VwcG9ydHMvZGVwZW5kcyBvbiBpdC4KCi0tLQpib2QK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
