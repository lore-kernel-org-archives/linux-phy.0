Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23B1C6377D
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 22:58:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6842B6127C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 22:58:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6842B6127C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7BG/A4DstROuUWGUNuhtQHDqtbB+ilXTQkaFcTctYQg=; b=CbTz8M0jRQ2HUb
	cIONNmyEfy72adydL4oAMRLwB5ncBzci54ALy/jHoSzvJaVsoxEDj2LrfHY4CLh0o7o57soHhWLIE
	AdltcK1UCfi6sIUK0FSCu0Pfq+jQ8G+wi/yJLqvyUibBKuK/NLaoi1Y6LnIOCuDlPUZt2izMtYZV6
	VojmMXvOHhdRDrrc5H0MLhrHqv+6RSo9sU+hLm9gtM7g372GsoJ4k7F+QGWqd0fYcyJkZXu1p0dWm
	x86Q9AeNqXbO+tfkAaChbOWpZoRIFMZGMgfPme7vxKN+/9k65zAZazHW0grB6WmORowGfygNnsdCj
	F0p3SxtwD17nV4dg7qMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6LAQ-00HPv4-RC; Wed, 21 Jul 2021 22:58:18 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6LAO-00HPpL-Rj
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 22:58:18 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 j1-20020a0568302701b02904d1f8b9db81so3571171otu.12
 for <linux-phy@lists.infradead.org>; Wed, 21 Jul 2021 15:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OVx4Y6jK7u4gxHBBBHFBP67+nRk3zXomiOraC96Tyvs=;
 b=Qt/l/1rkp7SS9H0h/4QZzmgSue+hfJumtgSAUDA8V/QViLEumTazojk2NQZ3e2MzwI
 ccKlnnATH1Yk6gnwUSsyx3XBpUnszE6/4bNGq+XtCQRsj6/HZl4Uzj+eu34s91oqrmlc
 LqWxBt6ceJN4IYRcwC6dMJ2UYJt2wnTQC4zTNHIOMLxTnd0kpWLQjdOJwZykkuGaxWZd
 wbOwzNa6Mr2MdKQ6Z79hQYnEpoY0IwhxH/ixEFRQ5VtHK8BmhmwMHmTpNbjg5fsXpWIA
 J5pb/q3iBl4jeb/rG8KvLskMVvuUKfllOB0voC7oTEUxMJvCbJ88Lw+JmGt9cw9KmgYC
 xpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OVx4Y6jK7u4gxHBBBHFBP67+nRk3zXomiOraC96Tyvs=;
 b=qGCmnIjd2fF8BFMtZwzpZ9tyoHJn7MJ3ebZe2C4E1nHL9XvePzIh4ijRYHBXxX4WcR
 GOk3vl4e4oIngVtgYse0kTpjRITil+A6zCK5TVPs5JNJnlMJT25+N4MZcDzwas0+Fn+3
 pC07dsLsKLIKPzBmdE/rcT19KD1UWj9TdEN3MSE+GcoaztFA6dLxtKY00wop01VH3NMj
 E4KiNp4YjkTvUU/+ItyuULsWkw5RxS7l1wgpTp21PfJfMJghmjgkgxbGQ3TlI0VFqnn1
 aRz4FdpuG3VOg0P/g+4GVZRhsvYImM0Tpo1BtYsbOxvOR2LSalbxqMIDrfY0io0V5V01
 KaJQ==
X-Gm-Message-State: AOAM530s2gdxChw5T5esWqr6N4Lr1XSf863U59LrAQd6DsTP+agILcIb
 HVTBC18mKzp5/ND69sFLft+jvQ==
X-Google-Smtp-Source: ABdhPJztGtSXle/txkOInBta7s9iPfgmNMwmeGcMh31LEFu/WZhvG+ecNlUxR7cpqKndhlt0YxF1kg==
X-Received: by 2002:a9d:4ea:: with SMTP id 97mr28057608otm.324.1626908292956; 
 Wed, 21 Jul 2021 15:58:12 -0700 (PDT)
Received: from localhost.localdomain
 (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id h24sm5035388otl.41.2021.07.21.15.58.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 15:58:12 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,
 qmp-usb3-dp: Add support for sc8180x
Date: Wed, 21 Jul 2021 15:56:29 -0700
Message-Id: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_155816_935998_84DE9D9F 
X-CRM114-Status: UNSURE (   8.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The SC8180x has two instances of the QMP USB/DP combo PHYs, add a
compatible for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 217aa6c91893..1d49cc3d4eae 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - qcom,sc7180-qmp-usb3-dp-phy
+      - qcom,sc8180x-qmp-usb3-dp-phy
       - qcom,sdm845-qmp-usb3-dp-phy
       - qcom,sm8250-qmp-usb3-dp-phy
   reg:
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
