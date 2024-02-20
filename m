Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DABC48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drLA+00c3dF1ZeFeivIDeKowvEBfd9qFBefGLRmjYWc=; b=CzguuQhdzJRCQK
	A3t+PAtFArs7uUuHpoHbvul6o4g65SnQBksq3o+7dPXj3+L0VXvaSifCFYiZY96GRWGsut6Ersr1g
	fdKcWs47n8itnCN2ywo+03bbc9Lcv8XF3Ul6gju3/+EXHntz0n4or8V/N4IyjCyJ5kp6F45U9zmnu
	LU6E9ft1cfYdw4dgiuXA2goeMPjwtYDrc27o3onyMwGHBkrKuqCDwCIrvxm0HwZM6YOZYZhDp39xC
	/aoYeI8UWuwe/usWX/nVOcg48sZR6b5cl5XyIeHgWX4DLoGswrADKfzPOr9atFT+dUwYyGHLUXhqW
	KkAyCuyTHCce2YjnBnlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOlU-0000000EZKW-0D7p;
	Tue, 20 Feb 2024 11:58:24 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOlQ-0000000EZHg-2WZl
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:58:22 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a3e8be8a7ddso262482866b.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 03:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708430299; x=1709035099; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh7WIPngChgpb6/wT2qnSquscN8CZ3uMdGD+jaJxYv8=;
        b=mRu+gT2Jbu2HkgerDNNl/hfY4uhYsLRYkrWnHR7dGLPNCLSb7M+2Lo9MfqVZvzcRwZ
         2AKO8nj/sElssihMNl7s1f79Ihkt6Alh8oaByJAwIl6B8c5sCG6tNG5CHynqaAVsM3w8
         xg78v7ZQpK7VuJtrlJB+fCL4V34iKAHtEYETofSzxo1xLozlhsZ4JkEBBXgCuonBEXYK
         d/kSnRRBrFL8tKsninUKTUh6WEV0uzIDERyDPW441PV7xCysoXzwje1fB7KA8ZQpHBk7
         Hu9pw+WvAR0wNrR/ZVGuQgI7arlEfBzBGpBXUPpsPXbPufMbq5RoutGVEd9MeIp7/S9l
         z0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708430299; x=1709035099;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jh7WIPngChgpb6/wT2qnSquscN8CZ3uMdGD+jaJxYv8=;
        b=QT8+j0syg8JaOnZ5c2YZZ7yveMBWZ2egx4GTE1B/k+b5rsaWQhzry+jd4bBKgMBcHi
         OnQP2VrytvPizRaOpmcuKx1EfuAFKbiDh13GoQZ7gavoIZ+p1y6E8IEugLC+n2dtdMna
         aIvQoBhNhR2K9vsRJF7n/sfU/KH4RFaQwJn7f2pgEMliMZQOyU3HBQaRB/qKvNts9qlk
         x/j67y9CJnTjxK6LqrsP7w1vl4P68zGGc3L4nNmwVpBCxS04UQKUUbhQ+uJ1PN6PvJPx
         bSZ/mLitF7f2Mx75XVBmLyQrwKmSkIfs5YxXjrezityDF6cNCraQw2eu9TSNsf3vsy0D
         Zkcg==
X-Gm-Message-State: AOJu0Yz6J7vxvHbuc46rhnn6H8wpmS8e3OBZvV/Wf8+TxhiR1+0U5Hyr
	xTGTdVwktt8pgArZqZtrxKA9INYRUVD0pDpcg8JQVa4JWkuUfYCRajb+5i414CM=
X-Google-Smtp-Source: AGHT+IFoe/LWd8BNCe0CFGtUR4A9XiznkrU4tZkBvlJ7n3YSE6lN588gdYxp2euRyTWqLef7mZ7VkA==
X-Received: by 2002:a17:906:b0d9:b0:a36:5079:d6cb with SMTP id bk25-20020a170906b0d900b00a365079d6cbmr10386563ejb.56.1708430298864;
        Tue, 20 Feb 2024 03:58:18 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id hu11-20020a170907a08b00b00a3e0b6ea9fdsm3806200ejc.26.2024.02.20.03.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 03:58:18 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v5 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Tue, 20 Feb 2024 13:58:09 +0200
