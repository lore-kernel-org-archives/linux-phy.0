Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C14C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbeYtOXAf+INXw4YdMc8vWXzB9g9X7GxAEuyn9imQa8=; b=QWDBdf8s3hqOpP
	R0T1VMESJPPRFkBj/PaDVPCYPWcC3WdDVSeeNZSF1QC1WUoOCdgF2H5CSMDBImQ5bP3NW5aORzrWW
	uIURRkGpYz1n6NCe5SykTsoPLsIn1l9LqDgyCj3szDHItxolj+OsCsaqkr6M/+thJzfAVk03kiWHL
	IQKl9bwjcFzhcoi86NZL6ZsgV9NAb2mM1T79pFtmSWfFRqMkV6tqmYLFjOGTy/AML0eB20XVjT1+i
	Rh3g1TZ9bcT/m8aEb13DyigHp4bzBbtemv9i7xAL/WmZ5yz9t6KTrmKsbluyEfcJOlFea7XNsGm3M
	vRcNoOUmqMv7Bia6hZzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPjH-00000004kEy-46l2;
	Tue, 18 Mar 2025 05:43:07 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPjG-00000004kEY-2ebM
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:43:07 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-224341bbc1dso96205395ad.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276585; x=1742881385; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FEoinY9MBp6fBxPU4owelu4oiM4ylGd59Qy+F2Dob3M=;
        b=bKpHvwNdZI2Symdhqmmb3PetbnjMtXsIZuLTxs2ydeSC11wMWkWbosStkbR8jhZkmt
         +loLjvtOI6d4g6iEdIWZWECO8Vym82dbe4st5W5Mj3yc8VKSqSBiWtyb+PZvTuc1GPBs
         A4jIcADeBTCIGpL/itdeSoMXOG/weXLpYxbyuHWc6WWHZOunBlmDuEpS/8/t0Rn9cBzo
         BNQhGoHHj4H1w7iBSR7PDbVteHH+KXrp33j5rBlron+bWlplEL+cfOk67+941pP5lVMl
         g1lfFms13TJrJc2BY9Y5igvhHmFxQmZLX9ijZBm8ffgpyZvriADycdunr0aYkkZxrPGR
         aJxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276585; x=1742881385;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FEoinY9MBp6fBxPU4owelu4oiM4ylGd59Qy+F2Dob3M=;
        b=mnH9JH0quhIBMoS1cQNAcwwGuynrQD86a5hzoUpf/fyy162XQZ3WYFwB+ie1VGqDsF
         6StFwC6GfSah9GXP6cNdMvo9UgosHfBWL3bncPijK3/Bn5KLtc/jKVSDHtf9386Fof8t
         fZhRML+Z+iIxgkuqqOHPNMfgUVZ8+xa1MvSfEASkKDAC5xgQpZuqLCwc5RX+GZpzPDkJ
         3zbXZU+kofueV5ExxxN3fmDL5Q+RmuIa7j6/TT0wohE5lccItToe/5HN5Tz31Xuc0qG8
         q3pmXC2PR1mrsVD3FUlc/WcBHriPvsRJAo4H1Tuj/yUVVC/DNbad3nYXPICJii9512Si
         6sjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD3hJIIpsJN1AxC6+HpE3/QA/JhbR0PIQDeMPOnk1hekh5zG4Oblnb02VPlcoxWtHG7es9TUJSGN4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6CiLGgcJPZ0DMiWWvKNoSnvk7VoQNZ7q3Yrow1NMNA/IBi86E
	TTOhrpuLsJ/idc6AVQCErDrAjOUk5Fg8WIiyfaqfvG0YCXBy+UFF9ol41S8Ltznqql/bBmiW1HQ
	=
X-Gm-Gg: ASbGnct6pVxrUX4m9QeTxvc3n//Q9t3bO8JfJ2fpKpio7vDr7ThL04m17ylJY5CZC5t
	8dSbVUoJyfpeg70b9DupWAJ2ni4knuPajI5mlpAigohXl2g8OjVexYBsQxvmfx2j9xLIOyudK5h
	5p8mcYpfpJ9QtVUlYBaTEQSYKPuo5b3B79TySNUq46Jvu3PEAmnweOPcCAt8oYCU1lzWXScQbYo
	Rx1fsdf0LECM2njqJUKsaE0oHT+bxH6gwDDSb65KLL5K9ekuL7C5DLim0nhKlLNc0gnH2voZhPn
	rP32K87xte8toEqbkUbuE1OUYh08GyvFTbNymtgZltqngQu5kbwVEQe+
