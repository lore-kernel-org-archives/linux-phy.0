Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D134CA0EE0
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 00:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D1vZGMp38PQ6cVROAtvxfKth4kBLlTS6B+HHoUNqVUA=; b=T/8q+kDOkRo56h
	nF+fg3RSyYvBeD6BZmyvwv9tzNtiGypz4vEKHJ6CD2OuzE96+9EdxVdsi34bBwHSiG295DoGFAqB5
	9+EzWoJFipB1FUKaN7iI3oxlfh86Q+5m9/NAQoboMSoOw3nnegldQmjV09087NkE6jkIBkGtJF4d5
	MiS37unL8vMxHf1e9W+YIPdwRSdeS4C4YPr+DsCYZPcHBt5ne5mSehT/WSYznoDZJGFRblCBnEhe+
	fpi7ZEDwx1xNYfp4GxuZVK5NJMZys8BxrZqGUtH/oiM2jwhfr1O5k1y3Ofw5ezbFjCoZUxOySRFJX
	zreHinLT3pAUqflajBmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMJq-0000000FRkx-3xXD;
	Thu, 14 Aug 2025 00:59:50 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMJo-0000000FRkW-1F3E
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 00:59:49 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so500029b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 17:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755133187; x=1755737987; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rf/DLFSblEwpBIKMV7nOMC43XFgeeGPKDZbsy7aPkt4=;
        b=YXlIobN2xCgNeC5wr7pn5H9O8GTh3+nDVSV1kDlUFYjOXNXANdg9fom64rCG1H0VUG
         lWWaBowlsC4w6XI7q/k50sOKPitdmvuqUNL4z1U7xuBHpHu3a1tKW9SHSLPLiulIvx+Z
         4VT649Yl/TWujDfLVNA9tcCZm9UZ89fxlnhqH3oGfYUl7fSV/v0N8fbGEsjEJXfBEppS
         KgFkoqh5D/Nz94lOjoxToUap4UI/nOggLgUm8qcPAf9oK8JLKmj5jf0XTT4OJ3gswTHR
         oXij8CVR/v9t/pZcc7UqztvvqahgcZV1q3iA3REZ22MtAVAjS7/dWGPhSU5n8INMp5Qg
         Zj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755133187; x=1755737987;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rf/DLFSblEwpBIKMV7nOMC43XFgeeGPKDZbsy7aPkt4=;
        b=F6ESqeiKJ/JvGGYS61aK/sxQADjBmFs0qS83PnrrNG4MJqe1Ut2Pmc5JruoHt8k5kp
         FdqXt0v/KncyeGyizI6ytRJu/ol1mZxaQCWbEL3j7EEbx1wNHvedEfetsdC4kVGfRkDL
         fdhi0zAnP/mepxF7206CuuVVivAyr3tt9np8THk1QhXR+n1aMcIQzCVxg8W22IULAfbj
         sdDkMZ9ZjS7ea3EiEh+b4waSnILuiTGbLivuxei+7HMruE9nXUBI9RDaUtuYdg6ucI99
         XTHqaorDNPER4lMbXAL1yOp0TE/TyPJZ2L0ZiViXB3wFI9/9oOouN9E+yHqTEO1BRwLT
         4QEw==
X-Forwarded-Encrypted: i=1; AJvYcCVDDTnN8yaaDZohSLNJN/6PRw0zPFmKCI07+jgjEptoBi/Kco4ij/gHxlXZaZm4g+vCgl82IPwbsO4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2EqrxXEcKSgYFQZEDbyWEXJSBuqs3j5L6vOHtqWOhhgQrg81m
	H15BfXaiSaWNIT+ZAdHwMICupvSsboQYQVNGOVYUmI7raT9VmN1XH5kp
X-Gm-Gg: ASbGncuma+CTpiE9uMMyuFfY7slqE/z9DzFNsVqtxilAbU+TWqdgBdaoDRGgsLTLL+d
	2hu10M7W173aX1qCpHWQwm32m5S+lm3Kvcq/ngwWAhE70yhHMbEfXGDdMnjDgjAY8FXmmGn/r43
	005M8kBNZpxbPGpB0iqTv9kNSmoLHHfDHRf9jKRx4G5JzFaatQpAI49NgVtb20XZdGZnPVYkmHw
	PAh+4Od1lra2yHCppv6SV0ie8CGOqwbAorhdHydFTurxJriKbF+J/tiHYbxg9lsuvx5D9uw5oeA
	INRAH4VvOreUKAKvFqAiO7IIMYW2pKT/5GsS9fE/AnJUruvsgcnRgPAQghu611ViTsP8Kpz3gId
	boffunbYSxsZW4KWuenFQ/g3MgTAAu/QSta+DHIYw30NuPrA0+7LS5t9d4LzwZBvVEqH9QH35xK
	2jOp6OaVloFtD69vB/FSTiIQ==
X-Google-Smtp-Source: AGHT+IFRkVLTCUcZUx+09+v3Wv/zc+P6dtPoSwg7WCBNLF8VkIc7dKXeFpMC8/XRheQQ4K8C/bprdA==
X-Received: by 2002:a05:6a00:3e08:b0:748:e289:6bc with SMTP id d2e1a72fcca58-76e326c2c54mr949982b3a.1.1755133187112;
        Wed, 13 Aug 2025 17:59:47 -0700 (PDT)
Received: from harrison-Surface-Pro-12in-1st-Ed-with-Snapdragon.lan ([101.178.35.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76be9143983sm28875783b3a.1.2025.08.13.17.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 17:59:46 -0700 (PDT)
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
Subject: [PATCH 0/3] Describe x1e80100 ufs
Date: Thu, 14 Aug 2025 10:59:01 +1000
Message-ID: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_175948_332946_25402C95 
X-CRM114-Status: UNSURE (   6.52  )
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

Describes the UFS nodes for the x1e80100/x1p42100 chipset.

This is relevant to the following devices/patches:
Surface Pro 12 Inch 
HONOR MagicBook Art 14 
Link: https://lore.kernel.org/r/871px910m1.wl-kirill@korins.ky/
Samsung Galaxy Book4 Edge 
Link: https://lore.kernel.org/r/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/

Forthcoming work *not* included in this patch:
Surface 12in display description
Surface 12in Surface Aggregator Module description
Surface 12in device tree

harrisonvanderbyl (3):
  dt-bindings: describe x1e80100 ufs
  ufs: ufs-qcom: describe x1e80100 quirks
  dts: describe x1e80100 ufs

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 91 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  3 +
 drivers/ufs/host/ufs-qcom.c                   |  1 +
 5 files changed, 99 insertions(+)

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
