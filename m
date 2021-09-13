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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97D0C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9423060FC0
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9423060FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VV8kzZo8s/7Gx1eDcmfzEf+y2pi61BRKGsv0b/U1U0o=; b=1ZH1+indHn2KDD
	mSUNbZm0wWAKzzF3rHf5sMxDykb16ttT/oM8AifWPqEyPjdywW5DbzWJ74GTwhIiYybjgKwtF3crt
	s1ZwMD2FS2mlQM8+Yb4V9Id/tH8g2VOl0G7/vZ8ci6GI7dqz/jNDeYl6LETUF/lZno8OMNFfu4U3x
	Qf0cJM9n2p2m5PbWSdQkhL2gBhrxtEh6aCBgmzEEEF7K93ByOWj1zig6W0MS4F6wqzszRDPwRBNWH
	RgM6z7awCT2vNv5tnWCrc25tuQbFWD/+ATTQFFtnpAwE60yA34cS9HTOAT4vx2zSttr3ckvaDezCF
	N1pQef/oQMWtev4gFdug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgtM-000bzQ-1V; Mon, 13 Sep 2021 08:00:40 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgtI-000bx7-7n
 for linux-phy@lists.infradead.org; Mon, 13 Sep 2021 08:00:38 +0000
Received: by mail-lf1-x130.google.com with SMTP id a4so19230364lfg.8
 for <linux-phy@lists.infradead.org>; Mon, 13 Sep 2021 01:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ygJ8+TTyO2TV1eqf1wmE9UFoLoL7v5Vtx+glrXFSGyc=;
 b=i2ybDonmhlLSPRvcTL4w7fMCcPKnFTDWuj4crFhpLu3j5C5SCUcqlyaE1SVKnh+iE7
 HOX5P1G4l9j6hFG1NwUcLLKDBi2iiPCA/EqlX90/JnmelnJX/uf374crfwrpfx4Jtr8o
 9PZ9Q6dCrffAZ3rOhD+cCGQ1MS/4qB5Ql73zCkfH0O5kuRphG9NwP4fOaYJT4yQoQIhn
 PG3dPHfj2W29EmItpuv9hRz6/iNyC+oaK4T5QAdzr2OZvL6/R3XVQKDKgW34e9x9SXt7
 EdiYIjBKokD6Lz/T8K6T8Q2CTzLST4qn1vIsadjpVaS6XLD7ovrQH20cqa3mFWFvr66d
 RJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ygJ8+TTyO2TV1eqf1wmE9UFoLoL7v5Vtx+glrXFSGyc=;
 b=HcPncwfJs1K70+rQmDTX/49LXj5oIAZ3DFRKyb+DopiRZMsIN52SZD/qS425mJpdlL
 +fkU3vQugwHC0OVlg64Ax5sOyXxfGiV7/DQj+qFOyn+pwnLvRPFaRAiuCAvUIem+3/rD
 I74bDhEn6BPaEGrVd2o/wIajGDmhmvoipZygh17uX1Sl+9JbgoFFpmPurCRzOYUEn/Pu
 PyjtP97PYnJy5GlHekR6mmO5HeVmnmhrSv2XotjNMkWWT+GS4xLUX8vJnoQ7TEb6T79+
 vMfTBzjSkmOxkLJ2X+cmky6HHBr3/66saZ76hKafwuFJgNoCoAL/RKIpcuUlUlyGQbz8
 NqRQ==
X-Gm-Message-State: AOAM531cngB2eU428Jn6BY46N5mYUzFnbf5ZLbk74hGf4hPufhdmh8zE
 v/0bjPK9waOAoGQYNbRe8A0=
X-Google-Smtp-Source: ABdhPJx0+UW8Q3+/Fm2tU/fZcSP7+gBFgsoCHE0ltnjp388+fOkrei/2tRgR3ZDQ04xs8Liu2gvQZw==
X-Received: by 2002:a05:6512:33c3:: with SMTP id
 d3mr7389359lfg.194.1631520034293; 
 Mon, 13 Sep 2021 01:00:34 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 01:00:33 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/4] dt-bindings: phy: brcm, ns-usb2-phy: bind just a PHY block
