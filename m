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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89B1FC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5572460FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5572460FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yjr2+Y1xfE5eDMJQUSf3flHeedgDweHaBLStbLShA6Y=; b=gSvwK4nEVyZd+r
	3QTwG0cRORzykM3JtD/X+oxzg5tNXs5GNKPuJXTtsyqIhkZft0UCGf6rwqmFSRW0OoMHCxTSBB6c8
	e1Kx4F6mVnLK95Eh92kuBBfLiyp+bSit1jjC4WAK/EwsR3dyt+HxaGsAoTx9MboRrfOGjkEx3lle/
	/fFOakBWLNXhGD7/AuBy+V9ckCYlvrVLjdji9xKMkPVjuph2jXLwDMNSuAaljYuW621sSZ5SEceUS
	g7ibZ7Zc2268hliW6Ep8brq4vT+676gyk0fvqAD705wkpCUyqoaVMKgWUaBH0DHSrKicNH8jmKdhm
	VOxg28JmQL6n3XfrBajA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgtK-000bz1-RV; Mon, 13 Sep 2021 08:00:38 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgtH-000bwj-Rp
 for linux-phy@lists.infradead.org; Mon, 13 Sep 2021 08:00:37 +0000
Received: by mail-lf1-x131.google.com with SMTP id s10so19214799lfr.11
 for <linux-phy@lists.infradead.org>; Mon, 13 Sep 2021 01:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8u0fRL7/WtYh13V0VL96ZPbNOKZAmwP1HL9vKQArsNU=;
 b=N8uo1W5bIWEeY6l3C2BNxEYJ40i32+XodLrhXu8Kdbrrv82LcoZIG1BCCH+6ZUb+xF
 ZXl9IS/4ppRT2jmTTvrR7WyL6vuM3qriR2A6z6Djh5mA4lTTgwjC63UJ5spNG/aDtrPE
 Yk/v31W4WIc21mP7seCIW7gHltGU60rxOIgtdSyhwN8Ip7yO2pRoYwRwzHYfaGMOazHk
 JAW/RA3sfif+VeH8DOEte+0OrYgGCo3m5XTNeCbrAr8xUtm8BFVDtKcL800fSQjJDlx7
 ujHpWcXMJn1v6Am5x1YiTEolK5NOI7bwWyvWOqD7zOhGtjn6g2J21C/licj92lEwrU9h
 rVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8u0fRL7/WtYh13V0VL96ZPbNOKZAmwP1HL9vKQArsNU=;
 b=M1BbL+vI/11MKGOUzuV/RMmNSMNOQ6NefvxtMCIabtktkwnk+ig8oQUF9dCUD/wn9I
 Yc6A+klVjKJhW/PqNbCCOxsrO8pCVA6WVqFeyseEZDarx9bJZcNtk7sx0r01EG0S4CbE
 eIfySwpNLs152qtIJF5hUEHhx13Xn+lO6r2ucUeavRpyjVcDPPtfHsMDUxn0nUUOGtoM
 QNgr6pTHJ42F1L/zkR9E+0a1XEO16BEnXfUCARpD58VJ9YukgCparHqecKywv9de9Iff
 awUph8vvdGiM0CY1WaQ5p0+POxKPQbTwS7TM8i++PWtYKgqcyvmJk8oS2UoyyNIpq5sn
 vxkw==
X-Gm-Message-State: AOAM531EAdM8S0wVafwrafFMiL9sR8eHRHvVizJgZrcupj2kPBQacNg1
 7W0qFIAjt7xO7QMlVhyNMAs=
X-Google-Smtp-Source: ABdhPJwtAtZdB6NNq0qSlE2Pn4jMd+9FtZOAFlcXue44QZOy3MVnTmt5XGM7en9RAeBIe43H5R0j4w==
X-Received: by 2002:a05:6512:4008:: with SMTP id
 br8mr5800865lfb.23.1631520032515; 
 Mon, 13 Sep 2021 01:00:32 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 01:00:32 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Date: Mon, 13 Sep 2021 10:00:21 +0200
