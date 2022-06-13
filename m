Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A138BC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 21:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbs+xG4o+8zEatNNv4iGHtqi6qIQxZrFN+z2bwM+XIM=; b=VRTP/+S9AHKAe0
	NHR8cJ+4vedfEb1GVD2doQtSMKWxyoYekb+gEZiuol606M6gwiNgCJjiosq2m+MT4IvcNrlzUPnfk
	RQ3Yyh4keJBnBb7ncnLWk7PKCl47fLauaSv1XxPSwUgvFGPf0hTqvtgFFMXSXVO8JXsPitu4M0KlO
	Esr+omNGKNyW4LhJyhgu1Rkd6m6TZdHgCN0lq/UI8aY2cmQzsF3VwvsOMo+mwdUtWPs/9975p/Bbp
	idi15hb3iMdAh1eY/DpXYssE+aw4w0QtbqxW3yyFPKGkiZUx8ijeKZ3kvri/ALVqvcEMTpJnq8wls
	cahNzihlKx4Pflx0nJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0rrC-0060bg-Uv; Mon, 13 Jun 2022 21:44:22 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0rrA-0060aT-MY
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 21:44:22 +0000
Received: by mail-ed1-x536.google.com with SMTP id eo8so787400edb.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 14:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=o9UntF+lNWBkIEzIjLLvGVZ85sm3+wWH8i4UJo4RX/Y=;
        b=QBnLjzYlFYIqB7at45tks5394ozND8nIqDGVnvt7FHGDETvKejvhnifl6L80trZHBJ
         G7Qa+Exyq2l/I4kCvHRAvWYV3wUQoOKzkRubwuVpujP5Eufha8zW3onTKcw7JtRpsLuG
         BJ7+hbsr2qS/LDY1R10+TYFLLvZiRdXJN5U3QlUgXvYbUzRsxpgGypJYjlDBtCRPSduQ
         9fLfji6OAAgooWQWP+gR8E+f8EJPBSdd/XmKSJmZc1BdE3Ws2XBo+mIgWIDZHwilHX49
         /QR5kEwRzVGr6AFKdAdCZkpGFxU+RRBAqwombi/bWdcGGbRgBYl58bsP+rjUPnF/6mxX
         S0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=o9UntF+lNWBkIEzIjLLvGVZ85sm3+wWH8i4UJo4RX/Y=;
        b=7lfCWV18hFm86oTi0pjcRajlr1qXX2SY4VsBl5uwRxXwNpgyeCsNsIYl8ocTBhin+J
         7gy1uAKj5J0sBoLln09W2PWLzL2V5Na8TwCced0EeD8SofYKBlMQ+njjmAGiyCfExm3V
         9i6RM59EiL2/605EWorlJAnQmHrA9ozb8HsvI1jcjiZ6TFSQr8UYjBqsCHSvy2ZVYcNQ
         VE+q/kEB+zNoMyVHVaQoCXnBhH3pY2IvXWqV6ETU8jqSrbuAithdCeAKmgpYa0Ltyya5
         du6ug0LXdDDKen+nzB8YHEMIZ4Uc4TLc7OY9oO4FIFmC1hUahWDH1gDKLTY+rhASXU/s
         ldnA==
X-Gm-Message-State: AJIora8huVhuU2CngCvKcLEwLzA9eKeXyNvPCMJy0tIfP5V5y1dTut2o
	+8hh3pMERfOIIoWeVbcekfEIfmuxN5g=
X-Google-Smtp-Source: ABdhPJzOWtjnmSDqP6ZQi8u6wmEXcV9azPmVN4Fto3NVpuPIpkPSj4uG1823bZRQwothDlTZ+IKBHg==
X-Received: by 2002:aa7:c508:0:b0:42d:cc6b:df80 with SMTP id o8-20020aa7c508000000b0042dcc6bdf80mr2055540edq.393.1655156657043;
        Mon, 13 Jun 2022 14:44:17 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:a6e8:9f53:c608:417c? (2a02-a466-68ed-1-a6e8-9f53-c608-417c.fixed6.kpn.net. [2a02:a466:68ed:1:a6e8:9f53:c608:417c])
        by smtp.gmail.com with ESMTPSA id lu33-20020a170906fae100b007041e969a8asm4274980ejb.97.2022.06.13.14.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 14:44:16 -0700 (PDT)
Message-ID: <8201ecf4-29e6-6c97-d3a4-c99904187b3b@gmail.com>
Date: Mon, 13 Jun 2022 23:44:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vinod Koul <vkoul@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
 <77a486ae-06bb-7f1b-17ab-8d60ccfbdee6@gmail.com>
In-Reply-To: <77a486ae-06bb-7f1b-17ab-8d60ccfbdee6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_144420_806731_1C0BAE55 
X-CRM114-Status: GOOD (  15.40  )
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

