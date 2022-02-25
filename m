Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2615DC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 00:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYV7xFIl8FjUiyMh64gpVQ88xyRC5Hz5Mc3ZYkqfdmc=; b=F1tQggGyyLi9wu
	zxjhenBAfEY+M1VCgTguBSo/hiezV1oqfmk9QrNJ+I9qmfa9mWdoyG0VGGaCC3rS5gDh6mULFR5Ef
	752fVW/y2SA+lkdiuFmLsYPhhb98TMQ7LY7mDeP9oB4teXUpfgLjwFl7VkvqVkGlXwaSnAu06OcLQ
	1M7uXls9n/Mv3DJIqwJWnZUOBCgKxyZLz112OkSre4usiI2BKiYGHr+2Kl6o36EliHoHxkhakXZ98
	+cMJNOU/GOxoK3iaYo8/+azBlmg6VF2gFz1kqw12g3z7TbJ4KXruHQ6/FGf2wWFb3MA6etWCG4VAs
	vZwllUu/10QjDUDL2IPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNOp4-002ogQ-Jg; Fri, 25 Feb 2022 00:51:02 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNOp1-002ofw-Kq
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 00:51:01 +0000
Received: by mail-pl1-x629.google.com with SMTP id bd1so3359140plb.13
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 16:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=m8w18wp82V1vexF2oqESJV+tTsswGVlSyRy7CDeZ0bs=;
 b=okQI7eDNgOQkXGSiAB4kt4hwZ5yKi/fgg4H8WiZmL40m4kyPh/YbR1+qSt4cOI4e9+
 2stLz16Imh0z256XcnWqYAeXSMs+aWJOtwLvGaA78nvgJgMCcOIiEVU+3ghNKB9fHrvZ
 pP5NYV2zqE6OKWAaxU4QNK0vccH9NU3QbE/f06pOG4jWm/NpFcdiz+2l3rEMA5xDujAe
 cQ0qFM3kIFQ1PjfTWjL3lm+z2ZyrC27R2iAb2VKQ+BMrZ/0vK1GijORs1eemklGrb6fR
 dDMZcr5PL/DPYvFX/P4A5tN7mtw6QVWuaAhwf4EsUgUJX+CjfRL0yClNVUsSYtCb5a19
 WH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=m8w18wp82V1vexF2oqESJV+tTsswGVlSyRy7CDeZ0bs=;
 b=s454JnhUbtDYRLHj3MhkkWCy1ua/ZHZtWm6WL7AmtSTj83+k/mlpjOgEczQw7TKwwf
 DRfEtDUDiVBll0MtBNhiQG46K6JcvwGtYv308RsDKx+UEE4eg85LVw01omDI7jlUynFc
 iFS5SAI0SHyHuQ5a+VZa8Neb7RlRdne5zdy1yesEMxfwZI8YTSAxIWY+yhW/4ChFizEP
 6fiaRzx7TYCk4k37EW/bKPRrjNR8Q133tnI5DKmLIWG35WyH5hoXuMTmu4Pp9HkK5QQY
 KxyWdXqAXoOkcX+OL5o5mReH0nL1LF++l5MLSk/tt5OqAUuyijS6GfwWrRk247htnwAl
 jycg==
X-Gm-Message-State: AOAM531psq2HPNo0oYaYB0SScliLjXwDWBoAXHdMv7I28a0lW+I4Nf+2
 3zAFhEVXQgLdiS8jF3eppJeJ0btsoeQ=
X-Google-Smtp-Source: ABdhPJzJW3Vn6xw4mLCyzocMAoiHTRpiX4U/jf0ahfJy8UzAclHIN+vyUAZ9Z4lV4Kp0+Dh+1JYvJQ==
X-Received: by 2002:a17:90a:3d0f:b0:1bb:80e9:3b45 with SMTP id
 h15-20020a17090a3d0f00b001bb80e93b45mr674993pjc.31.1645750258999; 
 Thu, 24 Feb 2022 16:50:58 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 e15-20020a17090a118f00b001bcc9efa7fasm3186792pja.42.2022.02.24.16.50.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Feb 2022 16:50:58 -0800 (PST)
Message-ID: <7e7280be-a253-2cc9-cda9-8093f8512d9f@gmail.com>
Date: Thu, 24 Feb 2022 16:50:56 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] phy: phy-brcm-usb: fixup BCM4908 support
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Al Cooper <alcooperx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220218172459.10431-1-zajec5@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220218172459.10431-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_165059_713536_3548538F 
X-CRM114-Status: GOOD (  14.10  )
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

