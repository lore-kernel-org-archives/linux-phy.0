Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B4C606A327
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 12:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gmKo32Fc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=b5KbgXr8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=76zuPjFQ8n5eV0bVOu2frCjK+ZvvkulYmM5omBa/pho=; b=gmKo32FcMO1NXFbbb/GUXqKToC
	K+Acj7OQbYz6D0VjiQsDGPK6RH0gd1anG5y3NtzWwrryQHU5SB2NqFzhxkwpXUJ9L0UmrNoMfwn5J
	oZSqAI38zXHJWYYiMNC6l+UL9aEXW8m8udlCzOUOqvPZ3zGgESuKTbvELNsB+wcZngyR68xrmAxR5
	jJg38pbKJ8Qv/OiMMUPW14QctRaxwsXwbAobPQW3IsLKJC8pJx3BRdNyoQYnXfFfDDjzmc/WamxBW
	ewP0Wi2i2ax26L7TvGpbavPtalUNXrHxT463lVJTAnHGSkf8EXctfkKyqSVoY5h7+8GG29aX4RQWL
	E9jj9iIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNrcU-0000000GXTQ-42wr;
	Mon, 02 Nov 2026 12:58:38 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNrcS-0000000GXT1-1fJV
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 12:58:37 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c37b612635bso406144366b.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 04:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793624314; x=1794229114; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=LfM4uAledb3ebU9yvjdbYO/mTumVwk76mc2SnxdRhO0=;
        b=b5KbgXr8mxUr8epjB2TLk+giuW+y7RTgoOZZ16FOuvOVrpSw3atyI5OrV5SgbKjTJm
         SRsWu+v3PUPRYlHxe+gWGfZSr4/2U78rS3owrdouuAsvJ74Dk0fyha2ZlHLRkZMbBhx9
         ASmfTnb7+enKTi7h8uJFJ+9YW18uWkyPsvA6N6NVQ2jTWNPR4zUh8JRoln454Fc0+LO+
         2RM/VWg3bQULoF9mewIB2/3eELgygXL7xCLLhHok1rL+5dL4KVyG9cGXvGVlPlubhuUA
         INnffblfrdD3KTEfMvngOWMgMTAFq/229AYweIFzaZecLGEHKUDNlHXqwJ0OeStvM5Ep
         D9yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793624314; x=1794229114;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LfM4uAledb3ebU9yvjdbYO/mTumVwk76mc2SnxdRhO0=;
        b=WBI27lApwU6zdcNsHGLmq6Ttdl7LyrQTxjjGKhBX+x8qyJXOU2sLCnP7PIeWXGkiZc
         i2boyPPUvnvLYSsLBooOARPxTvf+N3LAhTiWLEn4ZwM55CnxP3vHJBKovQ+UnpAHC8/b
         FQib+cz3YfuvGNYVFW58p17m+9LKuykk0PxJbiHdPElPvxahCh1EjL/R2wpWaCmkzddn
         2YuyXFqhjl72YFPmTxFOm3y3PV2Dw9Kw6cU2e5Ltuoq46bL1ySICjhY4/y3CjqheHgan
         luyV/gVwhC/TWJ1yUYGuTQKPR1Y0jkw9fNA9AQEOC5/FsJFRJ8e7WNr0fbiCPYausdiL
         wkTA==
X-Forwarded-Encrypted: i=1; AKwUvBx4eeJLyMD8Cb1WdKv4kKG1KqIQ4NFmUXyhN0692z07zCN8FrofhGTJfRS9S1rTQWK94B842cRP83w=@lists.infradead.org
X-Gm-Message-State: APuU4Z9f1voTCR5TW2oWf1sL1EDidHoenMHs3e9wiSKKmwZ1H76YrBgs
	UQshDCbIMwqrSsXwRFwhKvZeD/cmrJBJWTAee6tMBLsOyQSQ+2NSEOBjKt1hQpYoaCY=
X-Gm-Gg: AYBFou3fIis4mnB9hh12EwjrDEvxTxj9T1GNK7Ttc163Mo4Sh//22WfHSaCen62jiyJ
	jjZ9voAKU8j22DK+fq1qlK26x8kNZCP5qcwL/RAcgMf8nPBxcOR/X7TG/yyL2vOHObSWM6MlmMc
	ToT2QBKsbOAoO1ySWfno5GGy0I3OJLwfRKRH4uqQdZWZZMOrtii/AneR13tDAXMRmn0/ojs8lSH
	uF3HnDGiICFbhxREh3EELDRi0MnrPAs3wO75Fru8hpv/HYjyaTqrixlP7Vgm77ZEXYe6/BydneQ
	Bh5RZkApFA9l92yF8XcbOWbFv9YcvqGMaFKRNqA7Pz/UblF0IO8Cv83FpBd0cxiZZrM4agLvZuT
	mvRMLjJ/gQs6YwdBCqBQKr4YsQRXtx/+Rrda6UwPX4mUSTHvlXuC9eSSpyDs8oHCMH8ejQ/7wAI
	kVgWK9Y574c7Sv1QE7HSHYbANpmXNWGCURlp6w+Re11BEDmyRmCae2hS1lc5BhqMoMdIJk9Ikq/
	OdBz35eoo59mWBpji8q7l4witJP1+/t3gOEOYxz/seyZRfvtyr4ASzgdl2FDtYIjOrJ+mYTovGM
	J3lfoaUngPL4+syKwqTag5ofuPiTq/VsF0h79A==
