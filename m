Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E88DFA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hX73Xh+jnXBWKCV3oSlJH3B/JS3lvfvhcEZbfKGWewU=; b=YP6YrbOBvlj0XY
	jeDgUm0KR6+X8IoKMlBrkC3D7gSfTE6QHSAPFflnB3FFDHqOH6fyQDdFNIX2ko8c2WNZc0CJuLvxL
	/tzCkJaWI3OLMIkq2td/muXSpT/cSU6EtDuas4ZsvPEmEnDrOns5JJZtCvnvhIhfUspk25k5qp+Np
	lUiLZe7IIUsVO/vHYcTUbIYXlYDR24xozf7KDp7ps5oBsqk7VK1bEiyq7x61MYpCcc3gOSzX6JKrk
	T3wycX+GKQZtR7u1bSNxye6T0DEJo0JdYWgC4DGZES6haDAL19u38M5x6Lpy8/CtErFXI9AcL2U2v
	ISlMwpwN7nmIPXH5KYag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8A-00DaYX-R0; Mon, 31 Oct 2022 18:03:26 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ87-00DaW9-CR
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:03:24 +0000
Received: by mail-pg1-x52f.google.com with SMTP id s196so11364063pgs.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6bI2G8GIEEo0BDFgcfeWu7FnSciJmuXXXHS3QIkOfs=;
        b=GYLJ5dP9svMb4OtR4ddpG8ce6S4fq7m1mFNIV2Ttl46seLZqlFPwVeur7n5+ITO7Zg
         KgqlWPxuwvQ5CGGszgRz4BEOR8YmmcO2+e7aYai4ULMxdjndxV/F7WDcAjmii+2u03ng
         Ksg3Yx0yRUBnaBsk08DyNOKRxkexeJV3QuIjNJsmvBK64fideKnrc2959ouxzz4mNSy0
         E1dsNDvdjTCV8U/JJFK1NtBSppUIjz8Q/zrg3Zw258BkkO2t0IWP1x3tFuYnaQ+ZBDU9
         TV0YDyYvi/rH8MslglzzF+0gNh3JSFCa/h2ffTxJUDH+GkAgV+4KJ7lcmpu7K1Q9jKCu
         yF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6bI2G8GIEEo0BDFgcfeWu7FnSciJmuXXXHS3QIkOfs=;
        b=h1rqTcJgyd5QYdVruoeJyk4LUOneyKLB7ypnaicB1b0nJUhcTWga7kJmGkPNbqCWvl
         ejGhADJLB6GPnv0RLDqVm7AV7CMNsbxL8ac8OaiFZTPzBPIpPZQ4hWkIlvyBJINPrcw4
         5A48MOh8AzRPpZHGeDpsdcIfrqnNV9Q9LxuAGhbIVK2gCYujK2c6sIvFk5r3Y/3LQDG8
         8+/t6YakdEqqUqR1ZTnUEL/gwb070qTDuOctaop2aA2Vv+dg6AVMHGUElXxHQi9SRMP6
         eQqW/7n8/WzN/3tyCBbN3gj6QycKhCnBppCE5lT0LXNy0usD4LAnMdupHrjbNnKUsrBh
         mbcA==
X-Gm-Message-State: ACrzQf2opOjQh516i2a4SZR97xFYrFti8aQdsZZIOqUlPUds9+0Ct3WM
	s2HxtK4s3S/9omx1MblGOaHS
X-Google-Smtp-Source: AMsMyM7eDqp0MAJayBElp6vKNbseMAqO0uaRkOgHaD0JYIbuqiBn6QFTcqJXxhIc+evWMRMYKnLVqw==
X-Received: by 2002:a65:6148:0:b0:458:88cd:f46 with SMTP id o8-20020a656148000000b0045888cd0f46mr13451082pgv.303.1667239402882;
        Mon, 31 Oct 2022 11:03:22 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:03:19 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear" property for UFS device
Date: Mon, 31 Oct 2022 23:32:08 +0530
Message-Id: <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110323_438144_2D98016F 
X-CRM114-Status: UNSURE (   9.26  )
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

The maximum gear supported by the UFS device can be specified using the
"max-device-gear" property. This allows the UFS controller to configure the
TX/RX gear before starting communication with the UFS device.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/ufs/ufs-common.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index 47a4e9e1a775..5dcd14909ad5 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -73,6 +73,11 @@ properties:
     description:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
+  max-device-gear:
+    description:
+      Specifies max. gear the UFS device supports.
+    enum: [1, 2, 3, 4, 5]
+
 dependencies:
   freq-table-hz: [ 'clocks' ]
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
