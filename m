Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D178BC54EE9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 17:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bvp/GJvGCkuVPUDeIbKKr6GhgFYBJf7whjZY9rg52fw=; b=IIo0+pbmR8qTp/
	XvYiMv+5PfwP+9XeB8PzHKOBn+34t08OnW8P+6O+lvY6B+mGkJ5OD+wE1YLoHnK5y1HLOpmKXsjZT
	lR786152zbOakETV7JMMFUhjTDUYdpoRd+vWyphT4IzRVlvA3iFEatOqTLF+h1dXBYrCedIHLbIKr
	m+FLmlIuu8f5TuhOjBt9ylDjmFr8Cr1pNhE7+c0Ko07xIMEphizth8Z3NWPMM2VCGTgLtL0ghoOwF
	EfJ0G9hihk0VzIWuOw2GcYMYsPruOmTzpndq0hyv2rXSANY//DGO11rdJG3QFeR32cjjZphXfWdyu
	v1lcsz1ln1mKRt559u6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKar-00DHVl-8y; Mon, 19 Sep 2022 17:30:05 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKan-00DHTj-PK
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 17:30:03 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j16so21072682lfg.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qpgJIJElhOXjn7LOSKznlt5pJlFxXPnXLSPfz4rMEuo=;
        b=oyzK8EBRU+2zWPdRgH9erpf+j2aLOw0qG78VeQjhQixmYyZrgL9XLnMfYfH5DjWDRa
         h0bcJHbmayn19VCCHCj544ZxnUazLr/dfGyPhslIsm0T01CYuE2ETRSNYLHGIE9Y6BgC
         oB3NDG1ZDaewjoflU9W/gVDkShoNRU/IsbDN6sJbj1mPRiK7cQTH2IAa55ialwbvWIiS
         BRmZs2UK8ZpWEhd/xR0PetTbFLHHAiWq4ZRrpAEuduQrf74+tTuTG5NuCIeMGVydfvSB
         TIl2n594BENEfVBUVzg48xBJoknMvDkPBL3CZINSPSJUUYE13t4JibccLK0LNovbr8Ic
         xrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qpgJIJElhOXjn7LOSKznlt5pJlFxXPnXLSPfz4rMEuo=;
        b=8KIsFEwWG4gbrFmqBzIf1X8TU8/vejhg+9WcQQt6oBBo4kVt6PvN1s+Ujt2x9VCQLY
         31oGNNgp1M46tOf2xTleBMpLqC0wlPZ2wfFTUjDSSCCbTygRIUnnpFl5I+TxsW/n2r/Z
         DUNVuPVK3aGsjQSzRYp7wXheCmNMnYQ0CzMNpcNx2mIk/L0DV0rYajsygVFwR16ssi1Q
         m9qoHfRd1DuOWp6ZEuIHK6Dww/a4Pv3OrJTS98tP+UECiFrhF+fexJZLp+8sXoLe4Ua3
         O+YI/zPOTszSMTuOuHtJvi4DmnrgI8kV2t+9fzqx47IanziRN/HuMqUBenRiBbwBtXQS
         isfA==
X-Gm-Message-State: ACrzQf2UOhGIuK5RWnzy0/d4Uqz1ynw3GsUsfE//Pe5ejKu38SJicdTm
	wpVxJZeD0RIoGnd36wVaS2DyTw==
X-Google-Smtp-Source: AMsMyM6buy4eNEC6Rgb65J/xMPsi3p+v09EQ6PWBzxA5uOW9Po2LnjNRrdWX5MTNGfAFkdQFpP/vbg==
X-Received: by 2002:a19:435c:0:b0:49f:5861:59a3 with SMTP id m28-20020a19435c000000b0049f586159a3mr5538223lfj.295.1663608597790;
        Mon, 19 Sep 2022 10:29:57 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a17-20020a2eb551000000b00261a8e56fe4sm4994215ljn.55.2022.09.19.10.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 10:29:57 -0700 (PDT)
Message-ID: <bd6fc826-94b9-f539-a37e-820ab49b9d14@linaro.org>
Date: Mon, 19 Sep 2022 20:29:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v6 3/5] phy: core: Add support for phy power down & power
 up
Content-Language: en-GB
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: helgaas@kernel.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 mka@chromium.org, quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
 quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
 quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
 swboyd@chromium.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com>
 <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
 <CAA8EJppgaAuEDU44ePOt+ZWK0_rNsXHnE3WOEc9F-n=VE=3aVQ@mail.gmail.com>
 <87138bc9-2fc0-39fb-89c1-d3826e28594e@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <87138bc9-2fc0-39fb-89c1-d3826e28594e@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_103001_849923_DF56D47C 
X-CRM114-Status: GOOD (  16.18  )
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

