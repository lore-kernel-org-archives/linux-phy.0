Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EDE606A32C
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 14:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yeWKr1QA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=oFWt4EOg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EKRd4esjLgpeAOyGbbQj806jXMdBNZr1mDfXPm7OQZ0=; b=yeWKr1QAeMThTGVjp0ewG2sZvy
	r8nALFUiPiNXYmO64+esLLlDW0rk3RAZRDpdZXt43xmDwr52JRntsCUk6gVlRa0XmMO4NtfCIUXsA
	XLM+HLHCP+H4EysB/hR5oFVJJqf0TJp6LKWGNgJPbQEBr4p+1sBDYRYVti+yY4awjFAHEKT8+I4gc
	UsUA+98+LTBQbU+clc12Y/qstL0udfyfWh946Av05zhrp5CkHndyTNilleoqYF1B+EZ6s2evfuWp3
	BzU9xvfWH51KPPpi0+if/BntXVekxKVTT+0cfIf6TIJZmaA4HA5uAYqsZvkyUMW7TK3bJswiP/Yv/
	8Idiv5aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPh1F-0000000EmlZ-1QVC;
	Sat, 07 Nov 2026 14:03:45 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPh1C-0000000Eml4-2Cjn
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 14:03:44 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so11784395e9.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Nov 2026 06:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794060220; x=1794665020; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=n4RQKom85jkQdizG8jERqXd4viPHC+189UpuJ/BwOhc=;
        b=oFWt4EOgAqf37qBTxGJAoDGA0J+0jaoObYMN+HhGlTojgWcbfDSa6jjJqWClh9Pcxx
         bI6xyB0qLNx8x9GW+NtSK7r3ZHnaapffwVaco/0E1Zr9VY7x20WZpdxEB2V+NmA1TG4z
         e91o9IhvjaCn8FQE9hIWNPpGAIAuqQEYmKh6yxkfgY+ROLADJpS1iaUUMaxiW5zGrCng
         vhjA4FQpubbnHaEJDSycxHbonFdwFXd2NngQSnzld4Zqn/3C1Q/0t27hYqKucwjN4krn
         cRp+JRivSpJqSEiTz5xeBJh/S7UABLXITHinjOFHs5xgqOVphG5tcixVpSU9m2GyoI7/
         svyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794060220; x=1794665020;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n4RQKom85jkQdizG8jERqXd4viPHC+189UpuJ/BwOhc=;
        b=1Do18R5GOuXXX8eGB9uayYTDIEVHhZqkDwr5fvRrlEvL3XaNttYcu8Lz1wxpv601wc
         rrOIOjM/xBU6twGSwyeV43u9MTQVK3mggPAxKV3wL5oHknDqXbcjx2SbRFvMAeMsSAgH
         RvN7VAvpMOovLbvgsD2hiaMfvuMY6kgN69mywIuujtgEdOBI5BMQZN22+KgI9/JY7E2+
         t1NyXQDYbsJSyhW13GzhT7nAyi5jy1nUjkPdkjmcjFLG2aQI5xgj8plZN0yMgjNSOPG9
         SMJIcnxs6sSApE9oBqaAGbFTNTrSnYUmTqQzvOMA46DQ0A4hA9xSoJeDxrNFa06hB8X/
         aXbQ==
X-Forwarded-Encrypted: i=1; AKwUvBwNKMSFQf6NJy2RJBKX6MGG6zytxH0+9lzpTU5Jrx+ub1xWCDbPkzV/gNBpZoc4/v0dYtt4xtQhA7A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/rrpnfYotrlXpVstIhcKRiFuo+FWfO/mlGtuzwbirqSefTC/6S
	P933r6Xx3qrd5XUSLu56ihLMDbSY7tEyIvJCOnhW7A/L0k9tlgsHGg5SDAdb6mhy2F0=
X-Gm-Gg: AYBFou05b+hbnaBRvpM99ERi4SsBV/OWPzGXZWtwEdU+6l8awuB8GiO8pUp6C+hyLSx
	CB+kcCUQK9YYSdTpNBttx1TK0nUMrAeDW+6lp72g42ZvEXEMaLmIv3g2543CzYoO3J+1m25ADJK
	NnLRORQHgb+Tr/zivusFtPwejq9kfXwHCBfI3mHDSaY7HUUdQwLZNrEQ0t9X25dqNo2GxgoFycJ
	LSa0A8f9B/+kit5/XimJ83Y4bcKr2JTrjTkzn0Y7ykChkI5vmlsz9GJ13LOQBhYpBLvjcpWVHDd
	0PkdV+X9UCQhkVUoWPKIcCC6kUgoXGZ17bfD44rnQrePO+Url1A20mA9QmLuMzaV1+GvBux6BzN
	RfWgw2YCfN4lF3O5hUnqIRR2vGQHMY7sreZ4hRuNJu0WrDdN14wuV0BEb2BMBpajzY0za5sjY14
	BhLqbKiDZmbSwOQ7u63ykTgpu5CFlk9879SQ0mitjxPHCmrofc95GjIta5YX4/SCwEgsbh6Ry9F
	liYCdLibaekrN8CB8bzI12mrUOQ6Xcg1HtznWu2eZxM5+GrzlAWt2IFCGaR0ZMCUR+5GYNYqGy+
	4ikZ/QG2kbnqK+q5zPsuXyDm7ysgMiza4nyDw5qmP5eM35parl9qCcXjcQgIXA==
