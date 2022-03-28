Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88495C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 09:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cASYSJssXfQznDpb75FrbeA15armFrBnKPe8L+VQXys=; b=y+dkaoDrfjiLuT
	2G/ZB96izHWPLPSZOrLHeag7UFCMUrIGPUJNtn/+Kma7yMeX290nxFzcMqrJHvqieOIfoX9YuMjk+
	PjbqKtK0upUmResnutunAlWxablV/QvFGMRzBDQDg4fad6MUj1MOsiMKbf6GxWOqcMb3dEURZkOJd
	x4DZjF5fUOuP3K7CXLt1JaUH8ehLPowaXTSVhRrbW4IbyFcaQlTzjLwvN00N43c8o3kzJLuk29yCW
	V7z1pnn+eazZDMoj0qLX0CCWyfjvQN1tRp23tY0P/hDrFzLt1liHV4g+8UqLMHew7Z7WpLeL+xQL1
	0lb92bGyzyTWyIwvdDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlpA-0083eO-04; Mon, 28 Mar 2022 09:38:08 +0000
Received: from mail-ej1-f52.google.com ([209.85.218.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlp7-0083dD-4R
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 09:38:06 +0000
Received: by mail-ej1-f52.google.com with SMTP id a8so27345348ejc.8
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 02:38:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=DrPaEMfDat9GUeQRRHhxK3bi9z/y1g5nfYZpdXBeJh0=;
 b=8KDyEgjgKKLxe/rqnrUtQC0/2IWK8oUi088p5AlSI4V8g5RjGJsdup4REqwEuKMnIn
 UNU71EzuOi5w9p19nrsIHUrYnbOzFG0ZNCPpUml0T2tJ/vIFe+MFGFcJnLXtbVBbTCU0
 snHd62XbAZhixK4n9pHGCPn2WS6SJz53loEoNK8rFSeH2KSl+UtS75tABk7WfHqtltDv
 eh9sbW0eWUhKfAXjL62Uy6RXa8DBvzCuRwV2CPHKoaPo4Wj9puIdCMfGs9k49BNc++IJ
 Pm+sYT+eEvgMkmsWfRaBcYiqxawkWTeTEoyl5J62rVTbhXObvma7dPeNPCJUngHf3nQJ
 hLtA==
X-Gm-Message-State: AOAM530aTlueVmJYxZYmetndrssgPkHPHxroe52dpa6iyS//PjcHmcOU
 yurqgBHjBZvivkDuCDY/srg=
X-Google-Smtp-Source: ABdhPJwLsldpE5WWlbufSSBwZw6+SgXRr/UdYD3h5M6meozH4epky2mYxDMbkRWCkKh6Y8bzyTb+Yw==
X-Received: by 2002:a17:906:a046:b0:6b9:20c:47c1 with SMTP id
 bg6-20020a170906a04600b006b9020c47c1mr26357100ejb.615.1648460282232; 
 Mon, 28 Mar 2022 02:38:02 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 k12-20020aa7c38c000000b0041939d9ccd0sm6775331edq.81.2022.03.28.02.38.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 02:38:01 -0700 (PDT)
Message-ID: <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
Date: Mon, 28 Mar 2022 11:38:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p8>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_023805_208601_8F1F6B0C 
X-CRM114-Status: GOOD (  18.11  )
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

T24gMjgvMDMvMjAyMiAxMTowMiwg7J207JmV7ISdIHdyb3RlOgo+PiAtLS0tLS0tLS0gT3JpZ2lu
YWwgTWVzc2FnZSAtLS0tLS0tLS0KPj4gU2VuZGVyIDogS3J6eXN6dG9mIEtvemxvd3NracKgPGty
emtAa2VybmVsLm9yZz4KPj4gRGF0ZSA6IDIwMjItMDMtMjggMTY6MTIgKEdNVCs5KQo+PiBUaXRs
ZSA6IFJlOiBbUEFUQ0ggMC81XSBBZGQgc3VwcG9ydCBmb3IgQXhpcywgQVJUUEVDLTggUENJZSBk
cml2ZXIKPj4KPj4gT27CoDI4LzAzLzIwMjLCoDAzOjQ0LMKg7J207JmV7ISdwqB3cm90ZToKPj4+
IMKgVGhpc8Kgc2VyaWVzwqBwYXRjaGVzwqBpbmNsdWRlwqBuZXdsecKgUENJZcKgc3VwcG9ydMKg
Zm9ywqBBeGlzwqBBUlRQRUMtOMKgU29DLgo+Pj4gwqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBw
bGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmljYXRpb25zLgo+Pj4gwqBQQ0llwqBjb250cm9sbGVy
wqBkcml2ZXLCoGFuZMKgcGh5wqBkcml2ZXLCoGhhdmXCoGJlZW7CoG5ld2x5wqBhZGRlZC4KPj4+
IMKgVGhlcmXCoGlzwqBhbHNvwqBhwqBuZXfCoE1BSU5UQUlORVLCoGluwqB0aGXCoGFkZGl0aW9u
wqBvZsKgcGh5wqBkcml2ZXIuCj4+PiDCoFBDSWXCoGNvbnRyb2xsZXLCoGlzwqBkZXNpZ25lZMKg
YmFzZWTCoG9uwqBEZXNpZ24tV2FyZcKgUENJZcKgY29udHJvbGxlcsKgSVAKPj4+IMKgYW5kwqBQ
Q0llwqBwaHnCoGlzwqBkZXNpbmdlZMKgYmFzZWTCoG9uwqBTQU1TVU5HwqBQSFnCoElQLgo+Pj4g
wqBJdMKgYWxzb8KgaW5jbHVkZXPCoG1vZGlmaWNhdGlvbnPCoHRvwqB0aGXCoERlc2lnbi1XYXJl
wqBjb250cm9sbGVywqBkcml2ZXLCoHRvwqAKPj4+IMKgcnVuwqB0aGXCoDY0Yml0LWJhc2VkwqBB
UlRQRUMtOMKgUENJZcKgY29udHJvbGxlcsKgZHJpdmVyLgo+Pj4gwqBJdMKgY29uc2lzdHPCoG9m
wqA2wqBwYXRjaGVzwqBpbsKgdG90YWwuCj4+PiDCoAo+Pj4gwqBUaGlzwqBzZXJpZXPCoGhhc8Kg
YmVlbsKgdGVzdGVkwqBvbsKgQVhJU8KgU1fCoGJyaW5nLXVwwqBib2FyZMKgCj4+PiDCoHdpdGjC
oEFSVFBFQy04wqBjaGlwc2V0Lgo+Pgo+PiBZb3XCoGxvc3TCoG1haWzCoHRocmVhZGluZy7CoFRo
aXPCoG1ha2VzwqByZWFkaW5nwqB0aGlzwqBkaWZmaWN1bHTCoGZvcsKgdXMuwqBQbHVzCj4+IHlv
dcKgc2VudMKgc29tZXRoaW5nwqBub24tYXBwbGljYWJsZcKgKHBhdGNowqAjMikswqBzb8KgcGxl
YXNlwqByZXNlbmQuCj4+Cj4+IEtub3dpbmfCoHJlY2VudMKgU2Ftc3VuZ8KgcmVsdWN0YW5jZcKg
dG/CoGV4dGVuZMKgZXhpc3RpbmfCoGRyaXZlcnPCoGFuZMKgYWx3YXlzCj4+IGR1cGxpY2F0ZSzC
oHBsZWFzZcKgcHJvdmlkZcKgZGVzY3JpcHRpb24vYW5hbHlzaXPCoHdoecKgdGhpc8KgZHJpdmVy
wqBjYW5ub3TCoGJlCj4+IGNvbWJpbmVkwqB3aXRowqBleGlzdGluZ8KgZHJpdmVyLsKgVGhlwqBh
bnN3ZXLCoGxpa2U6wqB3ZcKgbmVlZMKgc2V2ZXJhbMKgc3lzY29uCj4+IGJlY2F1c2XCoHdlwqBk
b8Kgbm90wqBpbXBsZW1lbnTCoG90aGVywqBmcmFtZXdvcmtzwqAobGlrZcKgaW50ZXJjb25uZWN0
KcKgYXJlwqBub3QKPj4gdmFsaWQuCj4+Cj4+IEJlc3TCoHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+
IAo+IEhlbGxvLCBLcnp5c3p0b2YKPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3Lgo+IAo+IHBhdGNo
IzIgd2FzIHNlbnQgdG8gdGhlIHdyb25nIGZvcm1hdCBzbyBzZW50IGFnYWluLgo+IFNvcnJ5IGZv
ciBjYXVzaW5nIGNvbmZ1c2lvbi4KClRoZSBmaXJzdCBzZW5kaW5nIHdhcyBIVE1MLiBTZWNvbmQg
d2FzIGJyb2tlbiB0ZXh0LCBzbyBzdGlsbCBub3Qgd29ya2luZy4KClBsZWFzZSByZXNlbmQgZXZl
cnl0aGluZyB3aXRoIHByb3BlciB0aHJlYWRpbmcuCgoKPiBUaGlzIHBhdGNoIGlzIHNwZWNpYWxp
emVkIGluIEFydHBlYy04LCAKPiB0aGUgU29DIFBsYXRmb3JtIG9mIEF4aXMgQ29tbXVuaWNhdGlv
biwgYW5kIGlzIG5ld2x5IGFwcGxpZWQuCj4gU2luY2UgdGhlIHRhcmdldCBTb0MgcGxhdGZvcm0g
aXMgZGlmZmVyZW50IGZyb20gdGhlIGRyaXZlciBwcmV2aW91c2x5IAo+IHVzZWQgYnkgU2Ftc3Vu
ZywgaXQgaXMgZGlmZmljdWx0IHRvIG1lcmdlIHdpdGggdGhlIGV4aXN0aW5nIGRyaXZlci4KClJl
Y2VudGx5IEkgYWx3YXlzIHNhdyBzdWNoIGFuc3dlcnMgYW5kIHNvbWV0aW1lcyBpdCB3YXMgdHJ1
ZSwgc29tZXRpbWVzCm5vdC4gV2hhdCBpcyBleGFjdGx5IGRpZmZlcmVudD8KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
