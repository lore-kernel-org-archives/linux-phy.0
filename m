Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1157CC3DA7A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jan 2023 07:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoqKjR47boYzd+2F8KtnHk68QEGKPSAwkDQzrTjuxh8=; b=AQ99S4LHR/u/7w
	yCRtz5L++PH6m5Libn2pzRm1UJzhO5Xte08wxdcznhgjs0dSGye+VabDLL5ZCIVaQwzzVI8CzLZnJ
	yuJg44++8Ypvbq8gdfd8SI/E+HL+jRGhjHep45PjwNWSF3NCOTgWsOcbJsJot3LJrX3YOx2sHZo+2
	LwVzpVZOvrdxurRwptSxKZp1V4YnKb7bRQyDPoY3XJfyqYxqewkyTF0IQgQbzJdmbBJSlF53neZ/B
	E0vpkU1xxntchBxS2MTffLrKOQCollJ/2jmlKr1XabuhNQQMYNA6ZjUGl/tnacyxHHNQCSJhvhFyH
	zAyava1StdrBMuwk0Xkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzP-006Jr4-Cl; Fri, 06 Jan 2023 07:18:07 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzJ-006Jou-S0
	for linux-phy@lists.infradead.org; Fri, 06 Jan 2023 07:18:05 +0000
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197]) by mx-outbound47-78.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 06 Jan 2023 07:17:58 +0000
Received: by mail-pg1-f197.google.com with SMTP id a72-20020a63904b000000b00489753edf13so603110pge.21
        for <linux-phy@lists.infradead.org>; Thu, 05 Jan 2023 23:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U47qPxunUiTYhLuKKBP4Q4lX+fiKt2gn1uBtduLzsvA=;
        b=GjJuhDTRGHhbmnpexrgqtbJUTieXEiVEAhKVYwuRFPtlXPrcbQ5o66CRB6552XxIkL
         sd6H27FBFowXmlrr1bF6xAU3wVZfTQ0XZvS1UNR0MMmoNzb/ZtHvNz63j1ZcOzTuTTmX
         1wcc1flX7dhxfdUx+Jvw97jyzY0i4XHpq1S8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U47qPxunUiTYhLuKKBP4Q4lX+fiKt2gn1uBtduLzsvA=;
        b=BwcJMwKoGXghpCYKHZN2BASKOT5LEPRR0JL5gPPH5zm7XwF3kPZMpLYsOQUyz6MSkT
         HuojvMv9VN9E2+LLHYBhZprHxWS1z+oQ8R7juB4s2oi16CJZSomiCm6lVB2C6SAMk1cw
         nYMOuf05pk8WhE3Wx8ND8gSjjXGCRsRaerQfdT434ZZenNxry0Gpsh9p45CbboQQJA/t
         kt8VvVwFx5vK58t3+N+z7t2MudYGdAE+CIBZ3y1sqlfYcxrZFjBtcuu2ghU2hDF3l00X
         03A6kBdtXPeVF2cWGMZlGYpCjSrRcVEqGXSqDSCEcozBzDsySqR0k5bp2SIkvT4hJBZv
         JhPA==
X-Gm-Message-State: AFqh2krT5+aYYnUbm+fzt3A7/ULz7/myo4RdKKIgqYv8ohcjsGDaLLGB
	qIuQ7zbXtnCTHrLMyqkcndhw+qTpz/dsc5gUpLSE9TkOnj+p3rKrFcz64apavwRse6KcarLGQse
	f64UjThvFYRBc0bD/v2E7WJClzsrji52to6Z2ARaF9ig7CaC7V7askSbF5/gHzw==
X-Received: by 2002:a17:902:e384:b0:191:162f:dbe3 with SMTP id g4-20020a170902e38400b00191162fdbe3mr50417521ple.2.1672989477734;
        Thu, 05 Jan 2023 23:17:57 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvseIPSgj6pQELFrqFNoBhzUv9Hdfnib8K4c07guejAQIRkRqWMDgy6UVT19I+2en07RTrrAQ==
