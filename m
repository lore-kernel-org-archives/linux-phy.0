Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6833EC5479D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 11:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZP1w3CAF5AeC2iATmH+19Wou7mjUPAXxzJeCDK098k=; b=uJRbZnyLJx6l/X
	N73aLXTDNsF4jaN/Df5fP67lUMtKJKPibqBoD+IpBxSy9Bw31RVHsG2CBHk0TL08ZGnl4N8Fvq1mu
	oLZn2n+GHPQoMtw4NMp3MKmO7alliV8T/TkoFG1m8Funj16hsXsCrnpHcsKDTuQB+l8WDScdHLsQJ
	eLPjggDHg2t0q9wQNNK8NQhWsuaGqm+L8EjGSpbP4Eh8s5nlyF78egzKpPnDHsGG74ShGsnS9r9K7
	ik7FbJRXpW0bqcor4IrnvVgsKeV4tkn22wUqVyqGgbc4LGeULsjqVOnzIgvvP0lh9hc2ZfBDwlQDW
	WMkRwN/KPb6Q8e2sw1gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3v-00B1ae-Pt; Wed, 11 Jan 2023 11:14:31 +0000
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3p-00B1Wv-Gg
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 11:14:28 +0000
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71]) by mx-outbound19-234.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 11 Jan 2023 11:14:23 +0000
Received: by mail-pj1-f71.google.com with SMTP id r17-20020a17090aa09100b0021903e75f14so6237534pjp.9
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 03:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+lvNR7sT5nJHo2oJx3RW/RR3QkiYLJPpOGF0D0gk7M=;
        b=Wnl5gH7YzP3R60QGXUiJ7XpF+uRHfX2RX0pvEgiSLju/RuyQsirbnIfWkAqmjB+qwY
         ifFr77RXR504i/LCSfDFdFMBjW/56AN2sxqHV2juxG5ZpHRUokfAyPeDbVmiX7NSLIBK
         KUAAnP/cdtDZyT2uF5Nm7zT88FcrF5j5VCYJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+lvNR7sT5nJHo2oJx3RW/RR3QkiYLJPpOGF0D0gk7M=;
        b=6sjSzhrn64j9i9i8g6UtQ08v1WEu1UpE9VwBiQXtG0Ax6WZ1EgDgvJZHjmcNcUvGOu
         vOF+M8y1T3CK6B/Hw7eF37uvmhWFMEacCWkGe3i+Uup69/QRBl3GPLGa66bGrZ6/JY2W
         cOn9B2rZQNCofR44CEdn3EBpRUFuqfbvZ4IQxVnI4aK8rC9cvFgSc0RtIuLv3oOuS9Ne
         DvxXdhThdGykC9E65tjDqCBIBdb+z0EBQQyXBGbDWOyyIV6bUVaVVTmmapAIKLOIuu+S
         w9p4hiq3RHxggHrO1mwlTj+akisPo3L84XjjimTXcdzodogBlf9xSWWpPnO8EI1UW5IT
         mYrg==
X-Gm-Message-State: AFqh2kr1QEZO3IaYhFu9XhHKeUuMQ0ab+Zj/N2C14eaafYrjpH/VLCe/
	tGXW3t/QY6kzqWns5Ii/aSyDO9MDMJ6qlaT67FvEnPwthq+H6yDBwocrvsV59SJP+T6plVZcfxr
	V34buDHeVHyMctworCIPkakAD2SYnjeXXNAtf3Dt/0ZuFRYRwdVNEj3q6eKe5/Q==
X-Received: by 2002:a62:b609:0:b0:583:319a:4425 with SMTP id j9-20020a62b609000000b00583319a4425mr19875858pff.29.1673435662040;
        Wed, 11 Jan 2023 03:14:22 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvLBdwvvsrbXBGXFlMuh0aX1/oWSI/AQgzw7d9Vffxw2ERBrItjmq1m/NVm9puoIw4susynCw==
