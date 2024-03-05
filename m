Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43BBC54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 21:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5SE/f4y4Y82j90RoPIj3ofavpdCzKgOY16BuCbFnRm8=; b=pKoMh3mMzVgJBL6OcDgTLicfcv
	Z1GiMwiprTSOTpaaoCGF8iPy1jpj422ZjwpGIfN47ST05ZiOM9XOA0U7X4TJdlY7qKlktZRJy74YC
	yU/RuqnwuxSnp09a2iR+HX5jxJX7I/Nqj/l0LASZAueaMAzrf6ktvZ3dipBMIWocxh0Hu9y8z3A16
	NwgRM5OdfJ5ZKN9t88yLdqdiflkkGN6gIAEAvZ/KDT5VnGOf6oJ/r+vh3p/WKsCJRls/YbsAqWyKy
	BMUWLsQSaT7crIaISW9Xq9LwGP7Z0eZ2QDOc2DBh9zyjLIEVOzXCeZrXgfZ8SviiFJGQ3QOofEIfD
	y4DrLpUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhc14-0000000FH5l-1ItA;
	Tue, 05 Mar 2024 21:08:02 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhc11-0000000FH51-0b0L
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 21:08:00 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-51331634948so196542e87.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 13:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709672875; x=1710277675; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b09ID0S8XkErCqQ2Ru57MwiOAeJTYdJ0mk6wlA5iiPQ=;
        b=WsGokyfWCLFL+c8iytS5oG/+FTF4iSmWHlC623Xqx2d0YvWr+A/SeEGBdgK2iTw8yV
         EsFpUbozdKzWH4012moJdqqiMo0J3BA/oVNS8aKNxWPSzS+4wqkUDNzAhtvlg1zPYS33
         uPacesOukEzYtXzgUzTfA4228XsdJWEzH3yhALgrYFZqSmHE7ayyQ1C7J5oX9sewt187
         EwMfJ3U/LpRRXoDfDUYM2lKBDOgv1dVa9e0gNjhEQpqYDZCDbPUrIfVO131d6dWACXFt
         4ytitO4yDqjdeweSaNV22P+sbmwbwUz4bO58LlNyYVvJlNW26JBOL8U3er71ibCbtlFG
         QwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709672875; x=1710277675;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b09ID0S8XkErCqQ2Ru57MwiOAeJTYdJ0mk6wlA5iiPQ=;
        b=Yz5XJfMDz3KFF2HT8uTYbEgDUOWlfSHqz+i64McR+MoHN8+5pZq7u38bix5sZdK4vc
         KITV9YCFED4BJfzMUPRfZnSoqD2MS6Y7HCvnCFRddVIk6vP7KVNBOnBS8ippcM7WGIOm
         iv2pptCIL4fI6gaS4/YvFQ1BS77OmM6shUDmnNqAOoRmrwCb7nBJLFbZ/6NvEv3zEphM
         ZC8PKyyLenYBBGKZNW3FQYaBdkDHMeI05WuCYnKcmaV4TjD14rlgjQDqH1NzzcULb7NX
         DNuqjYL2t2DGfYrcW/wnaIjpDyY7rnKnSDxxwElFqIDLat42cxC9clk1grTBcEFRnt6Z
         2A0A==
X-Forwarded-Encrypted: i=1; AJvYcCW3XLIuazkKar8VHnY8cj93xWixRI/z0EE7bi7Rl3d/QlWiUJLE2RZmkQu9ltAtcV5pjzK808se09u6by4vEBOCX6oZ7tzgwT55Q3ApiQ==
X-Gm-Message-State: AOJu0Yx4ZgG/NoNqbsElcoGiJJGbEQPa1b7/Ij8yX4QzYZ4ZanK1AH/9
	7M/vfQdgwpb2DhRXzKfa1EViEWFTWm2q5NnUQV+LTxfI8R30WAR5hfXsZesnUlE=
X-Google-Smtp-Source: AGHT+IGBKoiS7ffna3KjUqa82zmNiDZh4gX9qfpTO1pytymFQ8KydevY5xCfcZoe8Xkpy4Obklbznw==
X-Received: by 2002:a05:6512:281a:b0:513:2c5f:1078 with SMTP id cf26-20020a056512281a00b005132c5f1078mr1337677lfb.8.1709672875550;
        Tue, 05 Mar 2024 13:07:55 -0800 (PST)
Received: from [172.30.204.154] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g13-20020ac24d8d000000b0051316ccc5besm2300433lfe.269.2024.03.05.13.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 13:07:54 -0800 (PST)
Message-ID: <5736796f-061b-46a0-b4eb-ab447fac4426@linaro.org>
Date: Tue, 5 Mar 2024 22:07:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Content-Language: en-US
To: Sriram Dash <quic_sriramd@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, andersson@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com,
 Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 quic_psodagud@quicinc.com, quic_nkela@quicinc.com,
 manivannan.sadhasivam@linaro.org, ulf.hansson@linaro.org,
 sudeep.holla@arm.com, quic_shazhuss@quicinc.com, devicetree@vger.kernel.org
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
 <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
 <a2e863e2-9c8b-47c2-b4d8-5664d954cd49@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <a2e863e2-9c8b-47c2-b4d8-5664d954cd49@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_130759_286737_D043314A 
