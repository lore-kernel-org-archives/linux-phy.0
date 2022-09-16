Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB97C54EE9
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 06:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v4g9ZjWJD+E++cLOW3I30+FNVWDJXjwiyi4sa3UT6r0=; b=IaK5ZcGmDabMwg
	4iylgxGc7awxEKVrEV9PcEvg3L9zfvPx5D8mzPD7lWQqec44Ff2Byep4RXqR+PhZFx+j4kKr+J7//
	/a6zdfnKrLElX8A9UMlraS5wVLc3dxS6sDf3li70Xw5/7WidP1tuT3pvnNVJGvMgex6PtIvQJZBcD
	iwLL/CRA0RJwNUqaVjj1huWxy48BIzohGnMiAOKPdXmfHCnCg5wYHv+3VcKmWJzNTNJJjxVqfZrW8
	Kf6djzJQ/l1ZJ6qoDsNoCTMRX9n/gC77KKYtzFStdpS4I+ifgRLeloICoornatzE/s+ZjHFXq4DtD
	ELvfjibrYD+qwn40+ZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4jf-0097yr-Fe; Fri, 16 Sep 2022 06:21:59 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4jd-0097xZ-PP
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 06:21:59 +0000
Received: by mail-pf1-x42e.google.com with SMTP id c198so20281889pfc.13
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 23:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Jj7/OL2eAqo8lI0rpxiTJPMY8c9JRtqqMwO4KPdPLeU=;
        b=nal/o+O3eJncjRsZGGpMQv+2GWSnSNTfo2mqaEFt2WZQFfUVjftZl0aYv70EGSlvqd
         espf7tC8p47zmJtrJhK9uXL7WlKXedffzsUjhKve3/7NSyOaXOlTenmBmG/z3Nrp4Rij
         FELLoQT5RFnJ/bAQvKJsAJbNHademq3eV8ufZ4TBvgyt8AavJjwLyZA+jj7y9OHr2Dw4
         WyZZbLyn1YxVQr6A5aL64XCByooz6xdR4LJzrJ2OQuQX1ZCEr15ruNToE6Oz1lvhi6Xm
         DDgEtrAKDJN1+oQtLDCCY/kJ8aQjHSqXRKap6OqqIeL+kn+aRvgGqm1S1sUDRCJym7bq
         H73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Jj7/OL2eAqo8lI0rpxiTJPMY8c9JRtqqMwO4KPdPLeU=;
        b=ZuxmsFZsxE4Y2w7O2JCdYHp72KcNsjV8XifJ852PW3L6fIPxYyffuC4JwbzxSpLWsG
         7fzMUROqTeELZy99Z+ksr4ZuYjmECyQ6qO4hUDToGUJfFh2uNhvvJ4GsTAPzA5WJ7gI3
         r4TfDdfZpDqS9qgHFzE7mzCsNsX9vcOneilDUqUh6QCVdKsS9S4zFgCEsMT4pTZf6tt3
         AuHFgl07k6KkkSKAvmvI7fFBhKL/szOG8oIS05d1O5UGodP3fs/Nyhs1kxc7XqyC6BDB
         ND9I/RDz24z8OaRFyKP4Wiu4+K24Gxpp+QVZdBzo/wSk1pYqIp3S0yAF4Pql8w4nSrvD
         DfOA==
X-Gm-Message-State: ACrzQf2BRDZfKZZ7qTxVMXq0puMIk1QZtM35RGuF7qriqo41wiQnOaAv
	CXjSMxIcE5sTQt5WTfJdr+4=
X-Google-Smtp-Source: AMsMyM5QO7rfjdJwjmcPfcEly/IZWfWK9JNGayYfv+GpRNG27/ZOH+GqVUsicuohhMFhgkfwtH4HUw==
X-Received: by 2002:a65:4941:0:b0:42a:8c1b:6b6c with SMTP id q1-20020a654941000000b0042a8c1b6b6cmr3164083pgs.375.1663309313479;
        Thu, 15 Sep 2022 23:21:53 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id a12-20020a170902eccc00b00168dadc7354sm14177639plh.78.2022.09.15.23.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 23:21:53 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: ye.xingchen@zte.com.cn
To: vkoul@kernel.org
Cc: kishon@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	ye xingchen <ye.xingchen@zte.com.cn>,
	Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH linux-next] phy: broadcom: use function devm_kcalloc() instead of devm_kzalloc()
Date: Fri, 16 Sep 2022 06:21:50 +0000
Message-Id: <20220916062150.153104-1-ye.xingchen@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_232157_848387_203F3F83 
X-CRM114-Status: UNSURE (   9.85  )
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

From: ye xingchen <ye.xingchen@zte.com.cn>

Use 2-factor multiplication argument form devm_kcalloc() instead
of devm_kzalloc().

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/broadcom/phy-bcm-sr-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-sr-usb.c b/drivers/phy/broadcom/phy-bcm-sr-usb.c
index 0002da3b5b5d..0d393e0cc7bb 100644
--- a/drivers/phy/broadcom/phy-bcm-sr-usb.c
+++ b/drivers/phy/broadcom/phy-bcm-sr-usb.c
@@ -236,7 +236,7 @@ static int bcm_usb_phy_create(struct device *dev, struct device_node *node,
 	int idx;
 
 	if (version == BCM_SR_USB_COMBO_PHY) {
-		phy_cfg = devm_kzalloc(dev, NUM_BCM_SR_USB_COMBO_PHYS *
+		phy_cfg = devm_kcalloc(dev, NUM_BCM_SR_USB_COMBO_PHYS,
 				       sizeof(struct bcm_usb_phy_cfg),
 				       GFP_KERNEL);
 		if (!phy_cfg)
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
