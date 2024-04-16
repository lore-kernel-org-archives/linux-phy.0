Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F310DC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 21:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRnDZb3IIlsb53KKNyQBGbOV4oqWFn3wcNeQbpgdUSM=; b=RZqlJa6M6npDbT
	tzp0NuUTse43kwhkLnkAZNLYCvEz2IwAZhbhLWauAXUXz7iHlt7hbABXb86P65cu9AKOcuoJldZEj
	xm4VLh30dZh4W2S4U91RkU/+4kZNvmTsfKWIAXgA60F5ZsSkXJOyfljtTp4UIBP5A26v47A83I9o7
	5VYYlzKK9tPlTolAnbWunpZXPvermlyYTTXQsalKaa+jR/g0z6k27EKizS1muIf7cBA9mor1UVm8a
	8B5WIo4FuCq0FwxquHUF22tYrYGRRVTcOGBRPS7xt1IRPKO5pPlC5HWggDVXtV5W7MmKxCAT5e7pz
	XsKK1a1eIXtHaMLyG1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwqJA-0000000DrpA-0zlp;
	Tue, 16 Apr 2024 21:25:40 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwqJ5-0000000DrnL-0ldG
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 21:25:39 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ea2ac0c217so82188a34.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 14:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713302732; x=1713907532; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WP41hdtXelUpwcI0aj34hpgq/euzrgZ/XyTOcECec+8=;
        b=FZxU2gAf6urmb9sEXq0kcEMwrOtJWELu7GvMgl4IDHCj4IUpzGgi4fJc4Wtj8oFljY
         enlWGG2cL3acuBrhtg7F558gqZzFPz4KbdfOxru3Ls06+gJoJLSDYwNuamV2FItZGLgl
         JmMm49VO9u/Puo/06SiNknXshQKFgiSeaKHZYnz5ZugpgxYU9UjQPBkfSN4J5S/PAKu4
         c/bD6VdBbpgCskhPIrPRsKoBCGzekP20pxjyEe4u/yu6uO23/qaA8x2QEnrTtFemPMLD
         bVdRyU4a10/Ic5V8xhhJxHIcqKK/QVA0mVaLDVe9dW7NiO9KZLfg5j557EP9aqCoexO7
         iQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713302732; x=1713907532;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WP41hdtXelUpwcI0aj34hpgq/euzrgZ/XyTOcECec+8=;
        b=a8OmY9GiOTkr1qpGHVFY6FlESGLCILb4wkID4Z/p4D0P7rhtnf1nwm+AksJz7j+uCK
         BZ0l5qeIrfumZQZhuSNB16RhLw/3uiBU3KcuieIucdttcGdAZrueMGwylh+6XFellyiV
         dPsVnstZg3BwtA+uojZqdcP4ypQgX5rqrb7/FQioBHB3eHBTQD1Pg0DugLhEy/xtgKav
         SKXnosDGl+E10EY2JVfYYkDT8boYlclG6HPKuklE348ggUhfGTJEKV6a53JhQKamoOhB
         3fWq76UdeZTlngr/QH2hFaszQz3+YZHiB4iZb0Ea+NucoJI1+vywwOy+2T+caFAUtJ/s
         vRSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGxIjTzsI/yzHEFclB4DzqwCpud3LxXVHaVqmcsiQFmBJ8Z2kQolL6E8mNhZ6H6PMw5tiR14ei5JmoHkm5wcOBMVnvJry6mjo+xRKXkw==
X-Gm-Message-State: AOJu0Yz6icu2zBIk3pD6lsUokV9CKUwPhcGb1+vItQ+YVDTWy+mdmOSx
	Ih386OugklHv7epRXB09OGKIrh1Gwvzbz8oweRnKMas6NFPR/Ow69Nq/jxE3UY4=
