Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73724C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 06:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EdQ4d2VQrIMCuuIFY+Md7A6jR7rORiAkoRTTmHYj6g=; b=R5ZMcEMfqACUmW
	qYRdVsa2p4t3d4GpIhFIECGE7faAI1kgDQmoMslDCW6T9bnnUWRbCBj9YiwWqTGFyxWsP6dFhJZDp
	UN+3JabgLc4Mk3lOPr6vYvPHfq0vBmU2ed0TXKE3NbmtCNWNmtJrk1N23MjAoPTrXn3JAKbRqKPA6
	tecpQtPHkT8UCbF23wFcNr3j+vN+d/wGvegPLzDak1EBC6alt2hTk9+yxT6HPXBtnnyGz4TChDd7Z
	ygJ7a2racwj0kj0sl7T8TUqhsMEMOO/a6pNqgLIU5kVwzy6bvzZD9FtqcH+2F3DUiReKyBIUrz8vL
	pGbWVga3yhA3kZYZprpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUHI-006Cr6-R6; Mon, 16 May 2022 06:32:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUHG-006CpK-NT
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 06:32:24 +0000
Received: by mail-pj1-x102b.google.com with SMTP id gg20so3481958pjb.1
 for <linux-phy@lists.infradead.org>; Sun, 15 May 2022 23:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZnGJlvnGMiDx5UJTsjZY8cbmPSUgi63UDEbXgnLRWFI=;
 b=QHdA8yNWeLoobNesmZ6p7lpMmSdLzZ0FYpXrljyxYz590HfGgy54FuWQPNoSu8RkfT
 fxcQBt+3rypT1bV1OTvaUtgh9TBfuN8GzZso8WLwiwsFHwCykBIfbzs/eM2IJNlC+gwV
 oPDbjluvXHurap4X5jOjeT9T+V2CXgUrXB51jGMwVxH/nUZCgt85s64/MPJmtB3jwDd/
 huCSA9lh6XfLV3o12yh80LEW3vFmHJPPRQEemtQsOA46GojLIqxuQdqtnnRwT7P+O0PX
 WiTxF8nze18d/7RwM7YPNzYPS1U8HwrA3MWT+3ceJRvv3NNDNxTxcj2JuZuLAEijW1rM
 6H5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZnGJlvnGMiDx5UJTsjZY8cbmPSUgi63UDEbXgnLRWFI=;
 b=1ntXuUM1UB7XHgeMdqRa42N/Ootheyqyu6Gu2Wgrw5ZrZAw/kziAFlDCItCgk9Jhnf
 9QZ2Lxb0TaSbXNEtgea78YWT0nEjZMEv1AHcbNcu2w+XLK28f0xi9t9oHUOCP/NKdNlI
 WdlciUFF8YZ4i5o4sZ1kX2c5cDLVHJdBxX4YyYmx+fcQ91h2rhAwMrakRiIdkghg8uw+
 3we24cS7zbu5w3m4QH8OKGlxfi6obh0PMvtIecEglhWhDiRfaEZ84Vr/Chwzc8yk0MFN
 f1XPbv5cu4/JvoVAURglErxKLFShxHs2tdpOf0MY/ZZOSkqOqF8DmmTw+aSLdW9L/bQ1
 0wuw==
X-Gm-Message-State: AOAM530AIugcy9gjtM85x9HC1TGMOAH9s/U4u21kWFElyxJKj8ybWs/n
 A3tx5O5/KH9hj7HsJv85ZMdb1A==
X-Google-Smtp-Source: ABdhPJwRDeYx9cR3OoMIgCswNSH0r6L5bJFZWM/OpX2bEdoyy3HWvdyW19fUKUK2a5nOI2m/jrfbaw==
X-Received: by 2002:a17:902:a585:b0:14d:58ef:65 with SMTP id
 az5-20020a170902a58500b0014d58ef0065mr16394014plb.139.1652682740697; 
 Sun, 15 May 2022 23:32:20 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:931c:dd30:fa99:963:d0be])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1709027fc900b0015e8d4eb1e2sm6053647plb.44.2022.05.15.23.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 23:32:20 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org,
 konrad.dybcio@somainline.org
Subject: [PATCH v4 3/4] dt-bindings: phy: qcom,
 qmp: Add 'power-domains' property
Date: Mon, 16 May 2022 12:01:54 +0530
Message-Id: <20220516063155.1332683-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
References: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_233222_825094_568CE7E6 
X-CRM114-Status: UNSURE (   8.78  )
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

Fix the following 'make dtbs_check' error with the 'qcom,qmp-phy'
bindings:
 arch/arm64/boot/dts/qcom/sm8150-mtp.dtb: phy@1d87000:
  'power-domains' does not match any of the regexes:
   '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 60ab494df975..c5d4c8152699 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -102,6 +102,10 @@ properties:
     description:
       Phandle to a regulator supply to any specific refclk pll block.
 
+  power-domains:
+    description: Phandle to the power domain node.
+    maxItems: 1
+
 #Required nodes:
 patternProperties:
   "^phy@[0-9a-f]+$":
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
