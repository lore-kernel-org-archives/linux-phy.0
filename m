Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E46EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jun 2023 14:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5hM0XtpmJGLlwA6b/ji45Wmg+VqPg+HhEC35xOtXWE=; b=HjTA/H1yqkGyqq
	zoJpTdSPuW1hDMA9mEbp/6uQJlftItrBfAJ0et7HyZLyORI3c0RcsBBvbAB7c7qqbHrj21QsypaaT
	1XIv9VpVICqH6QT/g+fOJgzeu297uEwz6dmRVqE5qs/eByyk8DCAOU8iE60Pql8z2+ZcFicEUkcrg
	tNJym+yhMybv6YuG/bmeENOdN6gEh079PEN66YsKAw4o6KIZMZTNr/3Uow8AW0HsNpVLSJ29GYlVF
	4/JHEkbb+WbxWHAK3Y63IXPjNlfikSyBZ3w+zA7ngy4+qAUPahh+mqzWPCbgRDWuXam06InfkcVzY
	gDFYjWDkjXpLIzV9TSxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsum-001Kff-1F;
	Thu, 29 Jun 2023 14:46:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuh-001Kdw-2R
	for linux-phy@lists.infradead.org;
	Thu, 29 Jun 2023 14:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688049986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=frkGVo4Jix0SxJdEp5WkIhYt82JsoR95HUu7QuiPKvU=;
	b=NuoyCQ2Hyg7qxjMm0mpgsz439duvP3u/3rd+YOOGqwUedAgW92x5geai6DY8H2CjplykBC
	tt3vK5taN+9V54in9wP0kZA0uBr0exLwW+QBXq2TfvMeVs//WUsray5YEapnXrZDp+UtY/
	hWlb40NymGoElByCbrLafvrpa3ygxtE=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-270-ZCeGcj8GPfaw4nzTe9Me0g-1; Thu, 29 Jun 2023 10:46:25 -0400
X-MC-Unique: ZCeGcj8GPfaw4nzTe9Me0g-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-635e91e5537so8816466d6.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Jun 2023 07:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688049985; x=1690641985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frkGVo4Jix0SxJdEp5WkIhYt82JsoR95HUu7QuiPKvU=;
        b=dijGFhf/hdZWvjRfQyt4BTHp/M2Juy6TkDWePpL9mE7quaF1yDRaST8MfPGT0ottp/
         xtiva6lPueFA52NfEykOYqa33MaQaO0ZyZ9hxA1/Qds/arYwA3fVvwybog26226AJPQj
         +LOUpbfNhl0BXIiZeXzQPQgmXrprX9ZsZnAE7JWyilmWIpJXNBXs4T0xrDDfzHNZmADU
         lFtax4Oyqqiy0wd63Wd6Jqs0xOFYF+KPFh6N6XFTperg1ON3EqjMpYq7uzy68n794MMd
         AYW5iceIiNtgEIjLM7ykP7Hoh9VguPTLmY4/nlxURxhbbrU7N3l77w8Ajpq1KY+7qDd7
         9mVA==
X-Gm-Message-State: AC+VfDzswlX2NFRjYmaExE+wBrvgSzBmhgi6MwYfwnnNYclMQhnX+HYS
	8QTw+8RjAZoFcxGW3/k/epaLCMfxtxZ4xhrr/19AwzgS0K5lbgllhMsgI99UMH3YCnxYQczeBF3
	CoeT7ei2LDCfTgsNYxcb+e42EVQ==
X-Received: by 2002:a05:6214:e4b:b0:631:ed13:b286 with SMTP id o11-20020a0562140e4b00b00631ed13b286mr33755938qvc.26.1688049985346;
        Thu, 29 Jun 2023 07:46:25 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ74djRCokcr0OekNQKJ/UsWDEjH1oj9tvMOrgNFcOaxaU9DKrR6QyWHwiiSm2lavDbeQFZTFg==
X-Received: by 2002:a05:6214:e4b:b0:631:ed13:b286 with SMTP id o11-20020a0562140e4b00b00631ed13b286mr33755923qvc.26.1688049985118;
        Thu, 29 Jun 2023 07:46:25 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id a17-20020a0ccdd1000000b005dd8b9345b4sm7055590qvn.76.2023.06.29.07.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 07:46:24 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 3/3] phy: qcom-snps-femto-v2: use qcom_snps_hsphy_suspend/resume error code
Date: Thu, 29 Jun 2023 10:45:40 -0400
Message-Id: <20230629144542.14906-4-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230629144542.14906-1-athierry@redhat.com>
References: <20230629144542.14906-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_074627_864521_F3FD971E 
X-CRM114-Status: UNSURE (   9.45  )
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

The return value from qcom_snps_hsphy_suspend/resume is not used. Make
sure qcom_snps_hsphy_runtime_suspend/resume return this value as well.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 6170f8fd118e..d0319bee01c0 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -214,8 +214,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_suspend(hsphy);
-	return 0;
+	return qcom_snps_hsphy_suspend(hsphy);
 }
 
 static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
@@ -225,8 +224,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_resume(hsphy);
-	return 0;
+	return qcom_snps_hsphy_resume(hsphy);
 }
 
 static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
