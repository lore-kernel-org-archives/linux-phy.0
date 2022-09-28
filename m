Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C120C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 16:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjfhJkO5QlvZEZRryYGQ1yPf7n8R9PRgliCu+rLkyNI=; b=r9ueKCZ0KmQd9Z
	+252G3vXBWq5jWKgeyNF+QORz6l5/WMZ4XKtMUvzHoKVcHLOmJvmpdSYCsF8yAgjOjAEzrg54pjQY
	DRmMSb/0DCNBnhRxMlQUkr82ZbcSmbUocfXbYAxxzrwzR7fFWaF1V6SMKMiPhigUkLIq20Aw+7oSk
	io7CmRGDy8DmX2fsCkEZeawer5W0MXB39ecqh9DKhxymoVhMLYNtg1efnMPbYIaVww93R8M/kMKug
	Lio2GB99wKqJiYGr9EHAy1xbt+82er8TIsuI+W+dqXUGOJzyCRCNCRCpA1huR4mbXa5GXnADwLzcV
	/HnIKn6w6TpPuutNh2yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZWn-00H3Ve-Bf; Wed, 28 Sep 2022 16:03:17 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZWi-00H3S8-Lm
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 16:03:14 +0000
Received: by mail-wr1-x432.google.com with SMTP id c11so20470082wrp.11
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 09:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references
         :reply-to:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=XU11ixlhb+u4soUFNHZJtpgKK6IKQcVXkoMJ24YW0R8=;
        b=HdUdZxbMHUXgaQOTBzdH16VdppkchgZA4IYvg2KHdhPrLFYcXa5Ef2a3F6MCF5Toz+
         KaAsDopel63Ydmq4ZsCxrgU1zQuI65McK0UmEnF3wC3HIyQqdsjEXsWc47mzXB+SLE8p
         X+tlr6MU6ffypQEx7izOF063ZqKmI4gD1dddj92RgjKmk807kZN3OuaFvK+D3q29ewGP
         8Yz19k351RcbhxTky6WVmBrsGanuBGJ8sfx1HvEiFeOJDXHkIHHwcgVC2uyMFDRjAC8s
         MwFysKVqAulmK7ginwRaKGZIymOVR9lUlO8VoO267eTvYD8oFZCXyHxsU3WH134gkKwY
         FF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references
         :reply-to:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=XU11ixlhb+u4soUFNHZJtpgKK6IKQcVXkoMJ24YW0R8=;
        b=vNX2GxJGnOpHlm+yhSnrHvCOPFus5hSowo60aVLLTRqe0VdAQqKxgC8htYf1pTf1nj
         oynsUamQnE31IjD163qKndqWgqeZMyyHuTFud/EdThMtJgV1hyk9DglMV9FtbhxwzKZ0
         RRfz7oCoQ8LAv86iyMWiZhEF6zI5f6ZY/QIYwHhIkH76DaOYZNE6OWdu9eNeV+/ub0/m
         7Vozv8FJyP1Gb8X74Ba6p5/ttuOXnPqYlAJsgvHsSfw+fDyiuk3kSWP6kQ/cXWqDMq5M
         0ok9lQNi1jW6heXym7p+oEoc69ncXfulfNbZBf6D02zYFXtVQ0pOUXqyd5cy/o2Pr8ta
         MMlw==
X-Gm-Message-State: ACrzQf0D2YRekK+EC3P83RcYwl8GD3OKdz1dHOopT0voPA5l8qxwTlB7
	JFVpLRVpO3xlqNm2j5vpJSkyFg==
X-Google-Smtp-Source: AMsMyM7dS8fbbuHO5T9iAq/a/FI0ieRM/47RAYkKsTccUoIvj6bL++V23jPnMw1p3Lh6GQCrbD/jKQ==
X-Received: by 2002:adf:d08d:0:b0:22a:4560:9c29 with SMTP id y13-20020adfd08d000000b0022a45609c29mr21200486wrh.579.1664380988935;
        Wed, 28 Sep 2022 09:03:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id q4-20020adf9dc4000000b0022cce7689d3sm104241wre.36.2022.09.28.09.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 09:03:08 -0700 (PDT)
Message-ID: <ecebc912-de59-b607-5a60-2d174e7c5d58@linaro.org>
Date: Wed, 28 Sep 2022 18:03:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 05/13] phy: qcom-qmp-pcie: unify sdm845 registers
Content-Language: en-US
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-6-johan+linaro@kernel.org>
 <f4148c7f-3f75-bedd-3e3e-a50113cf41b8@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <f4148c7f-3f75-bedd-3e3e-a50113cf41b8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_090312_755202_96352785 
