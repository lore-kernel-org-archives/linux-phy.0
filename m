Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C2EBC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opvmWXEtImPQGJZV9VPXnDFhqrHTP7tFULX7kJ6F4pk=; b=Uw6fUBUqg/Vesv
	DbGIs86LMapTq++hLPlOW+ubTgrfEe5jMlhwf1pvIhsP5lznCkN0+623+xbTacJ6VChFoc3RGjkQj
	fHfO5suTeiguKcft00Hq03nihzWu3S6g1aJY99exRCWAizfhhS9zv+Yb0cj9krTSQPSpSO6Gv3hST
	rTpW15L5IYCxUUuTImO7LsjV1BFXS8kWiOVauAEdMUXob7FI5upwbriflRCu5WxHFy+HAd9IzO+z5
	ncX2KOZ27XXPvYrAiAK/9cINcPu1m9lN7DnQkPYmdvX2CRJ6AuC8BMMvXBCVKxjuciqJMGtVdDusy
	2QWoj22JJSr2i2bOlheQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIKp-005C6V-T0; Mon, 06 Dec 2021 18:03:31 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIO-005Akz-D7; Mon, 06 Dec 2021 18:01:02 +0000
Received: by mail-pg1-x534.google.com with SMTP id q16so11200563pgq.10;
 Mon, 06 Dec 2021 10:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7lGSpdbBtSUGX8TNpVCqyb1N9KeekyFB33Hw0tfwp0Q=;
 b=bub+lU47r+RTeRssGc2TDlza/a1TPsewO1uqfzgN9o/JJbyf3cZ0L5dGxmEUIrWixD
 3UsHOYdPyWgoumBTrdRJL5wnWQ7VY4HDhwvZ2h+FweNKg2j5Ihhua58YTIP2QpzxW1NE
 El4BexW8eoBGrkFkf7ZcdSkHfdUHHxqD2uEIJgd4HHefEf5cuDlmGfyP/qdWJMwft3MD
 H/DItoZDnVzUnFj/8Gxhbu1TIJ/li0W0CWSNHXRPVBl7YqtsXlAx1TRAx7R5lrWkutO2
 2LxTCFy43Yngc+P2txEuDifHiME3SSA7tgyITVuipGWFLHr38kBME2NcOmUvhkgJemhM
 yIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7lGSpdbBtSUGX8TNpVCqyb1N9KeekyFB33Hw0tfwp0Q=;
 b=pHufHE8DMP1JdJBOdQgy11sNk2kpMwfl+pUXi7f76iukfXiRvtOQuiALLIuOlDSkcc
 m0PUZE5auFT5WkLnFvX7Q2kLGy6UBxWAQR+7Lj/IUftoJUspS9aebyE8sxmTaP/6Wjum
 Pu5gSEQjbpzT44HUpQypjhZcZ7oODFk37SY4O8JA+GZva0SfJRpwUU6BCvhyVlBYtFNl
 7ofiOHUKlDtJSkAW8N159BZ6h4VfWf6mbwvppSBStf0SH68I3XSfLm2xav86TsbqvzBs
 RRvINWcaPV6PsDOOSshEZ4H8/z1evzxgDr13vXv0Urrte/m9XBwBgRNuZKdsIkSjqH+9
 Pwqg==
X-Gm-Message-State: AOAM5337IL9ST+idMJqDd9ct23MfNYNl1lY7Ptt96uKOpzn9zV/KaOPx
 24uE4MPIoLZR+0lny9pLKonbSVgUrYo=
X-Google-Smtp-Source: ABdhPJxnQRDGONRk3NqmP47XAMsozQQX7iGhAcfjk61t9xINQJ1Tdldn4MNeuLonI3UDKv/HrIQlFw==
X-Received: by 2002:a63:d04:: with SMTP id c4mr15932769pgl.472.1638813659070; 
 Mon, 06 Dec 2021 10:00:59 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:00:58 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 5/8] dt-bindings: net: Convert AMAC to YAML
Date: Mon,  6 Dec 2021 10:00:46 -0800
Message-Id: <20211206180049.2086907-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100100_508201_0B404A7B 
X-CRM114-Status: GOOD (  16.93  )
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

