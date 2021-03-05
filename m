Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F34C433DB
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1B65651EE
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1B65651EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z79mbYLfIE3Y6VHzLLlAemmyZlIAcLgmG4XuElf9N80=; b=URlkUaa3ZbaW/osBsn0QgpxbRZ
	0fkxVDrObtRuhl19Azf69mv8C4e+GdRS/jFVvi8gSVjGMFVzMABO3qBlRmBonQP+UALXOEVohYYP4
	D2hRd7Wi0lfZXqiPiEO+1E8lJomPsyt6j96E6sYw01XgUFfjUHM0EfozyPrbZFWoySSB9zLCbxXk+
	+Hp0D1A81ZpNuifrt/2/nVIoWbbyWkQSUWagzV9qQxiyepBwxuMgAO5vRlj2bz+7WCPx45QDk4e50
	Inx1fYpndioBsZgVPR8UtEyZq/JoEUvh+WYYSioy7ZnbA/UjxrRuPw9YxEYWBlIAs+JubSoFT+cjI
	zDUBMl4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJ94y-00FQSg-Tq; Mon, 08 Mar 2021 06:09:22 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lICJV-00FQwg-EQ
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 15:24:29 +0000
Received: by mail-lf1-x12a.google.com with SMTP id u4so4311382lfs.0
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 07:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o40MnXjJi9laLLTg74pw4PVZa6wcYiovtHyadhkR8kA=;
 b=r/SWpgY0xlCBrXI18KJc3PRmoPDinA9EerwmS1H6qkw6a3pmkxu+N+0gPeWr7GTr6P
 UF1bZ66Tcs1cvGlRLO4YwpggJdR86pM3L2nMW77iEqONZe0p/y/nB4RLlWh24MfN2RpV
 NEs09xoRxcnqII0x4RMl3pn2U1XlXgxkjqGAciBG071XLchJA2wQjwzJB9oZX4ee3t3J
 m8fifLj/BTLFvWUcWsFQbPBnIajhtDu5rEdBJJVPnMLWsJ6TwIpMzt1BjKV56W6LVhgS
 MN20L77yJddmEZPmhhg3S1ROddRWU42hvg1EhegH3wTwaZc7nt1YsaMKjcInL1Xb8AEx
 WzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o40MnXjJi9laLLTg74pw4PVZa6wcYiovtHyadhkR8kA=;
 b=lFaHDs/dz/KfWrrHBwTP1O+AiUnhboa5O1sCF57e9Jo+fwm9UkewTEjbJ4jJbCaMga
 1CQxhSNZ1Dq0qeh+LaTWBYG+TdjG8sfbNATh/HbAPhu+2m65mPceSUmMW8kztMGwRNq/
 jZHMehvtqpkqE2JOSkZar2D9wemUjj29TUpkDxIBmmj4B9rDoLhYgoeZzfxPnXwEXWW8
 64XtujBg/QJmqCVRrzY3ZoxH9pEJgwk/7N0kVGPN5PYQXAQgIIT+22lcmitLHDhKWlXy
 Y3r2t1x0VO/uOH95Ks34Re/1QfUIcYIGofB2jAbHQrGQmmoOvGX1fvNPjB11WKZTQbvk
 kZDQ==
X-Gm-Message-State: AOAM530vy5nrwWiM6EAkBKb+brlqXChahFj8jnFtDExRTTTFNcr63tNt
 vjS0pwW6MbGK7zaPT+oP/is=
X-Google-Smtp-Source: ABdhPJwFhDrhEqzUD6/6uMoZ8r2b9vp/LGAMHVAAJvqwEThSO+IQXa9h6F4FJRGsB2YecKpryHLrNw==
X-Received: by 2002:a19:750e:: with SMTP id y14mr5780806lfe.17.1614957862851; 
 Fri, 05 Mar 2021 07:24:22 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id c6sm341535lfb.204.2021.03.05.07.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 07:24:22 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org,
 =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>,
 Simon Arlott <simon@octiron.net>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] phy: phy-brcm-usb: select SOC_BRCMSTB on brcmstb only
Date: Fri,  5 Mar 2021 16:24:06 +0100
Message-Id: <20210305152406.2588-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_152427_712309_78C000C3 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 08 Mar 2021 06:09:18 +0000
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKcGh5LWJyY20tdXNiIGhh
cyBzb21lIGNvbmRpdGlvbmFsIGluaXQgY29kZSByZXF1aXJlZCBvbiBzZWxlY3RlZCBicmNtc3Ri
CmRldmljZXMuIEV4ZWN1dGlvbiBvZiB0aGF0IGNvZGUgZGVwZW5kcyBvbiBmYW1pbHkgLyBwcm9k
dWN0IGRldGVjdGVkIGJ5CmJyY21zdGIgc29jIGNvZGUuCgpGb3IgQVJDSF9CQ000OTA4IGJyY21z
dGIgc29jIGNvZGUgYWx3YXlzIHJldHVybiAwIHZhbHVlcyBhcyBpZHMuIERvbid0CmJvdGhlciBz
ZWxlY3RpbmcgJiBjb21waWxpbmcgdGhhdCByZWR1bmRhbnQgZHJpdmVyLgoKRGVwZW5kcy1vbjog
MTQ5YWU4MGIxZDUwICgic29jOiBiY206IGJyY21zdGI6IGFkZCBzdHVicyBmb3IgZ2V0dGluZyBw
bGF0Zm9ybSBJRHMiKQpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVj
a2kucGw+Ci0tLQogZHJpdmVycy9waHkvYnJvYWRjb20vS2NvbmZpZyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L2Jyb2FkY29tL0tjb25maWcgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmlnCmlu
ZGV4IDA5MjU2MzM5YmQwNC4uZmQ5MmI3M2I3MTA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9LY29uZmlnCisrKyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL0tjb25maWcKQEAgLTk0
LDcgKzk0LDcgQEAgY29uZmlnIFBIWV9CUkNNX1VTQgogCWRlcGVuZHMgb24gQVJDSF9CQ000OTA4
IHx8IEFSQ0hfQlJDTVNUQiB8fCBDT01QSUxFX1RFU1QKIAlkZXBlbmRzIG9uIE9GCiAJc2VsZWN0
IEdFTkVSSUNfUEhZCi0Jc2VsZWN0IFNPQ19CUkNNU1RCCisJc2VsZWN0IFNPQ19CUkNNU1RCIGlm
IEFSQ0hfQlJDTVNUQgogCWRlZmF1bHQgQVJDSF9CQ000OTA4CiAJZGVmYXVsdCBBUkNIX0JSQ01T
VEIKIAloZWxwCi0tIAoyLjI2LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