X-Received: by 2002:a05:600c:4e0e:b0:4a2:1364:252b with SMTP id 5b1f17b1804b1-4b6e054920fmr98235845e9.35.1794060220092;
        Sat, 07 Nov 2026 06:03:40 -0800 (PST)
Received: from [192.168.0.167] ([109.77.86.207])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7a0e1f298sm49309125e9.4.2026.11.07.06.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2026 06:03:38 -0800 (PST)
Message-ID: <83c6281f-1887-4481-8c63-957b4bc856b9@linaro.org>
Date: Sat, 7 Nov 2026 14:03:36 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] phy: qcom-mipi-csi2: Add SM8150 CSI2 DPHY support
To: Bryan O'Donoghue <bod@kernel.org>, mail@andrewgigena.dev,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <C4VI5PNThYmwD0VGOO9DvvHRRydBUz2k5DOLjkianYgYaz4G3-El6cDpnQh2siR4mMwjeiL4_Yp2xEAYeJDJ2Q==@protonmail.internalid>
 <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
 <88407f72-0c6e-4e46-b97b-7031c237dac7@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <88407f72-0c6e-4e46-b97b-7031c237dac7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_060342_587608_EAFFA91F 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMDYvMTEvMjAyNiAyMjoyOSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4KPj4gK8KgwqDC
oCAvKgo+PiArwqDCoMKgwqAgKiBwbGF0Zm9ybV9wcm9iZSgpIGF1dG8tYXR0YWNoZXMgYSBzaW5n
bGUgcG93ZXIgZG9tYWluIGR1cmluZyAKPj4gcHJvYmUuCj4+ICvCoMKgwqDCoCAqIERldGFjaCBp
dCBmaXJzdCBzbyBkZXZtX3BtX2RvbWFpbl9hdHRhY2hfbGlzdCgpIGNhbiBhdHRhY2ggYWxsCj4+
ICvCoMKgwqDCoCAqIGRvbWFpbnMgYnkgbmFtZSAob3RoZXJ3aXNlIGl0IHJldHVybnMgLUVFWElT
VCBmb3Igc2luZ2xlLWRvbWFpbgo+PiArwqDCoMKgwqAgKiBTb0NzIHN1Y2ggYXMgU004MTUwKS4K
Pj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKGNzaTJwaHktPmRldi0+cG1fZG9tYWluKQo+
PiArwqDCoMKgwqDCoMKgwqAgZGV2X3BtX2RvbWFpbl9kZXRhY2goY3NpMnBoeS0+ZGV2LCBmYWxz
ZSk7Cj4+ICsKPiAKPiBObywgdGhlcmUncyBzb21ldGhpbmcgaW4gdGhlIENQSFkgc2VyaWVzIGZv
ciB0aGlzIGFscmVhZHkuIFlvdSdsbCBlaXRoZXIgCj4gaGF2ZSB0byBhYnNvcmIgdGhhdCBwYXRj
aCBvciBhcHBseSB0aG9zZSBjaGFuZ2VzIHRvIHlvdXIgdHJlZSBhbmQgYmFzZSAKPiB5b3VyIHN0
dWZmIG9mZiBvZiB0aGF0LCBhbmQgb3JjaGVzdHJhdGUgbGFuZGluZyB0aGlzIHNlcmllcyBvbiB0
b3Agb2YgCj4gdGhhdCBzZXJpZXMuCgpXaGF0IHlvdSBjb3VsZCBkbyB0byB1bmJsb2NrIHlvdXIg
c2VyaWVzIGFuZCBub3QgaGF2ZSBhIGRlcGVuZGVuY3kgb24gCmFub3RoZXIgc2VyaWVzIGlzIGNo
ZXJyeS1waWNrIHRoZSBuZWNlc3NhcnkgcGF0Y2guCgpodHRwczovL3BhdGNod29yay5saW51eHR2
Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNoLzIwMjYxMTAyMjEzOTM2LjEyNTEzMTYtMS1h
bnVzaGEubmFuZGlAb3NzLnF1YWxjb21tLmNvbS8KCklmIHlvdSBkbyB0aGF0IHlvdSBjYW4gZHJv
cCB0aGUgYWJvdmUgY2hhbmdlIGFuZCByZXNlbmQgeW91ciBzZXJpZXMgd2l0aCAKaW5kaWNhdGVk
IGNoYW5nZXMuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
