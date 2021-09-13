Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E77B4C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B35EA60F92
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B35EA60F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMWUOWO4IiU5HKoRROJM3tm9o6iIeBL+KtSs+GMH/80=; b=XixW11L2VkXjon
	bT4hzwwxBMuSL9mEiUWvE2u3O1YUeSsWkyIWeGcJInmwkPzk1NFmDR+PZeK0gjo5EfySxF84+3uEO
	AFP7MaCIo51ZxWAXjDRg5BHej/tdPAGDy01GpaHD225Srge/Md8XgDwR2+ldNOWL9hXlOxF4JQIGp
	GySKLpJj+M9Xopj10r7U/cCc8RWbTBaN9beXVd+S+FN1vocm2gM6/t4q1L1EETLnesf8Q1NZmtHaO
	aSQoyTnbj6phBmdmLctDBnWm7j/RMQID0Ntyy4KOiqLnGNqDCVHjfzajFbPpNesobcYjtKgll0Vkn
	Jorh/s3SYByj1Lx4buWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgtO-000c0R-8G; Mon, 13 Sep 2021 08:00:42 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgtK-000byE-2L
 for linux-phy@lists.infradead.org; Mon, 13 Sep 2021 08:00:39 +0000
Received: by mail-lf1-x129.google.com with SMTP id i25so15272981lfg.6
 for <linux-phy@lists.infradead.org>; Mon, 13 Sep 2021 01:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vlYI72az+h1GSzT+KG/59hM5JtHvcZcByQ0ounNHO2U=;
 b=DPK3BL4e38LGamDuhR47D9vYop2OOzeDkoJkoRfQUS17RgpWs74+DhDV1Hj9DFji/o
 xr8wl0cYH5ymAEBdo7LFalu2Y5g1EjRilB7yK003AmuB3feVGtv8jEOIqDbHREoDRZ11
 7t/+UiFhiK6+fb/3pwq3Wzq7aNxWExKeptBoM2iIZao8NExX+tsAYqudgREe9DKbtYDf
 52JJXyiUQeWJa7y/TbOW/8rW2+IuTLDawya+CWSGil1R3e3721B+aVHIYhd82kLE59aF
 QGsvbYa1/t0DrCz0HB+3IC/yHIKKftiL+6tMyvqCSf1/HK0GtfTST0ZwPyMRNyXoqNQj
 1CBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vlYI72az+h1GSzT+KG/59hM5JtHvcZcByQ0ounNHO2U=;
 b=Jh+BLTRA0giTQ6+VR4UtjNCAktiZQXhz6CJVTzkMW1poPv2v/5vjZ3+r0jkvkAFDi4
 raspDOBztFVnVOCfinWP0QB7eF0TWEkMhb8XIWWIRKPf43cFE7c3d28CAyX5/VFIzPyy
 5R6lJEYEh2P9htmsErS4u+1uFEwdPe1LEP38tyKasXvlrwPx2f5PFCOHRhLwd4t58Jpt
 KAgeTnx3lhmymYvdFsRXmTQG3zr6UziWzhYZjx4f1kjb/VEg2JjTbRavz9n+qzWHdCNW
 e4gIUXCarS1tINcxGOvA9w2WDNHNSDO3JKGUVTmQomdk/9YeQz4SOJIcw+EXQAC9qvSs
 GDrA==
X-Gm-Message-State: AOAM530OJDv3fxrHtbs3pjwxGgvmUUiSoKYYMDIzL4j9NnbT9kFv0Z9E
 W9G4zB1QiHjAy+pr6EhWwxU=
X-Google-Smtp-Source: ABdhPJxUllraKRY8XIslWCFTdKHXnhkQWzeqy+WPW56KQM0UrCO8UgCllmPbOcb+rQzy5LYj20jUIA==
X-Received: by 2002:a19:3818:: with SMTP id f24mr8119306lfa.601.1631520036157; 
 Mon, 13 Sep 2021 01:00:36 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 01:00:35 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Date: Mon, 13 Sep 2021 10:00:23 +0200
Message-Id: <20210913080024.6951-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_010038_192572_FC3D08C3 
X-CRM114-Status: GOOD (  10.54  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKTm9ydGhzdGFyJ3MgVVNC
IDIuMCBQSFkgaXMgcGFydCBvZiB0aGUgQ1JVIE1GRC4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBN
acWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZmQvYnJjbSxjcnUueWFtbCAgICAgICAgIHwgMTUgKysrKysrKysrKysrKystCiAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYnJjbSxjcnUueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYnJjbSxjcnUueWFtbAppbmRleCBiZjRlNTg1
ZDNjMTguLjI2MjI4NGFlODBmMSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21mZC9icmNtLGNydS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvYnJjbSxjcnUueWFtbApAQCAtMzksNiArMzksOSBAQCBwYXR0ZXJuUHJv
cGVydGllczoKICAgJ15jbG9jay1jb250cm9sbGVyQFthLWYwLTldKyQnOgogICAgICRyZWY6IC4u
L2Nsb2NrL2JyY20saXByb2MtY2xvY2tzLnlhbWwKIAorICAnXnBoeUBbYS1mMC05XSskJzoKKyAg
ICAkcmVmOiAuLi9waHkvYmNtLW5zLXVzYjItcGh5LnlhbWwKKwogICAnXnN5c2NvbkBbYS1mMC05
XSskJzoKICAgICAkcmVmOiBzeXNjb24ueWFtbAogCkBAIC01Miw2ICs1NSw3IEBAIHJlcXVpcmVk
OgogCiBleGFtcGxlczoKICAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2Jj
bS1uc3AuaD4KICAgICBjcnUtYnVzQDE4MDBjMTAwIHsKICAgICAgICAgY29tcGF0aWJsZSA9ICJi
cmNtLG5zLWNydSIsICJzaW1wbGUtbWZkIjsKICAgICAgICAgcmVnID0gPDB4MTgwMGMxMDAgMHgx
ZDA+OwpAQCAtNzYsNyArODAsMTYgQEAgZXhhbXBsZXM6CiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiaXByb2NmYXN0IiwgInNhdGExIiwgInNhdGEyIjsKICAgICAgICAgfTsKIAot
ICAgICAgICBzeXNjb25AMTgwIHsKKyAgICAgICAgcGh5QDE2NCB7CisgICAgICAgICAgICBjb21w
YXRpYmxlID0gImJyY20sbnMtdXNiMi1waHkiOworICAgICAgICAgICAgcmVnID0gPDB4MTY0IDB4
ND47CisgICAgICAgICAgICBicmNtLHN5c2Nvbi1jbGtzZXQgPSA8JmNsa3NldD47CisgICAgICAg
ICAgICBjbG9ja3MgPSA8JmdlbnBsbCBCQ01fTlNQX0dFTlBMTF9VU0JfUEhZX1JFRl9DTEs+Owor
ICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAicGh5LXJlZi1jbGsiOworICAgICAgICAgICAgI3Bo
eS1jZWxscyA9IDwwPjsKKyAgICAgICAgfTsKKworICAgICAgICBjbGtzZXQ6IHN5c2NvbkAxODAg
ewogICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJicmNtLGNydS1jbGtzZXQiLCAic3lzY29uIjsK
ICAgICAgICAgICAgIHJlZyA9IDwweDE4MCAweDQ+OwogICAgICAgICB9OwotLSAKMi4yNi4yCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