Date: Mon, 13 Sep 2021 10:00:22 +0200
Message-Id: <20210913080024.6951-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_010036_360775_8A9AC8B6 
X-CRM114-Status: GOOD (  11.96  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIG9sZCBiaW5kaW5n
IHdhcyBjb3ZlcmluZyB0aGUgd2hvbGUgRE1VIGJsb2NrIHNwYWNlIChETVUgYmxvY2sKY29udGFp
bnMgQ1JVIGJsb2NrIHdoaWNoIGNvbnRhaW5zIFVTQiBQSFkpLiBJdCB3YXMgYSBiYWQgZGVzaWdu
LApvdmVya2lsbCBhbmQgYSBub24tZ2VuZXJpYyBzb2x1dGlvbi4KCk5vcnRoc3RhcidzIFVTQiAy
LjAgUEhZIGlzIGEgc21hbGwgYmxvY2sgKHBhcnQgb2YgdGhlIENSVSBNRkQpIGFuZApiaW5kaW5n
IHNob3VsZCBiZSBkZXNpZ25lZCB0byByZXByZXNlbnQgdGhhdCBwcm9wZXJseS4gUmV3b3JrIHRo
ZQpiaW5kaW5nIHRvIG1hcCBqdXN0IFBIWSB3aXRoIHRoZSAicmVnIiBwcm9wZXJ0eSBhbmQgdXNl
IHN5c2NvbiB0bwpyZWZlcmVuY2Ugc2hhcmVkIHJlZ2lzdGVyIHRoYXQgY29udHJvbHMgYmxvY2sg
YWNjZXNzLgoKVGhlIG9sZCBiaW5kaW5nIGlzIGRlcHJlY2F0ZWQgbm93LgoKU2lnbmVkLW9mZi1i
eTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIC4uLi9iaW5kaW5ncy9w
aHkvYmNtLW5zLXVzYjItcGh5LnlhbWwgICAgICAgICB8IDI1ICsrKysrKysrKysrKysrLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjIt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11
c2IyLXBoeS55YW1sCmluZGV4IDA1YjRkY2Q4MDAxOS4uNDI2MTAxNTMwYTIxIDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS55
YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVz
YjItcGh5LnlhbWwKQEAgLTE4LDEzICsxOCwyMSBAQCBwcm9wZXJ0aWVzOgogICAgIGNvbnN0OiBi
cmNtLG5zLXVzYjItcGh5CiAKICAgcmVnOgotICAgIGl0ZW1zOgotICAgICAgLSBkZXNjcmlwdGlv
bjogaW9tZW0gYWRkcmVzcyByYW5nZSBvZiBETVUgKERldmljZSBNYW5hZ2VtZW50IFVuaXQpCisg
ICAgYW55T2Y6CisgICAgICAtIG1heEl0ZW1zOiAxCisgICAgICAgIGRlc2NyaXB0aW9uOiBQSFkg
Y29udHJvbCByZWdpc3RlcgorICAgICAgLSBtYXhJdGVtczogMQorICAgICAgICBkZXNjcmlwdGlv
bjogaW9tZW0gYWRkcmVzcyByYW5nZSBvZiBETVUgKERldmljZSBNYW5hZ2VtZW50IFVuaXQpCisg
ICAgICAgIGRlcHJlY2F0ZWQ6IHRydWUKIAogICByZWctbmFtZXM6CiAgICAgaXRlbXM6CiAgICAg
ICAtIGNvbnN0OiBkbXUKIAorICBicmNtLHN5c2Nvbi1jbGtzZXQ6CisgICAgZGVzY3JpcHRpb246
IHBoYW5kbGUgdG8gc3lzY29uIGZvciBjbGtzZXQgcmVnaXN0ZXIKKyAgICAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCisKICAgY2xvY2tzOgogICAgIGl0ZW1z
OgogICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIFBIWSByZWZlcmVuY2UgY2xvY2sKQEAgLTM5LDIw
ICs0NywyNSBAQCBwcm9wZXJ0aWVzOgogcmVxdWlyZWQ6CiAgIC0gY29tcGF0aWJsZQogICAtIHJl
ZwotICAtIHJlZy1uYW1lcwogICAtIGNsb2NrcwogICAtIGNsb2NrLW5hbWVzCiAgIC0gIiNwaHkt
Y2VsbHMiCiAKK29uZU9mOgorICAtIHJlcXVpcmVkOgorICAgICAgLSBicmNtLHN5c2Nvbi1jbGtz
ZXQKKyAgLSByZXF1aXJlZDoKKyAgICAgIC0gcmVnLW5hbWVzCisKIGFkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQogCiBleGFtcGxlczoKICAgLSB8CiAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2Nsb2NrL2JjbS1uc3AuaD4KLSAgICBwaHlAMTgwMGMwMDAgeworICAgIHBoeUAxODAwYzE2NCB7
CiAgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxucy11c2IyLXBoeSI7Ci0gICAgICAgIHJlZyA9
IDwweDE4MDBjMDAwIDB4MTAwMD47Ci0gICAgICAgIHJlZy1uYW1lcyA9ICJkbXUiOworICAgICAg
ICByZWcgPSA8MHgxODAwYzE2NCAweDQ+OworICAgICAgICBicmNtLHN5c2Nvbi1jbGtzZXQgPSA8
JmNsa3NldD47CiAgICAgICAgIGNsb2NrcyA9IDwmZ2VucGxsIEJDTV9OU1BfR0VOUExMX1VTQl9Q
SFlfUkVGX0NMSz47CiAgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKICAgICAg
ICAgI3BoeS1jZWxscyA9IDwwPjsKLS0gCjIuMjYuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
