Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28D07C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKk+xRgZurVM2VvK0c14mVpQC708VJbMt3jkNZmfR9M=; b=hRvCWRx18JvcIO
	FiNlvInpORX6YT3AJ2uBZkaJM6kMz8AH/RJzJrYai3diBmo9H7/RLH/nySUkaWA8dZi7GJVxpIUqn
	9JVknXtei3/BBmaJ0yD7VjPggV2ZUBESFEYECGvj/8jxw+nPx8UDa6QyE8RtenRR6mjQ128iLH5TL
	4ziVsf04CfD+aB66jzJMb/Uq40KJzsCJn1HiuQsHIl+Wzdx32XiBGt4PEyDvZeF8ehncugdNYsJ4H
	GZ5CXsXsikzwGzEmKruIYD3m5hzdU0wpxkdYcVUIFZtubA6GNYyOeibMxbrw6SP+yc44x7bXsBfD/
	/C1lgc6EABvWLXbxjPcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWi-00FKB5-Gq; Wed, 23 Nov 2022 07:50:36 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWg-00FK9s-Hi
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:35 +0000
Received: by mail-pj1-x1030.google.com with SMTP id k5so15237926pjo.5
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=riPHLLSPLvU4P+d6u9OTtrSXJONvT4DAWehSTt8MlAkRICfZiHBToxi4kDEWfviIsZ
         h4GppwDuuDtXzzjSle39EzY+sWR9P2DfAoziF1MiznuN458awUnLiX/RsQVdSjhwa9Ms
         N7ygqjsasMBdsGnhMbFuz8KQKDG3sgS/nb0h0LVdwiKMu8JgiDY8oI8doDST/Z72ZCYT
         tOmvkb6tOyXbn1sYrt5J6aXGX7NYMQ5KuIDCIMqYJRE/bssq6GURpxVq7JGlg2buknlK
         VWlCBZ2geenSJVXVHz6jVyyq2m82Ua+nFlNCMkC42mjSdkzzVQp3p4YoKphWcZ+5LkHO
         vXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=6plfuFnSolL7roTtYoMkorO9LGJUbY4g+WGWgPAaZsU4b2CqHVQX8S7WoslVKseGNF
         3sDs3YnifVa4TX/NAjatcj5bb0qpRsuh49j2fRyp668kz6dnMFG7bjmBI7tJnEvR6yqK
         MA0tiY/7gAsH0+GVRJ4k8wZ5EF0CFkb3EMBuT7qLda7oouFyjaNWtc9Yago0tz2v+Rw2
         pj+9ctwAdkTg1TAEZqr/tRv6yrfvFSjDYv/MVM8tNH/FbZaKB8O1ZtGD0eD5xDNKpEM9
         0erEYqofH5jOnd8yshow2uKih3+yD7J7MPP4NoVgH/R3DMZGlxdUu4s1/2kuQx54lHNS
         NTQw==
X-Gm-Message-State: ANoB5plbeYIbzMoIVXI+c9aFm4TVZx6JiNXfu77QF6OiMYOLofOrjVms
	onKAJsi83vsUN3ekRblKcSbE
X-Google-Smtp-Source: AA0mqf4oJohuIJiFaMQ1NxpUqgruyQRg1aKK4w0wEW+uEmRdgL4uVGadHWpYVlHujlCe+RkwM2jNBQ==
X-Received: by 2002:a17:90a:307:b0:213:ff80:b37f with SMTP id 7-20020a17090a030700b00213ff80b37fmr35775172pje.118.1669189833465;
        Tue, 22 Nov 2022 23:50:33 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:32 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 20/20] MAINTAINERS: Add myself as the maintainer for Qcom UFS driver
Date: Wed, 23 Nov 2022 13:18:26 +0530
Message-Id: <20221123074826.95369-21-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235034_604889_D1BC27BA 
X-CRM114-Status: UNSURE (   8.65  )
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

Qcom UFS driver has been left un-maintained till now. I'd like to step
up to maintain the driver and its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cf0f18502372..149fd6daf52b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21097,6 +21097,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/ufs/host/ufs-mediatek*
 
+UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-arm-msm@vger.kernel.org
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	drivers/ufs/host/ufs-qcom.c
+
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
 M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
 L:	linux-renesas-soc@vger.kernel.org
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
