Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CD24C02181
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jan 2025 07:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Skbq5tXMzxwhuTOuVTC2dmf2b84VdKUmeXrW5G2EEI=; b=McerZKeyEY3idn
	mvDf6e2+naLsBwwY6xheWBcdkikyP6kHb4AmigSTiC8zo2LcWxuNhhG2VTLwhlPt/5zAu/V6xFRHI
	Um2U5b18ntcTmvU6gMkq1RjiK8gscPhDYp8+g5xWr/u0J8uJDqCOnShau5gtcke1KPlSI5q/f0Rki
	L6/tVYM/GzPT0fHopg2sJ15SbkSUCoHDpNj0kLkH8TWcLqtaYN83FxduLNFanOMw68FZZiltLUEPC
	8vViEhG4Er+qSRNpjxo1IMHEZDxMl4E29qp8tIgBqAclu48qeAwUKK2tjs6krmMIFx8/qmTbcpG0P
	s8+KCpWHQ3ao9AahCRMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbx5m-0000000HC0l-0BZr;
	Sun, 26 Jan 2025 07:30:02 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbx5j-0000000HC07-31tL
	for linux-phy@lists.infradead.org;
	Sun, 26 Jan 2025 07:30:01 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-216401de828so60661005ad.3
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 23:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737876598; x=1738481398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lWEYm1Wvugz22VZTmmCSh9dWYssFgpGfT0lCZXzX6jQ=;
        b=hAIb0ZrJQL9ObTGcDgh/Hq5YIomIV04YDUAEbFH1f4qDF8W2Lpq8Dk/QNPspbzXhkS
         gr5IeP2iV/vGCnvMjftvyEgTrJBEoc9eVutxQDbSD+UwxNvG5gCg1BLpzcowybzricLR
         fCEmWb2MgkJ9JC8ZPcsNc/sG5IK3ROdqnyJnX07P5pxFFUwA4T9bYCKN2zrglkCHMiMJ
         Blze5t0Qi30a8QPhxdSvxrOK27KzMiVK1k/6ArWXM4EeNcCCqmHVmdUjnNo2RUPxWOwq
         sHdkvRfeKXmZphgDaWVV6ZPt9gYqcyrshS31SdMa4Gkaq8HuNHCO/ISef/14+yfPid96
         DNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737876598; x=1738481398;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lWEYm1Wvugz22VZTmmCSh9dWYssFgpGfT0lCZXzX6jQ=;
        b=CmXKELtV8ph5IMBRBwCJNa5GA19smICpiZlm4vNiEEf1WA5sqkeeecbFyAhDlyvuht
         hk/Cy8JkEzIaVA3XsTTcNhJzCQ0aF9SbavD0vGs7QRij9MnMATi7G5Y0yhSMtYIDcJU4
         yQiUaJRRXNSRBN60i4lIE8TGBILyVZ0DmxMFnvu+AlPYvujo6tuqFnyM43M1d8HhWa5M
         k0+c+E+lqGQ1Z+pIXwvM70IHEMWwJHPAPyUnXbK1C0iCP43kBJW6pZxOy4EjEWaYWM2p
         CkhiP7suyprJjc0LywQTjv0yZauG5+7wqYmG5EBSaoRiGHP292HG6aiABVdd8cE4ZtWB
         Ym4A==
X-Forwarded-Encrypted: i=1; AJvYcCUIJAXxtuwpW9U6+o44KmuzlCuMn/x3mElrD0NvQwpi70t00oprpg0u3jd89luRhb79le3N+Cra0E8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/X0d/rxIz9qG73GM25uSXL6QkBZNkH2HXj5DEKB2yfx9SuWf6
	iNgv6LOH6klzAeXLP+AW06zT4fz212LHesiqSEjNnnRO9E+9X5KP0GhU2Fz3pw==
X-Gm-Gg: ASbGncuAkjQa5aoIK542CRFsyv8zG4NCpOSk0RhD9i8kJCJPSwZsIcVZ0H2Gx3YXnMU
	ejcNr4+kK4HFXDh90xSMz4tEVf/vyUrMce7svL6ichEvcf5GfEEMh1EzvMIMvllEf6/gbmSHYvw
	+mZDPdTp/yj/EEatOYjiDZBict73asfFeVuUCj+iS9hRkB+Nu0MLU3dwDM6zzx1IJrQidnXA+HJ
	8GW42NVWSKJOGFpD/WziiiCljXLPdFiuc2gJguP7DmsE1q2L51Lzt2I6aZvR0RiHcRP5mh9HfHE
	XO2Z