X-CRM114-Status: GOOD (  11.26  )
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

CgpPbiAzLzUvMjQgMTk6MjUsIFNyaXJhbSBEYXNoIHdyb3RlOgo+IE9uIDMvNS8yMDI0IDExOjMz
IFBNLCBTcmlyYW0gRGFzaCB3cm90ZToKPj4gT24gMy81LzIwMjQgMTA6MzggUE0sIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAwNS8wMy8yMDI0IDE3OjU3LCBTcmlyYW0gRGFzaCB3
cm90ZToKPj4+PiBFc3RhYmxpc2ggdGhlIGNoYW5uZWwgYW5kIGRvbWFpbiBtYXBwaW5nIGZvciB0
aGUgcG93ZXIgZG9tYWlucyB0byBjb25uZWN0Cj4+Pj4gd2l0aCBmaXJtd2FyZSwgZW5hYmxpbmcg
dGhlIGZpcm13YXJlIHRvIGhhbmRsZSB0aGUgYXNzaWduZWQgcmVzb3VyY2VzLgo+Pj4+IFNpbmNl
IHRoZXNlIGRlbGVnYXRlZCByZXNvdXJjZXMgd2lsbCByZW1haW4gaW52aXNpYmxlIHRvIHRoZSBv
cGVyYXRpbmcKPj4+PiBzeXN0ZW0sIGVuc3VyZSB0aGF0IGFueSByZWZlcmVuY2VzIHRvIHRoZW0g
YXJlIHJlbW92ZWQuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBTcmlyYW0gRGFzaCA8cXVpY19z
cmlyYW1kQHF1aWNpbmMuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9zYTg3NzVwLXJpZGUuZHRzIHwgOTYgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
LQo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBEbyBub3QgbWl4IERUUyBwYXRjaGVzIHdpdGggc3VibWlzc2lvbnMgdG8gbmV0
ZGV2IG9yIFVTQi4KPj4+Cj4+PiBQbGVhc2UgcHV0IGl0IGluc2lkZSB5b3VyIGludGVybmFsIGd1
aWRlcywgc28geW91IHdpbGwgbm90IGJlIHJlcGVhdGluZwo+Pj4gdGhpcyBvdmVyIGFuZCBvdmVy
Lgo+Pj4KPj4KPj4gU3VyZS4gV2lsbCB0YWtlIGNhcmUuIFRoYW5rcy4KPj4KPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC1yaWRlLmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLXJpZGUuZHRzCj4+Pj4gaW5kZXggMjZhZDA1
Yi4uYjZjOWNhYyAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4
Nzc1cC1yaWRlLmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVw
LXJpZGUuZHRzCj4+Pj4gQEAgLTc2NCw4ICs3NjQsMTggQEAKPj4+PiDCoCB9Owo+Pj4+IMKgICZ1
c2JfMCB7Cj4+Pj4gLcKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+IC3CoMKg
wqAgcGluY3RybC0wID0gPCZ1c2IwX2VuX3N0YXRlPjsKPj4+PiArwqDCoMKgIC9kZWxldGUtcHJv
cGVydHkvIGNsb2NrczsKPj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvIGNsb2NrLW5hbWVz
Owo+Pj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gYXNzaWduZWQtY2xvY2tzOwo+Pj4+ICvC
oMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gYXNzaWduZWQtY2xvY2stcmF0ZXM7Cj4+Pj4gK8KgwqDC
oCAvZGVsZXRlLXByb3BlcnR5LyByZXF1aXJlZC1vcHBzOwo+Pj4+ICvCoMKgwqAgL2RlbGV0ZS1w
cm9wZXJ0eS8gcmVzZXRzOwo+Pj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gaW50ZXJjb25u
ZWN0czsKPj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvIGludGVyY29ubmVjdC1uYW1lczsK
ClRoaXMgaXMgdG90YWxseSB1bmFjY2VwdGFibGUuLiBBbmQgZXNwZWNpYWxseSBtYWtlcyBubyBz
ZW5zZSBnaXZlbgpyaWRlIGlzIGxpa2VseSB0aGUgb25seSBzYTg3NzUgYm9hcmQgaW4gZXhpc3Rl
bmNlLi4KCj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcG93ZXItZG9tYWlucyA9IDxUT0RPPiwgPFRPRE8+
Owo+Pj4KPj4+IFRoaXMgd2Fzbid0IGV2ZW4gdGVzdGVkLgo+Pj4KPj4KPj4gVGhpcyBpcyB0ZXN0
ZWQgd2l0aCB0aGUgc3BlY2lmaWMgcG93ZXIgZG9tYWlucyBpbiBwbGFjZQo+PiBvZiA8VE9ETz4u
IFNDTUkgaW50ZXJmYWNlIGlzIHVzZWQgZm9yIHRoZSBwb3dlciBkb21haW5zLgoKSSdtIHNvcnJ5
LCBidXQgImJyZWFrIGNvbXBpbGF0aW9uIHN1Y2Nlc3NmdWxseSIgaXMgbm90IGEgdmFsaWQKdGVz
dCByZXN1bHQuLgoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
