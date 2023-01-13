Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70E71C61DB3
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 15:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FP4Kk3Du1S+Zn/nuIU9aLp4z0wXlTjIydYpMYaUs77Y=; b=AvO9Sf5BsHtnag
	AvoLYYukJ7klThglTN7POeyyNphmvBNRppxhP6Lua/sFBSisrApVnf8ZF7JY57SOn3LWNp5NH8IJQ
	spWPcU7HhQzT/zXAm8g4yVnUTYiEb9bJv+WhWI2hk8DoGfif9XC8Hwy8C8kkkB+Pds+rkufqffnNn
	FZmrYsLNzuNN0OuvNnCoAA5yb6pDxY07WHD6j4Wbc5LErmIrXzpnVIBjtGRRHqyqnmFKSRphciZKf
	o+mOFifOEgG5wnPAklgEAbiot6rfv5mDP8yk3aCWzIqqpCpF+rGUDoEZ+F4BMH0N7en+Udcri0q1U
	9KOSTQap3bebFLEQl06A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLeF-0036Sa-Sv; Fri, 13 Jan 2023 15:07:15 +0000
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLeC-0036Qz-T8
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 15:07:14 +0000
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198]) by mx-outbound23-220.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 13 Jan 2023 15:07:10 +0000
Received: by mail-pg1-f198.google.com with SMTP id f132-20020a636a8a000000b00473d0b600ebso9934698pgc.14
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 07:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HbRGp4p8llZk1W2l8huKtE8ynztaxnnEWZGQtpnZTOI=;
        b=dGvYv+WYBC50wTVzwAJTgsk5pyoEsceJdZ5OMbvQDoXU4V7Hf4vLyvB7VAezKtAVvp
         g72OaNcztylGRqgPXeq5Rn7UbFMWQnOq3uR8saS0VYfapBZhfCY1RTzU4c/AY69o8yi4
         ryPIITSLRq+At6HIGHBXXp6MnvR12GITn5aro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HbRGp4p8llZk1W2l8huKtE8ynztaxnnEWZGQtpnZTOI=;
        b=E3I8gtht5mzJ3LX766kqYmANT871Qopwu8aKFgOWnm4VCXxgqUmx4b/VCC5ozNxTgs
         Hwp4HiJI3Pj8zSfYK+tzJf+BY/g7bSN9YqxXr9Ga3ksvumrV+p4B2ozGPCkr97cX5uqp
         MuSx9UP4S7dkC2sr1kto4MqLVdNHIZQ0hb91V4K8vILb2EvgOmaeomlG2WpY8YEe5V8l
         X9+1NRCXEiyNHoo7rimzWdxT7zj22Lck1wnE1C2pq8LKlJ/AZ85hNvgXaD3EBwlRLYw3
         TUMx4yb/KMCW0QSKqbRteGmDF/TxujBxh/uILJbVWtkRK6LKPweQGpnZCUYGYlRJwj+U
         B2Ww==
X-Gm-Message-State: AFqh2kqQEiBuwoLVGliq0NeNLWqfGk1wtFLRif5LHHN7erj/+6Z8ZjrV
	ni3NoUdr5wbqAIrJXmm/UJgOAla6Ggy32OJA9yxBENeqj5gVqoUarBXQLEN9c/H+9oZemnM50SH
	XA0ciViGMbT9d7SLoQ2ay3ldj0nISUAYULkHbBGArVJSh9Xrn/m4Q3vnd5wVdig==
X-Received: by 2002:a17:902:bb85:b0:189:8ca1:e641 with SMTP id m5-20020a170902bb8500b001898ca1e641mr80498987pls.60.1673622429056;
        Fri, 13 Jan 2023 07:07:09 -0800 (PST)
X-Google-Smtp-Source: AMrXdXscZmErgOwVL6tBvKuitY7Ib1z13zgRMu2ttD4v7LZfAmey7RhM9DZ9ozf9VslikARPV/ITGQ==
X-Received: by 2002:a17:902:bb85:b0:189:8ca1:e641 with SMTP id m5-20020a170902bb8500b001898ca1e641mr80498971pls.60.1673622428746;
        Fri, 13 Jan 2023 07:07:08 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id v11-20020a170902f0cb00b00180033438a0sm14325723pla.106.2023.01.13.07.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 07:07:08 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Roger Quadros <rogerq@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V4 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap
