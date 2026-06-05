Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A73C8CD6E74
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 10:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n/H0ZNSWNaPmeJKmlBFPROdPQ3XeejnEeEP3vaNBvs=; b=2MmgS5tXgKfEyl
	bP9XTcyTMVPbWNHrgua5MX09NFXsVKpDoH3qxrN2K7oHgHdRS8tR7udv+xyU9MtNZLHeqYkhhdlSj
	HwJzF1wqIrN4olFrmeceWtveicMq56Q13DWx8bjoQtCnQMYvgTh5jGMky3oCkgenh1Xv2TZx9yxFd
	6kXHqj9QX9T8l1o1/rfzskUyeiFNT3hA1UwmNwEDDNnqyM0u37+hABmF8S4rbTrLG/ylY1o6z/06G
	5pJg8vbR6xm1lkPtaKs4v2GiEVWgMZw2sRUv7zK6dO5gt1qCdkpqVxsFkNYZ+NQmaUBZXC3Bvzonp
	OJSyyiO5HVmnG8tW7Q+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVRor-00000000UAu-0te8;
	Fri, 05 Jun 2026 10:30:29 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVRoo-00000000UAZ-3VXS
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 10:30:28 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-bec449cf976so234155066b.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Jun 2026 03:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780655424; x=1781260224; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0KPVu9xlZpg9ZdiY7RZ3Kuoe5dMqAtDeJAk4rvD4TuY=;
        b=FT0qyi2PovmQF+zO7tqwmJw9bczJ7klIbELQ+0p8V9/tuBFf2d+ato947513d0NvXi
         W5PnJTr2O312ojSzs7DoZcU1e4lQiQQs+XDnZiJvVtL0bzMP0rEuiCe9+YkNcnxUb1Zg
         TwKYAVCSQJjnADQS+AHVRzYLtxoc73A5fE0y9aQcFNkiBN6lxga3uETg/pylGc3rdof+
         I/8p92PVvh00dLAOF9BV8mhpw1GYUBxxHY3jtJwPxS2Ns+JWZvGHIE57L3f59ivMP5km
         LsG3eH81gsfN63ePIxPtWw7vG/tBDxJG9aSaPNeqFm1u9A1/tnH2HNGYb5ZArB4ejLB3
         Bw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780655424; x=1781260224;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0KPVu9xlZpg9ZdiY7RZ3Kuoe5dMqAtDeJAk4rvD4TuY=;
        b=TZbgqcXrFbx5c950gLW1zVT484Tbv8q/fFBNkTURWFdMf3MF/AasIRS4+jVTlxVQEb
         abgRur/Gw/Dk6EynPtXMhm6/R0m+rN7TCg2u0lBJkQT5g1B4zvn1FNHu3dFsTfPiH37O
         THaBxgEqGTt+nQwNlb5G6MJSGtAEBQuEfLDt/gO0N9S9OwK4WZfV+iLfLgZmy+4a9TdQ
         5cKeLg/Yiin80XutxU8OtPy/ygt3sadXxqx8oMQyxYjX+oz3WzqZQJzacDcL3H5HmAdW
         U4Dmofwp/chIq6IVEoGRTsaoVdMhB99hrzNeD54rfwV7/WKwVS80mK5Q3ODo6S0tryIo
         qghg==
X-Forwarded-Encrypted: i=1; AFNElJ/BtsssMvtVORwS8u0uaVtMv2LyHE3tIVaNKz/wd8EYejU3Ki3WujnYAtSjPcneRLwZDVQsiFt2de0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc3R6ttDXtvaJoI3WKLqFlrC+fsMmryXZat/5FNPRYzFSNuAP7
	Tbz2v7Py8hckY0j2OH5obipYJ3xyrGBY37K/yWv/va6UDlsdMzL7u15vHj0vr33qhx4=
X-Gm-Gg: Acq92OGrg3ETPRqtphR2YOuSFOK0/Q8dZnR9vG0Lq9glIGp3vBneRhFDcn13d6inB95
	VFOfZYbaOfbSQWOZh86oOZplXYhV+KC+U9iQzK9noZ5kCL3QbQULeCumR1XrDffuaVGNsC6Jb24
	PeUNYV3JN+CwW7IfDNndeS9jNgEnFka7+6jIgAOWHLri7yqwefle9jRMTARPQJWAFvu7kjyqq4U
	rriLqQfzY4JiJtyDNFCp/REn/COxAZ9S0hucJmzdKuFutHawlCSBSTDLQEeeoWY8AvfBad/gfLJ
	J6VKG+ecWS6PHjGHEqaAH4UBDibbORCy7Y/M/XPQBW/YfqriYsjZEUmvODfKe3/T7FYOFmkD19h
	5jR/+czvRaIfmpcetPR6BnLaUfTRzW2oV7DUWUSrW3LlWkvnvend8HRaLeoq9ZUMw4VCpzbrgXu
	cooX4oUXGkQBl6nUjuM6CS5w06z3fQ+wtczFSMxn1qFffD