X-CRM114-Status: GOOD (  13.14  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjgvMDkvMjAyMiAxODowMSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjgvMDkvMjAy
MiAxNzoyOCwgSm9oYW4gSG92b2xkIHdyb3RlOgo+PiBUaGUgU0RNODQ1IHJlZ2lzdGVyIGFycmF5
IGlzIGlkZW50aWNhbCB0byBwY2llcGh5X3JlZ3NfbGF5b3V0IHNvIGRyb3AKPj4gdGhlIGZvcm1l
ci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSG92b2xkIDxqb2hhbitsaW5hcm9Aa2VybmVs
Lm9yZz4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2ll
LmMgfCA4ICstLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNyBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5j
Cj4+IGluZGV4IDdiM2Y3ZTQyZWRkNS4uNDE0NjU0NWZkZjVmIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPj4gQEAgLTkyLDEyICs5Miw2IEBAIHN0YXRp
YyBjb25zdCB1bnNpZ25lZCBpbnQgcGNpZXBoeV9yZWdzX2xheW91dFtRUEhZX0xBWU9VVF9TSVpF
XSA9IHsKPj4gwqDCoMKgwqDCoCBbUVBIWV9QQ1NfU1RBVFVTXcKgwqDCoMKgwqDCoMKgID0gMHgx
NzQsCj4+IMKgIH07Cj4+IC1zdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHNkbTg0NV9xbXBfcGNp
ZXBoeV9yZWdzX2xheW91dFtRUEhZX0xBWU9VVF9TSVpFXSA9IHsKPj4gLcKgwqDCoCBbUVBIWV9T
V19SRVNFVF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gMHgwMCwKPj4gLcKgwqDCoCBbUVBIWV9T
VEFSVF9DVFJMXcKgwqDCoMKgwqDCoMKgID0gMHgwOCwKPj4gLcKgwqDCoCBbUVBIWV9QQ1NfU1RB
VFVTXcKgwqDCoMKgwqDCoMKgID0gMHgxNzQsCj4+IC19Owo+PiAtCj4+IMKgIHN0YXRpYyBjb25z
dCB1bnNpZ25lZCBpbnQgc2RtODQ1X3FocF9wY2llcGh5X3JlZ3NfbGF5b3V0W1FQSFlfTEFZT1VU
X1NJWkVdID0gewo+PiDCoMKgwqDCoMKgIFtRUEhZX1NXX1JFU0VUXcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPSAweDAwLAo+PiDCoMKgwqDCoMKgIFtRUEhZX1NUQVJUX0NUUkxdwqDCoMKgwqDCoMKg
wqAgPSAweDA4LAo+PiBAQCAtMTU0NSw3ICsxNTM5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZyBzZG04NDVfcW1wX3BjaWVwaHlfY2ZnID0gewo+PiDCoMKgwqDCoMKgIC5udW1f
cmVzZXRzwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHNkbTg0NV9wY2llcGh5X3Jlc2V0X2wp
LAo+PiDCoMKgwqDCoMKgIC52cmVnX2xpc3TCoMKgwqDCoMKgwqDCoCA9IHFtcF9waHlfdnJlZ19s
LAo+PiDCoMKgwqDCoMKgIC5udW1fdnJlZ3PCoMKgwqDCoMKgwqDCoCA9IEFSUkFZX1NJWkUocW1w
X3BoeV92cmVnX2wpLAo+PiAtwqDCoMKgIC5yZWdzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IHNk
bTg0NV9xbXBfcGNpZXBoeV9yZWdzX2xheW91dCwKPj4gK8KgwqDCoCAucmVnc8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPSBwY2llcGh5X3JlZ3NfbGF5b3V0LAo+PiDCoMKgwqDCoMKgIC5zdGFydF9j
dHJswqDCoMKgwqDCoMKgwqAgPSBQQ1NfU1RBUlQgfCBTRVJERVNfU1RBUlQsCj4+IMKgwqDCoMKg
wqAgLnB3cmRuX2N0cmzCoMKgwqDCoMKgwqDCoCA9IFNXX1BXUkROIHwgUkVGQ0xLX0RSVl9EU0JM
LAo+IAo+IElzbid0IGlzIGFuIGlzc3VlIGlmIFFQSFlfQ09NXyogZW50cmllcyBhcmUgaW4gcGNp
ZXBoeV9yZWdzX2xheW91dCBhbmQgbm90IGluIHNkbTg0NV9xbXBfcGNpZXBoeV9yZWdzX2xheW91
dCA/Cj4gCj4gQlRXIGl0IHNlZW1zIHRob3NlIFFQSFlfQ09NXyogYXJlIG5ldmVyIHVzZWQuLgoK
Rm9yZ2V0IHRoaXMgY29tbWVudCwgSSBtaXNzZWQgcGF0Y2ggMyByZW1vdmluZyB0aGVtLi4uCgpS
ZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+CgoK
PiAKPiBOZWlsCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
