Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58CB8C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI94mEjo3Xj0xeCn3UJwunzeNLonlDsJHsB3O//ew9Y=; b=lc+243ELiOMrDE
	PhM14JKxDY1gafsvAGZwYc6GG4sSqgX4j9xLepqIv/c9Z+5hDW/huxObgLR61x8CUderNd1lFhV41
	UGe9SpP5KRvC3TfTvu4XmpOiwrfw0ajQxKgleBpGCHLlAW32Yfd4fiPwqxeSJVKRWJtOkcRCi6ukj
	DSmffp1PX23azBpqfARwqnxm0qXUdKYR6K6nVjE6tQ0ZCLMXhANpCO/Nza7OW1I/87MsZotFwU+wi
	Ibx8E3NBuhUWhi6/+f8TsYHs9NfwdoYCvlxrx4Ir8wpjg7B+c8e3sSrIFbPS13saUEYjAR+s7GDak
	y1pMORA3N9vOOwq99rEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUHF-006Cq1-Nx; Mon, 16 May 2022 06:32:21 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUHD-006Co9-Dm
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 06:32:20 +0000
Received: by mail-pj1-x1032.google.com with SMTP id l14so2624511pjk.2
 for <linux-phy@lists.infradead.org>; Sun, 15 May 2022 23:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jdmbUEtqc6R+81RJjn7yVPjYknzOyR+oSn5z7Aqd9e0=;
 b=OH/1ky2VLUE2JS1lwgNAgz7VzWT3JSE38g+I2NFeWPMCH3lpuj0/n7IL7mhhoIFM+a
 LxNU01lpE0Gvd3GFM11YxCrbG8ud8lTtM739fvPEUU9upSV0QMrvAME9ApZ48FFFM80b
 PZKVE4puJ/DgiqPqkQ6cX8JXTZoqwaZ9+tBaiLhHQkciGp66v6+uANjn0asf9Ea5HaU7
 1tRSQB5uIuQsyiMyEmNrtWAxTBY0FxW8LO2IJahyrgf/CzFd0oBB2mUVn87oYb/IWzZY
 Z1Xyi3YwigWdmbO/vfrTq4wAQPN3ff3uC6ec6MBjR0M6zUYLSWECCyYJZV5aMopuvWUs
 LTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jdmbUEtqc6R+81RJjn7yVPjYknzOyR+oSn5z7Aqd9e0=;
 b=qnJUUNR6ASR+Dj3ulIoR8me8aueCjoos1EmBvFY/BWWQouq6RMd8BaAWs9mno574ic
 zhCHekK0YOvImjqt1SdtDrRaDFnIgshgYuYJz4uaM5UbYM22wOnuM8vKcmRC3oKbPe0H
 GMPqLsbCR9dywaOPRSTHJ3Ao6E3Z79H+fyWOXUnE6Rb4dudNVOQTXNafLxQnQuUd+zcL
 ASsTzdNleR/TDeGK1hxxI+fXVVNTcvdl7NNn3GYY601YqPwFZBzjv7x1W9R0LiKXYpi5
 2Pu7LNuAirTq3tf/OXiVgQci/ZCm7fT3Y7/oI+NBdSfSROsGFqzPJmi7rtbH3W11t6ZK
 KE7A==
X-Gm-Message-State: AOAM531danWopQ+Vcex4GGb5hd77U/UHVdOxUJyLbDi4gmrbF4wLxJQn
 nCMsha/3C0nOzH9zcZX/xBlf4i3YvZlzPQ==
X-Google-Smtp-Source: ABdhPJxCFLmPGA6bODEQcTTvzOch+nxeO70Q+PGp3WF7oG5Mzni+CVw4ui0J66Xm0GpgK8Rj3Vm/Wg==
X-Received: by 2002:a17:90b:1a88:b0:1dc:8e84:9133 with SMTP id
 ng8-20020a17090b1a8800b001dc8e849133mr17692222pjb.231.1652682737013; 
 Sun, 15 May 2022 23:32:17 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:931c:dd30:fa99:963:d0be])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1709027fc900b0015e8d4eb1e2sm6053647plb.44.2022.05.15.23.32.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 23:32:16 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org,
 konrad.dybcio@somainline.org
Subject: [PATCH v4 2/4] dt-bindings: phy: qcom,
 qmp: Describe phy@ subnode properly
Date: Mon, 16 May 2022 12:01:53 +0530
Message-Id: <20220516063155.1332683-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
References: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_233219_512380_30AE41BD 
X-CRM114-Status: UNSURE (   8.24  )
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

Currently the qcom,qmp-phy dt-binding doesn't describe
the 'reg' and '#phy-cells' properties for the phy@ subnode.

Fix the same.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c39ead81ecd7..60ab494df975 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -110,6 +110,18 @@ patternProperties:
       Each device node of QMP phy is required to have as many child nodes as
       the number of lanes the PHY has.
     properties:
+      reg:
+        minItems: 1
+        maxItems: 6
+        description: |
+          List of offset and length pairs of register sets for PHY blocks.
+          There are two possible cases::
+            - tx, rx, pcs and pcs_misc.
+            - tx, rx, pcs, tx2, rx2 and pcs_misc.
+
+      "#phy-cells":
+        const: 0
+
       "#clock-cells":
         enum: [ 0, 1, 2 ]
 
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
