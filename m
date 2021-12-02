Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96EAEC46467
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh9H6OWl73286Fv9PqtMvUw3UON4ztr/SSpW7Avqfuw=; b=WgM3fHiCHaYIWe
	H8phVrO0BRmjDfb5qf5PCzF/789d3MPwgUQ+UEAB1hhKgbWe49ebkpgJHdZel4UAXp/AVc3hofFzI
	+MRGmEH7+dnIZxV6xNM8KQpNhD7NSmnx1SaUwwJKxWYADszAZCtc+i9/AWkMTzxKpQmEtZP7zyA00
	eKKw85aqvCn9BaVWK5QHY5jhKPQkuHNdzHuPOq2sVZig6qnXuJML5D9q4dOVgZSM9xpGao9ZXBwQA
	MvaHLbNoz4cfsBwHigjZPpFVYmJbRWgvJXL68m0Z+ikf85PwtxXWeguDEZJEZGPPZnLA9aOggF0jH
	P0yAgTA5ng3qv83XTnwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuT-00CWve-QN; Thu, 02 Dec 2021 14:18:05 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmty-00CWeK-AU
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:37 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 207so55043258ljf.10
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yjQ+4ebAvK4TgGM0msltCvsHoQYHGywItHMmPjFkemE=;
 b=ZRIDOzdNdmIKD6A/1xwzN+kVNd8ygNG+cG1wiadTOGmQAiHz3iuaSjexIDUqfGMtIk
 XBqcHCRVHLRFh2xOQTxQ4qc5011/hM16CAZYO5xHtauzPrhYBw3Jf/aclbdAzWGDfreh
 g6Lnk3k/bkm0n2gcC7dJq+Pwa9DvKc+ojM0Y3caVYoQW6iHvPZEi0KRt0lT+eYNWgbIV
 XGMJz51pUbnrUjTJ1RDv105RKd7D0RELcAUBSjqKzpKJc8tPmHcaW+E01d6Fk/vaS23i
 aSS+U6GtOrItzRzgFq4mdzaXTBSbp17PklufY+v1Q3g5izHqUIjWGjVg3M1bFXlciCgS
 JfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yjQ+4ebAvK4TgGM0msltCvsHoQYHGywItHMmPjFkemE=;
 b=NQIr5Z11nfWYRCrHb3G5ilB4+ug11sJR+H4GU3qHuvCheUCZrey98ZfSVX0+7d9/A2
 Qep8Cnp6W0Pckw2el4oRSogYt6cy3Y9l2bgnsQA6t0diLGnM0Iiz60IxE/2UJIaBb2aj
 dwyMGMU9GLnGCE51nPHNsCmX9RSJcQ8I7uTENoBJI7b9v3JQKJFGDrOqjh/gEjq/qzcr
 9F1pix150acjmhNpdx0fim6Hy3xJDVuJlmK6g/41HKhjvlWEXddFNPD8gF/fRlvZWmHn
 ncUV4o+3na+tWM7eSWwBf/FYLDXn3BOCKp9v0zGLgr5nFFV+EiVZXMDsAmnSunPsTtyY
 /Wjw==
X-Gm-Message-State: AOAM533OPUcHlegBxv8elDX0sFCjq7mCek8OS3IJTdEU+aA+bumPbi4L
 LFw1blCUDPbD74MZet/fdbq00Q==
X-Google-Smtp-Source: ABdhPJzYjEbrDaoG2AYuQrrFS2vLhmoQavoOkvREG0hCAEzqwDogoPQtD5czycat4pINh8dC9hv/Yw==
X-Received: by 2002:a05:651c:124f:: with SMTP id
 h15mr11660021ljh.514.1638454652828; 
 Thu, 02 Dec 2021 06:17:32 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:32 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 01/10] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Thu,  2 Dec 2021 17:17:17 +0300
Message-Id: <20211202141726.1796793-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061734_430475_1EB01E10 
X-CRM114-Status: UNSURE (   9.68  )
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

Document the PCIe DT bindings for SM8450 SoC.The PCIe IP is similar
to the one used on SM8250. Add the compatible for SM8450.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.txt     | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index a0ae024c2d0c..73bc763c5009 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -15,6 +15,7 @@
 			- "qcom,pcie-sc8180x" for sc8180x
 			- "qcom,pcie-sdm845" for sdm845
 			- "qcom,pcie-sm8250" for sm8250
+			- "qcom,pcie-sm8450" for sm8450
 			- "qcom,pcie-ipq6018" for ipq6018
 
 - reg:
@@ -169,6 +170,24 @@
 			- "ddrss_sf_tbu" PCIe SF TBU clock
 			- "pipe"	PIPE clock
 
+- clock-names:
+	Usage: required for sm8450
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "aux"         Auxiliary clock
+			- "cfg"         Configuration clock
+			- "bus_master"  Master AXI clock
+			- "bus_slave"   Slave AXI clock
+			- "slave_q2a"   Slave Q2A clock
+			- "tbu"         PCIe TBU clock
+			- "ddrss_sf_tbu" PCIe SF TBU clock
+			- "pipe"        PIPE clock
+			- "pipe_mux"    PIPE MUX
+			- "phy_pipe"    PIPE output clock
+			- "ref"         REFERENCE clock
+			- "aggre0"	Aggre NoC PCIe0 AXI clock
+			- "aggre1"	Aggre NoC PCIe1 AXI clock
+
 - resets:
 	Usage: required
 	Value type: <prop-encoded-array>
@@ -246,7 +265,7 @@
 			- "ahb"			AHB reset
 
 - reset-names:
-	Usage: required for sc8180x, sdm845 and sm8250
+	Usage: required for sc8180x, sdm845, sm8250 and sm8450
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "pci"			PCIe core reset
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
