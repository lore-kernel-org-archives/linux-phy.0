Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424E8C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UM9DSQ5Udmgsq9Ua3ABn+3xGJweYiUvya0jkKHq7s98=; b=QyC6aRIXHpMD58
	ooX2Q3DyAEWIK8Kge+YH4mi+Uy0/k0I1zF3zPKe0HxeTSeF125j3CSLH158Hx/Qdw2Png96zVZZ8G
	h/zC/fI0t51fLPNADLk00NBpFpaKVBK2jUv5cK7w+FORTG8ErstGfAQ/jKvAuFiRrz0TUYgd/8gUc
	WljOEJYmQMuih2l8mmufU1ubKZ7nxVnZNm4rr6wrwk1q0koi18gbxbgXLI1dEL9enuzcjFRh7cf9e
	QHWzWmKUznAStJU12IQipDhIwWGYRsaHJMg0xcacypRDffogDNRR7cWwTeqwWboyYKmB1RHFPyE7U
	NbF7f2LXMqY/zYO97OJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpSPi-001XxF-Np; Tue, 23 Nov 2021 09:48:34 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpSPg-001Xvo-Em
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 09:48:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id v15so10053435ljc.0
 for <linux-phy@lists.infradead.org>; Tue, 23 Nov 2021 01:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVSN1lAh2JYSQsy12qvn/lQZ+n0d63m3tNYMLMaMaKo=;
 b=EwwaRdedeuwwgVmgDsNw9vF1SK12w3akLpe2HAqi1n9tPIXNRWiOBDRBvsS6XTkziZ
 V+P0ZVR+EBV9CTDY/pX7nOtVpDFH4yQCVuPtYG8GxQp2Y7b1GOZBepJtpvPts7a8BFns
 CppePGh0VIKdQLdxuv6RGeqsw3ik3XH31AG/Hq8llIGjH2dpjljIAsR8AUNM7ZHhSnpy
 S4CZf+ycPvDfbi7Z3N9O+LgbKtzhqoVW4vX3eAi5SaJ+pFKWXPdX8TGYj1dT9Hgv0b+6
 JbwVZ2IaAM/J8hytIM6att8lOExQUa4WCKSkWaq0wlGGfnVqXYOJxXeDj9RAcSBCaTw7
 hlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVSN1lAh2JYSQsy12qvn/lQZ+n0d63m3tNYMLMaMaKo=;
 b=Q/DmhqVUvYIYlmk5gwjnxIjCWkZZ7wRfmDf12CT2KuUYckviqw1NxXuKhZD9jmmYGW
 Rm0xP2pUCIX9IiIitU5qZnNRBNYL3DkZfQST6Cz3GY/DkYSORAnZFBT4CMSj8pR0d7mE
 Tb3lNsozDMNHXtfvrDyGfGDLh5uBS+cjA4oNTmk0nvJFcM+FOQIBAx9n4VPR750+oHqj
 Er5mQmCcnxgFIfIUUzubLLhFCxEylkai6lzky7U1HVA4vXzoWneFkW2SqZHjSoMPeCCM
 jEWsvaNpeKy6C3m/CR14OFnbxc9i/LFSgvFx41tHRxkFwuKFNBWWCeRvyTx6R3Sdnply
 SfRQ==
X-Gm-Message-State: AOAM5313mjSpHLjWNMIMeMdTk/t4nzYDLKoo7juk4U81XQsCGZBPKtOB
 GyT8CvSQqSPczRHn2N47epg=
X-Google-Smtp-Source: ABdhPJyS4SbYOkNiGCvylFs2IcuoH4kzYXsGjf+gr+czONRTqhB+9fh0yUwp0FDgjE5Y2u1ubpCTmQ==
X-Received: by 2002:a2e:9b47:: with SMTP id o7mr3703551ljj.346.1637660910346; 
 Tue, 23 Nov 2021 01:48:30 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id h7sm1233379lfu.253.2021.11.23.01.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 01:48:29 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] phy: bcm-ns-usb2: improve printing ref clk errors
Date: Tue, 23 Nov 2021 10:48:23 +0100
Message-Id: <20211123094823.25445-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_014832_523928_A3A72E48 
X-CRM114-Status: GOOD (  11.06  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKUHJpbnQgYWN0dWFsIGVy
cm9yIG51bWJlciB0byBoZWxwIGRlYnVnZ2luZyBpc3N1ZXMgYnV0IGFsc28gYXZvaWQKcHJpbnRp
bmcgLUVQUk9CRV9ERUZFUi4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxA
bWlsZWNraS5wbD4KLS0tCiBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyB8
IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMg
Yi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwppbmRleCA5OGQzMjcyOWE0
NWQuLjRjYjcwNzg1Y2NiNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJj
bS1ucy11c2IyLmMKKysrIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMK
QEAgLTEzMiw4ICsxMzIsMTIgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJdXNiMi0+cmVmX2NsayA9IGRldm1fY2xrX2dldChk
ZXYsICJwaHktcmVmLWNsayIpOwogCWlmIChJU19FUlIodXNiMi0+cmVmX2NsaykpIHsKLQkJZGV2
X2VycihkZXYsICJDbG9jayBub3QgZGVmaW5lZFxuIik7Ci0JCXJldHVybiBQVFJfRVJSKHVzYjIt
PnJlZl9jbGspOworCQlpbnQgZXJyID0gUFRSX0VSUih1c2IyLT5yZWZfY2xrKTsKKworCQlpZiAo
ZXJyICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgcmVm
IGNsazogJWRcbiIsIGVycik7CisKKwkJcmV0dXJuIGVycjsKIAl9CiAKIAl1c2IyLT5waHkgPSBk
ZXZtX3BoeV9jcmVhdGUoZGV2LCBOVUxMLCAmb3BzKTsKLS0gCjIuMzEuMQoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
