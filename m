Return-Path: <SRS0=W3RZ=I3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17A15C433DB
	for <linux-phy@archiver.kernel.org>; Mon, 29 Mar 2021 23:31:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7E2E6198A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Mar 2021 23:31:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B7E2E6198A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Np42IXbno/t6wd+bKQyxjrhjqZbl9+xJPY/sJECDr4Y=; b=dvFiwwsCAQBVctiXjAzbtOWaQP
	Eg4NLC5o4ic3CuLkMvAK9cQH11eihwuhSQMzBdBnjcoqbfi2u9AOplSPuoqJWmrZnPI9xXtU1pmhP
	fXaKbjSt7DfHZYHLxSWFWefYAVtOLnt+DzBYIYCpOMluFDsU4365v9B2OMuPEsiqgQKAsHkTb0Ais
	xyO3D034vd6DYwkPEVYtD2GTOYMXse2cQMpAxm4Lekb4+k38XcmCcoEDmZA429vas17lDIHEbmqys
	GtclA9Bbe5Lm4bun2NHzxk4LMJDWfq+TRUubVCIksIQPVLcATUI+tkY4cGJu1XOZxkHI3YdTiTnGK
	6/L/hKXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR1La-001x6Q-QE; Mon, 29 Mar 2021 23:31:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQv6V-000n8L-Q4
 for linux-phy@lists.infradead.org; Mon, 29 Mar 2021 16:51:21 +0000
Received: by mail-lj1-x232.google.com with SMTP id s17so16707337ljc.5
 for <linux-phy@lists.infradead.org>; Mon, 29 Mar 2021 09:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=30lqEwjqAKqZiY/a72YPhPXj4BzndpAet2EzHCE8wZM=;
 b=M3jpOqC2flYFHYLQwTomIzBU/vytWlnHjRKpvO7YTF3Kz9wwYyJ6M/0+N/lL+UwNqn
 kBSQ1Elz6OXP7y06KdlBmY+dlOtwRsHIqAM2YwVZTrYGmcoEKvYXAR1BH+8QczOmgZCN
 znwSg7fGYsez8nt1XvdgQ4bwjVQIbydDjzdATy+KO9RZK6h1t2fHgxWfAhcBItEVmawP
 ZVlQfOVy4IE7VZEh7gEfEiB541JV6oCaMsbiWKJ37vVt2R38/UrCvtkgRierB3Dw3l7k
 Me4IbHiASKY15XbQ+PrShltCI+ZFlVo4ePeCsPiZIVrl8pqnIl54GpHIhLqHHk2lN9Vy
 EQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=30lqEwjqAKqZiY/a72YPhPXj4BzndpAet2EzHCE8wZM=;
 b=DasCpf1Z7338lyPRaAEqt93DT9zMVTvph0mhifDJ+1T/aeqdfyUX+LJYAj4k95xcfb
 KDNgal8d0yX1kdvkBo5d7cjGjab+Kz8sa0I4wdY90/qKWFn66wA3v9G3XXgElk2L/I3/
 5LuSy0wPuJSPQVP3olcxJZA6M9aX3j9+71FI8k2dPNVZovUYKB8Sq5aGLd0yxj2GWjNv
 WO5dPWxGvwNUcS7rcJO9+Mzp3HxBXQXOKIvrVTV+Syt8h/VoJVkxKFJPIxGYRLEHCcTS
 KJLxhf2ayhBWR400LoUykRgGCbV+6tuM+Tvv0LM4SuW8OWLLvG1GULxaz516TL7YMhnT
 C0sg==
X-Gm-Message-State: AOAM532bCgsgh7LygMjc+cFfE5jzEhAtjN+l8yckvFnxqXCeyTDnRHB6
 NzWiJO9EK3qOIdSUwwHNlfs=
