Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D5FCC43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 12:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TdpQrDpJUdgCWWCMrOZkzdkDgu//AnpQkYDZHnT7CY=; b=kkb3+nLieVeYHV
	LVkapfW+RNV0nAkgnlo+eywNS+99iHvi3ZADJZoWIDNy1JqSWDMG1Uj3Q+K1bkUIquJWWc1B9UMln
	ioYT9giH5w9y7Ip6SaN59fJxRJ5THc7JCDsC1V57hwQqNbaOsQ6AAO7jTsv7v9TqmqI0IYKt0cvws
	eWKNnMwSwyB1grb/R2GLuYx46l/MTRSh3Ve7OLE5NI8uv2D03Iu08j1jF9q5iBnit2f31LPumQ6ea
	e2Ofa8QGm1GZcdQHi3BUeKodypWC2bED8WGAlEB+xSOq0qoIqb69nNNR83N0NaxxfmKgstLgFaGUd
	kMt3yo5Ae8WyO3MsKqJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3dF1-005PBf-1Y; Tue, 21 Jun 2022 12:44:23 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3dEx-005P9h-Ud
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 12:44:21 +0000
Received: by mail-ed1-x532.google.com with SMTP id es26so17491774edb.4
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 05:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uc5jJq0YvTzf8BEPMUgKkXPq5VOMLMXDxdKkAuvbItk=;
        b=o51LpaWxCfqFP3YFV66q9y40X5oK1xKmN9I5bVSTSRV3Ue6tOFTcBotGnOvkcAkeSG
         JWEuMhVcnHIviKxc+2GgZkmiJALfB8BlzdsSAe9d20F8H7fO+62VPXNVWD6oCHGgSY8z
         +ZaSdxgU7R8eKt8KP2ie6HuPRGZLlefknuUK+XhMdmuN9BzV+/SoJcwr2WzdOdm8mD+P
         oOAOGMlX7iy9zhl2MwrL/HOldGCYQTm5hksNGhq7ZKoy6UmGkQYA2mlbK//z5hPyWKzj
         tcjVSqEmXu6NfJapXTca1fVPcZPXpmCcyGKBi2VwY5afvx6bXrBW4VmYoynDOk946vf4
         Fwmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uc5jJq0YvTzf8BEPMUgKkXPq5VOMLMXDxdKkAuvbItk=;
        b=s1gktv1TxCz1YeEa6tX8Trt4WkGmPpXe6SNPP3d/VPXbJqNljFbyarNh3t+7rblHn/
         wwiHAph2HhnbsDEVCYTzwpsRGKMSuesJNcF5oAciwY6MckrfI6tUYyXYvbWKHrfojDBX
         82GuRCYH/xbMl0ldqykyAZeh8pyIun8na+8JHEQDDX/vtCESD7hM8SeND00TIlWCeFP2
         w1GwIEaXZJqenPwJpN8DfDvRjviTAksh63O6O2TVFp+2amqqHTnqhySvPqamryOsNuli
         D/VPLLWZAuE4MwYEtfjjWLyxqRhWhxuK/QGgFZpzYqIX31VCCqESIeOURh5iEyxC3Nd/
         6KBA==
X-Gm-Message-State: AJIora/lm5MegEn7JU7o7AKqdwBqboIiQG34ygDbp8UortnunqfjJ8vR
	nKfUAqHskemojZGrQ0VoKT6dyQ==
X-Google-Smtp-Source: AGRyM1tUrw283B/iLAAXe1suE6fsNV78cf2NHCU5hHUcZcigWaiVbjFyK+RkskC+/2DrTKT7yzUUeQ==
X-Received: by 2002:a05:6402:5c9:b0:420:aac6:257b with SMTP id n9-20020a05640205c900b00420aac6257bmr34794630edx.128.1655815456285;
        Tue, 21 Jun 2022 05:44:16 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u9-20020a1709061da900b006fe8c831632sm7585849ejh.73.2022.06.21.05.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 05:44:15 -0700 (PDT)
Message-ID: <4a58c6c4-be0e-e56c-2498-a14ba46b508d@linaro.org>
Date: Tue, 21 Jun 2022 14:44:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <f9a877ce-1e18-90f9-67e5-b6e67b3b4156@linaro.org>
 <8d806fc9-0067-2c8d-ec41-13787c7644a2@linaro.org>
 <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <20220614012713epcms2p810386a5137fbcf6aefc41fe086badc0b@epcms2p8>
 <20220620075548epcms2p61182d9d7f41fadb1eb139b349bf7486d@epcms2p6>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p2>
 <20220621074244epcms2p23cb631babfb87e5abb416467fb66e521@epcms2p2>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621074244epcms2p23cb631babfb87e5abb416467fb66e521@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_054420_035146_45782080 
X-CRM114-Status: GOOD (  15.05  )
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