X-Received: by 2002:a17:907:7253:b0:c29:6400:ef8e with SMTP id a640c23a62f3a-c4ca7aa5303mr800564266b.42.1793624314046;
        Mon, 02 Nov 2026 04:58:34 -0800 (PST)
Received: from [192.168.0.167] ([64.43.42.35])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b4eca0f376sm3476980a12.26.2026.11.02.04.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 04:58:33 -0800 (PST)
Message-ID: <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org>
Date: Mon, 2 Nov 2026 12:58:32 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org>
 <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_045836_453365_CE96FFE7 
X-CRM114-Status: GOOD (  15.81  )
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

T24gMzAvMTAvMjAyNiAxNToyNSwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+PiBPbiAzMC8xMC8yMDI2
IDEyOjQzLCBOaWhhbCBLdW1hciBHdXB0YSB3cm90ZToKPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGNhbXNzX3N1YmRldl9yZXNvdXJjZXMgY3NpZF9yZXNfaGF3aVtdID0gewo+Pj4gK8KgwqDCoCAv
KiBDU0lEMCAqLwo+Pj4gK8KgwqDCoCB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgLmNsb2NrID0geyAi
Y3NpZCIsICJjc2lkX2NzaXBoeV9yeCIgfSwKPj4+ICvCoMKgwqDCoMKgwqDCoCAuY2xvY2tfcmF0
ZSA9IHsgeyA0ODAwMDAwMDAgfSwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
eyA0ODAwMDAwMDAgfSB9LAo+Pj4gK8KgwqDCoMKgwqDCoMKgIC5yZWcgPSB7ICJjc2lkMCIgfSwK
Pj4+ICvCoMKgwqDCoMKgwqDCoCAuaW50ZXJydXB0ID0geyAiY3NpZDAiIH0sCj4+PiArwqDCoMKg
wqDCoMKgwqAgLmNzaWQgPSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAucGFyZW50X2Rl
dl9vcHMgPSAmdmZlX3BhcmVudF9kZXZfb3BzLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Lmh3X29wcyA9ICZjc2lkX29wc18xMTkwLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLmZv
cm1hdHMgPSAmY3NpZF9mb3JtYXRzX2dlbjIKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+Cj4+IFRo
aXMgbG9va3Mgc3RyYW5nZSwgd2h5IGlzIHRoZXJlIG9ubHkgb25lIGNsb2NrIHJhdGUgPwo+Pgo+
PiAtLS0KPj4gYm9kCj4gSGkgQnJ5YW4sIHRoZSBjdXJyZW50IENBTVNTIENTSUQgY29kZSBhbHdh
eXMgc2VsZWN0cyB0aGUgZmlyc3QgZnJlcXVlbmN5IAo+IGxpc3RlZCBmb3IgZWFjaCBjbG9jayBp
biB0aGUgQ0FNU1MgcmVzb3VyY2UgdGFibGUuCj4gCj4gSW4gY2Ftc3MtY3NpZC5jOgo+IAo+IFsu
Li5dCj4gfSBlbHNlIGlmIChjbG9jay0+bmZyZXFzKSB7Cj4gIMKgwqDCoMKgwqDCoMKgIGNsa19z
ZXRfcmF0ZShjbG9jay0+Y2xrLCBjbG9jay0+ZnJlcVswXSk7Cj4gfQo+IFsuLi5dCj4gCj4gRm9y
IHRoZSBDU0lEIGFuZCBDU0lEX0NTSVBIWV9SWCBjbG9ja3MsIHRoZSBoYXJkd2FyZSBzdXBwb3J0
cyB0aHJlZSAKPiBjbG9jayByYXRlczogMjAwIE1IeiwgMzAwIE1IeiwgYW5kIDQ4MCBNSHouIElm
IEkgcmVtZW1iZXIgY29ycmVjdGx5LCAKPiAyMDBNSHogYW5kIDMwMCBNSHogaXMgbm90IHN1ZmZp
Y2llbnQgZm9yIHRoZSBzZW5zb3IncyBvdXRwdXQgcGl4ZWwgcmF0ZSwgCj4gc28gd2UgbmVlZCB0
byB1c2UgdGhlIGhpZ2hlc3QgcmF0ZSwgNDgwIE1IeiwgdG8gbWVldCB0aGUgYmFuZHdpZHRoIAo+
IHJlcXVpcmVtZW50LiBUaGFua3MgYSBsb3QuCj4gCj4gLS0tCj4gQmVzdCBSZWdhcmRzLAo+IEhh
bmd4aWFuZwoKV2UgaGF2ZSBhIHNlcmllcyBmcm9tIEFudGFucyB0byBhZGRyZXNzIHRoaXMgdGhv
dWdoLgoKV2Ugc2hvdWxkIGxpc3QgdGhlIGNsb2NrcyB0aGUgU29DIHN1cHBvcnRzIG5vdCBjb25z
dHJhaW4gdGhhdCBsaXN0IGZvciAKb25lIHNwZWNpZmljIHNlbnNvciBvbiBhIHRlc3QtY2FzZS4K
Ci0tLQpib2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
