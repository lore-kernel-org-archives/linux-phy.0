Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F112CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/d0SnObQMPmus/JEPpITxdTW+eTliX05COj//dTT33Q=; b=r31MaGHcp0bdKd
	tj7LUiRTpmg8X2wKTHYcdOKix6SeeK2hAGFHelgxA8xsCyxXTULrzw9Ny+T1FnhLxyQLToebB/DWX
	NKJM4zhkULNCxLNTdsaFLEEXnxVBcLfloxcZKuMuDNvmpB9P1SHXw4oMqkNsoURhmCJqzLwQ75/pU
	2h2PGrlvb9yT4meZFV/jdrkPaSW3G+KxWZIIYjIw+s5BNj8AERcL9kDFGuQO0kJB7townxd+g/mih
	wOTuTKZWDofoLW/LvmCMCe7nkLXZ4rd4QSsI+DT5mh+L80u6en6LzL7A/dpfOm7E/v4r2Anjt8jp3
	jXNLo3HSODNRSBpkK/cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx9n-00000005OIH-3u2g;
	Fri, 30 Aug 2024 08:38:59 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx6v-00000005Nam-1joW
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:36:03 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2d8815ef6d2so53976a91.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725006960; x=1725611760; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HRHmHWrP9aGbtsGBj3sSUa2W5O9vCt0AWItUOkadt2Y=;
        b=RKHBFNFNGOi/tLw8WiRkBE9/FxLJS4j/MIFHRiSE8d0jfX76l56McgbRSqh8WzfrTo
         BaVuCftbYlTrMZhrsDTdJ8CA8RqdakA8Ge4doT/rhbvyMFPoslxZqj2bBQ2oqaE2zSl/
         W1CYybzUkfiRrGz00Y28sTxSe5+VU5heBIC0ZUejWXDU/qNojFf/GRAlybP0rNjyi1YH
         eTF88UYA6BS/KPnVSR+qfvK1T5il7fr2pGsge+eRKxRCOO1TtE0lGvvcVG1P2HKix9mH
         ueRXH/dPmQbhD24UBX1il4T2JilgDYW1OMYI2UXliL8C033PGi7tPl1l7Bnjl/Mt+0xk
         l7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006960; x=1725611760;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HRHmHWrP9aGbtsGBj3sSUa2W5O9vCt0AWItUOkadt2Y=;
        b=L3FyHUleOi/4JL77CqvOGzWuIZXdTDMUgOtumHlvnuAf6//JspPwAdtyrOyE2g6fqY
         AwIUkJZZWlaIa9oC8qOO5ZYz3u+K3Mb8X1rzTyWhjDoQgOdpGUGZCzJ2YTGhxXwNBF6z
         RbxY5c+nsNbYaRuWE06GI2RJHGgnropxAb1bdYiSK68umxqsO/cuQTGekZMFZ33n+Xjb
         V+Q1PCrHlU+Apxgil/QRecZuTxA6efR/jl8nioB/K9eU5yfjW9uz1gYryL+QKR1DEO8H
         ctYGHJkRixHCgxJwPGBNTDRlZN6iJUcS7GpYcHCqXfS9/zt3jmTKkRNNcdTpSklc34vo
         vQsg==
X-Forwarded-Encrypted: i=1; AJvYcCVNfdJNr5mFyWzAX9IxhXj9Do0XAw2YA7Adukza8UyPci7eNBobd+JV6/Nem+N2UcmG37HQG/i+zZE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLiMyEoiUT+4Iad9Crtcba4/dDh2RZ5DJdwzwIoaXX0vjrBCdn
	Rk+bbjlo1nHU1I8eJcoJ/Grz9o4X4gM7FNHI+TA1MMfUkTXPjzuTPyJkyMLbWQ==
X-Google-Smtp-Source: AGHT+IEg701oVGHlnE52pK3OQhbcRTjhhzAp3dBmqRMQAHDvR10F57i/IZHuH1pve1bxSwuJqV6lAQ==
X-Received: by 2002:a17:90b:4b01:b0:2d3:ce8d:f7f1 with SMTP id 98e67ed59e1d1-2d8561c7556mr6135729a91.25.1725006960007;
        Fri, 30 Aug 2024 01:36:00 -0700 (PDT)
Received: from thinkpad ([117.193.213.95])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d85b39ce64sm3134091a91.39.2024.08.30.01.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:35:59 -0700 (PDT)
Date: Fri, 30 Aug 2024 14:05:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 2/6] dt-bindings: PCI: qcom: Add IPQ5108 SoC
Message-ID: <20240830083551.yazww3kj2shf4ocq@thinkpad>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-3-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-3-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_013601_482476_25805E9C 
X-CRM114-Status: GOOD (  13.89  )
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

