Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B5AC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 06:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TDi3YHwaCz0P8hv4wTXTrhT3oexgssNDWsCk6v1Jlh8=; b=EiBc+RuH7liSo3
	L/0FWfvI+1RSriiJ6BcBCFvHWDqeMQO5KYWAGoWpMp5alvn7Vbzfq8LL7C8AfNacIw1+vbMnsm6yD
	EYtl8nM2hONAfugmFSmHsjAmliiLdDR9p1/D23qHdKjc+jm7I9+1gIizhLspOnyljXrdIvMvyTZVY
	RMKKV5Bitrc6kJkba5eKeJKJICARnfCXGdl1bM4K05U7oM6jqD48GgBC9Kb67sqRgXjeqvLPZWhYq
	myJ6QVm5ErQSkscgmOiiQ+Sy7qgGHdXZ/5S6Ox+A8dXB+g9s3iTKznYM0J9/AFht4/XwBy68C6CK2
	9fzkTDyw22qpKm4vsKMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvZI5-000ruD-4n; Fri, 10 Dec 2021 06:21:57 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvZI2-000rtf-2K
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 06:21:55 +0000
Received: by mail-pl1-x635.google.com with SMTP id v19so5611573plo.7
 for <linux-phy@lists.infradead.org>; Thu, 09 Dec 2021 22:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C8BS4uByosa1EDbI+XGv6haeJe9mKfz064lJbpyXMW0=;
 b=FwClcQDkEU9X7OFujzMIPmJTlWmTv1SY8rAq9BAt+hM3xvn5eVfEA/cgsvgDKXFL8t
 pjibn3ahS3RmREuZuLqsfyTHWUn7+CIv9aqdhRpljFbmlCgn3MR8J11/BUirhF1rAMsL
 iO2FaHLzQd/vEOR8MmbxWZoPWkiZ6v7fPyv8sMwetPT9Zf5ALCJnbfjctbQodJ0wjb30
 Skl244ccJRj+dcMeJ4qAYPU5BpZv5oifH7bR5mRFjywbINaxc4KX6RXK4gCiREVJGO5B
 ZEUw54RiUfy/dXcnDsi62FnYhHzR5AP0GxSBpDAPNPByy206/x3+5ipIvpj6DnWSZtFA
 2a0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C8BS4uByosa1EDbI+XGv6haeJe9mKfz064lJbpyXMW0=;
 b=KiM3I/z6QTWc9UGfvjoGHXfVXjg/UHvH8X0ZYp3Es2oQNYavRlI0NZzDAUfa+vp9S6
 FK27bnan8qJPsAOjBFZ2q+F1cIkiwRg+xFmUrhjLhFYEuuzOBPAPGPHehB9ZD8gksAWR
 +pRL3SC+clIAqJtP4UFSe9RHuj3z7wPISE9ra78Wlhl3tJwKzSqIsx6jkUy1tbJ5L/s4
 7iF2KMYmdtEcsoA+hOZhslxpERml05PhhWlmYWubomFVnB39HZ24SZ6ZyuuJR3hOFFtw
 fYhT9VAZugXJ/JSvGc38HmUIi3Pm19WY2tNWaPvoNYOU0oYmyYuDwAlGKi1r59wYWN4a
 3r/w==
X-Gm-Message-State: AOAM530pM3b6Wtho5MwKctYU7iHO1hepwV+5qdWoMt09ULqPyWOJBEHG
 i3GTcRWyiOR7geB8gdV3yNQ=
X-Google-Smtp-Source: ABdhPJzy5rbBLOUngt3qODtQFd8ir8VEGJYe/T8wk5P4O/RORLP8qAX5desVtyVew0K4N2o+gZbFXA==
X-Received: by 2002:a17:90b:1a87:: with SMTP id
 ng7mr21609604pjb.86.1639117311576; 
 Thu, 09 Dec 2021 22:21:51 -0800 (PST)
Received: from debian11-dev-61.localdomain (192.243.120.180.16clouds.com.
 [192.243.120.180])
 by smtp.gmail.com with ESMTPSA id v13sm1832031pfu.38.2021.12.09.22.21.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Dec 2021 22:21:50 -0800 (PST)
From: davidcomponentone@gmail.com
To: agross@kernel.org
Cc: bjorn.andersson@linaro.org, davidcomponentone@gmail.com, kishon@ti.com,
 vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yang Guang <yang.guang5@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] pyh: qcom: fix the application of sizeof to pointer
Date: Fri, 10 Dec 2021 14:21:19 +0800
Message-Id: <8d75af8e322a7e5839d2dd4320b696ee09ec0843.1639100549.git.yang.guang5@zte.com.cn>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_222154_149014_655C34AE 
X-CRM114-Status: GOOD (  10.15  )
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

From: Yang Guang <yang.guang5@zte.com.cn>

The coccinelle check report:
./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
ERROR: application of sizeof to pointer

Using the real size to fix it.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: David Yang <davidcomponentone@gmail.com>
Signed-off-by: Yang Guang <yang.guang5@zte.com.cn>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 17d5653b661d..a8ecd2e8442d 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
+	data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
