Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AF61C4167D
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3SWQHaobS+qxDjUVMbIBlAMe1r/xhT8BdYnIL4DqGnc=; b=Kp1qWeK6HsQ/3w
	swt8euzsx4BV6ol2X9GacOyRSPN/sahrWF6xEC1JtfyrNV3fvfzEG8IVUd4ewyaa+/m+nZ08i7lbJ
	W5VcLO8fzoJJraFDpy1qzyOHjO8v2XX2Yq72GhWCUl+0/h7G1PH+BHZPsHcse0OSuTR+jfvvYa9j8
	ulNBo6I/99r5HBLCCx65FeT/ix9yEiZApImWENoTUhuh1PpivtVAA0eWV7AJMN6nb4wcRFVLeRfc5
	KGQghJ1Yaw/awryUPBEcVp8wV6vC/Kgu9cMky7uS/Ih1Z9Buap7D0mk82n0qCcsbovBV2ifvn0bC8
	nHYPO9HcyPoQ90tPY55g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaXK-00DyNE-Ed; Sat, 18 Dec 2021 14:18:10 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaXI-00DyLf-9X
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:18:09 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 13so7857574ljj.11
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9pY2l7uQu8pMBGj266/5fVFZvNlg4PBkcYZxPNpbcEQ=;
 b=T4Dtl78EicbwrSZW/jwbKuWJqU4w9JBPYf/fP/YZot0TgQAPRc7O77VtIOfAb3Btd7
 qQYdES6snn+TlMkqPJDwmbfu91sZpz52W/zn0DBzhiub2CbuLl5s+jystTGhsdUezaNG
 yVkL81uP4Lf1tgYFvzGNjIu+HvASuJyZWgQVQEotAsuoR7d0AOLf53MPCu2COFoiOYUY
 1ii3BmmCmsiJNoVyLwNHgqlLNMzkl3edelq/7ThwB2OPVt69CZchDx3+AS0ZI7Jroy4x
 HENyWcbLq0vQK9sdc40Rn5gWRjS58eSi+Eelw8QxnYKNlWa1fWrjfuD1q7gRXxUch/1W
 jo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9pY2l7uQu8pMBGj266/5fVFZvNlg4PBkcYZxPNpbcEQ=;
 b=VTk6ZUVlBEWgygdrsgJ7IcGwPoUxbE3cfkoTHj1EY0H2WVH9UetB8Id4o+by+4GkxW
 03Vh61VMFKBBgeomjDPWYIs8UBGhAJ8cIc+385XEUSAr73KNjO7ZnsBtaQQ/HzEbq4FR
 OYaaekUQ3sjmX/IVin4agZj1I2i3atmq7kC2PeW1gGTX9Rc60B2z46QszlMQuOKnGI0m
 O1Oeiua8ND/7Q0Oi2S4k1WwTgQ9LtWootzC1l2vHpahuDAje3R2BWqijMb1o2l0YpTA8
 lb3Zxz6OQC7cvX+ek8FTWfoDdrm/samJncsYc+xDYfHc7LK12iqbsR6VtTRW5YDTa22W
 fqew==
X-Gm-Message-State: AOAM531+4z022S/iKTUK2W6O6LS/6RfwITR7RNsRi0139P5cLb2l8/bC
 gJ8UFiGoPi6uMWwFUwnrGy+obw==
X-Google-Smtp-Source: ABdhPJzR8CwEfjHh6blBrM6bGE0jaeF32fOh+fOzWqg1U8jDh7UyE9Apb2NCOMGlgdU86P8Ddhd8Ig==
X-Received: by 2002:a2e:548:: with SMTP id 69mr6809049ljf.225.1639837084443;
 Sat, 18 Dec 2021 06:18:04 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id o11sm1952040ljc.100.2021.12.18.06.18.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:18:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 0/2] phy: qcom-qmp: Add SM8450 PCIe1 PHY support
Date: Sat, 18 Dec 2021 17:17:53 +0300
Message-Id: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061808_352492_233DA809 
X-CRM114-Status: UNSURE (   5.69  )
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

There are two different PCIe PHYs on SM8450, one having one lane (v5)
and another with two lanes (v5.20). This series adds support for the
second PCIe phy.

Prerequisites: SM8450 PCIe0 PHY support (accepted by Vinod)

----------------------------------------------------------------
Dmitry Baryshkov (2):
      dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
      phy: qcom-qmp: Add SM8450 PCIe1 PHY support

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 153 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  70 ++++++++++
 3 files changed, 225 insertions(+)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
