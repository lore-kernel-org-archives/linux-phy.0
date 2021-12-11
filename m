Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF90EC41535
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7uZemmVpZ/1cL2KOwGwCDwHdGMKjtT4PVyIxLqlpIM=; b=I6rRC+/1HOBGTT
	QZFvQbrjm1zMgi+NrVDC80dRIWczl9Kfc1wabvv3L8b2vdGdPdfHHDl+bjjCp//L9CY8H18gL3mKW
	HDEL+Pk0/p9bUE+jgrDmQ5N71jyusPf4ii4zvSeABB/P/IkdZf7sPRLJZNzEuTx3JaoTTgDhM45tZ
	F9FrqVNqimh/q1f0Gz0S484C2AJGZWIo+TlK3qcwJ4+FbnMsOun0raS2lsvzJ+m2k6ZpV2/Fvas7D
	TsgQNF8sAASM9SWLACx30c2FyEGcNW8d/oJ52y/M9whH48JnNBswnvMvWMLF/RbP830ByKHFuNyEu
	Ha0QE2LA6gb0Qwm/wPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxn-004RBk-A9; Sat, 11 Dec 2021 02:18:15 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxk-004R9B-Re
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:14 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bi37so21205958lfb.5
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
 b=rjsegpcfxUYFU85rWXWseAMTI8M4/VDuoe8mZ0+HbIPEOL/VISB+YXw3cnUh99XRFJ
 ji9LJkMBDs2t04AxE828rCP/QE/BIQySsmXkIEB2QWx1EjyQoPOZw8+fXrhGRD4aTKQA
 7bOKntSMjkK3iAMClTZWFien6NWRHsegqkGh9NnicQtnAUzuZIhdrs/1kIndtKdoMQtE
 kRtexxAzajnyPb9lu9KxJwYHY3AoKcU5hasLN9U73BgWG9OA1+rq4P+5Ki8on5b1D1HC
 izG3fO0zqICPyj1pbK/SlsvB4MWHxjrbB+srutSlmT+aga/NyVGe4SHCLvCQsKJILLzB
 olSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
 b=dVnElj4OuUb2IeBr4xYeq2KJkNZezNmk8gHoSsx0ELrUoZQ8MvLnWAP2hEMxgbny5U
 MbiJfYwZFfD/uyVl3fBYPY5JCMEkr0Coi96iyBVPZED+5Hl5VCF0Ueazj+Oaq8RBpquL
 JVBqZTeMjT922wmLcHkZTObnSxUHgdr6DDOG3fIsfH8geKSmdpcjEUJCJCQW3wLl3mBs
 6HJn9ibfGYQTGOKxzdXfN8xmz+Lq+c0jfxHiA86VJrQJgniOsDMkRngVaTooy4LtQwSu
 +3cSg4UF8oNPXcG97fLi+IPEPijrOWa8fN73jSxLx2MpLt9Xi+qX7i5bbiSg4MPRX4gX
 rq/w==
X-Gm-Message-State: AOAM532PT53JUAlhfEhZdI8McXP9cq6fljwQqqF3/WXkrt9JJaIXsOMn
 ng/KPIwhyhy0tN51QN2aYvmwWHwiX3vOOYQE
X-Google-Smtp-Source: ABdhPJx8VeXLlorwjEQCi6PrICLpr3HcEztNZWbbvOWHJ31eiY+HGD54WAFHY1nuHtbc9UmCVjDhGw==
X-Received: by 2002:a05:6512:3f6:: with SMTP id
 n22mr10235256lfq.501.1639189091379; 
 Fri, 10 Dec 2021 18:18:11 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:10 -0800 (PST)
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
Subject: [PATCH v3 10/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date: Sat, 11 Dec 2021 05:17:58 +0300
Message-Id: <20211211021758.1712299-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181812_926390_101BF4BB 
X-CRM114-Status: UNSURE (   7.37  )
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

Enable PCIe0 host on SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index e02d3c86e365..f6577ca7d2df 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,6 +346,10 @@ vreg_l6e_1p2: ldo6 {
 	};
 };
 
+&pcie0 {
+	status = "okay";
+};
+
 &pcie0_phy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
