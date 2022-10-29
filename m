Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC53C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKk+xRgZurVM2VvK0c14mVpQC708VJbMt3jkNZmfR9M=; b=YLwK+ynJ6fCyY8
	WU7fHMJ5ZqaAGoNWGQ7Hyan4OyuqMg7cIlOvFSEUaxNipMlLBnvF7056T4zKzdaVTSBm3kbimMJxz
	Jk8I4rUlaaMTMmYOTz4lIwiTX53MoQvBuIPVwEYsLc/sVXVsfzCy3ZsROdaKu5VEkRv3wQce6it0q
	4dnqUGb4XWGz99TAg4s8IziXwjL5qw4TrnOwnz86DFSjIYmBTklzezEn1aXGpLJsVdtjSHbzoQ6B7
	lRujDjtxX5ivXc4GXgzqRF83xzXAFxNqWpOu3YKrLBOyUihN+ByscXFqwEjL7aaO7MVSQP3RiKwyJ
	viG3wgEUNFSgcIggyuUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomf0-006UPz-MW; Sat, 29 Oct 2022 14:18:06 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomex-006UNi-SO
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:18:05 +0000
Received: by mail-pl1-x633.google.com with SMTP id f23so7199539plr.6
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=P9QFigTKmYtXKlmPOyJw0TGo06Tb3Vb+k5qYkdlVCW/AyKvzamq42wfKefeXNp8vTX
         t8Fy6GtKiWkdk7UQtO7yhBq/bxE8aQAnEHGRw+q7SK/Entnh4l1ai+RRLFxZgUR533wk
         mrpMQ3xuCLjTX0413gdP49H31P59t69NAS9mSIIG9gptSKBZ785R7nYiul1r4iai/cqj
         naIbeXg9xPGb8szMaLu2FlAcc679ouDlGCcBx9JBeAXT3pPKn/Xnpw+1FjoLNXmut2xB
         DRXU0blzEd4S/X6IOA29bRpOh6iDohpbxDloosWvSY1aawirkCGQAxiFk+U0/gD7WovW
         7StQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=bfmH8deCLkg9S6RUHAS3GmeESaEOy3+j3K6eAmNJ2Ri2jd2zkID2KBjDlDSw6FV45i
         NUbSYHqYZTsAKIkcWb8nM9PXzkYx2BoMyzzn9CsEbluH2D01SkedX/BxWQ0I6j5o4iXN
         abSA9zrnkqLEcxfr5KnUNBVhNbZ4uiJ8AT7hP4oAhPujZMQdCYoLnbZigoFK4yqPYmof
         l9c0N4M0LnDg4H4rWyi7uBTwpZj3BnocudHwd1RcLiXY8lWH9n/yL7cNEM12FtP8vlny
         UYH2Zjaj5G6SGyPz+Zq61noP7bB0f6DpiUKxXLxbfASLKzM3k8EZ27Kn9cbpGiqQMr7O
         cqeQ==
X-Gm-Message-State: ACrzQf0kD69IUzuMzX5dbGRzZwOA5Jh4ceCXpBpiT/agAgy0fozoPESO
	3MkrgrNDKOv9u+DK0kLaCZAe
X-Google-Smtp-Source: AMsMyM6h+EpF5gb0tIAdqaTv7FkdeBbxEQ/ZkmRZ/8pETHgHQk0mrdRh9x5VlwJ2FSKMsETzSTQWDg==
X-Received: by 2002:a17:902:ce09:b0:178:bb78:49a5 with SMTP id k9-20020a170902ce0900b00178bb7849a5mr4674804plg.100.1667053083512;
        Sat, 29 Oct 2022 07:18:03 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:18:02 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 15/15] MAINTAINERS: Add myself as the maintainer for Qcom UFS driver
Date: Sat, 29 Oct 2022 19:46:33 +0530
Message-Id: <20221029141633.295650-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071803_932758_5469B843 
X-CRM114-Status: UNSURE (   8.49  )
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