T24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMTA6Mjc6NTNBTSArMDUzMCwgU3JpY2hhcmFuIFIgd3Jv
dGU6Cj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+IAo+
IEFkZCBzdXBwb3J0IGZvciB0aGUgUENJZSBjb250cm9sbGVyIG9uIHRoZSBRdWFsY29tbQo+IElQ
UTUxMDggU29DIHRvIHRoZSBiaW5kaW5ncy4KPiAKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6
IE5pdGhlZXNoIFNla2FyIDxxdWljX25zZWthckBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBTcmljaGFyYW4gUmFtYWJhZGhyYW4gPHF1aWNfc3JpY2hhcmFAcXVpY2luYy5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgW3YyXSBBZGRlZCByZXZpZXdlZCBieSB0YWcKPiAK
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAgIHwgMzUgKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBj
aWUueWFtbAo+IGluZGV4IGY4Njc3NDZiMWFlNS4uYzEyZWZhMjdiOGQ4IDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1s
Cj4gQEAgLTIxLDYgKzIxLDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gcWNvbSxwY2ll
LWFwcTgwNjQKPiAgICAgICAgICAgIC0gcWNvbSxwY2llLWFwcTgwODQKPiAgICAgICAgICAgIC0g
cWNvbSxwY2llLWlwcTQwMTkKPiArICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTUwMTgKPiAgICAg
ICAgICAgIC0gcWNvbSxwY2llLWlwcTYwMTgKPiAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgw
NjQKPiAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNjQtdjIKPiBAQCAtMzEyLDYgKzMxMywz
OSBAQCBhbGxPZjoKPiAgICAgICAgICAgICAgLSBjb25zdDogYWhiICMgQUhCIHJlc2V0Cj4gICAg
ICAgICAgICAgIC0gY29uc3Q6IHBoeV9haGIgIyBQSFkgQUhCIHJlc2V0Cj4gIAo+ICsgIC0gaWY6
Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAg
IGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxw
Y2llLWlwcTUwMTgKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAg
Y2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArICAgICAgICAgIG1heEl0ZW1zOiA2
Cj4gKyAgICAgICAgY2xvY2stbmFtZXM6Cj4gKyAgICAgICAgICBpdGVtczoKPiArICAgICAgICAg
ICAgLSBjb25zdDogaWZhY2UgIyBQQ0llIHRvIFN5c05PQyBCSVUgY2xvY2sKPiArICAgICAgICAg
ICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFzdGVyIGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29u
c3Q6IGF4aV9zICMgQVhJIFNsYXZlIGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAj
IEFIQiBjbG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdXggIyBBdXhpbGlhcnkgY2xvY2sK
PiArICAgICAgICAgICAgLSBjb25zdDogYXhpX2JyaWRnZSAjIEFYSSBicmlkZ2UgY2xvY2sKPiAr
ICAgICAgICByZXNldHM6Cj4gKyAgICAgICAgICBtaW5JdGVtczogOAo+ICsgICAgICAgICAgbWF4
SXRlbXM6IDgKPiArICAgICAgICByZXNldC1uYW1lczoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBwaXBlICMgUElQRSByZXNldAo+ICsgICAgICAgICAgICAtIGNv
bnN0OiBzbGVlcCAjIFNsZWVwIHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHN0aWNreSAj
IENvcmUgc3RpY2t5IHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9tICMgQVhJIG1h
c3RlciByZXNldAo+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfcyAjIEFYSSBzbGF2ZSByZXNl
dAo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhaGIgIyBBSEIgcmVzZXQKPiArICAgICAgICAgICAg
LSBjb25zdDogYXhpX21fc3RpY2t5ICMgQVhJIG1hc3RlciBzdGlja3kgcmVzZXQKPiArICAgICAg
ICAgICAgLSBjb25zdDogYXhpX3Nfc3RpY2t5ICMgQVhJIHNsYXZlIHN0aWNreSByZXNldAo+ICsK
PiAgICAtIGlmOgo+ICAgICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4g
QEAgLTUwMyw2ICs1MzcsNyBAQCBhbGxPZjoKPiAgICAgICAgICAgICAgICBlbnVtOgo+ICAgICAg
ICAgICAgICAgICAgLSBxY29tLHBjaWUtYXBxODA2NAo+ICAgICAgICAgICAgICAgICAgLSBxY29t
LHBjaWUtaXBxNDAxOQo+ICsgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxNTAxOAo+ICAg
ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA2NAo+ICAgICAgICAgICAgICAgICAgLSBx
Y29tLHBjaWUtaXBxODA2NHYyCj4gICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDc0
Cj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