Q29udmVydCB0aGUgQnJvYWRjb20gQU1BQyBEZXZpY2UgVHJlZSBiaW5kaW5nIHRvIFlBTUwgdG8g
aGVscCB3aXRoCnNjaGVtYSBhbmQgZHRicyBjaGVja2luZy4KClNpZ25lZC1vZmYtYnk6IEZsb3Jp
YW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9icmNtLGFtYWMudHh0ICAgICB8IDMwIC0tLS0tLS0KIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9icmNtLGFtYWMueWFtbCAgICB8IDg4ICsrKysrKysrKysrKysrKysrKysK
IE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiAz
IGZpbGVzIGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQogZGVsZXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxh
bWFjLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvYnJjbSxhbWFjLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy50eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAxMjBlYmU5MzI2Mi4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnR4dAorKysgL2Rldi9udWxsCkBAIC0xLDMwICsw
LDAgQEAKLUJyb2FkY29tIEFNQUMgRXRoZXJuZXQgQ29udHJvbGxlciBEZXZpY2UgVHJlZSBCaW5k
aW5ncwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQotCi1SZXF1aXJlZCBwcm9wZXJ0aWVzOgotIC0gY29tcGF0aWJsZToJImJyY20s
YW1hYyIKLQkJImJyY20sbnNwLWFtYWMiCi0JCSJicmNtLG5zMi1hbWFjIgotIC0gcmVnOgkJQWRk
cmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlciBzZXQgZm9yIHRoZSBkZXZpY2UuIEl0Ci0J
CWNvbnRhaW5zIHRoZSBpbmZvcm1hdGlvbiBvZiByZWdpc3RlcnMgaW4gdGhlIHNhbWUgb3JkZXIg
YXMKLQkJZGVzY3JpYmVkIGJ5IHJlZy1uYW1lcwotIC0gcmVnLW5hbWVzOglOYW1lcyBvZiB0aGUg
cmVnaXN0ZXJzLgotCQkiYW1hY19iYXNlIjoJQWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBHTUFD
IHJlZ2lzdGVycwotCQkiaWRtX2Jhc2UiOglBZGRyZXNzIGFuZCBsZW5ndGggb2YgdGhlIEdNQUMg
SURNIHJlZ2lzdGVycwotCQkJCShyZXF1aXJlZCBmb3IgTlNQIGFuZCBOb3J0aHN0YXIyKQotCQki
bmljcG1fYmFzZSI6CUFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUgTklDIFBvcnQgTWFuYWdlcgot
CQkJCXJlZ2lzdGVycyAocmVxdWlyZWQgZm9yIE5vcnRoc3RhcjIpCi0gLSBpbnRlcnJ1cHRzOglJ
bnRlcnJ1cHQgbnVtYmVyCi0KLVRoZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNp
bmcgdGhlIG9wdGlvbmFsIHByb3BlcnRpZXMKLWRlZmluZWQgaW4gZXRoZXJuZXQudHh0LgotCi1F
eGFtcGxlczoKLQotYW1hYzA6IGV0aGVybmV0QDE4MDIyMDAwIHsKLQljb21wYXRpYmxlID0gImJy
Y20sbnNwLWFtYWMiOwotCXJlZyA9IDwweDE4MDIyMDAwIDB4MTAwMD4sCi0JICAgICAgPDB4MTgx
MTAwMDAgMHgxMDAwPjsKLQlyZWctbmFtZXMgPSAiYW1hY19iYXNlIiwgImlkbV9iYXNlIjsKLQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMTQ3IElSUV9UWVBFX0xFVkVMX0hJR0g+OwotfTsKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy55YW1s
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZDlkZTY4YWJhN2QzCi0t
LSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9i
cmNtLGFtYWMueWFtbApAQCAtMCwwICsxLDg4IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRw
Oi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9uZXQvYnJjbSxhbWFjLnlhbWwjCiskc2NoZW1hOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IEJy
b2FkY29tIEFNQUMgRXRoZXJuZXQgQ29udHJvbGxlciBEZXZpY2UgVHJlZSBCaW5kaW5ncworCitt
YWludGFpbmVyczoKKyAgLSBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4K
KworYWxsT2Y6CisgIC0gJHJlZjogImV0aGVybmV0LWNvbnRyb2xsZXIueWFtbCMiCisgIC0gaWY6
CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjb21wYXRpYmxlOgorICAgICAgICAgIGNvbnRh
aW5zOgorICAgICAgICAgICAgZW51bToKKyAgICAgICAgICAgICAgLSBicmNtLGFtYWMKKyAgICB0
aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgcmVnOgorICAgICAgICAgIG1pbkl0ZW1z
OiAxCisgICAgICAgICAgbWF4SXRlbXM6IDIKKyAgICAgICAgcmVnLW5hbWVzOgorICAgICAgICAg
IG1pbkl0ZW1zOiAxCisgICAgICAgICAgbWF4SXRlbXM6IDIKKyAgICAgICAgICBpdGVtczoKKyAg
ICAgICAgICAgIC0gY29uc3Q6IGFtYWNfYmFzZQorICAgICAgICAgICAgLSBjb25zdDogaWRtX2Jh
c2UKKworICAtIGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY29tcGF0aWJsZToKKyAg
ICAgICAgICBjb250YWluczoKKyAgICAgICAgICAgIGVudW06CisgICAgICAgICAgICAgIC0gYnJj
bSxuc3AtYW1hYworICAgIHRoZW46CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICByZWc6Cisg
ICAgICAgICAgbWluSXRlbXM6IDIKKyAgICAgICAgICBtYXhJdGVtczogMgorICAgICAgICByZWct
bmFtZXM6CisgICAgICAgICAgaXRlbXM6CisgICAgICAgICAgICAtIGNvbnN0OiBhbWFjX2Jhc2UK
KyAgICAgICAgICAgIC0gY29uc3Q6IGlkbV9iYXNlCisKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRp
ZXM6CisgICAgICAgIGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAg
ICBlbnVtOgorICAgICAgICAgICAgICAtIGJyY20sbnMyLWFtYWMKKyAgICB0aGVuOgorICAgICAg
cHJvcGVydGllczoKKyAgICAgICAgcmVnOgorICAgICAgICAgIG1pbkl0ZW1zOiAzCisgICAgICAg
ICAgbWF4SXRlbXM6IDMKKyAgICAgICAgcmVnLW5hbWVzOgorICAgICAgICAgIGl0ZW1zOgorICAg
ICAgICAgICAgLSBjb25zdDogYW1hY19iYXNlCisgICAgICAgICAgICAtIGNvbnN0OiBpZG1fYmFz
ZQorICAgICAgICAgICAgLSBjb25zdDogbmljcG1fYmFzZQorCitwcm9wZXJ0aWVzOgorICBjb21w
YXRpYmxlOgorICAgIGVudW06CisgICAgICAtIGJyY20sYW1hYworICAgICAgLSBicmNtLG5zcC1h
bWFjCisgICAgICAtIGJyY20sbnMyLWFtYWMKKworICBpbnRlcnJ1cHRzOgorICAgIG1heEl0ZW1z
OiAxCisKKwordW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8
CisgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5o
PgorCisgICBhbWFjMDogZXRoZXJuZXRAMTgwMjIwMDAgeworICAgICAgY29tcGF0aWJsZSA9ICJi
cmNtLG5zcC1hbWFjIjsKKyAgICAgIHJlZyA9IDwweDE4MDIyMDAwIDB4MTAwMD4sCisgICAgICAg
ICAgICA8MHgxODExMDAwMCAweDEwMDA+OworICAgICAgcmVnLW5hbWVzID0gImFtYWNfYmFzZSIs
ICJpZG1fYmFzZSI7CisgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTQ3IElSUV9UWVBFX0xF
VkVMX0hJR0g+OworICAgfTsKZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMK
aW5kZXggNWUxMDY0YzIzZjQxLi40MDRlNzZkNjI1ZjEgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJT
CisrKyBiL01BSU5UQUlORVJTCkBAIC0zODYxLDcgKzM4NjEsNyBAQCBNOglSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+CiBNOgliY20ta2VybmVsLWZlZWRiYWNrLWxpc3RAYnJvYWRj
b20uY29tCiBMOgluZXRkZXZAdmdlci5rZXJuZWwub3JnCiBTOglNYWludGFpbmVkCi1GOglEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy50eHQKK0Y6CURvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnlhbWwKIEY6CWRyaXZl
cnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2JnbWFjKgogRjoJZHJpdmVycy9uZXQvZXRoZXJuZXQv
YnJvYWRjb20vdW5pbWFjLmgKIAotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