X-Google-Smtp-Source: AGHT+IEfDmYbKj3xvgd6fPThcAdO/OKuBg0B8gvdcmmOULb0La1dI1vNl5sTDa1HjyWzJle9WGCrLQ==
X-Received: by 2002:a05:6830:487b:b0:6eb:96b4:7018 with SMTP id dx27-20020a056830487b00b006eb96b47018mr429271otb.11.1713302731884;
        Tue, 16 Apr 2024 14:25:31 -0700 (PDT)
Received: from [192.168.7.110] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id eg7-20020a0568306f8700b006eb84466e68sm793940otb.55.2024.04.16.14.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 14:25:31 -0700 (PDT)
Message-ID: <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
Date: Tue, 16 Apr 2024 16:25:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2
 PHY
Content-Language: en-US
From: "Alex G." <mr.nuke.me@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
In-Reply-To: <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_142535_322411_D128C2D3 
X-CRM114-Status: GOOD (  22.13  )
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

SGkgRG1pdHJ5LAoKT24gNC8xNS8yNCAxNjoyNSwgbXIubnVrZS5tZUBnbWFpbC5jb20gd3JvdGU6
Cj4gCj4gCj4gT24gNC8xNS8yNCAxNToxMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24g
TW9uLCAxNSBBcHIgMjAyNCBhdCAyMToyMywgQWxleGFuZHJ1IEdhZ25pdWMgPG1yLm51a2UubWVA
Z21haWwuY29tPiAKPj4gd3JvdGU6Cj4+Pgo+Pj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBnZW4zeDIg
UENJZSBQSFkgb24gSVBROTU3NCwgcG9ydGVkIGZvcm0gZG93bnN0cmVhbQo+Pj4gNS40IGtlcm5l
bC4gT25seSB0aGUgc2VyZGVzIGFuZCBwY3NfbWlzYyB0YWJsZXMgYXJlIG5ldywgdGhlIG90aGVy
cwo+Pj4gYmVpbmcgcmV1c2VkIGZyb20gSVBRODA3NCBhbmQgSVBRNjAxOCBQSFlzLgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRydSBHYWduaXVjIDxtci5udWtlLm1lQGdtYWlsLmNvbT4K
Pj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuY8Kg
wqDCoMKgwqAgfCAxMzYgKysrKysrKysrKysrKysrKystCj4+PiDCoCAuLi4vcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1wY3MtcGNpZS12NS5owqDCoCB8wqAgMTQgKysKPj4+IMKgIDIgZmlsZXMg
Y2hhbmdlZCwgMTQ5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+Cj4+IFtza2lw
cGVkXQo+Pgo+Pj4gQEAgLTI0NDgsNyArMjU0Miw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBxcGh5
X2NscmJpdHModm9pZCBfX2lvbWVtIAo+Pj4gKmJhc2UsIHUzMiBvZmZzZXQsIHUzMiB2YWwpCj4+
Pgo+Pj4gwqAgLyogbGlzdCBvZiBjbG9ja3MgcmVxdWlyZWQgYnkgcGh5ICovCj4+PiDCoCBzdGF0
aWMgY29uc3QgY2hhciAqIGNvbnN0IHFtcF9wY2llcGh5X2Nsa19sW10gPSB7Cj4+PiAtwqDCoMKg
wqDCoMKgICJhdXgiLCAiY2ZnX2FoYiIsICJyZWYiLCAicmVmZ2VuIiwgInJjaG5nIiwgInBoeV9h
dXgiLAo+Pj4gK8KgwqDCoMKgwqDCoCAiYXV4IiwgImNmZ19haGIiLCAicmVmIiwgInJlZmdlbiIs
ICJyY2huZyIsICJwaHlfYXV4IiwgCj4+PiAiYW5vYyIsICJzbm9jIgo+Pgo+PiBBcmUgdGhlIE5v
QyBjbG9ja3MgcmVhbGx5IG5lY2Vzc2FyeSB0byBkcml2ZSB0aGUgUEhZPyBJIHRoaW5rIHRoZXkg
YXJlCj4+IHVzdWFsbHkgY29ubmVjdGVkIHRvIHRoZSBjb250cm9sbGVycywgbm90IHRoZSBQSFlz
Lgo+IAo+IFRoZSBzeXN0ZW0gd2lsbCBoYW5nIGlmIHRoZXNlIGNsb2NrcyBhcmUgbm90IGVuYWJs
ZWQuIFRoZXkgYXJlIGFsc28gCj4gYXR0YWNoZWQgdG8gdGhlIFBIWSBpbiB0aGUgUUNBIDUuNCBk
b3duc3RyZWFtIGtlcm5lbC4KPiAKVGhleSBhcmUgbmFtZWQgImFub2NfbGFuZSIsIGFuZCAic25v
Y19sYW5lIiBpbiB0aGUgZG93bnN0cmVhbSBrZXJuZWwuIApXb3VsZCB5b3UgbGlrZSBtZSB0byB1
c2UgdGhlc2UgbmFtZXMgaW5zdGVhZD8KCmU+Pj4gwqAgfTsKPj4+Cj4+PiDCoCAvKiBsaXN0IG9m
IHJlZ3VsYXRvcnMgKi8KPj4+IEBAIC0yNDk5LDYgKzI1OTMsMTYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBxbXBfcGNpZV9vZmZzZXRzIAo+Pj4gcW1wX3BjaWVfb2Zmc2V0c192NHgxID0gewo+Pj4g
wqDCoMKgwqDCoMKgwqDCoCAucnjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAweDA0MDAsCj4+
PiDCoCB9Owo+Pj4KPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9wY2llX29mZnNldHMgcW1w
X3BjaWVfb2Zmc2V0c19pcHE5NTc0ID0gewo+Pj4gK8KgwqDCoMKgwqDCoCAuc2VyZGVzwqDCoMKg
wqDCoMKgwqDCoCA9IDAsCj4+PiArwqDCoMKgwqDCoMKgIC5wY3PCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgID0gMHgxMDAwLAo+Pj4gK8KgwqDCoMKgwqDCoCAucGNzX21pc2PCoMKgwqDCoMKgwqAgPSAw
eDE0MDAsCj4+PiArwqDCoMKgwqDCoMKgIC50eMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IDB4
MDIwMCwKPj4+ICvCoMKgwqDCoMKgwqAgLnJ4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gMHgw
NDAwLAo+Pj4gK8KgwqDCoMKgwqDCoCAudHgywqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IDB4MDYw
MCwKPj4+ICvCoMKgwqDCoMKgwqAgLnJ4MsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAweDA4MDAs
Cj4+PiArfTsKPj4+ICsKPj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BjaWVfb2Zmc2V0
cyBxbXBfcGNpZV9vZmZzZXRzX3Y0eDIgPSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIC5zZXJkZXPC
oMKgwqDCoMKgwqDCoMKgID0gMCwKPj4+IMKgwqDCoMKgwqDCoMKgwqAgLnBjc8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPSAweDBhMDAsCj4+PiBAQCAtMjcyOCw2ICsyODMyLDMzIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgCj4+PiBzbTgyNTBfcW1wX2dlbjN4MV9wY2llcGh5X2Nm
ZyA9IHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgLnBoeV9zdGF0dXPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPSBQSFlTVEFUVVMsCj4+PiDCoCB9Owo+Pj4KPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IHFtcF9waHlfY2ZnIGlwcTk1NzRfcGNpZXBoeV9nZW4zeDJfY2ZnID0gewo+Pj4gK8KgwqDCoMKg
wqDCoCAubGFuZXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gMiwKPj4+ICsK
Pj4+ICvCoMKgwqDCoMKgwqAgLm9mZnNldHPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PSAmcW1wX3BjaWVfb2Zmc2V0c19pcHE5NTc0LAo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCAudGJs
cyA9IHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5zZXJkZXPCoMKgwqDCoMKg
wqDCoMKgID0gaXBxOTU3NF9nZW4zeDJfcGNpZV9zZXJkZXNfdGJsLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLnNlcmRlc19udW3CoMKgwqDCoCA9IAo+Pj4gQVJSQVlfU0laRShp
cHE5NTc0X2dlbjN4Ml9wY2llX3NlcmRlc190YmwpLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLnR4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gaXBxODA3NF9wY2llX2dlbjNf
dHhfdGJsLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLnR4X251bcKgwqDCoMKg
wqDCoMKgwqAgPSBBUlJBWV9TSVpFKGlwcTgwNzRfcGNpZV9nZW4zX3R4X3RibCksCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAucnjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBp
cHE2MDE4X3BjaWVfcnhfdGJsLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLnJ4
X251bcKgwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKGlwcTYwMThfcGNpZV9yeF90YmwpLAo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLnBjc8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPSBpcHE2MDE4X3BjaWVfcGNzX3RibCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC5wY3NfbnVtwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKGlwcTYwMThfcGNpZV9wY3Nf
dGJsKSwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5wY3NfbWlzY8KgwqDCoMKg
wqDCoCA9IGlwcTk1NzRfZ2VuM3gyX3BjaWVfcGNzX21pc2NfdGJsLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLnBjc19taXNjX251bcKgwqAgPSAKPj4+IEFSUkFZX1NJWkUoaXBx
OTU3NF9nZW4zeDJfcGNpZV9wY3NfbWlzY190YmwpLAo+Pj4gK8KgwqDCoMKgwqDCoCB9LAo+Pj4g
K8KgwqDCoMKgwqDCoCAucmVzZXRfbGlzdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IGlwcTgw
NzRfcGNpZXBoeV9yZXNldF9sLAo+Pj4gK8KgwqDCoMKgwqDCoCAubnVtX3Jlc2V0c8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA9IEFSUkFZX1NJWkUoaXBxODA3NF9wY2llcGh5X3Jlc2V0X2wpLAo+
Pj4gK8KgwqDCoMKgwqDCoCAudnJlZ19saXN0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBO
VUxMLAo+Pj4gK8KgwqDCoMKgwqDCoCAubnVtX3ZyZWdzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPSAwLAo+Pj4gK8KgwqDCoMKgwqDCoCAucmVnc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA9IHBjaWVwaHlfdjRfcmVnc19sYXlvdXQsCj4+Cj4+IFNvLCBpcyBpdCB2NCBv
ciB2NT8KPiAKPiBQbGVhc2UgZ2l2ZSBtZSBhIGRheSBvciBzbyB0byBnbyBvdmVyIG15IG5vdGVz
IGFuZCBnaXZlIHlvdSBhIG1vcmUgCj4gY29oZXJlbnQgZXhwbGFuYXRpb24gb2Ygd2h5IHRoaXMg
dmVyc2lvbmluZyB3YXMgY2hvc2VuLiBJIGFtIG9ubHkgCj4gd29ya2luZyBmcm9tIHRoZSBRQ0Eg
NS40IGRvd25zdHJlYW0gc291cmNlcy4gSSBkb24ndCBoYXZlIGFueSAKPiBkb2N1bWVudGF0aW9u
IGZvciB0aGUgc2lsaWNvbgoKVGhlIGRvd25zdHJlYW0gUUNBIGtlcm5lbCB1c2VzIHRoZSBzYW1l
IHRhYmxlIGZvciBpcHE2MDE4LCBpcHE4MDc0LWdlbjMsIAphbmQgaXBxOTU3NC4gSXQgaXMgbmFt
ZWQgImlwcV9wY2llcGh5X2dlbjNfcmVnc19sYXlvdXQiLiBUaHVzLCBpdCBtYWRlIApzZW5zZSB0
byB1c2UgdGhlIHNhbWUgdXBzdHJlYW0gdGFibGUgZm9yIGlwcTk1NzQsICJwY2llcGh5X3Y0X3Jl
Z3NfbGF5b3V0Ii4KCkFzIGZhciBhcyB0aGUgcmVnaXN0ZXIgdGFibGVzIGdvLCB0aGUgcGNzL3Bj
c19taXNjIGFyZSBzcXVhc2hlZCBpbnRvIHRoZSAKc2FtZSB0YWJsZSBpbiB0aGUgZG93bnN0cmVh
bSA1LjQga2VybmVsLiBJIHdhcyBhYmxlIHRvIHNlcGFyYXRlIHRoZSB0d28gCnRhYmxlcyBiZWNh
dXNlIHRoZSBwY3NfbWlzYyByZWdpc3RlcnMgd2VyZSBkZWZpbmVkIHdpdGggYW4gb2Zmc2V0IG9m
IAoweDQwMC4gRm9yIGV4YW1wbGU6CgovKiBRTVAgVjIgUEhZIGZvciBQQ0lFIGdlbjMgMiBMYW5l
IHBvcnRzIC0gUENTIE1pc2MgcmVnaXN0ZXJzICovCiNkZWZpbmUgUENTX1BDSUVfWDJfUE9XRVJf
U1RBVEVfQ09ORklHMiAgICAgICAgICAgICAgICAgICAgMHg0MGMKI2RlZmluZSBQQ1NfUENJRV9Y
Ml9QT1dFUl9TVEFURV9DT05GSUc0ICAgICAgICAgICAgICAgICAgICAweDQxNAojZGVmaW5lIFBD
U19QQ0lFX1gyX0VORFBPSU5UX1JFRkNMS19EUklWRSAgICAgICAgICAgICAgICAgIDB4NDIwCiNk
ZWZpbmUgUENTX1BDSUVfWDJfTDFQMV9XQUtFVVBfRExZX1RJTUVfQVVYQ0xLX0wgICAgICAgICAg
MHg0NDQKI2RlZmluZSBQQ1NfUENJRV9YMl9MMVAxX1dBS0VVUF9ETFlfVElNRV9BVVhDTEtfSCAg
ICAgICAgICAweDQ0OAojZGVmaW5lIFBDU19QQ0lFX1gyX0wxUDJfV0FLRVVQX0RMWV9USU1FX0FV
WENMS19MICAgICAgICAgIDB4NDRjCiNkZWZpbmUgUENTX1BDSUVfWDJfTDFQMl9XQUtFVVBfRExZ
X1RJTUVfQVVYQ0xLX0ggICAgICAgICAgMHg0NTAKLi4uCgpIZXJlLCBRUEhZX1Y0X1BDU19QQ0lF
X1BPV0VSX1NUQVRFX0NPTkZJRzIgPSAweGMgd291bGQgYmUgY29ycmVjdCwgCmFzc3VtaW5nIGEg
cGNzX21pc2Mgb2Zmc2V0IG9mIDB4NDAwLiBIb3dldmVyLCBzdGFydGluZyB3aXRoIApFTkRQT0lO
VF9SRUZDTEtfRFJJVkUsIHRoZSByZWdpc3RlciB3b3VsZCBiZSAKUVBIWV9WNF9QQ1NfUENJRV9F
TkRQT0lOVF9SRUZDTEtfRFJJVkUgPSAweDFjLiBPdXIgb2Zmc2V0cyBhcmUgb2ZmLWJ5IDB4NC4K
ClRoZSBleGlzdGluZyBWNSBvZmZzZXRzLCBvbiB0aGUgb3RoZXIgaGFuZCwgd2VyZSBhbGwgY29y
cmVjdC4gRm9yIHRoaXMgCnJlYXNvbiwgSSBjb25zaWRlcmVkIHRoYXQgVjUgaXMgdGhlIG1vc3Qg
bGlrZWx5IHBsYWNlIHRvIGFkZCB0aGUgbWlzc2luZyAKUENTIG1pc2MgZGVmaW5pdGlvbnMuCgpJ
cyB0aGlzIGV4cGxhbmF0aW9uIHN1ZmZpY2llbnRseSBjb252aW5jaW5nPyBXaGVyZSBkb2VzIHRo
ZSB2NC92NSBzY2hlbWUgCmluIHVwc3RyZWFtIGtlcm5lbCBvcmlnaW5hdGU/CgpBbGV4CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
