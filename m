Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53F1C64ED6
	for <linux-phy@archiver.kernel.org>; Tue, 28 Feb 2023 08:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4iAvDPsUfn7WVdgO4mF18HFrOYtb/igjvqIZRYhPBQ=; b=0dvvBcNbmmLWxl
	6n15pvWoPtJ5YA3ntzPssUNo0r+6KJaDtv2l3I2Ht3j3SbLW+9CAO38s3FZTuzl5NqCH3zFgUEe9C
	jm+4oF8CTBCnSnKc1v2wEpNyf6ulffUaKfKpL73tegX/8lLV1iE/VzV0zdVOGQmoH4xSkHtNLaaM8
	mDENZNTlQMDIRDpZzmJ1PqfO79bnS+xGpfoH2F4xIguxuEU2h++FSfJH0yMtrkh3cuxIGj9zhQOOW
	EhTYnvvCkccn5I8jJzCnEzBlLJNkbCn1/phz4KE/W7HBAusxSkmu94xUttAcEDtVkzfw7xOMqcXac
	q9POU27r888e/r/6UH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvDw-00CMAk-70; Tue, 28 Feb 2023 08:20:36 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvDt-00CM8w-3C
	for linux-phy@lists.infradead.org; Tue, 28 Feb 2023 08:20:34 +0000
Received: by mail-pl1-x633.google.com with SMTP id i5so7889325pla.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Feb 2023 00:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QdzoaRyb5oCo6xd8IOQ9cPgW8ozAM6ednsqQltxzExs=;
        b=BqcRyaaKyWb9pCV5Cm430K4Z3cKN1oCziWGuAk0OAtJb1BHubwxttM0A1CLlc22g5y
         OlDS01J4tPW77VAsIdcNYhslc2gk08QtUzZJi102oYFwr/AvZgha3cjFOvqK7ShhGBqd
         1PiRf4gjCLnZLx+wtlryESe6Dp7+cDxpMUWHvuMPwDm7pMGBpXUI7AxxWQcXFJoJ1NUU
         v9HvQhfedglpGHNVw4GPitVlw4IzL2iWKNRjq+hANDacKYP7xIADtpTKeUhmacsSiyM+
         ucwJDE3UHK6HfkY847R64luJflvsXLK+e+wC0FwX8DSuaRW6Nbw9HDRcv4Q08a1DeGs1
         SQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QdzoaRyb5oCo6xd8IOQ9cPgW8ozAM6ednsqQltxzExs=;
        b=uFjIMCC0OnnlTPOTa5A6ly5WxgPbBJNCPrB4zMYqkub4JXjoSXpHSi1uQz9z5c4V/G
         MJuurGedqBes4ZDOVarCQ273+w9xILS+jWjGj/Oqg69zfzl1cgwy9G2ls9mmk8bhZLvs
         tYVAC6t3G/0M9MolblW62WsgEIDhrD2maFEfQktQK9+x0Iul6Az20SdN38AffOiSBexq
         v6Gyj/1QONprBqXTSznO8MEUJxr4laaLEzM/GumrW0FoRrQQfZiHWPsBMOcZPDzlMzTq
         39/Iu62wYNacId73Jea30AJeS1l8hRVxqwKwu5DKjZ35eVj0W2b0/R99tS+M8/d9zxwd
         lLPw==
X-Gm-Message-State: AO0yUKVFomZSSWmP62E8R+8XC8xV+9h3oETo58EYE4HqT/Tt7C8prV+H
	+phpNFtRoXKxNORhuH4QNHHZ
X-Google-Smtp-Source: AK7set/zVF+0d5ZD8zgYrUqh1wEePvj1EbD/gqma4J089vE1KIOxONhftRtPeMTHDGHwyS/kTrEOaw==
X-Received: by 2002:a17:90a:355:b0:237:9cc7:28a5 with SMTP id 21-20020a17090a035500b002379cc728a5mr2394542pjf.22.1677572426864;
        Tue, 28 Feb 2023 00:20:26 -0800 (PST)
Received: from thinkpad ([103.197.115.83])
        by smtp.gmail.com with ESMTPSA id k70-20020a638449000000b004b1fef0bf16sm5215067pgd.73.2023.02.28.00.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 00:20:26 -0800 (PST)
Date: Tue, 28 Feb 2023 13:50:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 02/13] dt-bindings: PCI: qcom: Add iommu properties
Message-ID: <20230228082021.GB4839@thinkpad>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-3-manivannan.sadhasivam@linaro.org>
 <20230227195535.GA749409-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230227195535.GA749409-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_002033_156120_F50F0685 
X-CRM114-Status: GOOD (  16.15  )
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

T24gTW9uLCBGZWIgMjcsIDIwMjMgYXQgMDE6NTU6MzVQTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gRnJpLCBGZWIgMjQsIDIwMjMgYXQgMDQ6Mjg6NTVQTSArMDUzMCwgTWFuaXZhbm5h
biBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gTW9zdCBvZiB0aGUgUENJZSBjb250cm9sbGVycyByZXF1
aXJlIGlvbW11IHN1cHBvcnQgdG8gZnVuY3Rpb24gcHJvcGVybHkuCj4gPiBTbyBsZXQncyBhZGQg
dGhlbSB0byB0aGUgYmluZGluZy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4g
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgfCA1
ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlh
bWwKPiA+IGluZGV4IGEzNjM5OTIwZmNiYi4uZjQ4ZDA3OTJhYTU3IDEwMDY0NAo+ID4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+ID4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFt
bAo+ID4gQEAgLTY0LDYgKzY0LDExIEBAIHByb3BlcnRpZXM6Cj4gPiAgCj4gPiAgICBkbWEtY29o
ZXJlbnQ6IHRydWUKPiA+ICAKPiA+ICsgIGlvbW11czoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+
ICsKPiA+ICsgIGlvbW11LW1hcDogdHJ1ZQo+ID4gKwo+IAo+IEkgdGhpbmsgYm90aCBwcm9wZXJ0
aWVzIHRvZ2V0aGVyIGRvZXNuJ3QgbWFrZSBzZW5zZSB1bmxlc3MgdGhlIFBDSSBob3N0IAo+IGl0
c2VsZiBkb2VzIERNQSBpbiBhZGRpdGlvbiB0byBQQ0kgYnVzIGRldmljZXMgZG9pbmcgRE1BLgo+
IAoKSG93PyBXaXRoICJpb21tdXMiLCB3ZSBzcGVjaWZ5IHRoZSBTTVIgbWFzayBhbG9uZyB3aXRo
IHRoZSBzdGFydGluZyBTSUQgYW5kIHdpdGgKaW9tbXUtbWFwLCB0aGUgaW5kaXZpZHVhbCBTSUQ8
LT5CREYgbWFwcGluZyBpcyBzcGVjaWZpZWQuIFRoaXMgaGFzIG5vdGhpbmcgdG8KZG8gd2l0aCBo
b3N0IERNQSBjYXBhYmlsaXRpZXMuCgpUaGFua3MsCk1hbmkKCj4gUm9iCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