Date: Fri, 13 Jan 2023 20:36:15 +0530
Message-Id: <20230113150615.19375-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230113150615.19375-1-sinthu.raja@ti.com>
References: <20230113150615.19375-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1673622429-306108-5560-20416-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.215.198
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245440 [from 
	cloudscan16-188.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_070713_111376_9C583F13 
X-CRM114-Status: GOOD (  19.27  )
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

RnJvbTogU2ludGh1IFJhamEgPHNpbnRodS5yYWphQHRpLmNvbT4KClRoZcKgV0laIGFjdHMgYXMg
YSB3cmFwcGVyIGZvciBTZXJEZXMgYW5kwqBoYXPCoExhbmVzIDAgYW5kwqAyIHJlc2VydmVkCmZv
ciBVU0IgZm9yIHR5cGUtQyBsYW5lIHN3YXAgaWYgTGFuZSAxIGFuZCBMYW5lIDMgYXJlIGxpbmtl
ZCB0byB0aGUKVVNCIFBIWSB0aGF0IGlzIGludGVncmF0ZWQgaW50byB0aGUgU2VyRGVzIElQLiBU
aGUgV0laIGNvbnRyb2wgcmVnaXN0ZXIKaGFzIHRvIGJlIGNvbmZpZ3VyZWQgdG8gc3VwcG9ydCB0
aGlzIGxhbmUgc3dhcCBmZWF0dXJlLgoKVGhlIHN1cHBvcnQgZm9yIHN3YXBwaW5nIGxhbmVzIDIg
YW5kIDMgaXMgbWlzc2luZyBhbmQgdGhlcmVmb3JlCmFkZCBzdXBwb3J0IHRvIGNvbmZpZ3VyZSB0
aGUgY29udHJvbCByZWdpc3RlciB0byBzd2FwIGJldHdlZW4KbGFuZXMgMiBhbmQgMyBpZiBQSFkg
dHlwZSBpcyBVU0IuCgpTaWduZWQtb2ZmLWJ5OiBTaW50aHUgUmFqYSA8c2ludGh1LnJhamFAdGku
Y29tPgpSZXZpZXdlZC1ieTogUm9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+Ci0tLQoK
Q2hhbmdlcyBpbiBWNDoKPT09PT09PT09PT09Ci0gQWRkIFJldmlldyB0YWcuCi0gRml4IGNoZWNr
cGF0Y2ggQ0hFQ0sgZXJyb3JzLgogKiBSZW1vdmUgdW5uZWNlc3NhcnkgcGFyYW50aGVzaXMuCiAq
IEF2b2lkIGxvZ2ljYWwgY29udGludWF0aW9ucyBpbiBtdWx0aXBsZSBsaW5lcy4KCkNoYW5nZXMg
aW4gVjM6Cj09PT09PT09PT09PT0KQWRkcmVzcyByZXZpZXcgY29tbWVudHM6Ci0gVXBkYXRlIGNv
bW1lbnQgdG8gbWVudGlvbiB0aGUgTE4yMyBTV0FQIGFsb25nIHdpdGggdGhlIExOMTAKCkNoYW5n
ZXMgaW4gVjI6Cj09PT09PT09PT09PT0KQWRkcmVzcyByZXZpZXcgY29tbWVudHM6Ci0gVXBkYXRl
IGNvbW1pdCBkZXNjcmlwdGlvbi4KLSBSZW5hbWUgZW51bSB2YXJpYWJsZSBuYW1lIGZyb20gd2l6
X2xhbmVfdHlwZWNfc3dhcF9tb2RlIHRvIHdpel90eXBlY19tYXN0ZXJfbGFuZS4KLSBSZW5hbWUg
ZW51bWVyYXRvcnMgbmFtZSBzcGVjaWZpYyB0byBsaXN0IG9mIG1hc3RlciBsYW5lcyB1c2VkIGZv
ciBsYW5lIHN3YXBwaW5nLgotIEFkZCBpbmxpbmUgY29tbWVudHMuCgogZHJpdmVycy9waHkvdGkv
cGh5LWo3MjFlLXdpei5jIHwgMzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIGIvZHJpdmVycy9waHkvdGkvcGh5
LWo3MjFlLXdpei5jCmluZGV4IGI1YzFiODJlOTlhNi4uMWI4M2M5OGE3OGYwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKKysrIGIvZHJpdmVycy9waHkvdGkvcGh5
LWo3MjFlLXdpei5jCkBAIC01OCw2ICs1OCwxNCBAQCBlbnVtIHdpel9sYW5lX3N0YW5kYXJkX21v
ZGUgewogCUxBTkVfTU9ERV9HRU40LAogfTsKIAorLyoKKyAqIExpc3Qgb2YgbWFzdGVyIGxhbmVz
IHVzZWQgZm9yIGxhbmUgc3dhcHBpbmcKKyAqLworZW51bSB3aXpfdHlwZWNfbWFzdGVyX2xhbmUg
eworCUxBTkUwID0gMCwKKwlMQU5FMiA9IDIsCit9OworCiBlbnVtIHdpel9yZWZjbGtfbXV4X3Nl
bCB7CiAJUExMMF9SRUZDTEssCiAJUExMMV9SRUZDTEssCkBAIC0xOTQsNiArMjAyLDkgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdfZmllbGQgcF9tYWNfZGl2X3NlbDFbV0laX01BWF9MQU5FU10g
PSB7CiBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19maWVsZCB0eXBlY19sbjEwX3N3YXAgPQogCQkJ
CQlSRUdfRklFTEQoV0laX1NFUkRFU19UWVBFQywgMzAsIDMwKTsKIAorc3RhdGljIGNvbnN0IHN0
cnVjdCByZWdfZmllbGQgdHlwZWNfbG4yM19zd2FwID0KKwkJCQkJUkVHX0ZJRUxEKFdJWl9TRVJE
RVNfVFlQRUMsIDMxLCAzMSk7CisKIHN0cnVjdCB3aXpfY2xrX211eCB7CiAJc3RydWN0IGNsa19o
dwkJaHc7CiAJc3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGQ7CkBAIC0zNjcsNiArMzc4LDcgQEAg
c3RydWN0IHdpeiB7CiAJc3RydWN0IHJlZ21hcF9maWVsZAkqbXV4X3NlbF9maWVsZFtXSVpfTVVY
X05VTV9DTE9DS1NdOwogCXN0cnVjdCByZWdtYXBfZmllbGQJKmRpdl9zZWxfZmllbGRbV0laX0RJ
Vl9OVU1fQ0xPQ0tTXzE2R107CiAJc3RydWN0IHJlZ21hcF9maWVsZAkqdHlwZWNfbG4xMF9zd2Fw
OworCXN0cnVjdCByZWdtYXBfZmllbGQJKnR5cGVjX2xuMjNfc3dhcDsKIAlzdHJ1Y3QgcmVnbWFw
X2ZpZWxkCSpzdXBfbGVnYWN5X2Nsa19vdmVycmlkZTsKIAogCXN0cnVjdCBkZXZpY2UJCSpkZXY7
CkBAIC02NzYsNiArNjg4LDEzIEBAIHN0YXRpYyBpbnQgd2l6X3JlZ2ZpZWxkX2luaXQoc3RydWN0
IHdpeiAqd2l6KQogCQlyZXR1cm4gUFRSX0VSUih3aXotPnR5cGVjX2xuMTBfc3dhcCk7CiAJfQog
CisJd2l6LT50eXBlY19sbjIzX3N3YXAgPSBkZXZtX3JlZ21hcF9maWVsZF9hbGxvYyhkZXYsIHJl
Z21hcCwKKwkJCQkJCSAgICAgICB0eXBlY19sbjIzX3N3YXApOworCWlmIChJU19FUlIod2l6LT50
eXBlY19sbjIzX3N3YXApKSB7CisJCWRldl9lcnIoZGV2LCAiTE4yM19TV0FQIHJlZyBmaWVsZCBp
bml0IGZhaWxlZFxuIik7CisJCXJldHVybiBQVFJfRVJSKHdpei0+dHlwZWNfbG4yM19zd2FwKTsK
Kwl9CisKIAl3aXotPnBoeV9lbl9yZWZjbGsgPSBkZXZtX3JlZ21hcF9maWVsZF9hbGxvYyhkZXYs
IHJlZ21hcCwgcGh5X2VuX3JlZmNsayk7CiAJaWYgKElTX0VSUih3aXotPnBoeV9lbl9yZWZjbGsp
KSB7CiAJCWRldl9lcnIoZGV2LCAiUEhZX0VOX1JFRkNMSyByZWcgZmllbGQgaW5pdCBmYWlsZWRc
biIpOwpAQCAtMTI0NiwxNyArMTI2NSwyNiBAQCBzdGF0aWMgaW50IHdpel9waHlfcmVzZXRfZGVh
c3NlcnQoc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2RldiwKIAkJCWVsc2UKIAkJCQly
ZWdtYXBfZmllbGRfd3JpdGUod2l6LT50eXBlY19sbjEwX3N3YXAsIDApOwogCQl9IGVsc2Ugewot
CQkJLyogaWYgbm8gdHlwZWMtZGlyIGdwaW8gd2FzIHNwZWNpZmllZCBhbmQgUEhZIHR5cGUgaXMK
LQkJCSAqIFVTQjMgd2l0aCBtYXN0ZXIgbGFuZSBudW1iZXIgaXMgJzAnLCBzZXQgTE4xMCBTV0FQ
Ci0JCQkgKiBiaXQgdG8gJzEnCisJCQkvKiBpZiBubyB0eXBlYy1kaXIgZ3BpbyBpcyBzcGVjaWZp
ZWQgYW5kIFBIWSB0eXBlIGlzIFVTQjMKKwkJCSAqIHdpdGggbWFzdGVyIGxhbmUgbnVtYmVyIGlz
ICcwJyBvciAnMicsIHRoZW4gc2V0IExOMTAgb3IKKwkJCSAqIExOMjMgU1dBUCBiaXQgdG8gJzEn
IHJlc3BlY3RpdmVseS4KIAkJCSAqLwogCQkJdTMyIG51bV9sYW5lcyA9IHdpei0+bnVtX2xhbmVz
OwogCQkJaW50IGk7CiAKIAkJCWZvciAoaSA9IDA7IGkgPCBudW1fbGFuZXM7IGkrKykgewotCQkJ
CWlmICh3aXotPmxhbmVfcGh5X3R5cGVbaV0gPT0gUEhZX1RZUEVfVVNCMykKLQkJCQkJaWYgKHdp
ei0+bWFzdGVyX2xhbmVfbnVtW2ldID09IDApCisJCQkJaWYgKHdpei0+bGFuZV9waHlfdHlwZVtp
XSA9PSBQSFlfVFlQRV9VU0IzKSB7CisJCQkJCXN3aXRjaCAod2l6LT5tYXN0ZXJfbGFuZV9udW1b
aV0pIHsKKwkJCQkJY2FzZSBMQU5FMDoKIAkJCQkJCXJlZ21hcF9maWVsZF93cml0ZSh3aXotPnR5
cGVjX2xuMTBfc3dhcCwgMSk7CisJCQkJCQlicmVhazsKKwkJCQkJY2FzZSBMQU5FMjoKKwkJCQkJ
CXJlZ21hcF9maWVsZF93cml0ZSh3aXotPnR5cGVjX2xuMjNfc3dhcCwgMSk7CisJCQkJCQlicmVh
azsKKwkJCQkJZGVmYXVsdDoKKwkJCQkJCWJyZWFrOworCQkJCQl9CisJCQkJfQogCQkJfQogCQl9
CiAJfQotLSAKMi4zNi4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