X-Google-Smtp-Source: AGHT+IFD0g9cKNN5kJkF+EtlX2a/2RSBTYh3J6vZZB5CmCmj+BPQyEJoszp2cnYSPKR9enWkHM+YrQ==
X-Received: by 2002:a05:6a20:9191:b0:1e6:8f10:8ba2 with SMTP id adf61e73a8af0-1eb2145eab3mr55988433637.9.1737876598420;
        Sat, 25 Jan 2025 23:29:58 -0800 (PST)
Received: from ?IPv6:::1? ([2409:40f4:3047:1c2c:8000::])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72f8a78ee7bsm4940924b3a.170.2025.01.25.23.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 23:29:58 -0800 (PST)
Date: Sun, 26 Jan 2025 12:59:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
User-Agent: K-9 Mail for Android
In-Reply-To: <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com> <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com> <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
Message-ID: <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_232959_774829_E370C20A 
X-CRM114-Status: GOOD (  13.21  )
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

CgpPbiBKYW51YXJ5IDI1LCAyMDI1IDExOjAwOjIzIFBNIEdNVCswNTozMCwgRG1pdHJ5IEJhcnlz
aGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPk9uIFNhdCwgSmFuIDI1
LCAyMDI1IGF0IDA0OjMxOjE5QU0gKzAxMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IEZyb206
IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPj4gCj4+IEFk
ZCBhIG5ldywgY29tbW9uIGNvbmZpZ3VyYXRpb24gZm9yIEdlbjR4NCBWNiBQSFlzIHdpdGhvdXQg
YW4gaW5pdAo+PiBzZXF1ZW5jZS4KPj4gCj4+IFRoZSBib290bG9hZGVyIGNvbmZpZ3VyZXMgdGhl
IGhhcmR3YXJlIG9uY2UgYW5kIHRoZSBPUyByZXRhaW5zIHRoYXQKPj4gY29uZmlndXJhdGlvbiBi
eSB1c2luZyB0aGUgTk9DU1IgcmVzZXQgbGluZSAod2hpY2ggZG9lc24ndCBkcm9wCj4+IHJlZ2lz
dGVyIHN0YXRlIG9uIGFzc2VydCkgaW4gcGxhY2Ugb2YgdGhlICJmdWxsIHJlc2V0IiBvbmUuCj4K
Pkkga25vdyB5b3VyIG9waW5pb24sIGJ1dCBteSAyYyB3b3VsZCBzdGlsbCBiZSBmb3Igbm90IGRl
cGVuZGluZyBvbiB0aGUKPmJvb3Rsb2FkZXIuIEkgdGhpbmsgdGhhdCB3YXMgdGhlIHJ1bGUgZm9y
IGFnZXMgZm9yIG1hbnkgcG9zc2libGUKPnJlYXNvbnMuCj4KCkJ1dCBpZiBMaW51eCBvciBvdGhl
ciBPUyBjYW4gdHJ1c3QgdGhlIGJvb3Rsb2FkZXIsIHRoZW4gaXQgbWFrZXMgcGVyZmVjdCBzZW5z
ZSB0byByZWx5IG9uIHRoZW0uIE9idmlvdXNseSwgdGhlIHF1ZXN0aW9uIGhlcmUgaXMgdGhhdCBv
biB3aGljaCBwbGF0Zm9ybXMgdGhpcyBsZXZlbCBvZiB0cnVzdCBzaG91bGQgYmUgZXN0YWJsaXNo
ZWQuIEFuZCB0aGUgYW5zd2VyIEkgZ290IHdhcyBzdGFydGluZyBmcm9tIHRoZSBjb21wdXRlIHBs
YXRmb3JtcyAoYXRsZWFzdCBYMUUpLgoKU28gbGV0J3MgdGFrZSBpdCBvbiBhbiBleHBlcmltZW50
YWwgYmFzaXMgYW5kIHNlZSBob3cgaXQgZ29lcz8gSWYgYXQgYWxsIGFueSBwcm9ibGVtIGFyaXNl
cywgd2UgY2FuIGFsd2F5cyByZXNvcnQgdG8gaW4ga2VybmVsIHNlcXVlbmNlcy4KCi0gTWFuaQoK
Pj4gCj4+IFVzZSB0aGlzIG5ldyBjb25maWd1cmF0aW9uIGZvciBYMVA0MjEwMCdzIEdlbjR4NCBQ
SFkuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9z
cy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXBjaWUuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKykKPgoK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
