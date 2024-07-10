Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7D3C38150
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 06:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FviRVn/HdPNZN00GXSqt5B4AX1C7PWtp+bGc+aMNd/4=; b=LzndXZUXgjHwGs
	HfsHMfhAMSKkr6QT8BKgj8CJFZLyBcCHuOGClVOcRFETQOqChpXBK/Ouy/YyaqPJNs3YUlzH3faVW
	paodr+GpJrSBRgqBvt9Jt9s4FNwgs+CTAZDPuh9scswhVtG+ztYB110+fkQ9DD2GPn1Hl88nAosKN
	RKPQU+kFUHZVPBOzjicblF9VIddXvbyFm8gLLN/+35rPvhIXjq1jsZVQHUOnqADlQe5ELNgPrWJrU
	xCVJl8siuYSwkez9bkFBFIOHHdu9EjCjf4STvYIHFDSNL5zEwMqEnkIqQiGVjoS22dRSNtD78ekz/
	rZ57MbuhAWY7uRUT05rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRR4v-00000009di8-4770;
	Wed, 10 Jul 2024 06:45:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRR4u-00000009dhf-1RyY
	for linux-phy@bombadil.infradead.org;
	Wed, 10 Jul 2024 06:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=7aZECrEA5tQWlK6pbaSqNy3VIVWi6gzN6CRcwSGtkk8=; b=kn6Y/B5c1sEreb9xU2UajIrkOt
	X2fEZktnGlCKIOrcG9OVg2UqxxgStRkLlhGietCSpRLxhBAO1G2bIKR60oHLV9lXciPu7bDA7EfGh
	F7iMqmZUSbWCTsochY/wMhqu3kmR7cUuEg6x6WWUzb4rZehWmctUWhw7o6teFKMzJGfIvMrxLU5jd
	MI0+qLV8icxPz5fjUdXsUOjQtisqVLP0ypVVgEv9SFmkOyZ24T2U4d48FRF08Huw4i42mPkONIM7T
	xUcUqT7JRo6GkGrOikSBELm8nmECpSY5KecZd46CHosBSLY02knyKh04zmaqduv+BfR5D7BM1Wugf
	0vm467lA==;
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRR4q-00000000rsB-30oh
	for linux-phy@lists.infradead.org;
	Wed, 10 Jul 2024 06:45:22 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a77d85f7fa3so70882066b.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Jul 2024 23:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720593917; x=1721198717; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7aZECrEA5tQWlK6pbaSqNy3VIVWi6gzN6CRcwSGtkk8=;
        b=IIYGEgk01zc37xXRMBvvsVNigFiCFDG2EBVYNbNT1yW6FfCGBiVbmmxcykj2z5bXmd
         x2mZ55qiM75HQJxYoYQ8NZUBpENqDFc1hoW2TQ9ttM93lDRLeXx2Q3jmTPsPe9Fz9+sq
         ss6JnaMDR673Xi8XsGvjUMWs3GgTBTvDVD8YWP6XQrtvVjKMR7uIai9/xG61N3XUs+tO
         Bi0IW7Jo1kY/eQr7BXbF7dgCv83a+pLgwgD/V/9JJ6IR31Ohr3k6l7hsSiwmRVCv12zP
         e9cDvSsFVISYjhqyC1g93II52Ysp6oJobUfECemMjK7Arp7lTpOQYrVzyOM+z3iQjNXS
         VazQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720593917; x=1721198717;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7aZECrEA5tQWlK6pbaSqNy3VIVWi6gzN6CRcwSGtkk8=;
        b=GE7St3sPgjk9k4IXI6E2dO72DpBgidGWgtK0CH4DQ4fRbBxRQSYYE3T1C0tsBtGKu+
         1YuGZ3z0ufIKx/yT0xjTPP0wS6dd8QfdI5ZD0TseXFPU9v+AKYKnEEHXRX9eTK5L2rc5
         mlrVSfueSt+noZqvscZlmOm/PJi3AR8dSq021x0LDzrz+RgRTljqmOvqn83FbcDdQCmE
         WENSI869kW6jVJ9zJhCLizqhNe/Ql+fCmqxegWUC5iQmA3MxZGl94FytObGcEe0mK7a9
         YE+UvNmbL68gwhBG48Z32nKx5X+xAL9p5eUNXBoTPLnZC5psUn2QJ28pGrVEe97t+EKS
         I20w==
X-Forwarded-Encrypted: i=1; AJvYcCXzHMqm/voFC+JPyibyYFVD6ux7Ct0RGS3n5Sr6dlaUn6VOgmBiwdYt8FBEWSo3tDgbG34DEpRMCcun9Ofh0iqT4EsbqS6UuwCWzUAinA==
X-Gm-Message-State: AOJu0Yzljkb0+J83meLbVJW+ayu7575hG0yR6oJDiEaUixpYRH+nJULF
	DzcO76h1hk19nsLPUbo5tHvQmmAJ+0sTBUDi00VVzlyhk85XyZETkh5qjDqeX6A=
X-Google-Smtp-Source: AGHT+IHw00t1Zg30xrx1hACKh7awa0kbStIosk2q3dxs2TJLXa5CTmZFvqt9t2YMS5YHAWLuzCeAww==
X-Received: by 2002:a17:907:60d2:b0:a6f:e0f0:d669 with SMTP id a640c23a62f3a-a780d218c40mr341081266b.12.1720593916943;
        Tue, 09 Jul 2024 23:45:16 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a86f620sm132214766b.209.2024.07.09.23.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 23:45:16 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 10 Jul 2024 07:45:07 +0100
