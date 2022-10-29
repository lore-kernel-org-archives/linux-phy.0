Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD676C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJYL9UsVR3J9l3GLcK6TfrSAGX3pbbUEKb9+sqBjAJs=; b=MiDycaBZU7Zgjk
	KsEb+1Tsf+JF4zFWj1EbjpyDoxDRbaNwRa/emEUNdErQqbHdSkFy0e3enNucyNQ6HncABvV47gQPu
	Tp5oJwBKr1diHeMIgUp/bTPSD1yxDM0pj0DCpmjhsvyyPhGKTNfj5gyrufdm7pV5Q9MDifdatWdpl
	9Pdrpmwz0L5rB8Dvapuw1b//A05CYNhl8ibZkk4SjlTBj1BZqVfvS0+Dg/KAaGuZeFLTxeBHdh8mr
	rbALHShw+U7UfBtifRRzcxThaqc49xZDeHoBdGp2pkDwphWQ1DveRxqH+bBjwEk1iuK9Z0LZDUYQ3
	pZ568XNM4+vL8M9ESGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeH-006UDJ-Uz; Sat, 29 Oct 2022 14:17:21 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeE-006UBt-S8
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:20 +0000
Received: by mail-pj1-x102a.google.com with SMTP id b11so6945153pjp.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EXACZbDW7apLefN1TlPN3pFLWjPl4KvU3572LcUxyOo=;
        b=WQmci7+CXSW6GQ3YZTtOI6wcAHK8ZOSTP+1U4l0Ok+7yrr82esT3H1HiUJZrjVx2yy
         9nfrnV0qL1ebiTDJRX886/fIPM1lDsO52NsEboppfir0n416j8YuHqNfz7x90T1u8Tef
         NoWJmWgAz6Toqlu7Dr2HJP+GB7m3Wq9Qvwwc+PpzsWC5PN4RK0FRHQm1IVsIYQxZrHzQ
         4Gzw9pTYj+VLHFyuQ9SXaR1OEWXzKD8o7gubW4BiRbLSB06I4aO2jRYVrEAYcMY20IF6
         lMoh2TTik1Qv8sTqF1qy6MIGwI7/OeyOzcm0x/njrF+JDVhng5cfwjlNpcdfrZGZBQzr
         855g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EXACZbDW7apLefN1TlPN3pFLWjPl4KvU3572LcUxyOo=;
        b=tvu15c1StIJroy9ZAAI8bQ22q0lpc4TmLalq2nsEG+XOdes7h/7an/CAHUOtg7NzJ8
         ACoBNIhipPnuYzK7mqQw43T8AwfTKi8M5NhZGxFY8IQdqGYwxZdAu3Ln2FcORRhh2BDH
         VwvzVHBIOU0fSR83Hw3j+iZ1IHieCfxGqIrDKsfF0hkqSdQ4TqqlrIwnmZBzFIE1era2
         b3DGSctdNI7u6RMohf2niT4YD9UA3ZAB48AB1o4oMWgRvc+qsYa4HW9i3lcIDm0LQ3yH
         7xOM/ggKSggz7ezWglBBtqTXbI/vqwZDqGCpblav4jFX4HW1GTVaOTVOO4ARFrgN+XQ0
         NpbA==
X-Gm-Message-State: ACrzQf2xUrEv0O40hcJfLZopzw/hwroKYA5Tz3lSuotZzUrgcPOadKe6
	aMAtLci/Df0A2Uzay5nUWF6m
X-Google-Smtp-Source: AMsMyM50JY5Z6mFdet8Gu9aa/pUSRGPLlALcaZIKANvKk5YfmmdIGuO+UMd43hf17ma1Hx7OMWc2sQ==
X-Received: by 2002:a17:902:aa84:b0:185:480a:85b6 with SMTP id d4-20020a170902aa8400b00185480a85b6mr4571563plr.170.1667053035929;
        Sat, 29 Oct 2022 07:17:15 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:15 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 06/15] dt-bindings: ufs: Add "max-gear" property for UFS device
Date: Sat, 29 Oct 2022 19:46:24 +0530
Message-Id: <20221029141633.295650-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071718_925805_92E9E05C 
X-CRM114-Status: UNSURE (   9.08  )
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
"max-gear" property. This allows the UFS controller to configure the
TX/RX gear before starting communication with the UFS device.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/ufs/ufs-common.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index 47a4e9e1a775..591a9bc3b99c 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -73,6 +73,11 @@ properties:
     description:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
+  max-gear:
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
