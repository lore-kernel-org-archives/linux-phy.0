Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBFC9C7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=06IDQCZKGIizS4PqEBeKeGkN/NUow0Zf20t1CWQ0dqg=; b=g/VpGuY00kbR0d
	SVsUo2/5ryx7MAZpeyAdRMkO8F+XVxc/eU8VnFuMA70Xt/I1lr3tdTXght5tpgTDBGX5XNUUBCn4d
	G2glxnCov+1Mupc8u8BxKe451emkmDzax8kA0+OEP6yHyxX0IU3RJBwNT0HQynYz0tPiJ0S4zOj52
	lXOwEroDCYrGhgVongy13tvBZc3VyNjTAuEwUn6D3AGanjXsH8mwJ2XglTglyb48rmZCI5Fxta9U/
	uGILFfPTM+X5qZH7Qpiqa8UMwrDzKwjoqBs1Qd2eaP14IbCBvcZLyJcvv+TO41EJcu/z+QN2ebDZo
	2CED6KrMHL5w4dEDiFVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOr-00000008e8D-2lGF;
	Wed, 25 Jun 2025 12:38:49 +0000
Received: from mail-ej1-f50.google.com ([209.85.218.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDi-000000085nh-41ox
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:15:08 +0000
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ad883afdf0cso256762166b.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842905; x=1751447705; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0x17E1px+EqXNrObaDGYbqObszP+McDhL4Yp7KySDHU=;
        b=syofrc+aTtrifvvPL4Gi6skigryO3yxhlTEZ/kClpAnuGBY9B1bSRb6vzkuusl0gFw
         sF/4uiewBChGq0YD2qd+kn/mfNSrAg8ZnDFdrd0mz4aKoh3GIexdbXRKsQQ4MdQAuj32
         kx/0JVS/W7Aax9o3Pk8hly5BHq8/JBRYkcvfH+q9AZ/DvGUgutMjYP8yBT04E1uQJpuH
         i/l1Fi2oI5yJZeTjt1A3A9pn9fG+xJSYEGNEjf4Sk+j4jwnESDplNvck9mqbjZkwZ6gB
         94yY3Yy+z823DmGl/fR9/gGW+cV0dy3PZ8F070zLMbG7M6Tzy9S9tUnD8I84O2kD5rHA
         LNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842905; x=1751447705;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0x17E1px+EqXNrObaDGYbqObszP+McDhL4Yp7KySDHU=;
        b=LXmAzazERfCjGsimmpEVluweJXhmmvB+DKLFKlFT3rfAUlj5QE3VCx3vO0YiyaGpBg
         bFnmn0/NSUo5jMd0fXA3eHZCL66XbvbYkRv4zLctR7nX+Lu0YbUKZmPxukBEpuGg6WpH
         oH3T1ILa+2+7cNVaYWkHksQAoNEBdujRPHKtCp+S3o8jhWpUFwYh/09oSTwfBxHfaZRX
         XsAwtVHDEeo7Rg8GmQO4BPpUzhJK8saj+m5ptZSZ7xK3pBmN70Zo9YogJBtXNFz/h8Q6
         R9Boz7Ac6IgT+tcvlDEv7E2S6Xs6H5aCNGwtGhpWBxsgrCFW7/dtFR76Ui5YX0z/8clO
         o9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1X7POQ0QX2hPXZWvciQ4FMZVH2tz6ZBau7NtiNAZdKnFSrtJPG9+ZaNzHmmaCdrKPpoSGF6IJrzY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzvrt0mTK33B5+wP8xjKbPVcPY/MAINjJNCSKgQkFNvK7ZlnaYz
	xTx2tCAURB+oHwxzfmr2C+NbqziMV7RS2WzLG18w2I5VgRdGiZI9FuGl0uRR7hlfdyw=
X-Gm-Gg: ASbGnct6gLgsAoBX8vYvoQEJxbeNLhHR268MqQGolpGepVnLK4/DjM+Ki6S63vKGQbn
	A+skNjXu60KFJTWry5IOFTK+vsykSzRpbIdiZPXXpPAuL2kYlIlHQttYd+rYKkelIHFSO+gV5QB
	ga3f2oBnUnLLKEQtWhEQNd9wNl9PWr5CubpblX2+M5kaHeWvI5HjdWDX5ELaLqJz52tScpiETqC
	/PaOBS7LaH1Yr0rKGWiQ21RhFbbjXZUW+z7oJIbmWGxkcyyV0vU4FKoOKUpDHRWNZ+VWx5/bUvi
	NMoT0Nb200mf3ydL41emWpvUfJ0L5WtQh99IDYAk05BSeLRj3xvQJtwC4K815Qf3Dk+O49VbGFN
	6DHJboKj+gHyA1YtdS6NEvKsXOzGnxnN5
X-Google-Smtp-Source: AGHT+IHossRczIQDoFPo3XWwZlIhvHUPsFfJ84XHSqNsKPDmWvICk4145QI/+MNPKeaIC0aeiLBBgw==
X-Received: by 2002:a17:907:c1e:b0:ae0:c6e5:9738 with SMTP id a640c23a62f3a-ae0c6e597ecmr107772766b.55.1750842904882;
        Wed, 25 Jun 2025 02:15:04 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add support for eUSB2 repeater on PMIV0104
Date: Wed, 25 Jun 2025 11:14:55 +0200
Message-Id: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA++W2gC/02NQQ7CIBREr0L+2m+ABqpcxXRB6aeyKFWgjUnTu
 4t2ocs3k5m3QaYUKINhGyRaQw5zrCBODNzdxpEwDJVBcqm4lhzz1OpGIS25x0QPsoUS8qG9eKV
 aeeUe6vSRyIfX9/bWHZzoudT3coTQ20zo5mkKxbBVn4XG5AT8aw07pLX62ORPV5YY4ohe6aYRT
 vfCW7NK6Pb9DZsmrPjQAAAA
X-Change-ID: 20250620-sm7635-eusb-repeater-0d78f557290f
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=1080;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ZJaHdZ8mGsEkim1yUHwLTnvHu86W+l4CWYVjRpNDmhU=;
 b=wvQWFKLPrm1zGX2IzrnXnA2E17UIblNOckLeleDSLHmvgeMDGWHzUtWv8VsXxcuiFfqCEDyNh
 IxjlOTrg7kQC6ynnmpaa54qFXzMbTvmVd52L6Mww7I/gvqvzRvVb3+O
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021507_005079_CB2F9EB7 
X-CRM114-Status: UNSURE (   6.35  )
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

Add a new property qcom,tune-res-fsdif for the eUSB2 repeater and add
the compatible for the repeater on the PMIV0104 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Document qcom,tune-res-fsdif
      phy: qualcomm: phy-qcom-eusb2-repeater: Support tune-res-fsdif prop
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PMIV0104
      phy: qualcomm: phy-qcom-eusb2-repeater: Add support for PMIV0104

 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml |  7 +++++++
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c            | 15 +++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
change-id: 20250620-sm7635-eusb-repeater-0d78f557290f
prerequisite-change-id: 20250616-eusb2-repeater-tuning-f56331c6b1fa:v2
prerequisite-patch-id: 5c504d171a4d1acd9ec376e01e0dd0fddbad92b8
prerequisite-patch-id: 0c97dcf5472fbed8ef4cffbd482f3169fe1e972d

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