T24gMTQvMDkvMjAyMiAxNzo1MCwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiAK
PiBPbiA5LzkvMjAyMiAyOjM0IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBPbiBGcmks
IDkgU2VwdCAyMDIyIGF0IDExOjQ1LCBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1Cj4+IDxxdWlj
X2tyaWNoYWlAcXVpY2luYy5jb20+IHdyb3RlOgo+Pj4gSW50cm9kdWNpbmcgcGh5IHBvd2VyIGRv
d24vdXAgY2FsbGJhY2tzIGZvciBhbGxvd2luZyB0byBwYXJrIHRoZQo+Pj4gbGluay1zdGF0ZSBp
biBMMXNzIHdpdGhvdXQgaG9sZGluZyBhbnkgUENJZSByZXNvdXJjZXMgZHVyaW5nCj4+PiBzeXN0
ZW0gc3VzcGVuZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVu
ZHJ1IDxxdWljX2tyaWNoYWlAcXVpY2luYy5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvcGh5
L3BoeS1jb3JlLmPCoCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAg
aW5jbHVkZS9saW51eC9waHkvcGh5LmggfCAyMCArKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAg
MiBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4+PiBpbmRleCBk
OTNkZGYxLi4xYjBiNzU3IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+
Pj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+Pj4gQEAgLTQ0MSw2ICs0NDEsMzYgQEAg
aW50IHBoeV9zZXRfc3BlZWQoc3RydWN0IHBoeSAqcGh5LCBpbnQgc3BlZWQpCj4+PiDCoCB9Cj4+
PiDCoCBFWFBPUlRfU1lNQk9MX0dQTChwaHlfc2V0X3NwZWVkKTsKPj4+Cj4+PiAraW50IHBoeV9w
b3dlcl9kb3duKHN0cnVjdCBwaHkgKnBoeSkKPj4+ICt7Cj4+PiArwqDCoMKgwqDCoMKgIGludCBy
ZXQ7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIGlmICghcGh5IHx8ICFwaHktPm9wcy0+cG93ZXJf
ZG93bikKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gKwo+
Pj4gK8KgwqDCoMKgwqDCoCBtdXRleF9sb2NrKCZwaHktPm11dGV4KTsKPj4+ICvCoMKgwqDCoMKg
wqAgcmV0ID0gcGh5LT5vcHMtPnBvd2VyX2Rvd24ocGh5KTsKPj4+ICvCoMKgwqDCoMKgwqAgbXV0
ZXhfdW5sb2NrKCZwaHktPm11dGV4KTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgcmV0dXJuIHJl
dDsKPj4+ICt9Cj4+PiArRVhQT1JUX1NZTUJPTF9HUEwocGh5X3Bvd2VyX2Rvd24pOwo+Pj4gKwo+
Pj4gK2ludCBwaHlfcG93ZXJfdXAoc3RydWN0IHBoeSAqcGh5KQo+Pj4gK3sKPj4+ICvCoMKgwqDC
oMKgwqAgaW50IHJldDsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgaWYgKCFwaHkgfHwgIXBoeS0+
b3BzLT5wb3dlcl91cCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAw
Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCBtdXRleF9sb2NrKCZwaHktPm11dGV4KTsKPj4+ICvC
oMKgwqDCoMKgwqAgcmV0ID0gcGh5LT5vcHMtPnBvd2VyX3VwKHBoeSk7Cj4+PiArwqDCoMKgwqDC
oMKgIG11dGV4X3VubG9jaygmcGh5LT5tdXRleCk7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIHJl
dHVybiByZXQ7Cj4+PiArfQo+PiBBcyBpdCBjYW4gYmUgc2VlbiBmcm9tIHRoZSBwaHlfcG93ZXJf
b2ZmKCksIHRoZSBQSFkgY2FuIGJlIGEgc2hhcmVkCj4+IHJlc291cmNlLCB3aXRoIHRoZSBwb3dl
cl9jb3VudCBjb3VudGluZyB0aGUgbnVtYmVyIG9mIHVzZXJzIHRoYXQKPj4gcmVxdWVzdGVkIHRo
ZSBQSFkgdG8gYmUgcG93ZXJlZCB1cC4gQnkgaW50cm9kdWNpbmcgc3VjIGNhbGxzIHlvdSBicmVh
awo+PiBkaXJlY3RseSBpbnRvIHRoaXMgYnkgYWxsb3dpbmcgYSBzaW5nbGUgdXNlciB0byBwb3dl
ciBkb3duIHRoZSBQSFksIG5vCj4+IG1hdHRlciBob3cgbWFueSBvdGhlciB1c2VycyBoYXZlIHJl
cXVlc3RlZCB0aGUgUEhZIHRvIHN0YXkgYWxpdmUuCj4gCj4gY2FuIHdlIHVzZSBzYW1lIHBvd2Vy
X2NvdW50IGluIHRoaXMgZnVuY3Rpb24gYWxzbyBoZXJlIGFuZCByZXN0cmljdCB0aGUgCj4gc2lu
Z2xlIHVzZXIgdG8KPiAKPiBwb3dlciBkb3duIHRoZSBQSFkgc2FtZSBsaWtlIHBoeV9wb3dlcl9v
ZmY/LgoKV2hhdCBpcyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHBvd2VyX29mZigpIGFuZCBwb3dl
cl9kb3duKCk/CgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