X-Received: by 2002:a17:902:e384:b0:191:162f:dbe3 with SMTP id g4-20020a170902e38400b00191162fdbe3mr50417497ple.2.1672989477389;
        Thu, 05 Jan 2023 23:17:57 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id h5-20020a170902680500b00189348ab156sm138845plk.283.2023.01.05.23.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:17:56 -0800 (PST)
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
Subject: [PATCH V2 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap
Date: Fri,  6 Jan 2023 12:47:14 +0530
Message-Id: <20230106071714.30562-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230106071714.30562-1-sinthu.raja@ti.com>
References: <20230106071714.30562-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1672989478-312110-5400-42729-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.215.197
X-BESS-Outbound-Spam-Score: 0.90
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245283 [from 
	cloudscan8-182.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.90 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_231802_078652_6BFE4922 
X-CRM114-Status: GOOD (  17.99  )
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
Y29tPgotLS0KCkNoYW5nZXMgaW4gVjI6Cj09PT09PT09PT09PT0KQWRkcmVzcyByZXZpZXcgY29t
bWVudHM6Ci0gVXBkYXRlIGNvbW1pdCBkZXNjcmlwdGlvbi4KLSBSZW5hbWUgZW51bSB2YXJpYWJs
ZSBuYW1lIGZyb20gd2l6X2xhbmVfdHlwZWNfc3dhcF9tb2RlIHRvIHdpel90eXBlY19tYXN0ZXJf
bGFuZS4KLSBSZW5hbWUgZW51bWVyYXRvcnMgbmFtZSBzcGVjaWZpYyB0byBsaXN0IG9mIG1hc3Rl
ciBsYW5lcyB1c2VkIGZvciBsYW5lIHN3YXBwaW5nLgotIEFkZCBpbmxpbmUgY29tbWVudHMuCgpW
MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIyMTIxMzEyNDg1NC4zNzc5LTItc2lu
dGh1LnJhamFAdGkuY29tL1QvI201ZTJkMWExNWQ2NDdmNWRmOWRkMjhlZDJkZWRjNGIwODEyZDY0
NjZmCgogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMzMgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKaW5kZXggNTcxZjBjYTE4ODc0Li44MTVl
ODEyNGI5NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYworKysg
Yi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKQEAgLTU4LDYgKzU4LDE0IEBAIGVudW0g
d2l6X2xhbmVfc3RhbmRhcmRfbW9kZSB7CiAJTEFORV9NT0RFX0dFTjQsCiB9OwogCisvKgorICog
TGlzdCBvZiBtYXN0ZXIgbGFuZXMgdXNlZCBmb3IgbGFuZSBzd2FwcGluZworICovCitlbnVtIHdp
el90eXBlY19tYXN0ZXJfbGFuZSB7CisJTEFORTAgPSAwLAorCUxBTkUyID0gMiwKK307CisKIGVu
dW0gd2l6X3JlZmNsa19tdXhfc2VsIHsKIAlQTEwwX1JFRkNMSywKIAlQTEwxX1JFRkNMSywKQEAg
LTE5NCw2ICsyMDIsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19maWVsZCBwX21hY19kaXZf
c2VsMVtXSVpfTUFYX0xBTkVTXSA9IHsKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnX2ZpZWxkIHR5
cGVjX2xuMTBfc3dhcCA9CiAJCQkJCVJFR19GSUVMRChXSVpfU0VSREVTX1RZUEVDLCAzMCwgMzAp
OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19maWVsZCB0eXBlY19sbjIzX3N3YXAgPQorCQkJ
CQlSRUdfRklFTEQoV0laX1NFUkRFU19UWVBFQywgMzEsIDMxKTsKKwogc3RydWN0IHdpel9jbGtf
bXV4IHsKIAlzdHJ1Y3QgY2xrX2h3CQlodzsKIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpmaWVsZDsK
QEAgLTM2Nyw2ICszNzgsNyBAQCBzdHJ1Y3Qgd2l6IHsKIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpt
dXhfc2VsX2ZpZWxkW1dJWl9NVVhfTlVNX0NMT0NLU107CiAJc3RydWN0IHJlZ21hcF9maWVsZAkq
ZGl2X3NlbF9maWVsZFtXSVpfRElWX05VTV9DTE9DS1NfMTZHXTsKIAlzdHJ1Y3QgcmVnbWFwX2Zp
ZWxkCSp0eXBlY19sbjEwX3N3YXA7CisJc3RydWN0IHJlZ21hcF9maWVsZAkqdHlwZWNfbG4yM19z
d2FwOwogCXN0cnVjdCByZWdtYXBfZmllbGQJKnN1cF9sZWdhY3lfY2xrX292ZXJyaWRlOwogCiAJ
c3RydWN0IGRldmljZQkJKmRldjsKQEAgLTY3Niw2ICs2ODgsMTMgQEAgc3RhdGljIGludCB3aXpf
cmVnZmllbGRfaW5pdChzdHJ1Y3Qgd2l6ICp3aXopCiAJCXJldHVybiBQVFJfRVJSKHdpei0+dHlw
ZWNfbG4xMF9zd2FwKTsKIAl9CiAKKwl3aXotPnR5cGVjX2xuMjNfc3dhcCA9IGRldm1fcmVnbWFw
X2ZpZWxkX2FsbG9jKGRldiwgcmVnbWFwLAorCQkJCQkJICAgICAgIHR5cGVjX2xuMjNfc3dhcCk7
CisJaWYgKElTX0VSUih3aXotPnR5cGVjX2xuMjNfc3dhcCkpIHsKKwkJZGV2X2VycihkZXYsICJM
TjIzX1NXQVAgcmVnIGZpZWxkIGluaXQgZmFpbGVkXG4iKTsKKwkJcmV0dXJuIFBUUl9FUlIod2l6
LT50eXBlY19sbjIzX3N3YXApOworCX0KKwogCXdpei0+cGh5X2VuX3JlZmNsayA9IGRldm1fcmVn
bWFwX2ZpZWxkX2FsbG9jKGRldiwgcmVnbWFwLCBwaHlfZW5fcmVmY2xrKTsKIAlpZiAoSVNfRVJS
KHdpei0+cGh5X2VuX3JlZmNsaykpIHsKIAkJZGV2X2VycihkZXYsICJQSFlfRU5fUkVGQ0xLIHJl
ZyBmaWVsZCBpbml0IGZhaWxlZFxuIik7CkBAIC0xMjU0LDkgKzEyNzMsMTcgQEAgc3RhdGljIGlu
dCB3aXpfcGh5X3Jlc2V0X2RlYXNzZXJ0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNk
ZXYsCiAJCQlpbnQgaTsKIAogCQkJZm9yIChpID0gMDsgaSA8IG51bV9sYW5lczsgaSsrKSB7Ci0J
CQkJaWYgKCh3aXotPmxhbmVfcGh5X3R5cGVbaV0gPT0gUEhZX1RZUEVfVVNCMykKLQkJCQkJCSYm
IHdpei0+bWFzdGVyX2xhbmVfbnVtW2ldID09IDApIHsKLQkJCQkJcmVnbWFwX2ZpZWxkX3dyaXRl
KHdpei0+dHlwZWNfbG4xMF9zd2FwLCAxKTsKKwkJCQlpZiAod2l6LT5sYW5lX3BoeV90eXBlW2ld
ID09IFBIWV9UWVBFX1VTQjMpIHsKKwkJCQkJc3dpdGNoICh3aXotPm1hc3Rlcl9sYW5lX251bVtp
XSkgeworCQkJCQljYXNlIExBTkUwOgorCQkJCQkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+dHlw
ZWNfbG4xMF9zd2FwLCAxKTsKKwkJCQkJCWJyZWFrOworCQkJCQljYXNlIExBTkUyOgorCQkJCQkJ
cmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+dHlwZWNfbG4yM19zd2FwLCAxKTsKKwkJCQkJCWJyZWFr
OworCQkJCQlkZWZhdWx0OgorCQkJCQkJYnJlYWs7CisJCQkJCX0KIAkJCQl9CiAJCQl9CiAJCX0K
LS0gCjIuMzYuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