Subject: [PATCH] phy: exynos5-usbdrd: convert some FIELD_PREP_CONST() to
 FIELD_PREP()
MIME-Version: 1.0
Message-Id: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPItjmYC/x2MWwqAIBAArxL73YLay7pK9FG55UKYKEQh3T3pc
 wZmEkQKTBGGIkGgiyOfLoMsC1jt7HZCNplBCVWLTgr09sGN6TDoA3lcqO21MpVWsoEcZbnx/Q/
 H6X0/orbl02AAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_074521_077322_35DF7963 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

VXNlIG9mIEZJRUxEX1BSRVBfQ09OU1QoKSB3YXMgYSB0aGlua28gLSBpdCdzIG1lYW50IHRvIGJl
IHVzZWQgZm9yCihjb25zdGFudCkgaW5pdGlhbGlzZXJzLCBub3QgY29uc3RhbnQgdmFsdWVzLgoK
VXNlIEZJRUxEX1BSRVAoKSB3aGVyZSBwb3NzaWJsZS4gSXQgaGFzIGJldHRlciBlcnJvciBjaGVj
a2luZyBhbmQgaXMKdGhlcmVmb3JlIHRoZSBwcmVmZXJyZWQgbWFjcm8gdG8gdXNlIGluIHRob3Nl
IGNhc2VzLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGlu
YXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwg
MTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGRm
NTJiNzhhMTIwYi4uMGNjNWM0MjQ5NDQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMKQEAgLTYwNyw3ICs2MDcsNyBAQCBleHlub3M1X3VzYmRyZF91c2JkcF9nMl92
NF9jdHJsX3BtYV9yZWFkeShzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQogCiAJ
cmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9TRUNQTUFDVEwpOwogCXJlZyAm
PSB+U0VDUE1BQ1RMX1BNQV9SRUZfRlJFUV9TRUw7Ci0JcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1Qo
U0VDUE1BQ1RMX1BNQV9SRUZfRlJFUV9TRUwsIDEpOworCXJlZyB8PSBGSUVMRF9QUkVQKFNFQ1BN
QUNUTF9QTUFfUkVGX0ZSRVFfU0VMLCAxKTsKIAkvKiBTRlIgcmVzZXQgKi8KIAlyZWcgfD0gKFNF
Q1BNQUNUTF9QTUFfTE9XX1BXUiB8IFNFQ1BNQUNUTF9QTUFfQVBCX1NXX1JTVCk7CiAJcmVnICY9
IH4oU0VDUE1BQ1RMX1BNQV9ST1BMTF9SRUZfQ0xLX1NFTCB8CkBAIC0xMTIzLDE5ICsxMTIzLDE5
IEBAIHN0YXRpYyB2b2lkIGV4eW5vczg1MF91c2JkcmRfdXRtaV9pbml0KHN0cnVjdCBleHlub3M1
X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJcmVnICY9IH5TU1BQTExDVExfRlNFTDsKIAlzd2l0Y2gg
KHBoeV9kcmQtPmV4dHJlZmNsaykgewogCWNhc2UgRVhZTk9TNV9GU0VMXzUwTUhaOgotCQlyZWcg
fD0gRklFTERfUFJFUF9DT05TVChTU1BQTExDVExfRlNFTCwgNyk7CisJCXJlZyB8PSBGSUVMRF9Q
UkVQKFNTUFBMTENUTF9GU0VMLCA3KTsKIAkJYnJlYWs7CiAJY2FzZSBFWFlOT1M1X0ZTRUxfMjZN
SFo6Ci0JCXJlZyB8PSBGSUVMRF9QUkVQX0NPTlNUKFNTUFBMTENUTF9GU0VMLCA2KTsKKwkJcmVn
IHw9IEZJRUxEX1BSRVAoU1NQUExMQ1RMX0ZTRUwsIDYpOwogCQlicmVhazsKIAljYXNlIEVYWU5P
UzVfRlNFTF8yNE1IWjoKLQkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUws
IDIpOworCQlyZWcgfD0gRklFTERfUFJFUChTU1BQTExDVExfRlNFTCwgMik7CiAJCWJyZWFrOwog
CWNhc2UgRVhZTk9TNV9GU0VMXzIwTUhaOgotCQlyZWcgfD0gRklFTERfUFJFUF9DT05TVChTU1BQ
TExDVExfRlNFTCwgMSk7CisJCXJlZyB8PSBGSUVMRF9QUkVQKFNTUFBMTENUTF9GU0VMLCAxKTsK
IAkJYnJlYWs7CiAJY2FzZSBFWFlOT1M1X0ZTRUxfMTlNSFoyOgotCQlyZWcgfD0gRklFTERfUFJF
UF9DT05TVChTU1BQTExDVExfRlNFTCwgMCk7CisJCXJlZyB8PSBGSUVMRF9QUkVQKFNTUFBMTENU
TF9GU0VMLCAwKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJZGV2X3dhcm4ocGh5X2RyZC0+ZGV2
LCAidW5zdXBwb3J0ZWQgcmVmIGNsazogJSMuMnhcbiIsCgotLS0KYmFzZS1jb21taXQ6IDgyZDAx
ZmU2ZWU1MjA4NjAzNWIyMDFjZmExNDEwYTNiMDQzODQyNTcKY2hhbmdlLWlkOiAyMDI0MDcxMC1w
aHktZmllbGQtcHJlcC1iZTY5ODJkMzgyMTUKCkJlc3QgcmVnYXJkcywKLS0gCkFuZHLDqSBEcmFz
emlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
