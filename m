Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95865C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ygWEtaE12RiSSQfW71p2b6qKxi9dbp6nLL1tp+skic=; b=ObiJv6nNiqMbCO
	VPyQ8pnkl0HYl3o9qZR5UsY0eKs+Dp6+VcrT+HvPyPXegf9dD6pG9eHgzhWaIXGnqXsBqNS89pEsp
	Z3xIEStyx33leqHiei7Zb2CuZdSTOTMaOU1jTgupndgutbS2N1dCg1Psn4Dpn6dtVlG0p9SdIBBRS
	WMIYyVMdEs5eJqR9MVotxXKWcbnNX43iRKpec8XnWcvKC5z8JWSCyU0hq6wiIf3Fh5hpt6IILgykW
	5rp3Ivkl+deFW976LFyEG7OhLNMaUD/pujwgqfht3fiePF66HPEZIgFR33vv/CIAUk9V4zVlSXLQn
	Th5FRQuIzoE7KGTqBKmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BHd-0000000BIft-0cPP;
	Thu, 17 Sep 2026 12:32:09 +0000
Received: from mail-ed2-x1c.google.com ([2a00:1450:4864:33::1c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BHZ-0000000BIeR-44Zt
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:32:08 +0000
Received: by mail-ed2-x1c.google.com with SMTP id 4fb4d7f45d1cf-6a9984f9adcso1265479a12.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789648323; x=1790253123; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ls/PIdXgwRaJNqkytOniziANCA/o27n7uKp1MTR7az8=;
        b=qSsH7DCDgr6apzjPnTHZN58+i+iQBt84NR5Iesx/P9BfA/i0y1G8NhtdOpHJTa5ZrW
         gnjAqw6MXjNPN2FI7mq0b50T/hmBGahzADzTD6n8m7WAlIjRGieUmb/5IdBfWTmU8Hgk
         Qq5cgbv/ugEudmrirbpkiMIOci9ezpzqE6GqR0aUxrZQcXFEdqYrGJ3hJUtRGFA7H/uD
         eZKgPqInRwHtUWZlFjC8x8QgsHZoF04JHkl11vl6siVarjMIAHOMBqYB19EuU7VJv3qb
         VGH3erNxzd81AF4Dhy8QdiWakRJKKoxbL5VgRjUmc73CMIS/6Kto5koiPROAJ/qQezty
         hWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789648323; x=1790253123;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ls/PIdXgwRaJNqkytOniziANCA/o27n7uKp1MTR7az8=;
        b=r1Qpkuzz6U9TZcHZYWJcPEL+tYr4kalp9CCRc/Hl3ZEOqAtfgF+T6JCCZnM/7ybUJj
         wAxtT7gHn1mfsBQ4m852HbCA0JNuebGaaBvtJ+Xh76YaXw4glC2y97RRBVGnRmZfXRXa
         ZCt2KiGTSaJRDP+dit6Rc4GybyK32ySGuSraPIgFuBdBTUfX8ODvQosJyxJA4OAthpMC
         942eLK7zV3xwda2Wzx2voTZSUSgdanOcRJ3HllHQHIB5dKtJR36cnh5ItdiZRyf55fAP
         7m6WO2PTZIJJyQbpnf2BPs9OJFt/5UwWS+4KBQR0+o0KmCfYVcpFkSdQvnTGDmKUFfGZ
         s1bg==
X-Forwarded-Encrypted: i=1; AKwUvBxOTs1+KvjsOEeYRfcFckoqdKLd0gq9BPYPQ3+3czl8oVDzbtPV/jlHikwcbH9ESh4hUTW16kef0IA=@lists.infradead.org
X-Gm-Message-State: AFuF++nFTzjV39Wnsi9cgFkjcB2X54XtSLkSTs0aYa9W4d9k1guuAwVF
	gsxYQ1ZoI+8yVk9Mi2zf8e030vB0mbYQskjadEj7kp9AJluD6IBtqOdkYeVSn631BkU=
X-Gm-Gg: AYBFou0stuc73QHlX0vmZeeKdS7ddl/eU1JIT6aRq4iuTMbzqhv0l2eaEE/fcjg4Thl
	ncUUPDZz6EynPmnwg2NRS0gZ8uyS78cMjA2Yi7vz1kC6sw20DoniZpxsSLZYUVk46txotDuO/LV
	ZP50L6n+2bAfX78BlE235Zl6YVOpQ/l8xbI16PLJErHjjR+IMpxCgAQ4NKfPOwwBiMRfkW2Rr0Y
	EeTBXcEqbBbnARozryhzkG0SiQP3H1mvJjCrvOuH8qVVF8Y/B1vv7AMEJhiJw6IBxi84l2xF5DU
	cxKzQZmcxl/q4n3mU5z1VsVopfpYCg//mOzRKd/avDY+s7Xydf85BC65O2TbqL+VGUJu+0mcZwj
	oOyNFGb3TlFJXRsPAVY/T4ORW3Dyc7fhltFexNcIXM+aKxPg5t1X6+vfqI2+TBhIEkXUlAcOgz7
	nIwyemaBDEb2PZ8s90cW0gg+tuED5uj7v/Q6RieVSuqjEe6eyAZWY29do8zcr7bMp9hJ/b+nMtp
	QhxbWuQKJU=
X-Received: by 2002:a05:6402:3242:b0:6a7:f25b:d281 with SMTP id 4fb4d7f45d1cf-6aa22383344mr3922846a12.13.1789648323558;
        Thu, 17 Sep 2026 05:32:03 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d2ab4ebsm3576964a12.30.2026.09.17.05.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 05:32:03 -0700 (PDT)
Message-ID: <8bed3f8f-52dd-4ab7-9ce2-cc756724893d@linaro.org>
Date: Thu, 17 Sep 2026 13:32:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 2/5] phy: core: Add phy_get_by_of_node()
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-2-f85c9103177e@linaro.org>
 <a06040ea-4af1-4083-9b69-7f62be7c9bce@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <a06040ea-4af1-4083-9b69-7f62be7c9bce@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_053206_033176_0D52BDE5 
X-CRM114-Status: GOOD (  13.37  )
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

T24gMTcvMDkvMjAyNiAxMzoyOSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IMKgIC8qKgo+PiDC
oMKgICogX29mX3BoeV9nZXQoKSAtIGxvb2t1cCBhbmQgb2J0YWluIGEgcmVmZXJlbmNlIHRvIGEg
cGh5IGJ5IHBoYW5kbGUKPj4gwqDCoCAqIEBucDogZGV2aWNlX25vZGUgZm9yIHdoaWNoIHRvIGdl
dCB0aGUgcGh5Cj4+IMKgwqAgKiBAaW5kZXg6IHRoZSBpbmRleCBvZiB0aGUgcGh5Cj4+IMKgwqAg
Kgo+PiAtICogUmV0dXJucyB0aGUgcGh5IGFzc29jaWF0ZWQgd2l0aCB0aGUgZ2l2ZW4gcGhhbmRs
ZSB2YWx1ZSwKPj4gLSAqIGFmdGVyIGdldHRpbmcgYSByZWZjb3VudCB0byBpdCBvciAtRU5PREVW
IGlmIHRoZXJlIGlzIG5vIHN1Y2ggcGh5IG9yCj4+IC0gKiAtRVBST0JFX0RFRkVSIGlmIHRoZXJl
IGlzIGEgcGhhbmRsZSB0byB0aGUgcGh5LCBidXQgdGhlIGRldmljZSBpcwo+PiAtICogbm90IHll
dCBsb2FkZWQuIFRoaXMgZnVuY3Rpb24gdXNlcyBvZl94bGF0ZSBjYWxsIGJhY2sgZnVuY3Rpb24g
Cj4+IHByb3ZpZGVkCj4+IC0gKiB3aGlsZSByZWdpc3RlcmluZyB0aGUgcGh5X3Byb3ZpZGVyIHRv
IGZpbmQgdGhlIHBoeSBpbnN0YW5jZS4KPj4gKyAqIFJldHVybnMgdGhlIHBoeSBhc3NvY2lhdGVk
IHdpdGggdGhlIGdpdmVuIHBoYW5kbGUgdmFsdWUgYWZ0ZXIgZ2V0dGluZwo+PiArICogYSByZWZj
b3VudCB0byBpdDsgLUVOT0RFViBpZiB0aGVyZSBpcyBubyBzdWNoIHBoeSBvciB0aGUgcGh5IGlz
Cj4+ICsgKiBkaXNhYmxlZDsgLUVQUk9CRV9ERUZFUiBpZiB0aGUgcGh5IHByb3ZpZGVyIGlzIG5v
dCB5ZXQgYXZhaWxhYmxlLgo+PiDCoMKgICovCj4gCj4gV2h5IGNoYW5naW5nIHRoZSBjb21tZW50
IGhlcmUgPyBZb3UncmUgbm90IHN1cHBvc2VkIHRvIGNoYW5nZXMgdGhlIAo+IF9vZl9waHlfZ2V0
KCkgYmVoYXZpb3VyLgoKSSBoYXZlIG5vIHJlYWwgbWVtb3J5IG9mIHRoYXQgY2hhbmdlIHByb2Jh
Ymx5IHNlZW1kIGxpa2UgYSBnb29kIGlkZWEgYXQgCnRoZSB0aW1lLgoKV2lsbCBkcm9wCgotLS0K
Ym9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
