Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFFCACA0EE0
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 01:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irhkb8IYFlWA6tpdeA81b0s3kJ5zZbLXdTZ1NgeWz9w=; b=ufnCJymLW3DF8J
	TOrAjq/YMjYaG3fBQUDWu7Ge49Mupt0oOAOZSqEjSz3q8Hqje7NI0vCLWtPl2V3Nf044Erc841CNs
	50rZlW4wMeUS2KbNd/GXXYhXCdPI4BkmIn8x8kj46nRYt0bkuDd7jkfurKj2tMNyShNcnQxFChONG
	6w6x6INOjt7Wt+nvSTVDml93FFwq0TLD6IomjvCMIgTOchFoiaHCZLMLbYIVXyN0YgoLnpwxyG2E6
	T5fAlaVpmINpMRlpwX7agt/jaOf760wYjhFWxS/PLMViOF108aliWUNStJZG4mAiqMJrudzI1SrDw
	+WIrZt9BleebiRr03IdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMK8-0000000FRp4-23Hu;
	Thu, 14 Aug 2025 01:00:08 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMK6-0000000FRol-23YY
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 01:00:07 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so500206b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 18:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755133206; x=1755738006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nTzWFSPtkgXprasSk5PD3IWmtoaI6AUAN+qR6gSFNQ=;
        b=keL7V9ZM7w21y90apbcsEVGRhwwFpwPkh9+kkSYCsJZOmwKLyI8OjhZb0zdbYYi0Ks
         TfD+M8qDPyl5RvU0Ve4ZUd3JtxnamVegARDGHBwsFnFfZa4K/eBwWlYV73/u/SH20O/0
         xWRhNi/MqrmfmHufMk3XEqmfjWP04+oY8YlS051pkMh7hRt0E0Pk03nJeq99k7q6mGsd
         1Hos5pJwjNbUaI3fFXlhvW60qhzAc25RsKphShHA5aeDyiJvf6EXt+YRqZe6/yIB7eCZ
         69qeZN+pPlUqVMxGX43KaCXryhJh4NFOFjkuSRk4rmvaxxmdSv9sOhgnX6A6b2H7W+6c
         N69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755133206; x=1755738006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nTzWFSPtkgXprasSk5PD3IWmtoaI6AUAN+qR6gSFNQ=;
        b=JhH0TCfJvWAKFiB8vjUV8TjuI/Gv7jt/0wd0r6iuFilYlAWVjKP8zGCwY0o8KdXceP
         vBf60zD7ODNmuWeToVjYnicxxmMZDRmbfMWzK5Dz3n2836KR6vtfqZS1TB2v3Qv0EhaG
         0hxbIKdiOPMAUY4wh8dUS7A2oMf9uFG5RUICJEax2iy0syh+094DlqcCgZSNO/h8sYE5
         wH+AWYK3yoPJKasP0EmA/t8AanenPz+vk/M8RDp+X/oy6c+xqjagynvb4NnMWdcNNEP6
         egDWkPIGBmKA9ouYpS+OqV1nCAx/cQtf+kXfKm3jGALw2TU16AaPxPHoj9OyEp3gBAg4
         cmYw==
X-Forwarded-Encrypted: i=1; AJvYcCU9nse5QKw5EclVOUj3Ef48id0d5tPVkfarpUbtFqsB8JKMScwNSrKd3VBK/2q3OtOD7s4BM4PDJVs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEj00YhnYANufdOduzYAiy51uvEVKRE7fqdqzBaEndDJKXH82H
	pawRyipGB7p3FMDWfmhtpypiyv97/gOOvoZ1JbbwRqXVfV3AZjjMW8AU
X-Gm-Gg: ASbGncusUqLGnZsedan05VteAvj/t1QV15zaHjV/N5YzR0wAF87pY5IEOB4gDWq/U4N
	lAVnz8m1VdOz5aretN6xRL+d8ZMBxxiQCawvBNC2GUx1Jwg9Ze60v7kFGEMDWmSDYMWtksQUrXn
	zutbFNxk5g0Dj8hQAGo0kbHlZwbKHHW6oXxc29OOuJvoRWG3Z1bOqFJ3KOjb2aixgrBFAw7AZMI
	HKfVoEMTSlgMS4hULq/5Uv5LgNYCCNQimHUDiM+eenGEqRC7XENviMrRZlhYpwUHitxXhhY5/Ht
	Q7DNx3X4BjgFllVJorQ6dciOz/52fvhRivygsQYaqTD9j6sSIaCQfDp2KtsmNHwCcNnG+h2/8a2
	72N3qJb5a45lA6l7PZULCubdXA3gZzOWbIclxEck/Exr2HowVuNu4AlqQ1DyvwzE3GG5jRT/xBt
	nPlVAXWFkWC0LzkRU/9PCYVA==
X-Google-Smtp-Source: AGHT+IGUTNv2vtfatYKgSGSfSkdaeiXz/5WLqor3OcUH2i0GMcqZHUMfDNbcr30LN5n4tC75z8GA1g==
X-Received: by 2002:a05:6a00:3999:b0:76b:c68e:1001 with SMTP id d2e1a72fcca58-76e32221c1bmr1143994b3a.5.1755133205632;
        Wed, 13 Aug 2025 18:00:05 -0700 (PDT)
Received: from harrison-Surface-Pro-12in-1st-Ed-with-Snapdragon.lan ([101.178.35.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76be9143983sm28875783b3a.1.2025.08.13.17.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 18:00:05 -0700 (PDT)
From: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
To: marcus@nazgul.ch,
	kirill@korins.ky,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mani@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	andersson@kernel.org,
	agross@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org
Cc: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Subject: [PATCH 2/3] ufs: ufs-qcom: describe x1e80100 quirks
Date: Thu, 14 Aug 2025 10:59:03 +1000
Message-ID: <20250814005904.39173-3-harrison.vanderbyl@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_180006_527676_5B6B687D 
X-CRM114-Status: UNSURE (   9.67  )
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

Describe describe driver quirks for x1e80100 ufs device
Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
 drivers/ufs/host/ufs-qcom.c             | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 9c69c77d10c8..b88cafac4da7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -2168,6 +2168,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8750-qmp-ufs-phy",
 		.data = &sm8750_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-ufs-phy",
+		.data = &sm8550_ufsphy_cfg,
 	},
 
 	{ },
diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 76fc70503a62..2e143ccd1a03 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -2282,6 +2282,7 @@ static const struct of_device_id ufs_qcom_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,ufshc" },
 	{ .compatible = "qcom,sm8550-ufshc", .data = &ufs_qcom_sm8550_drvdata },
 	{ .compatible = "qcom,sm8650-ufshc", .data = &ufs_qcom_sm8550_drvdata },
+	{ .compatible = "qcom,x1e80100-ufshc", .data = &ufs_qcom_sm8550_drvdata },
 	{},
 };
 MODULE_DEVICE_TABLE(of, ufs_qcom_of_match);
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
