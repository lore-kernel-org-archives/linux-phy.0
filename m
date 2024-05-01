Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B09CC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UilHA5x8l6aAZH7kqACMsAi2u9Zubi0T6Ohp7M4Xjtc=; b=cOK6gn8oshbcz4
	l3knfX+C2lqiJ33Hn8BYyq+LW7Zo5k3DORrfQHy8vHn/WFOJhBWcOuWK1vDUBXeLHmOTrMbFcVXOt
	0g0YFWtjSnww3d82NIRQNXFPaA4ob+1+g3UoOag1RxE40tUbrEN+D5IBgc077AFlR7JFGzirU5U12
	k2h9XdVSIY9KmERgrGHByRtfhxp5SQqFpBDcOBNW9YGLNr2XC+ajFcG6ubzSU5nUg9uWgXP8n0Pts
	CJPZOECh6l+MwPpX62oBKP98Dr0EW4FszyaqLsdAmD6o43RGKLENs8AXPnqlyK4I4cuu874AK21Uw
	DLJoJmcVV3o4x0t9mPZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ag-00000008XUx-3E0b;
	Wed, 01 May 2024 04:29:10 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ad-00000008XT9-3Pv5
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:09 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-23d41245bd9so488600fac.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537746; x=1715142546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=QzscovOG5hnlqy7WCu/0V3+docnjhkgdjRaLllwFyKA1qf1njg0rhbWcC+p/JqaZT7
         wuzdR5kDB8EJjAgcBS8KiYwWke5vXwm7hqcQ58KiUdbK+N7GoOmieJBq77mjuEMjjYiv
         b0afJJg+nMGcmfVMXBHqDWgBWKb+/X6eFRh/JVfMtsiXEeQabcOqyLfRQqIk6HYWVI0v
         r96N/D5TC3PwrW02Zo3MPGoAYZHrew7QyR1lR588hXLJ6+rYfpNjHjP7AQb5uAdbefdd
         tw0aSPZS7Gd34UcTSYAZyvWuSApspELlqFpzgi75ldtcY8OP2X5XaEItBI9ov/iRo4cT
         M/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537746; x=1715142546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=QwzCS7ZaB8Zcq8tXF26E5MkKNXNSUHHdgbFaXSt0nj15ibhrEF3PAMAqTHyNEpoYYy
         AptcqS8z8fUg3ILGFr7EqMRS909bXI+5QrnW3tdwNHczJFvr1p2WCS0c2oHn/xALHUGA
         Z8U68BgePb9Zeh3RV9rMIKOTsOA8YJDyQbIeum0WBilwZNHrgtZWICUVM2QutoLwXZZ4
         s/tO8GktS9cfnH8C4v5gCTcJr3MYaoPv6g/jQY37wX0gywngNVkSWlnEeQdpxsaSb7F2
         ki+MkMtDCfn0YJ6u08onR5LrcQieJ8uMkDC610R/noFFTIwTj4IvPoTT2PkQnnHm17qv
         YYtA==
X-Forwarded-Encrypted: i=1; AJvYcCX7zN0gSrnovNvEaHvqoj6DZqXLEV1K2zHLp93QqU8WGiX/ynvIKgvCOHBbMunZu4R+jErI+rHBm8kqnGI2d+UwqOx133hOlx2QqGA8BQ==
X-Gm-Message-State: AOJu0YwV3M6JVTrVN3ZfnLD7AgHrp2DjFdciWMOfkS+DS0HDaDIhkYtn
	wkOb/CwVigwINwSEIHyS1PDrMGljjP4KiACPNCjgjddciyEZxWtK
X-Google-Smtp-Source: AGHT+IGuOws9D5HywIMomsEHBpmwNMBHOiAd1WrLlD8IpVNqouORPEssFMM4SDAMdkQm51ay6SbDEg==
X-Received: by 2002:a05:6870:1f08:b0:22e:d541:7eb5 with SMTP id pd8-20020a0568701f0800b0022ed5417eb5mr1667093oab.38.1714537746449;
        Tue, 30 Apr 2024 21:29:06 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:29:05 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v4 RESEND 6/8] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Tue, 30 Apr 2024 23:28:45 -0500
Message-Id: <20240501042847.1545145-7-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212907_881609_2FDA208E 
X-CRM114-Status: UNSURE (   8.53  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires the
same parameters as IPQ6018. Add a new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..8a8e23282d1c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