CgpPcCAxMy0wNi0yMDIyIG9tIDIyOjQwIHNjaHJlZWYgRmVycnkgVG90aDoKPiBIaQo+IAo+IE9w
IDEzLTA2LTIwMjIgb20gMTg6MDggc2NocmVlZiBBbmR5IFNoZXZjaGVua286Cj4+IE9uIHNvbWUg
cGxhdGZvcm1zLCBsaWtlIEludGVsIE1lcnJpZmllbGQsIHRoZSB3cml0aW5nIHZhbHVlcyBkdXJp
bmcgCj4+IHBvd2VyIG9uCj4+IG1heSB0aW1lb3V0Ogo+Pgo+PiDCoMKgwqAgdHVzYjEyMTAgZHdj
My4wLmF1dG8udWxwaTogZXJyb3IgLTExMCB3cml0aW5nIHZhbCAweDQxIHRvIHJlZyAweDgwCj4g
d2l0aCB0aGUgcGF0Y2ggdGhpcyBlcnJvciBjb250aW51ZXMgdG8gYXBwZWFyIGluIHRoZSBsb2dz
Cj4+IMKgwqDCoCBwaHkgcGh5LWR3YzMuMC5hdXRvLnVscGkuMDogcGh5IHBvd2Vyb24gZmFpbGVk
IC0tPiAtMTEwCj4+IMKgwqDCoCBkd2MzIGR3YzMuMC5hdXRvOiBlcnJvciAtRVRJTUVET1VUOiBm
YWlsZWQgdG8gaW5pdGlhbGl6ZSBjb3JlCj4+IMKgwqDCoCBkd2MzOiBwcm9iZSBvZiBkd2MzLjAu
YXV0byBmYWlsZWQgd2l0aCBlcnJvciAtMTEwCj4gdGhlc2UgZXJyb3JzIGFyZSBnb25lCj4+IHdo
aWNoIGVmZmVjdGl2ZWx5IGZhaWxzIHRoZSBwcm9iZSBvZiB0aGUgVVNCIGNvbnRyb2xsZXIuCj4g
Cj4gYW5kIHByb2JlIG9mIGR3YzMgc3VjY2VlZHMKPiAKPiBUZXN0ZWQgb24gSW50ZWwgRWRpc29u
IChNZXJyaWZpZWxkKQoKVGVzdGVkLWJ5OiBGZXJyeSBUb3RoIDxmbnRvdGhAZ21haWwuY29tPgoK
Pj4gRHJvcCB0aGUgY2hlY2sgYXMgaXQgd2FzIGJlZm9yZSB0aGUgY3VscHJpdCBjb21taXQgKHNl
ZSBGaXhlcyB0YWcpLgo+Pgo+PiBGaXhlczogMDlhMzUxMjY4MWIzICgicGh5OiB0aTogdHVzYjEy
MTA6IEltcHJvdmUgdWxwaV9yZWFkKCkvX3dyaXRlKCkgCj4+IGVycm9yIGNoZWNraW5nIikKPj4g
U2lnbmVkLW9mZi1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5p
bnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS90aS9waHktdHVzYjEyMTAuYyB8IDUg
KysrLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS10dXNiMTIxMC5jIAo+PiBi
L2RyaXZlcnMvcGh5L3RpL3BoeS10dXNiMTIxMC5jCj4+IGluZGV4IGMzYWI0YjY5ZWE2OC4uNjY5
YzEzZDZlNDAyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS90aS9waHktdHVzYjEyMTAuYwo+
PiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdHVzYjEyMTAuYwo+PiBAQCAtMTA1LDggKzEwNSw5
IEBAIHN0YXRpYyBpbnQgdHVzYjEyMTBfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+PiDCoMKg
wqDCoMKgIG1zbGVlcChUVVNCMTIxMF9SRVNFVF9USU1FX01TKTsKPj4gwqDCoMKgwqDCoCAvKiBS
ZXN0b3JlIHRoZSBvcHRpb25hbCBleWUgZGlhZ3JhbSBvcHRpbWl6YXRpb24gdmFsdWUgKi8KPj4g
LcKgwqDCoCByZXR1cm4gdHVzYjEyMTBfdWxwaV93cml0ZSh0dXNiLCBUVVNCMTIxMF9WRU5ET1Jf
U1BFQ0lGSUMyLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHR1c2It
PnZlbmRvcl9zcGVjaWZpYzIpOwo+PiArwqDCoMKgIHR1c2IxMjEwX3VscGlfd3JpdGUodHVzYiwg
VFVTQjEyMTBfVkVORE9SX1NQRUNJRklDMiwgCj4+IHR1c2ItPnZlbmRvcl9zcGVjaWZpYzIpOwo+
PiArCj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPj4gwqAgc3RhdGljIGludCB0dXNiMTIx
MF9wb3dlcl9vZmYoc3RydWN0IHBoeSAqcGh5KQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
