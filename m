Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C13E3FA3743
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKk+xRgZurVM2VvK0c14mVpQC708VJbMt3jkNZmfR9M=; b=RkXHrtJSDtulzP
	GVlgRzgAYoQnX2RId/u0Lw2tQGjVjQEuhMCKE53+V4+HJBU9Z2Ln1vFyfhVZvdE2hafJL17WQ5YLv
	9KWiVMMDGChN83NgVk0db8Cj7nwUKik/Ne9YwW7w0jnAy7S238p3kSFRK+Wzxr3jSK868s0/6m2+E
	b4lEo93PPUc2qsNmXL5tj0/Q50hV5yy9MLOvKPEDooP/jCcHzhIcl8ul0uHXDRZxYNQHaOwvZ5p4V
	nBlCyjXjtHhq4zbLil3UvCA74Xh1O0YoYjfNOA2MppJJ51WLWmJoikfoTCYCLnyxiBEqxhtMIlgj+
	7q4YExXLh1usESh8omUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ9A-00Datf-6f; Mon, 31 Oct 2022 18:04:28 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ98-00DasF-2n
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:04:27 +0000
Received: by mail-pf1-x434.google.com with SMTP id b29so11309058pfp.13
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=mbaTkWIZctaMqvca5J6aUZD1yU2UYtJBk9TxNW1vYxyFZbwSlWxTXO/4DvGjs1wwJP
         S1J/cj97edabhnPuqksCMwl1eu0ORZNLO9ms8r65u5wbDVM04VFOtkiuyQd5XCsFjEc4
         VxmFMqOjyuYh/4HnDzczDsxkfw4Ljzr5rdipzDoPlVV4yLGL5TQRGdMhg0gH7eruNE1p
         oVxsho9okB2M0NIN0f8X+MTG8f0e1tsxV+lJ/wS1Zg/Bztivz97X/3AHiBkQ6iJWdWB8
         7d+YNlNfqNBJXgOHKYfrFWm1JyjwBC+4J632yCsu+NbuC2rabHpI0o5hHgp7KaecAtwR
         L0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=SoIZb2FZ8Ddr2gJcP2sGKUw9xmqG7hm0oEw2fYWmRvQqwm91woyEJys0C6rywIwY3x
         GEpGd58fPIATFHT9iuFnNEGLV5Yw1oAkWpu4qiSEBwuvcmyNrHogipjepD761JkWHP5T
         OcmL88NIuCgTPxHZrqmfeOE/s+MT+4D0OOatlnnKvW6rASr69tdSCoPH0rB3E//PlroT
         Jej376N8g8TOdqbgcMpKZbbNrlTyB8UZg2Pz2dTSSDbQJ5M5sEG5otrlEZT/qsKZkLqJ
         l9/IEtMGAQPpOZjFPTx6rkHneRHdQVdTMSeW4Ood4bCgHUF6ik7BwxGNRyfCzalrSQTs
         +V+g==
X-Gm-Message-State: ACrzQf2AFWvjnNe1oUqdH1varH6zLV8jjFvcJPi3A5nmmhZqRNrosJu1
	FbowXUftf35l2WSFwlptY156
X-Google-Smtp-Source: AMsMyM5bkO0jc5E/Yeey8T7kpu9gaLOBOsA6kJDN2KwU5inXsF6u37NtULiOyALmrO8jomRmhKhNOg==
X-Received: by 2002:a05:6a00:c8d:b0:56d:370f:2003 with SMTP id a13-20020a056a000c8d00b0056d370f2003mr11529938pfv.76.1667239465227;
        Mon, 31 Oct 2022 11:04:25 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:04:24 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 15/15] MAINTAINERS: Add myself as the maintainer for Qcom UFS driver
Date: Mon, 31 Oct 2022 23:32:17 +0530
Message-Id: <20221031180217.32512-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110426_158911_5F555FB1 
X-CRM114-Status: UNSURE (   9.07  )
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

Qcom UFS driver has been left un-maintained till now. I'd like to step
up to maintain the driver and its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cf0f18502372..149fd6daf52b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21097,6 +21097,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/ufs/host/ufs-mediatek*
 
+UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-arm-msm@vger.kernel.org
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	drivers/ufs/host/ufs-qcom.c
+
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
 M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
 L:	linux-renesas-soc@vger.kernel.org
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