T24gMjEvMDYvMjAyMiAwOTo0MiwgV2FuZ3Nlb2sgTGVlIHdyb3RlOgo+Pj4gwqAKPj4+IMKgc2Ft
c3VuZyxzeXNjb24tYnVzLXMtZnN5czoKPj4+IMKgwqDCoGRlc2NyaXB0aW9uOgo+Pj4gwqDCoMKg
wqDCoFBoYW5kbGXCoHRvwqBidXMtc8KgcGF0aMKgb2bCoGZzeXPCoGJsb2NrLMKgdGhpc8KgcmVn
aXN0ZXIKPj4+IMKgwqDCoMKgwqBhcmXCoHVzZWTCoGZvcsKgZW5hYmxpbmfCoGJ1cy1zLgo+Pj4g
wqDCoMKgJHJlZjrCoC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPj4+
IMKgCj4+PiDCoHNhbXN1bmcsc3lzY29uLWJ1cy1wLWZzeXM6Cj4+PiDCoMKgwqBkZXNjcmlwdGlv
bjoKPj4+IMKgwqDCoMKgwqBQaGFuZGxlwqB0b8KgYnVzLXDCoHBhdGjCoG9mwqBmc3lzwqBibG9j
ayzCoHRoaXPCoHJlZ2lzdGVyCj4+PiDCoMKgwqDCoMKgYXJlwqB1c2VkwqBmb3LCoGVuYWJsaW5n
wqBidXMtcC4KPj4+IMKgwqDCoCRyZWY6wqAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9u
cy9waGFuZGxlCj4+Cj4+IFRoaXPCoHR3b8KgbG9va8KgdW5zcGVjaWZpY8KgYW5kwqBoYWNrecKg
d29ya2Fyb3VuZMKgZm9ywqBtaXNzaW5nwqBkcml2ZXJzLsKgTG9va3MKPj4gbGlrZcKgaW5zdGVh
ZMKgb2bCoGltcGxlbWVudGluZ8KgaW50ZXJjb25uZWN0wqBvcsKgY2xvY2vCoGRyaXZlcizCoHlv
dcKgZGVjaWRlZAo+PiB0b8KgcG9rZcKgc29tZcKgb3RoZXLCoHJlZ2lzdGVycy7CoFdoecKgdGhp
c8KgY2Fubm90wqBiZcKgYW7CoGludGVyY29ubmVjdMKgZHJpdmVyPwo+Pgo+Pgo+IAo+IGJ1cy1z
LCBidXMtcCBpcyBhIHJlZ2lzdGVyIHRoYXQgZXhpc3RzIGluIHRoZSBzeXNyZWcgb2YgdGhlIGZz
eXMgYmxvY2suCj4gSXQgaXMgdGhlIHNhbWUgYmxvY2sgYXMgImZzeXMtc3lzcmVnIiBidXQgaXMg
c2VwYXJhdGVkIHNlcGFyYXRlbHkgaW4KPiBoYXJkd2FyZS4KClR3byBwb2ludHMgaGVyZToKMS4g
SWYgaXQgaXMgaW4gRlNZUywgd2h5IGl0IGNhbm5vdCBiZSBhY2Nlc3NlZCB3aXRoIHNhbXN1bmcs
ZnN5cy1zeXNyZWc/CjIuIElmIGl0IGlzIG9ubHkgcmVnaXN0ZXIsIHNodWxkIGJlIGRlc2NyaWJl
ZCBsaWtlIHRoaXMuIFlvdSBtdXN0CmRlc2NyaWJlIGl0ZW06Cmh0dHBzOi8vZWxpeGlyLmJvb3Rs
aW4uY29tL2xpbnV4L3Y1LjE4LXJjMS9zb3VyY2UvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9zYW1zdW5nL2V4eW5vcy11c2kueWFtbCNMNDIKCj4gU28sIGdldCByZXNvdXJj
ZSBpcyBwZXJmb3JtZWQgc2VwYXJhdGVseSBmcm9tICJmc3lzLXN5c3JlZyIuCj4gVGhleSBzZXQg
cGNpZSBzbGF2ZSwgZGJpIHJlbGF0ZWQgY29udHJvbCBzZXR0aW5ncywKPiBuYW1pbmcgImJ1cy14
IiBzZWVtcyB0byBiZSBpbnRlcmNvbm5lY3QuCj4gSSB3aWxsIGFkZCB0aGlzIGRlc2NyaXB0aW9u
IHRvIHByb3BlcnR5Lgo+IEkgZG9uJ3QgdGhpbmsgaXQgbmVlZCB0byB1c2UgdGhlIGludGVyY29u
bmVjdCBkcml2ZXIsCj4gc28gcGxlYXNlIGxldCBtZSBrbm93IHlvdXIgb3Bpbmlvbi4KClBsZWFz
ZSBkb2N1bWVudCBib3RoIGluIHRoZSBiaW5kaW5ncyBhbmQgaW4gdGhlIGRyaXZlciB1c2FnZSBv
ZiB0aGlzCnJlZ2lzdGVyLiBXcml0aW5nIHRoZXJlICIwIiBvciAiMSIgaXMgbm90IGVub3VnaC4g
SWYgdGhlIGRvY3VtZW50YXRpb24KaXMgZ29vZCwgSSBhbSBmaW5lIHdpdGggaXQuIElmIHRoZSBl
eHBsYW5hdGlvbiBpcyBvYmZ1c2NhdGVkL25vdApzdWZmaWNpZW50LCBpdCB3aWxsIGxvb2sgbGlr
ZSBhdm9pZGluZyB0byBpbXBsZW1lbnQgYSBkcml2ZXIsIHdoaWNoIEkKZG9uJ3Qgd2FudCB0byBh
Y2NlcHQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
