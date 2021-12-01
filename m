Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0B13C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXu399RAgP0S8AVy7GTnagjU5AomzwUDkZ/g+FQhs4Y=; b=Ov9G4l1XJ1bw8D
	DzKxF5YZdJsjvJYXGTeL9+L+mmXY7e0UZab6uGhunyV3he5ucEFktIfgZVfZVwGWUhJqxKyNeOOcw
	6d7kiprIYd6RgvRFpLPrDcRZ4fWy1V0JQj56gyl3sN+TxqHZYFj3RYOGIlMEQiq0C1LZIfkcqtwVI
	7cxXOn8LKT2ZaizMayaI7BABjrUTPuplnqTuR1op7eMr7ou4+yVlmwyefL4rsi6glstzA3qPl7nG5
	iruygXMazn3jqOg/2yIqIUTotJ/pdqHo8UqDAgf0022O8vhCff2pubVyBmHKDQRXweZmVGtH/fJaX
	aB0HrPRwGN6p4pdszZqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTsy-009ePk-9N; Wed, 01 Dec 2021 17:59:16 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqv-009dMm-2k; Wed, 01 Dec 2021 17:57:10 +0000
Received: by mail-pf1-x42d.google.com with SMTP id 8so25300456pfo.4;
 Wed, 01 Dec 2021 09:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KYMDVSre6+yLu8zD+7T8spnd61FbSvWPFURC895A/Tk=;
 b=KcIbR+oPFhCoj00vXrvlusdYemqIiSOnE3GdyiYRztMB8Dy/rlm9R2MvyGGcvK1O9d
 cUgPkbAwPzfGzKYLY4AVmh0HqDvwtbdupglIiJmRQx7AqjhOHsFW8r9NZhHkf8lgVhy5
 BOPFsCFO246aG7YocvXhutSYzxpXXQnNILQvbDDsQyBdv9Dx9WbjJdbMjPHaepWuEij+
 ST9OkZqM40nFH/YP2ynakoFYX2BAtPcZYXYcuPPZ4OxeqgHPgRBRlkC8mOUUnSfWJ0Yv
 qaNq8/DkQzpqgdrsDZvPKec22B2xZfUfnhfrkBKCBkhH2P/UVu2lcmRJTQzpSR5IsucT
 2qcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KYMDVSre6+yLu8zD+7T8spnd61FbSvWPFURC895A/Tk=;
 b=f8iD0NV2H1nCLfDs6zAenaBD7hHc80BeaD83pIS6A/8ewLooAFG6P7IRFmZ05R9gAj
 AcmJpCgOnG5da/hFGGvX3DmoY2oWCmU+l2Oa9KGqkWPOi7zR1I7N49GbINPKyWIwbMHi
 bsj7pdRA3bTa8UiMTt4fARP+w4IFOrpGz8e6Vtjb5IzJHQvTyuMNUyNN4afmBdgbNA2m
 NKMbH2dtbKk0/9/3SwViVyllxVo3cOQeRyuWyZV/nj+EVqJL3xdlKEA398R3yY6R5iC3
 pfn8VCzNJkGK5S6uo9VxaRvf4m1wA+YsGrg0sQF8a5IYFmuw54AqsbHisIPJLPJPC1vy
 r4HA==
X-Gm-Message-State: AOAM532Bv2j24qeA1k6MuJsI02NV4P4+6vS6av0OzHnde0RQ33QSkafG
 j+KZvHafvkZOOF6BD9dqZBk=
X-Google-Smtp-Source: ABdhPJwJCTGDL3Jx21xteh0JyBvOYoagGEJ8sFjmkkeVQ65cWgvIiV7LDRhQeT7DVJ1qfm0XXh4Hrw==
X-Received: by 2002:a63:5520:: with SMTP id j32mr5904336pgb.443.1638381427878; 
 Wed, 01 Dec 2021 09:57:07 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:07 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH net-next v2 6/9] dt-bindings: net: Convert AMAC to YAML
Date: Wed,  1 Dec 2021 09:56:49 -0800
Message-Id: <20211201175652.4722-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095709_153936_6FD40677 
X-CRM114-Status: GOOD (  17.83  )
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
aW5kZXggZWIwZjZjYWYwMDYyLi42YjMyNDIwYmQ5YmQgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJT
CisrKyBiL01BSU5UQUlORVJTCkBAIC0zODcyLDcgKzM4NzIsNyBAQCBNOglSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+CiBNOgliY20ta2VybmVsLWZlZWRiYWNrLWxpc3RAYnJvYWRj
b20uY29tCiBMOgluZXRkZXZAdmdlci5rZXJuZWwub3JnCiBTOglNYWludGFpbmVkCi1GOglEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy50eHQKK0Y6CURvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnlhbWwKIEY6CWRyaXZl
cnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2JnbWFjKgogRjoJZHJpdmVycy9uZXQvZXRoZXJuZXQv
YnJvYWRjb20vdW5pbWFjLmgKIAotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
