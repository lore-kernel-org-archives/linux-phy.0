Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 603E3CD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4JL8J6s9S6dHsWtX+FEOUK/9MseR+TGI1uMTICJFyE=; b=QLnG+v33Yf4/uG
	68mmLuu4/4QG7SJrIp95P//lQ4hiyZHR+Fhop3LbE4LHdXrekMx3LS7+5oBKseulkuPH2+aYQbs3Y
	R58A16EfH47KwlRRk8FOi+omY974dSvi1y35oLJ++UGG7+GrhoSLTxXfWt1Dstd5PX7XicqKEeNyY
	IjnZpFNTS2+7Yu9k6oxkQ5Vfd88hoBE5IQ8G/ZFLgBLGSKJ1fXYL1/nsn9SpEJ1yo0lFTY2ihnJYH
	C7J9JdpyrZ+hoJ2mhGuKhSCcLtsq5MWEEqgjhsvMTTsUiPiY12tQbjn7GT1D1a8KmD7BrarZU5X0L
	gGe++q+We3Hm+9Ps4Hqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEq-00000002pPj-0I8d;
	Thu, 04 Apr 2024 13:34:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMCD-00000002bZo-3apC
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=v2/Kxl6LpRi19aNU0GnPRsNjsIub/vSGQr1JFgUlFR8=; b=i5jaeME5EKUr8waXN15DkdldLq
	ehRtECdugHaME0O+Dqfkg4p2yfhiQ3eVcGdez7vrx01Gf5pOPtQymeELeBEa4lyf2T6WF36/0FBWB
	HU0hr9iwOk+OeouqU7TRZ5Etzj67U5ejY6X0qWbYUHmH6FFIDTq/tMiTlMKK8r7a1hT0+PVCbOJc+
	rZ3d3/8/odRp8WqHSa6KI6Rs0Ke56lbDvByC5j69DCiu2kHSaXv5Ac/KE4Clq/oEJuZvzYX8kUdol
	c7ToKvT6QtcGAQVqb++8PxC9bGOFDI1nMA00xCjTjUInkQ6nkO+HO1zacKhGEBP7virLynV1235zV
	KmyNowzA==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMC7-000000052MQ-1JNv
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:56 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-34005b5927eso597756f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233670; x=1712838470; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v2/Kxl6LpRi19aNU0GnPRsNjsIub/vSGQr1JFgUlFR8=;
        b=nHaU3D6F5J1dCMK5RSFjJmv8cXSZOju2nkNuBKLcfZD+t5GePQ5Mm8CfylqqTMtU1P
         noaugmq4HO0ydjelCpeGgs5xIFTHSithGpEqqkCw0GxXS8MksWo/mMNmhXZrXV8+umfx
         5nN9EcGTyvcvG8MK+4eETO6VLvB0p6VQcTV6J5UQzsm+VJdfBLXACEDtQ1Fx7OxaMyDn
         A3E0oJDLZiTqmzRht24WKGP/sbHxE+bTBRXDnGX3GpG9fOrtLqoCccfkEC9VjDDafVTE
         /ZFrQo+DwtvpGrLtuC7qndykp96ZaD9B4TI2qPzu/zP0XT20dPNqNySklTQR3qqhJoib
         iXMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233670; x=1712838470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2/Kxl6LpRi19aNU0GnPRsNjsIub/vSGQr1JFgUlFR8=;
        b=qwVbrszx7Dtsj/pBwg3D2aIv9TCtAUfiWzikjuyBEx9GwDWU2nkaKryf9EAr8SWoXl
         gSor/ZxVLbtV1n1AKTusdUgFL8nZb+1gWgnLF3oeOTAMWzDCZUMqDU3ChAWM1jFwFCi7
         uvxslIgKjgSltOwnthXne6KoyCKcbrdZiDF2J/uy0p/xberkdH8t2oqJhb2XYmAl/Abl
         MueACYrmPBBH+4z4f6mDt/FQkDOVgDGF0PrEIGvNIANuLUCBY0lewUZH94H6POpdNTo6
         DJIvOSCNb+sVXM3wr0KUYbGvPxvYdc64fzYMu0YdL1xLFcO28MNaG3GWS5HkXOQ3OP25
         J/JA==
X-Forwarded-Encrypted: i=1; AJvYcCV+4OHmPtsRMcdq9MRODZyF+cqANtOXQG49oLLeF379QWTDqsV+bYRkpPLObKLpiytT4wgKpOTUO9+Jk6fEva3w8qj+Da1oGRGd9VWf6w==
X-Gm-Message-State: AOJu0Yx4GMbT/N5HLq7znfvtC6D60sVsxm/0KPaFCbvuJm8HRN2ptamO
	7FavtJnyc4Go5XuHdAQASQiUs9GUhpMJMqVEcj+Cey6xaCpq4U81JhLbywOkiPU=
X-Google-Smtp-Source: AGHT+IE4lWG03NrsYGIMb38leE/EL6KNHhTvu/DlJtCiu5w5jF8R4KkplAWIhngCJVQJeXTuDbWSsA==
X-Received: by 2002:a5d:58e6:0:b0:343:419d:ba87 with SMTP id f6-20020a5d58e6000000b00343419dba87mr1780461wrd.13.1712233669746;
        Thu, 04 Apr 2024 05:27:49 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:49 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 17/17] MAINTAINERS: Add phy-gs101-ufs file to Tensor GS101.
Date: Thu,  4 Apr 2024 13:25:59 +0100
Message-ID: <20240404122559.898930-18-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132753_830522_C49BF658 
X-CRM114-Status: UNSURE (   8.67  )
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

Add the newly created ufs phy for GS101 to MAINTAINERS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 491d48f7c2fa..48ac9bd64f22 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9256,6 +9256,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
+F:	drivers/phy/samsung/phy-gs101-ufs.c
 F:	include/dt-bindings/clock/google,gs101.h
 K:	[gG]oogle.?[tT]ensor
 
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