CgpPbiAyLzE4LzIwMjIgOToyNCBBTSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBKdXN0IGxpa2UgZXZlcnkgb3Ro
ZXIgZmFtaWx5IEJDTTQ5MDggc2hvdWxkIGdldCBpdHMgb3duIGVudW0gdmFsdWUuIFRoYXQKPiBp
cyByZXF1aXJlZCB0byBwcm9wZXJseSBoYW5kbGUgaXQgaW4gY2hpcHNldCBjb25kaXRpb25hbCBj
b2RlLgo+IAo+IFRoZSByZWFsIGNoYW5nZSBpcyBleGNsdWRpbmcgQkNNNDkwOCBmcm9tIHRoZSBQ
TEwgcmVwcm9ncmFtbWluZyBjb2RlCj4gKHNlZSBicmNtdXNiX3VzYjNfcGxsXzU0bWh6KCkpLiBJ
J20gbm90IHN1cmUgd2hhdCdzIHRoZSBCQ000OTA4Cj4gcmVmZXJlbmNlIGNsb2NrIGZyZXF1ZW5j
eSBidXQ6Cj4gMS4gQkNNNDkwOCBjdXN0b20gZHJpdmVyIGZyb20gQnJvYWRjb20ncyBTREsgZG9l
c24ndCByZXByb2dyYW0gUExMCj4gMi4gRG9pbmcgdGhhdCBpbiBMaW51eCBkcml2ZXIgc3RvcHBl
ZCBQSFkgaGFuZGxpbmcgc29tZSBVU0IgMy4wIGRldmljZXMKPiAKPiBUaGlzIGNoYW5nZSBtYWtl
cyBVU0IgMy4wIFBIWSByZWNvZ25pemUgZS5nLjoKPiAxLiAwNGU4OjY4NjAgLSBTYW1zdW5nIEVs
ZWN0cm9uaWNzIENvLiwgTHRkIEdhbGF4eSBzZXJpZXMsIG1pc2MuIChNVFAgbW9kZSkKPiAyLiAx
MDU4OjI1OWYgLSBXZXN0ZXJuIERpZ2l0YWwgTXkgUGFzc3BvcnQgMjU5Rgo+IAo+IEJyb2FkY29t
J3MgU1RCIFNvQ3MgY29tZSB3aXRoIGEgc2V0IG9mIFNVTl9UT1BfQ1RSTF8qIHJlZ2lzdGVycyB0
aGF0Cj4gYWxsb3cgcmVhZGluZyBjaGlwIGZhbWlseSBhbmQgcHJvZHVjdCBpZHMuIFN1Y2ggYSBi
bG9jayAmIHJlZ2lzdGVyIGlzCj4gbWlzc2luZyBvbiBCQ000OTA4IHNvIHRoaXMgY29tbWl0IGlu
dHJvZHVjZXMgImNvbXBhdGlibGUiIHN0cmluZwo+IHNwZWNpZmljIGJpbmRpbmcuCj4gCj4gRml4
ZXM6IDRiNDAyZmE4ZTBiNyAoInBoeTogcGh5LWJyY20tdXNiOiBzdXBwb3J0IFBIWSBvbiB0aGUg
QkNNNDkwOCIpCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgo+IC0tLQo+IFJlZ2FyZGluZyB0aGUgKFNUQidzKSBTVU5fVE9QX0NUUkxfQ0hJUF9GQU1J
TFlfSUQ6IEkgdHJpZWQgcmVhZGluZyA0Cj4gZXh0cmEgUEhZIGJsb2NrIHJlZ2lzdGVyczoKPiAj
ZGVmaW5lIFVTQl9DVFJMX1VTQjIwX0lEICAgICAgICAgICAgICAweGYwCj4gI2RlZmluZSBVU0Jf
Q1RSTF9VU0IzMF9JRCAgICAgICAgICAgICAgMHhmNAo+ICNkZWZpbmUgVVNCX0NUUkxfQkRDX0NP
UkVJRCAgICAgICAgICAgIDB4ZjgKPiAjZGVmaW5lIFVTQl9DVFJMX1VTQl9SRVZJRCAgICAgICAg
ICAgICAweGZjCj4gCj4gYnV0IGRpZG4ndCBnZXQgYW55dGhpbmcgaW50ZXJlc3Rpbmc6Cj4gMHhk
MDU0Mjk4YQo+IDB4YzIzMDAyMDEKPiAweDAwMDAzMDEyCj4gMHgwMDAwMDAwMQo+IAo+IEkgYWxz
byB0cmllZCBQRVJGJ3MgYmxvY2sgUmV2SUQgcmVnaXN0ZXIgKDB4ZmY4MDAwMDApIGFuZCBhY3R1
YWxseSBmb3VuZAo+IGNoaXBzZXQgbnVtYmVyIHRoZXJlOgo+IDB4NDkwODAxYTAKPiBidXQgaXQg
dXNlcyBkaWZmZXJlbnQgZm9ybWF0IGFuZCBzZWVtcyB0byBjb250YWluIGRpZmZlcmVudCBpbmZv
IHRoYW4KPiB3aGF0IHdlIGtub3cgZnJvbSBTVEIuCgpZb3UgY291bGQgY29uc2lkZXIgaW1wbGVt
ZW50aW5nIGEgc29jX2RldmljZSBkcml2ZXIgZm9yIEJDTTYzeHgvNDkwOCAKU29DcyBhbmQgdXNl
IHRoZSBQRVJGIFJldklEIHJlZ2lzdGVyLgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkg
PGYuZmFpbmVsbGlAZ21haWwuY29tPgotLSAKRmxvcmlhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
