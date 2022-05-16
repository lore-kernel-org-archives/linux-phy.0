Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FAE2C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 06:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S/7aRwj7IZtBq5P1212Gdal+YRBeg1AvOv5S2vOCX2A=; b=vK2Iqt1352iRIp
	VGiNl4AOntSe2DuAcw51Mfylcr7eYsB2OMAnf+ly20+qtf3ra6pdJ7N2xzBs9WhILSDA+czITNH2M
	rwOsgYnj4FFPa0qmWykubGlfpaNlrKbswlu3OCF+XVwIlwc1o5q/ZVj5fKZUsJvqYwvBPab/SzSnU
	btO9N+14XaP4hP3fCMRJHUXYOvNNcyLX2pXG3rGIUYGdXccEyml/6UBlcWZXtoj7oXQIN0oVPBf0a
	QMKpq2kZCZRO3U+djtrt8g9Ndxc1Gw9re5qs7JWaMTbbXeyXqmQAe0EOXkMlvz5OrHYdZU3ME3SHP
	OeM+zCUtf3dGrdaovfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUH9-006CnJ-ER; Mon, 16 May 2022 06:32:15 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUH6-006Cm8-G9
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 06:32:14 +0000
Received: by mail-pj1-x102c.google.com with SMTP id
 t11-20020a17090ad50b00b001d95bf21996so16478398pju.2
 for <linux-phy@lists.infradead.org>; Sun, 15 May 2022 23:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MWyLCcRrtXqaWbV9pz/nch+ilZHclG5FSEfzAoH1u1I=;
 b=H4Ik+y7eaE6vP9bww4+V6BXwts9KNfHrkG9uHkhBAAzRDO+8hEjZKmG2dyJstYkLZ9
 UZGuJBANxWsQsBSJPKdAG0ZfloaCZjbib0rbxp7mvMq9BgSLDHXwFQhP4I1wZwQEMXy8
 ULkl7fY00L61ZQ57aDoPumRtf1LBSrWjrwm/l1PWQlf+x7d6B8GXeJFSSEt7G+VPRp++
 pe8P6/EldPxjiI3WwhvrpznZ79lGX5KR3s35Mm5BjB/CiwkLqZuDghz4w/mqmTjOkkMI
 UBNzEruSFYJTaBiZ4x2Jtz64l+Llh4DHIGLWPLVo+0FHGNcDXffm2KCKfeN9yEidBXDH
 D+YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MWyLCcRrtXqaWbV9pz/nch+ilZHclG5FSEfzAoH1u1I=;
 b=6wXDN7gFI61bYu6Y54lB+iFD6HRsFc0OzCnPTQahc/pHqmEFFXZCNAEJy3GjmD+8YY
 yexeal7HWzrYEk3mJqRKCDs1Q2idjJHqQlxZ4fr7c6A5aPjM1kZ2bJzZfYagzZnT32++
 fiUg65v7z49V/qzuo/Tx3QM9QLHaW6aJIWQP5YvkMpfoKf26LiFb2OUfumrJqsTuTGZy
 1+dZx5zTVNIOS1njy66Elzm2ZeEALJC6AGPgb44e5LBNjTE8+qHRpOqzcE9jGKZTwrE/
 QFPRpsB3DUezIrM2TrKf5qKQebUSWZjp9WWSRxGvcuwl+LbiotDGDjBS2RAHbXSj0iWI
 vC1Q==
X-Gm-Message-State: AOAM530L7+mrcs8nRsGxHO9X0MwV7esyLQKz2K8+JiX4fmOj/+ce7I/n
 qyNZLVDmyxUyPcbkRNLgusic0w==
X-Google-Smtp-Source: ABdhPJxYi8ELNV89KBzQB1W5es4pcM1Hvra1FK7aPNMReCpXqzLqp7e+aaZ+kxqKuk8m52xBkIbsfA==
X-Received: by 2002:a17:903:215:b0:15e:cae9:7622 with SMTP id
 r21-20020a170903021500b0015ecae97622mr16091224plh.28.1652682729308; 
 Sun, 15 May 2022 23:32:09 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:931c:dd30:fa99:963:d0be])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1709027fc900b0015e8d4eb1e2sm6053647plb.44.2022.05.15.23.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 23:32:09 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org,
 konrad.dybcio@somainline.org
Subject: [PATCH v4 0/4] Fix  dtbs_check warning(s) for Qualcomm QMP PHY
Date: Mon, 16 May 2022 12:01:51 +0530
Message-Id: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_233212_612949_F695C273 
X-CRM114-Status: UNSURE (   9.39  )
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

Changes since v3:
-----------------
- v3 can be found here: https://lore.kernel.org/linux-arm-msm/20220418205509.1102109-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Bjorn.
- Dropped [PATCH 4/4] (sent in v3) from v4, as it is accepted in
  linux-next now.
- Added a new [PATCH 3/4] which added 'power-domains' property
  to the dt-binding.

Changes since v2:
-----------------
- v2 can be found here: https://lore.kernel.org/linux-arm-msm/20220228123019.382037-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Rob and Shawn.
- Collected ACK from Rob on [PATCH 2/4].
- Since, Bjorn accepted 4 patches from v2 already, drop them for this series.
- This series is rebased on linux-next/master.

Changes since v1:
-----------------
- v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg104871.html
- Addressed review comments from Dmitry.
- Addressed the remaining dtbs_check warnings rasied by Rob's bot on v1.

Shawn Guo recently fixed a large number of 'dtbs_check' warnings
on Qualcomm DTS files for qmp phys. However a few warnings are still left
(possibly due to new dts files being added over time).

So, I decided to clean them up.
After this series, '$ make dtbs_check' leads to only one warning for QCOM
QMP PHY bindings, which as discussed with Konrad (see [1]), will be sent as
a separate fix with Konrad's sm8350-sony-xperia-sagami regulator fixes.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>

[1]. https://lore.kernel.org/linux-arm-msm/eb54c810-8121-7de1-e2cf-008bd59552ce@somainline.org/

Bhupesh Sharma (4):
  dt-bindings: phy: qcom,qmp: Shift '#clock-cells' property to phy
    (child) node
  dt-bindings: phy: qcom,qmp: Describe phy@ subnode properly
  dt-bindings: phy: qcom,qmp: Add 'power-domains' property
  arm64: dts: qcom: Remove unused 'vdda-max-microamp' &
    'vdda-pll-max-microamp' properties

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 24 +++++++++++++++----
 .../qcom/sm8350-microsoft-surface-duo2.dts    |  2 --
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |  2 --
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts       |  2 --
 4 files changed, 19 insertions(+), 11 deletions(-)

-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
