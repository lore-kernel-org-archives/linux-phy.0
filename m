Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98B5C433E0
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 18:26:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2184364FB8
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 18:26:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2184364FB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0PsBPkKPa8miT5o4z4RNdNBQ4cKrIx/vdBpa1I9TLZQ=; b=ZFCOyMlI8J1h5jIrE7OGqSa/bO
	8fKwacuqHYDslNEec1G6k9CuUZ18Xo7QdjR588s0LEhMmrQgSqURbbpU6k1oCEixcmG6aEsxnVnES
	PRh6luwHTRcCc7JycDjyrhS0SyEnoieilhEJ1bxE2CPTZrEVL27KudFEPFTOAFZyupbrcSYqcTFYG
	w1bOZS6P4XpUFXMVwbiDymT8d0iLl+cTEI64gs1ZOWea3kXs6DjgU2T7T9WnxIlwFH/uS+OHHroiB
	E+jg2j8Dr9OvPc7bYruCETi6iAifY+zd7VzygJYgieH7LYosoud+rPTUns/PwsorVj5n9P/5EudLH
	aAoPkgMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJh40-005FWk-Fo; Tue, 09 Mar 2021 18:26:36 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJh3w-005FWM-DQ; Tue, 09 Mar 2021 18:26:34 +0000
Received: by mail-lf1-x134.google.com with SMTP id e7so28782338lft.2;
 Tue, 09 Mar 2021 10:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0eQk1ZpAfIQoYU/gZMpFPjDqOAJvuQStfi1rEbdEoCc=;
 b=SiWZkwNAxZxgGuLHZP7KdrOQteERdRLei+9sBH81w9g0hXcbCU2pqkngalkAu3sUIY
 E0M6Ygk9WeQ1bmHLDTGSnD7SB8cvVitX8RCXRffXSq7AVQZz6pTIV5iFpmm3B1c0v1xE
 3MpwDOJZZzXFfEEQYsKZDIjjvdrBXqsBNs+m31PXYEQ8bZXymMiS7etitHcLnsZY/etP
 0r/accSwOGxHzuXUIJtKbbl9ieeHQdazIryy3GeWOWRmvI2dJPxohUp/DyQBrJrmqqJu
 G666SqOLuk/fhDrbGzQ415GrBcwot3ycoB+cEuRHZ0IaSwRPTxmKsgm8bKEPD/sMyElB
 aQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0eQk1ZpAfIQoYU/gZMpFPjDqOAJvuQStfi1rEbdEoCc=;
 b=f/U/MEJ1mhMUqOJpGwNMQn6cA4bAStGq28qv1xLSkzDxgm/bt4kn8zsj2cfSRlvf/m
 cCXjPO7LAFInzIZN7q2d7qgn4+ExOxUXAcgXwhL76EHfNZwvCcS8KdwjmXa+aTH0KJO1
 TfuMKzhZxAeobVCSsny8uITiCIY1RCehk5gqttHuEUAoNuCyZd+caFbOiGx1naUIzdp2
 J2cI1/+8V1J0adeHw+rtgzQrWnIiKm30OTk2vBSFJiRuxJdn0nOg/oCrHFrpI1HAxTWW
 RqeQWlOsf/jTiCtRwlrvltwSVzwQi3gK/omHTXurC7+rxmOp2LJXbGR2A59sVXMI5/Wy
 p5vQ==
X-Gm-Message-State: AOAM531P++H+LFuZFZBzEvfEJt1MqO6Kf1TY0TZ7TSl13OjzCk0QTJjP
 tX8wFOyhI8jGTz58LyvJPks=
X-Google-Smtp-Source: ABdhPJxmodNDS483+7N3pZXS8GPl7MP9kso5Hchm0okO8eSEgclyFzI/L3oFFw9C57dtFXYrX4faEw==
X-Received: by 2002:ac2:46db:: with SMTP id p27mr18205923lfo.396.1615314390305; 
 Tue, 09 Mar 2021 10:26:30 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id d14sm2000699lfg.128.2021.03.09.10.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 10:26:29 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Al Cooper <alcooperx@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: phy: brcm,brcmstb-usb-phy: add power-domains
Date: Tue,  9 Mar 2021 19:26:16 +0100
Message-Id: <20210309182616.25783-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_182632_639716_6003AF92 
X-CRM114-Status: UNSURE (   8.08  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKT24gQkNNNDkwOCBVU0Ig
UEhZIGlzIG1hbmFnZWQgdXNpbmcgcG93ZXIgY29udHJvbGxlciBzbyBpdCBuZWVkcwpkZXNjcmli
aW5nIHByb3Blcmx5IHVzaW5nIHRoZSBwb3dlci1kb21haW5zLgoKU2lnbmVkLW9mZi1ieTogUmFm
YcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9icmNtLGJyY21zdGItdXNiLXBoeS55YW1sICAgICAgICAgIHwgMyArKysKIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYnJjbXN0Yi11c2ItcGh5LnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYnJjbXN0Yi11c2ItcGh5LnlhbWwK
aW5kZXggMDQ5NzM2OGQxZmNhLi41ZjllOTFiZmI1ZmYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxicmNtc3RiLXVzYi1waHkueWFtbAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYnJjbXN0Yi11c2It
cGh5LnlhbWwKQEAgLTQyLDYgKzQyLDkgQEAgcHJvcGVydGllczoKICAgICAgIC0gY29uc3Q6IHVz
Yl9tZGlvCiAgICAgICAtIGNvbnN0OiBiZGNfZWMKIAorICBwb3dlci1kb21haW5zOgorICAgIG1h
eEl0ZW1zOiAxCisKICAgY2xvY2tzOgogICAgIG1pbkl0ZW1zOiAxCiAgICAgbWF4SXRlbXM6IDIK
LS0gCjIuMjYuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