Message-Id: <20210913080024.6951-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_010035_946782_95481E2C 
X-CRM114-Status: GOOD (  10.67  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKQ1JVIGhhcyBhIHNoYXJl
ZCByZWdpc3RlciB0aGF0IGlzIHVzZWQgZS5nLiB0byBjb250cm9sIFVTQiAyLjAgUEhZIGJsb2Nr
CmFjY2Vzcy4gSXQncyBhIHNpbmdsZSAzMiBiIHJlZ2lzdGVyLiBEb2N1bWVudCBpdCBhcyBzeXNj
b24gc28gaXQgY2FuIGJlCnVzZWQgd2l0aCBhIHJlZ21hcC4KClNpZ25lZC1vZmYtYnk6IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL2JyY20sY3J1LnlhbWwgfCA4ICsrKysrKysrCiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sICAgfCAxICsKIDIgZmlsZXMgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21mZC9icmNtLGNydS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21mZC9icmNtLGNydS55YW1sCmluZGV4IGZjMTMxN2FiMzIyNi4uYmY0ZTU4NWQz
YzE4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2Jy
Y20sY3J1LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9i
cmNtLGNydS55YW1sCkBAIC0zOSw2ICszOSw5IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgogICAnXmNs
b2NrLWNvbnRyb2xsZXJAW2EtZjAtOV0rJCc6CiAgICAgJHJlZjogLi4vY2xvY2svYnJjbSxpcHJv
Yy1jbG9ja3MueWFtbAogCisgICdec3lzY29uQFthLWYwLTldKyQnOgorICAgICRyZWY6IHN5c2Nv
bi55YW1sCisKICAgJ150aGVybWFsQFthLWYwLTldKyQnOgogICAgICRyZWY6IC4uL3RoZXJtYWwv
YnJjbSxucy10aGVybWFsLnlhbWwKIApAQCAtNzMsNiArNzYsMTEgQEAgZXhhbXBsZXM6CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiaXByb2NmYXN0IiwgInNhdGExIiwgInNhdGEy
IjsKICAgICAgICAgfTsKIAorICAgICAgICBzeXNjb25AMTgwIHsKKyAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiYnJjbSxjcnUtY2xrc2V0IiwgInN5c2NvbiI7CisgICAgICAgICAgICByZWcgPSA8
MHgxODAgMHg0PjsKKyAgICAgICAgfTsKKwogICAgICAgICBwaW5jdHJsIHsKICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAiYnJjbSxiY200NzA4LXBpbm11eCI7CiAgICAgICAgICAgICBvZmZzZXQg
PSA8MHgxYzA+OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21mZC9zeXNjb24ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
c3lzY29uLnlhbWwKaW5kZXggYWJlM2ZkODE3ZTBiLi4wZGNmZmMyNzNjMmIgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbApAQCAtMzgs
NiArMzgsNyBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW44aS1o
My1zeXN0ZW0tY29udHJvbGxlcgogICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW44aS12M3Mt
c3lzdGVtLWNvbnRyb2xsZXIKICAgICAgICAgICAgICAgLSBhbGx3aW5uZXIsc3VuNTBpLWE2NC1z
eXN0ZW0tY29udHJvbGxlcgorICAgICAgICAgICAgICAtIGJyY20sY3J1LWNsa3NldAogICAgICAg
ICAgICAgICAtIGhpc2lsaWNvbixkc2Etc3ViY3RybAogICAgICAgICAgICAgICAtIGhpc2lsaWNv
bixoaTYyMjAtc3JhbWN0cmwKICAgICAgICAgICAgICAgLSBoaXNpbGljb24scGNpZS1zYXMtc3Vi
Y3RybAotLSAKMi4yNi4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