X-Google-Smtp-Source: AGHT+IHFAYycRh8yAvQ6rzKtJ7IEEozCZPfvduhinevYL/RlGjWqSKDVBSpP0w/WLSUpzr4TkOvmSw==
X-Received: by 2002:a05:6a00:98f:b0:730:7600:aeab with SMTP id d2e1a72fcca58-7375723f9afmr2788650b3a.13.1742276585611;
        Mon, 17 Mar 2025 22:43:05 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711578a67sm8596953b3a.78.2025.03.17.22.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:43:05 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:12:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/8] arm64: dts: qcom: qcs8300: enable pcie0 interface
Message-ID: <20250318054258.roq5zifhqfkjge4e@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_224306_675924_819D098C 
X-CRM114-Status: GOOD (  12.52  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MzE6MDFQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGNvbmZpZ3VyYXRpb25zIGluIGRldmljZXRyZWUgZm9yIFBDSWUwLCBib2FyZCBy
ZWxhdGVkIGdwaW9zLAo+IFBNSUMgcmVndWxhdG9ycywgZXRjLgo+IAo+IFJldmlld2VkLWJ5OiBL
b25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogWml5dWUgWmhhbmcgPHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+CgpXaXRoIHN1Ympl
Y3QgY2hhbmdlIG1lbnRpb25lZCBieSBEbWl0cnksCgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAt
LS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMgfCA0MCArKysr
KysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC1yaWRlLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4MzAwLXJpZGUuZHRzCj4gaW5kZXggYjVj
OWY4OWIzNDM1Li5jM2ZlM2I5OGIxYjYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3FjczgzMDAtcmlkZS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
cWNzODMwMC1yaWRlLmR0cwo+IEBAIC0yODUsNiArMjg1LDIzIEBAIHF1ZXVlMyB7Cj4gIAl9Owo+
ICB9Owo+ICAKPiArJnBjaWUwIHsKPiArCXBlcnN0LWdwaW9zID0gPCZ0bG1tIDIgR1BJT19BQ1RJ
VkVfTE9XPjsKPiArCXdha2UtZ3Bpb3MgPSA8JnRsbW0gMCBHUElPX0FDVElWRV9ISUdIPjsKPiAr
Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUwX2RlZmF1bHRfc3RhdGU+Owo+ICsJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiArCj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmcGNp
ZTBfcGh5IHsKPiArCXZkZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19sNmE+Owo+ICsJdmRkYS1wbGwt
c3VwcGx5ID0gPCZ2cmVnX2w1YT47Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsK
PiAgJnF1cHYzX2lkXzAgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+IEBAIC0zMTAsNiAr
MzI3LDI5IEBAICZzZXJkZXMwIHsKPiAgfTsKPiAgCj4gICZ0bG1tIHsKPiArCXBjaWUwX2RlZmF1
bHRfc3RhdGU6IHBjaWUwLWRlZmF1bHQtc3RhdGUgewo+ICsJCXdha2UtcGlucyB7Cj4gKwkJCXBp
bnMgPSAiZ3BpbzAiOwo+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiArCQkJZHJpdmUtc3RyZW5n
dGggPSA8Mj47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+ICsKPiArCQljbGtyZXEtcGlu
cyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzEiOwo+ICsJCQlmdW5jdGlvbiA9ICJwY2llMF9jbGtyZXEi
Owo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPiArCQkJYmlhcy1wdWxsLXVwOwo+ICsJCX07
Cj4gKwo+ICsJCXBlcnN0LXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW8yIjsKPiArCQkJZnVuY3Rp
b24gPSAiZ3BpbyI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+ICsJCQliaWFzLXB1bGwt
ZG93bjsKPiArCQl9Owo+ICsJfTsKPiArCj4gIAlldGhlcm5ldDBfZGVmYXVsdDogZXRoZXJuZXQw
LWRlZmF1bHQtc3RhdGUgewo+ICAJCWV0aGVybmV0MF9tZGM6IGV0aGVybmV0MC1tZGMtcGlucyB7
Cj4gIAkJCXBpbnMgPSAiZ3BpbzUiOwo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