Message-Id: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANGT1GUC/5XOwWrDMAwG4FcpPk/DkuM46WnvMXZwbbkxdHFwS
 mgpefephbGNXrLjL4nv103NXDPPar+7qcpLnnMZJdiXnQqDH48MOUpWpMkgYQ8X5E6j1jANV+A
 4QSifkz/nw4mhcvLhXCp0zhgO3oUQvRJqkk2+PGrePyQPeZaz66N1wfv0nwULgobUs3POUm9Nf
 Dvl0dfyWupR3RsW+qUSbVRJVH+wrmsDGdunJ9V8q41G2vqrEZUdJiNksMY+qc2PSthuVBtRg3Y
 poreEXftHXdf1C1PWuJbbAQAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2479; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=7Udz5KW/6xoz4UGY+Rjo1Skg7siskYCtz/9jh9/XGz0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1JPSXVn22nZZVesnmTfbk565klqo4ijWcXGzI
 dqFsP6F07qJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdST0gAKCRAbX0TJAJUV
 VpdoD/9QESOYfZuXavef+P6IDI2bKCPqHFqpYS/m7d5zzf0DruUSxnEOpQoj06n5gqSVhpMUScO
 CuoBvO/3OCQfd8GNN+eWiRJBhKGIskr5VfTQjfpvf70lQYKLdJeCFut6QgAFRxP2iT/OjzUDZce
 I4DOH3CyyW+LtOHn9jkcVLfOXhZ051IkzmC9GmJYmlFXHtajNNnp/fo/XxdBkUDK/UQDu35UKKh
 JKNpqqcQBrhTFBJMFGpI/APQFyGQo1Ug/spdsITxRvMMDITJ6XbgQAdioGrErhej7+FqE3WFvfu
 UZNH/K9OkV55ZSWFICXm3g86ViW2Mqe+DAGvul5YpfKrbDYGiai8CURHfIEyvblzwbJsolldnnr
 ncUwnIbPXTYkCE4VV6kbb9BfBBi5mzZkHezLlysODvdobIXpV3USyY9WRBFC56q3U8Gd6cuvmxt
 LKhqfY45Mb3gAh4s8OnhbTnYOf2Ajgqv3/ociCZABzFYkhvFtjjyXp2donq93PCMXpcCXwnzIO+
 b6EYBacpPj9j67yF1JO+cK3z8n4KRKWU8VO509n78jSK1PFMvbY0gYp4PaCS7LRfEQ8lkd2t/vC
 krGUPze0fSepCrK2ggj2mQavYMhysAC+vxQAc6ZKFCBtQ5Wna3jFJgzPh4lyNDe/P+oa05Xrn03
 v7a9zi0kVJl2yFA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_035820_694630_737F2836 
X-CRM114-Status: GOOD (  11.59  )
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

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the submode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v5:
- Dropped the unnecessary ternary operator.
- Link to v4: https://lore.kernel.org/r/20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org

Changes in v4:
- Added todo comment about setting the value of cfg8 based on swing
  pre-emph availability, like Konrad suggested 
- Fixed the condition in qcom_edp_phy_power_on, reported by Dmitry
- Link to v3: https://lore.kernel.org/r/20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org

Changes in v3:
- Dropped needs_swing_pre_emph_cfg as we store the table instead
- Picking the table based on is_edp instead of overriding.
- Link to v2: https://lore.kernel.org/r/20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org

Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 59 insertions(+), 20 deletions(-)
---
base-commit: 2d5c7b7eb345249cb34d42cbc2b97b4c57ea944e
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
