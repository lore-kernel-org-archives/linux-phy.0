Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 833A2C49EB9
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 495FF619A1
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 495FF619A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B2uwlrI+z8zDND872sfI/rT01WzbBIdX6bRWBpw5+Y0=; b=tWDZ66+Yv5iIuJ
	22JDeKFEZBgZcTv/1U7JQ3yyUy3VlCOL//Msymncf4Zwsb2YGfqaNxRAd8iL7VMDN7LE1u4OjGOAa
	evDHchiSTGgBGhNNThwWupBCcaSk7vkIlPPTTggrRUFk+EMk2bxPO3ANWdMlrefsqGrs53S2DOQKn
	O+J6wALMYAM/IfmLT26MO15ripNvvKt46zVkSGwI/ZXZd1CJ0WNXCDMLKJLg3dNzAcJHaM/pPAKMZ
	OScS7n0LhuDU25kAS6g+IJO01IBYWQiD7H9B98NOyxl9Eu2DCBfwH3jBbjVRNyWBzYvUYphEdMB9l
	tm8HHZYINoSoxVDB522g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxZyi-0060HM-P9; Sun, 27 Jun 2021 18:58:00 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxZyd-0060FU-MC
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 18:57:59 +0000
Received: by mail-wr1-x434.google.com with SMTP id j2so17896238wrs.12
 for <linux-phy@lists.infradead.org>; Sun, 27 Jun 2021 11:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M/3/joTnhRd17fCBvR7XJw02bsdVZrFj5dA6ttjMmdo=;
 b=L7wp89raLmw2Qhvg8cJyD+vjhtQp9x60n5BoouREW91gbZqyVqpX2yJd8YNlrF0FpK
 fY7Zy1yZhMUk8D21USjI+XjmPFkXVCEgvJ7APRKoeCMk3WYX4krWXvo0NMwJTIyVzkuh
 6xM6RVzM5duxFlEb+f7fYZqrJpAjtLVWL2VDgLybOflPcPTFqqFH4Q83q9Cs4SOYDA6J
 okRlWL5Jb5+AysEfv98Re033KkkkY/MCjPKl68xfewRoDPLrvXZn8WiXF1oKgvNpVaLe
 4548stdjNIV/yn5w/v3uPpuoIvvaxtDimQusO/JovK8fMybBGwL8YqKuzK7xDtTmYOLt
 pe7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M/3/joTnhRd17fCBvR7XJw02bsdVZrFj5dA6ttjMmdo=;
 b=YwAyS10cQuyBHFg+XePda8ppJ7o7Z6WGFd/LtoRCKubtleRn6qsFeicTfwU+JiuXmQ
 t7h5wuTuzcykWwExSk6hXoL91vRpXG/E46v/Now9En/3cYO2Tw6vaGk6F6+jAz3x+Hz9
 6i45FgJfEpPJ5ruqWsCDYPrsL3J0aQm4uT6wSakLf5o8YYPJfl8xolQXBCZy4aPugieT
 BmDlDIDOyqc+nGGnEQ0SlpzM05YOQMtUBrfoYHl7cF8wXRobW50PMKbo1bSDRKZGpvAl
 4Nwc1LN+3+RQVboEBu0q9yc1lDQT+azYQPmrtgpwR0QSBNdwplAIc1SRR52Bi8DdmrLP
 xFxQ==
X-Gm-Message-State: AOAM5329NR0zPNqvBlp+SAKPL7qb0aAQp28/0skcfzN6WNymS2VcrJyk
 3BzfipVtR8pMKw2Ua6phO5E=
X-Google-Smtp-Source: ABdhPJykFvXVZYIxBISkFs/2/ZDJTHrGDO7IOLNgjL/04Qhbm/69bPZ322YUI3TVd5AwaTBZyGtdTA==
X-Received: by 2002:a5d:5685:: with SMTP id f5mr15391725wrv.101.1624820273454; 
 Sun, 27 Jun 2021 11:57:53 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id a4sm4022812wru.55.2021.06.27.11.57.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jun 2021 11:57:52 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v2 0/3] Add USB HS support for SM4250/6115
Date: Sun, 27 Jun 2021 21:57:47 +0300
Message-Id: <20210627185750.693222-1-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_115755_770888_5A9C0330 
X-CRM114-Status: UNSURE (   9.01  )
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

The USB controller found on SM4250/6115 is dwc3 (phy v1), very similar to
existing supported phys (like msm8996), with slighly different tune seq.

PS1: I know the series is already in usb-next, I can make a new series that
will remove the 4250 compat from the existing code (but it would be 3 commits
as well), let me know how to proceed.

PS2: I kept the Bjorn Reviewed-by, because I'm only removing the compat string,
which he agreed to, in a similar setting https://lkml.org/lkml/2021/6/25/351

v1: https://lkml.org/lkml/2021/6/22/1183

Changes from v1:
- remove 4250 compat, both platforms will share one dtsi

Iskren Chernev (3):
  dt-bindings: usb: qcom,dwc3: Add bindings for sm6115
  dt-bindings: phy: qcom,qusb2: document sm6115 compatible
  phy: qcom-qusb2: Add configuration for SM6115

 .../bindings/phy/qcom,qusb2-phy.yaml          |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  1 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 31 +++++++++++++++++++
 3 files changed, 33 insertions(+)


base-commit: e71e3a48a7e89fa71fb70bf4602367528864d2ff
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