X-Google-Smtp-Source: ABdhPJxZWjtG4qKLv9jS6iGzu2XiayL0MC7dndlAyoadgxBqXlzWIG/ubKHKWR57saY7gvP6dayeJA==
X-Received: by 2002:a2e:8051:: with SMTP id p17mr18198250ljg.130.1617036663060; 
 Mon, 29 Mar 2021 09:51:03 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id q12sm2500469ljj.49.2021.03.29.09.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 09:51:02 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
Date: Mon, 29 Mar 2021 18:50:56 +0200
Message-Id: <20210329165056.31647-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_175110_775151_FA90EEBC 
X-CRM114-Status: GOOD (  14.91  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKMS4gQ2hhbmdlIHN5bnRh
eCBmcm9tIHR4dCB0byB5YW1sCjIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCjMu
IERyb3AgInJlZyA9IDwweDA+OyIgZnJvbSBleGFtcGxlIChub3RpY2VkIGJ5IGR0X2JpbmRpbmdf
Y2hlY2spCjQuIFNwZWNpZnkgbGljZW5zZQoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tp
IDxyYWZhbEBtaWxlY2tpLnBsPgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KLS0tCkkgc2VudCB0aGlzIHBhdGNoIGJhY2sgaW4gTm92ZW1iZXIgYW5kIGdvdCBpdCBy
ZXZpZXdlZCBpbiBEZWNlbWJlci4KU29tZWhvdyBpdCBoYXMgbWlzc2VkIGxpbnV4LXBoeS5naXQg
dGhvdWdoLgpodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvZGV2aWNldHJlZS1i
aW5kaW5ncy9wYXRjaC8yMDIwMTExNjA3NDY1MC4xNjA3MC0xLXphamVjNUBnbWFpbC5jb20vCi0t
LQogLi4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkudHh0ICAgICAgICAgIHwgMzQgLS0t
LS0tLS0tLQogLi4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkueWFtbCAgICAgICAgIHwg
NjIgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCsp
LCAzNCBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55
YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9i
Y20tbnMtdXNiMy1waHkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9iY20tbnMtdXNiMy1waHkudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAzMmYw
NTcyNjAzNTEuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS50eHQKKysrIC9kZXYvbnVsbApAQCAtMSwzNCArMCww
IEBACi1Ecml2ZXIgZm9yIEJyb2FkY29tIE5vcnRoc3RhciBVU0IgMy4wIFBIWQotCi1SZXF1aXJl
ZCBwcm9wZXJ0aWVzOgotCi0tIGNvbXBhdGlibGU6IG9uZSBvZjogImJyY20sbnMtYXgtdXNiMy1w
aHkiLCAiYnJjbSxucy1ieC11c2IzLXBoeSIuCi0tIHJlZzogYWRkcmVzcyBvZiBNRElPIGJ1cyBk
ZXZpY2UKLS0gdXNiMy1kbXAtc3lzY29uOiBwaGFuZGxlIHRvIHN5c2NvbiB3aXRoIERNUCAoRGV2
aWNlIE1hbmFnZW1lbnQgUGx1Z2luKQotCQkgICByZWdpc3RlcnMKLS0gI3BoeS1jZWxsczogbXVz
dCBiZSAwCi0KLUluaXRpYWxpemF0aW9uIG9mIFVTQiAzLjAgUEhZIGRlcGVuZHMgb24gTm9ydGhz
dGFyIHZlcnNpb24uIFRoZXJlIGFyZSBjdXJyZW50bHkKLXRocmVlIGtub3duIHNlcmllczogQXgs
IEJ4IGFuZCBDeC4KLUtub3duIEEwOiBCQ000NzA3IHJldiAwCi1Lbm93biBCMDogQkNNNDcwNyBy
ZXYgNCwgQkNNNTM1NzMgcmV2IDIKLUtub3duIEIxOiBCQ000NzA3IHJldiA2Ci1Lbm93biBDMDog
QkNNNDcwOTQgcmV2IDAKLQotRXhhbXBsZToKLQltZGlvOiBtZGlvQDAgewotCQlyZWcgPSA8MHgw
PjsKLQkJI3NpemUtY2VsbHMgPSA8MT47Ci0JCSNhZGRyZXNzLWNlbGxzID0gPDA+OwotCi0JCXVz
YjMtcGh5QDEwIHsKLQkJCWNvbXBhdGlibGUgPSAiYnJjbSxucy1heC11c2IzLXBoeSI7Ci0JCQly
ZWcgPSA8MHgxMD47Ci0JCQl1c2IzLWRtcC1zeXNjb24gPSA8JnVzYjNfZG1wPjsKLQkJCSNwaHkt
Y2VsbHMgPSA8MD47Ci0JCX07Ci0JfTsKLQotCXVzYjNfZG1wOiBzeXNjb25AMTgxMDUwMDAgewot
CQlyZWcgPSA8MHgxODEwNTAwMCAweDEwMDA+OwotCX07CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkueWFtbApuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjdmZDQxOWRiNDVkMAotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5z
LXVzYjMtcGh5LnlhbWwKQEAgLTAsMCArMSw2MiBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sIworJHNj
aGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3Rp
dGxlOiBCcm9hZGNvbSBOb3J0aHN0YXIgVVNCIDMuMCBQSFkKKworZGVzY3JpcHRpb246IHwKKyAg
SW5pdGlhbGl6YXRpb24gb2YgVVNCIDMuMCBQSFkgZGVwZW5kcyBvbiBOb3J0aHN0YXIgdmVyc2lv
bi4gVGhlcmUgYXJlIGN1cnJlbnRseQorICB0aHJlZSBrbm93biBzZXJpZXM6IEF4LCBCeCBhbmQg
Q3guCisgIEtub3duIEEwOiBCQ000NzA3IHJldiAwCisgIEtub3duIEIwOiBCQ000NzA3IHJldiA0
LCBCQ001MzU3MyByZXYgMgorICBLbm93biBCMTogQkNNNDcwNyByZXYgNgorICBLbm93biBDMDog
QkNNNDcwOTQgcmV2IDAKKworbWFpbnRhaW5lcnM6CisgIC0gUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06Cisg
ICAgICAtIGJyY20sbnMtYXgtdXNiMy1waHkKKyAgICAgIC0gYnJjbSxucy1ieC11c2IzLXBoeQor
CisgIHJlZzoKKyAgICBkZXNjcmlwdGlvbjogYWRkcmVzcyBvZiBNRElPIGJ1cyBkZXZpY2UKKyAg
ICBtYXhJdGVtczogMQorCisgIHVzYjMtZG1wLXN5c2NvbjoKKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCisgICAgZGVzY3JpcHRpb246CisgICAgICBQ
aGFuZGxlIHRvIHRoZSBETVAgKERldmljZSBNYW5hZ2VtZW50IFBsdWdpbikgc3lzY29uCisKKyAg
IiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAwCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUK
KyAgLSByZWcKKyAgLSB1c2IzLWRtcC1zeXNjb24KKyAgLSAiI3BoeS1jZWxscyIKKworYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBtZGlvIHsKKyAg
ICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47CisgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owor
CisgICAgICAgIHVzYjMtcGh5QDEwIHsKKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxu
cy1heC11c2IzLXBoeSI7CisgICAgICAgICAgICByZWcgPSA8MHgxMD47CisgICAgICAgICAgICB1
c2IzLWRtcC1zeXNjb24gPSA8JnVzYjNfZG1wPjsKKyAgICAgICAgICAgICNwaHktY2VsbHMgPSA8
MD47CisgICAgICAgIH07CisgICAgfTsKKworICAgIHVzYjNfZG1wOiBzeXNjb25AMTgxMDUwMDAg
eworICAgICAgICByZWcgPSA8MHgxODEwNTAwMCAweDEwMDA+OworICAgIH07Ci0tIAoyLjI2LjIK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
