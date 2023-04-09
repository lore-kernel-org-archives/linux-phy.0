Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC9A7C77B74
	for <linux-phy@archiver.kernel.org>; Sun,  9 Apr 2023 20:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5fvJX1nOiTgEb0sI3bg5RbGdjq64ZwUnAC+uyNFNWSk=; b=LXcpPZxWlLl0qg
	OIImNnvxkVs4JIYNP8pFFyrVBezX9KB9htKj+E2eWR9Mx8F8MHjsFpILCZoVcWYr6gM0ATwQEeqSV
	G2Lje5hpoD06DdlVd2y7xHkorYSr7ugKUDa/wMUcUNI7oR3YvmOoRc70ebdFKbHb5n4BMgzq0elMM
	cT/xIqb+jpiUFTXUGdxusoM9u6FedzGcB6Yy4Wj+x0N14o1MKe9OAfGE1abyhtyMI7jUS6hX2iNim
	1+JBdEfyJZndB3wPgKjozaGBekbscVEf6zd4qPqLpPvOkqCgG5aAN+BopQDMm5mKexhl2Yw73QWde
	UAhttrZczvNzQy49X+qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plbME-00E9TR-1h;
	Sun, 09 Apr 2023 20:09:50 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plbMB-00E9SI-2z
	for linux-phy@lists.infradead.org;
	Sun, 09 Apr 2023 20:09:49 +0000
Received: by mail-pj1-x102a.google.com with SMTP id px4so217250pjb.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Apr 2023 13:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681070984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8A4KMRqswiSVoBTUCqWQOh29FItb4T+mQDuhm/yB/gc=;
        b=O6X9iRNaynxt6Ui8WBYuHJ7FkDcp4hu13dIwUfrsMJJqOsz2GaiPLnCmSeSiSPGhMb
         0c03gpsjOAdmdyV0KY25K68VJMokMta5X0BVv3z3CvUcLBJBBlzJ9wHoc17hZZRQBNOb
         tJKdahKvyxJGFax6f6Rwzqct5xBw/ELPQZfCHY3bHfqh2OyIagTXVSND3M9PWCu1F7xZ
         sJsWl8jSoT0ZkI6Ntscb4LngwQzIpYFq/f7jAirNwhqU+eMQ+hqhpmDmcG6QlLbJNeoD
         exRfAoAnl6xyg4rG7llGWbqJxte36gZufhpT9HpYK/Flyl9wCAkZtU+hq4VaZda+RbdC
         b4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681070984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8A4KMRqswiSVoBTUCqWQOh29FItb4T+mQDuhm/yB/gc=;
        b=wZddRibjYFQydjLjykSvKCxqGajd5oEZEEfP7SFsvzx+m00ckYk3TD9z7DQS9dQUGI
         KcrG8sEzpBmkm+jjedIUROln5XmEgxSETO6vsVq2N7sReSK14oekNUlLMtsszZB23iiD
         rFXAHD8g7vpDaQVxsSFPlDDDS3YuaSGat2JTLwY89a5wmw1wIZzbozjfpIikgMo/UjOT
         M/QMrMLVPX3PNnPtJ4QL2NEgTtwlQPir6K8TOXPoTL87DUvfeXLTvwXYYMiIkwZwNCb3
         riSm7xa0UhoxXQVQYoQCJnw6qIcz3H6tKzt4CLvNB55HYNE/TLFBZt/5Uq6tPX7MbMXJ
         VMIg==
X-Gm-Message-State: AAQBX9f6Q4A2u8tYh9EOS/szjJ1saEDhykv4xZKPgzkX4kUeROuoYg6H
	vC490fwGmZdcRIVZ5qSFI41+2Q==
X-Google-Smtp-Source: AKy350YVj2o7rWdAQE/4+00ZqJXmAY0kxTBlWztMDF36iEsMbYF1xd4Ho/hZggqdIqZBDsuWQmJCLA==
X-Received: by 2002:a17:902:c94f:b0:1a5:27d2:b6de with SMTP id i15-20020a170902c94f00b001a527d2b6demr5816920pla.3.1681070984456;
        Sun, 09 Apr 2023 13:09:44 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id ji21-20020a170903325500b001a5260a6e6csm2876304plb.206.2023.04.09.13.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 13:09:43 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v7 0/2] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Mon, 10 Apr 2023 01:39:32 +0530
Message-Id: <20230409200934.2329297-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230409_130948_006105_49731A74 
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

Changes since v6:
-----------------
- v6 can be seen here: https://lore.kernel.org/linux-arm-msm/20230407061122.2036838-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Bjorn and Dmitry and dropped old bindings in this
  version.

Changes since v5:
-----------------
- v5 can be seen here: https://lore.kernel.org/linux-arm-msm/20230405191633.1864671-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and made [PATCH 1/2] compatible with his 
  'split away legacy USB+DP code' series:
  <https://patchwork.kernel.org/project/linux-phy/cover/20230324215550.1966809-1-dmitry.baryshkov@linaro.org>

Changes since v4:
-----------------
- v4 can be seen here: https://lore.kernel.org/linux-arm-msm/20230401154725.1059563-1-bhupesh.sharma@linaro.org/ 
- Collected Krzysztof's Ack for [PATCH 1/2].
- Added more descriptive commit logs as per Dmitry's comments on v4.

Changes since v3:
-----------------
- v3 can be seen here: https://lore.kernel.org/linux-arm-msm/20221215094532.589291-4-bhupesh.sharma@linaro.org/
- Fixed v4 as per the downstream driver code: https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
SoC. For the previous versions of this patch there were conversations
on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
documentation.

But after a careful look at downstream dtsi (see [1]) it appears that
this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
'dp-combo' phy.

[1]. https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

Bhupesh Sharma (2):
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -----------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 45 ++++++++++++++++---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 27 ++++++++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 5 files changed, 71 insertions(+), 34 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