X-Received: by 2002:a62:b609:0:b0:583:319a:4425 with SMTP id j9-20020a62b609000000b00583319a4425mr19875838pff.29.1673435661721;
        Wed, 11 Jan 2023 03:14:21 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id d206-20020a621dd7000000b00589ed7ae132sm4235666pfd.13.2023.01.11.03.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 03:14:21 -0800 (PST)
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
Subject: [PATCH V3 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap
Date: Wed, 11 Jan 2023 16:43:56 +0530
Message-Id: <20230111111356.17392-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230111111356.17392-1-sinthu.raja@ti.com>
References: <20230111111356.17392-1-sinthu.raja@ti.com>
MIME-Version: 1.0
X-BESS-ID: 1673435662-305098-5383-441-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.71
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245393 [from 
	cloudscan21-36.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_031425_747393_D0C41AFE 
X-CRM114-Status: GOOD (  19.34  )
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
Y29tPgotLS0KCkNoYW5nZXMgaW4gVjM6Cj09PT09PT09PT09PT0KQWRkcmVzcyByZXZpZXcgY29t
bWVudHM6Ci0gVXBkYXRlIGNvbW1lbnQgdG8gbWVudGlvbiB0aGUgTE4yMyBTV0FQIGFsb25nIHdp
dGggdGhlIExOMTAKCkNoYW5nZXMgaW4gVjI6Cj09PT09PT09PT09PT0KQWRkcmVzcyByZXZpZXcg
Y29tbWVudHM6Ci0gVXBkYXRlIGNvbW1pdCBkZXNjcmlwdGlvbi4KLSBSZW5hbWUgZW51bSB2YXJp
YWJsZSBuYW1lIGZyb20gd2l6X2xhbmVfdHlwZWNfc3dhcF9tb2RlIHRvIHdpel90eXBlY19tYXN0
ZXJfbGFuZS4KLSBSZW5hbWUgZW51bWVyYXRvcnMgbmFtZSBzcGVjaWZpYyB0byBsaXN0IG9mIG1h
c3RlciBsYW5lcyB1c2VkIGZvciBsYW5lIHN3YXBwaW5nLgotIEFkZCBpbmxpbmUgY29tbWVudHMu
CgogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMzkgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIGIv
ZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IDU3MWYwY2ExODg3NC4uY2QyZjI2
NzJjMDk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKKysrIGIv
ZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCkBAIC01OCw2ICs1OCwxNCBAQCBlbnVtIHdp
el9sYW5lX3N0YW5kYXJkX21vZGUgewogCUxBTkVfTU9ERV9HRU40LAogfTsKIAorLyoKKyAqIExp
c3Qgb2YgbWFzdGVyIGxhbmVzIHVzZWQgZm9yIGxhbmUgc3dhcHBpbmcKKyAqLworZW51bSB3aXpf
dHlwZWNfbWFzdGVyX2xhbmUgeworCUxBTkUwID0gMCwKKwlMQU5FMiA9IDIsCit9OworCiBlbnVt
IHdpel9yZWZjbGtfbXV4X3NlbCB7CiAJUExMMF9SRUZDTEssCiAJUExMMV9SRUZDTEssCkBAIC0x
OTQsNiArMjAyLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdfZmllbGQgcF9tYWNfZGl2X3Nl
bDFbV0laX01BWF9MQU5FU10gPSB7CiBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19maWVsZCB0eXBl
Y19sbjEwX3N3YXAgPQogCQkJCQlSRUdfRklFTEQoV0laX1NFUkRFU19UWVBFQywgMzAsIDMwKTsK
IAorc3RhdGljIGNvbnN0IHN0cnVjdCByZWdfZmllbGQgdHlwZWNfbG4yM19zd2FwID0KKwkJCQkJ
UkVHX0ZJRUxEKFdJWl9TRVJERVNfVFlQRUMsIDMxLCAzMSk7CisKIHN0cnVjdCB3aXpfY2xrX211
eCB7CiAJc3RydWN0IGNsa19odwkJaHc7CiAJc3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGQ7CkBA
IC0zNjcsNiArMzc4LDcgQEAgc3RydWN0IHdpeiB7CiAJc3RydWN0IHJlZ21hcF9maWVsZAkqbXV4
X3NlbF9maWVsZFtXSVpfTVVYX05VTV9DTE9DS1NdOwogCXN0cnVjdCByZWdtYXBfZmllbGQJKmRp
dl9zZWxfZmllbGRbV0laX0RJVl9OVU1fQ0xPQ0tTXzE2R107CiAJc3RydWN0IHJlZ21hcF9maWVs
ZAkqdHlwZWNfbG4xMF9zd2FwOworCXN0cnVjdCByZWdtYXBfZmllbGQJKnR5cGVjX2xuMjNfc3dh
cDsKIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpzdXBfbGVnYWN5X2Nsa19vdmVycmlkZTsKIAogCXN0
cnVjdCBkZXZpY2UJCSpkZXY7CkBAIC02NzYsNiArNjg4LDEzIEBAIHN0YXRpYyBpbnQgd2l6X3Jl
Z2ZpZWxkX2luaXQoc3RydWN0IHdpeiAqd2l6KQogCQlyZXR1cm4gUFRSX0VSUih3aXotPnR5cGVj
X2xuMTBfc3dhcCk7CiAJfQogCisJd2l6LT50eXBlY19sbjIzX3N3YXAgPSBkZXZtX3JlZ21hcF9m
aWVsZF9hbGxvYyhkZXYsIHJlZ21hcCwKKwkJCQkJCSAgICAgICB0eXBlY19sbjIzX3N3YXApOwor
CWlmIChJU19FUlIod2l6LT50eXBlY19sbjIzX3N3YXApKSB7CisJCWRldl9lcnIoZGV2LCAiTE4y
M19TV0FQIHJlZyBmaWVsZCBpbml0IGZhaWxlZFxuIik7CisJCXJldHVybiBQVFJfRVJSKHdpei0+
dHlwZWNfbG4yM19zd2FwKTsKKwl9CisKIAl3aXotPnBoeV9lbl9yZWZjbGsgPSBkZXZtX3JlZ21h
cF9maWVsZF9hbGxvYyhkZXYsIHJlZ21hcCwgcGh5X2VuX3JlZmNsayk7CiAJaWYgKElTX0VSUih3
aXotPnBoeV9lbl9yZWZjbGspKSB7CiAJCWRldl9lcnIoZGV2LCAiUEhZX0VOX1JFRkNMSyByZWcg
ZmllbGQgaW5pdCBmYWlsZWRcbiIpOwpAQCAtMTI0NiwxNyArMTI2NSwyNSBAQCBzdGF0aWMgaW50
IHdpel9waHlfcmVzZXRfZGVhc3NlcnQoc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2Rl
diwKIAkJCWVsc2UKIAkJCQlyZWdtYXBfZmllbGRfd3JpdGUod2l6LT50eXBlY19sbjEwX3N3YXAs
IDApOwogCQl9IGVsc2UgewotCQkJLyogaWYgbm8gdHlwZWMtZGlyIGdwaW8gd2FzIHNwZWNpZmll
ZCBhbmQgUEhZIHR5cGUgaXMKLQkJCSAqIFVTQjMgd2l0aCBtYXN0ZXIgbGFuZSBudW1iZXIgaXMg
JzAnLCBzZXQgTE4xMCBTV0FQCi0JCQkgKiBiaXQgdG8gJzEnCisJCQkvKiBpZiBubyB0eXBlYy1k
aXIgZ3BpbyB3YXMgc3BlY2lmaWVkIGFuZCBQSFkgdHlwZSBpcyBVU0IzCisJCQkgKiB3aXRoIG1h
c3RlciBsYW5lIG51bWJlciBpcyAnMCcgb3IgJzInLCB0aGVuIHNldCBMTjEwIG9yCisJCQkgKiBM
TjIzIFNXQVAgYml0IHRvICcxJyByZXNwZWN0aXZlbHkuCiAJCQkgKi8KIAkJCXUzMiBudW1fbGFu
ZXMgPSB3aXotPm51bV9sYW5lczsKIAkJCWludCBpOwogCiAJCQlmb3IgKGkgPSAwOyBpIDwgbnVt
X2xhbmVzOyBpKyspIHsKLQkJCQlpZiAoKHdpei0+bGFuZV9waHlfdHlwZVtpXSA9PSBQSFlfVFlQ
RV9VU0IzKQotCQkJCQkJJiYgd2l6LT5tYXN0ZXJfbGFuZV9udW1baV0gPT0gMCkgewotCQkJCQly
ZWdtYXBfZmllbGRfd3JpdGUod2l6LT50eXBlY19sbjEwX3N3YXAsIDEpOworCQkJCWlmICh3aXot
PmxhbmVfcGh5X3R5cGVbaV0gPT0gUEhZX1RZUEVfVVNCMykgeworCQkJCQlzd2l0Y2ggKHdpei0+
bWFzdGVyX2xhbmVfbnVtW2ldKSB7CisJCQkJCWNhc2UgTEFORTA6CisJCQkJCQlyZWdtYXBfZmll
bGRfd3JpdGUod2l6LT50eXBlY19sbjEwX3N3YXAsIDEpOworCQkJCQkJYnJlYWs7CisJCQkJCWNh
c2UgTEFORTI6CisJCQkJCQlyZWdtYXBfZmllbGRfd3JpdGUod2l6LT50eXBlY19sbjIzX3N3YXAs
IDEpOworCQkJCQkJYnJlYWs7CisJCQkJCWRlZmF1bHQ6CisJCQkJCQlicmVhazsKKwkJCQkJfQog
CQkJCX0KIAkJCX0KIAkJfQotLSAKMi4zNi4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