X-Received: by 2002:a17:907:7b82:b0:bd2:bd3:1ef8 with SMTP id a640c23a62f3a-bf372d28df7mr147592166b.35.1780655424300;
        Fri, 05 Jun 2026 03:30:24 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.32.74])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055303fc6sm446486166b.42.2026.06.05.03.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 03:30:23 -0700 (PDT)
Message-ID: <33989515-322d-4189-bf84-1d62a0c2d294@linaro.org>
Date: Fri, 5 Jun 2026 11:30:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
 <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
 <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
 <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_033026_907875_E70DE2E6 
X-CRM114-Status: UNSURE (   9.20  )
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

T24gMDUvMDYvMjAyNiAxMDozMSwgTmloYWwgS3VtYXIgR3VwdGEgd3JvdGU6Cj4+IEhhdmluZyBj
bG9jay1uYW1lcyBwcm9wZXJ0eSBkb2Vzbid0IG1lYW4gdGhhdCBhbGwgdmFsdWVzIGFyZSB2YWxp
ZC4KPj4KPiBDU0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRt
YXA6Cj4gLSBCaXRzIFswLDIsNCw2XSDihpIgRC1QSFkgZGF0YSBsYW5lcyhMTjAsIExOMiwgTE40
LCBMTjYpCj4gLSBCaXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMsIExO
NSkKPiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNhdGVkIGNsb2Nr
IGVuYWJsZQo+IAo+IEluIGNvbWJvIG1vZGUsIG9ubHkgTE42IGNhbiBiZSBjb25maWd1cmFibGUg
YXMgYSBjbG9jayBsYW5lLgo+IAo+IFRoZSBsYW5lLWVuYWJsZSBjb21wdXRhdGlvbiBpbiBwaHlf
cWNvbV9taXBpX2NzaTJfbGFuZXNfZW5hYmxlKCkgdXNlcwo+IEJJVChkYXRhW2ldLnBvcykgZGly
ZWN0bHksIGFzc3VtaW5nIHBoeXNpY2FsIGJpdCBwb3NpdGlvbnMgPDAgMiA0IDY+LAo+IGJ1dCB0
aGUgRFQgWzFdIHVzZXMgY29udmVudGlvbmFsIGluZGljZXMgPDAgMSAyIDM+LCBwcm9kdWNpbmcg
MHg4Rgo+IGluc3RlYWQgb2YgdGhlIGNvcnJlY3QgMHhENS4KPiAKPiBUaGlzIGdvZXMgdW5ub3Rp
Y2VkIGJlY2F1c2UgdGhlIHdyb25nIHZhbHVlIGlzIGltbWVkaWF0ZWx5IG92ZXJ3cml0dGVuIGJ5
IHRoZQo+IGhhcmRjb2RlZCAweEQ1IGluIGxhbmVfcmVnc194MWU4MDEwMCwgbWFraW5nIHRoZSBk
eW5hbWljIGNvbXB1dGF0aW9uIGVmZmVjdGl2ZWx5IGRlYWQuCj4gCj4gQ291bGQgeW91IHBsZWFz
ZSBmaXggdGhlIGRyaXZlciB0byBtYXAgbG9naWNhbCBsYW5lIGluZGljZXMsIGNvbnNpc3RlbnQg
d2l0aCB0aGUgZ2VuMiBjYW1zcyBjb252ZW50aW9uLgo+IAo+IFsxXWh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI2MDMyNi14MWUtY2Ftc3MtY3NpMi1waHktZHRzaS0gCj4gdjMtNS0xZDVh
OTMwNjExNmFAbGluYXJvLm9yZwoKVGhhdCdzIGdyZWF0LCB0aGFuayB5b3UgZm9yIHNoYXJpbmcg
dGhpcyBpbmZvcm1hdGlvbiwgaXQgbW92ZXMgdXMgZnJvbSAKIkkgdGhpbmsiIHRvICJ0aGUgZG9j
dW1lbnRhdGlvbiBzYXlzIgoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
