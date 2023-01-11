Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA43C46467
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 11:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OIBl77guh3W69Ot97YNnnhfwthb2djZ12AVAnbzJfnY=; b=LOcvdlRqOwiW0n
	MQRowCNZ68XGwTosZFzmvr0Iz2uL3PxYZgohj12gDkf1uOL358JtHOIgsKrPzNOOX8dXv7ZQPLKwH
	bE7ktyIx9hkwnv4aZG4PMbQKYeqbXIBQ0VQ8rlmXWhgjm2E56SQ7U6oQS5r+EqvrDxnA35S67CiLk
	f0DwNzhglOhfxTrR5Kq7snm6RV3SkjAqNZ7GzCTp5oSa/UZ1pUo5BThvOAvW8cF/GE9yA9m9+cN9P
	ixELcS1nyCGG7xuv18q4gy2j1EjXHy9rMwjypdqUCSQUDk31eP3rRW8VO2Uk0Y6izAmf7JSrJmw4G
	4r42/LTsCHxb7FhQoxuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3q-00B1Xp-25; Wed, 11 Jan 2023 11:14:26 +0000
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ3m-00B1Uk-Md
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 11:14:25 +0000
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70]) by mx-outbound13-137.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 11 Jan 2023 11:14:16 +0000
Received: by mail-pj1-f70.google.com with SMTP id r5-20020a17090a1bc500b00227067dde1eso4559179pjr.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 03:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dg9LU0FiMyIDhs6KiWnxKST9zbz7gE2q7SHQqi7NsEY=;
        b=VShgQztP93823PClYtfvAhq2ipbX/4QI2D6HNTMAD7Ix+DSohKhFmg5w/lzuaH21os
         3xY58WaW28nqptNBgZEz9JvO9SKRYalFt16Wnfo9oxzHOR6fhABFslXqohwzw6sr/Ybm
         5Bp2UJRhdKmk+kzfNroAqZKchMypKOIbgkcgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dg9LU0FiMyIDhs6KiWnxKST9zbz7gE2q7SHQqi7NsEY=;
        b=4eLKwOPkmBvoSl2K3Z+rjcgnY9VCy6TCZL4h177GobizYIc7Aj4a0K4eAo2ZqqpVNL
         ZeeFaYwm7501EiTrKTyW42oXYoj59aPWDMmUsqv+tOCVQ70YBOU8K2tWnJurX551A1L7
         sKHRj0EFVHPUACDeINt82yeSFVA7JoyKPRepOKQAe4MZoXm3rcwYSj8DLxYyhgoY8wZO
         iLFM5/KxCHC7C4o2ygS3IN+JHUuOZQrr4VvZbFqJ/L6vXcrnqa/KuRQHnOwbjsVQ0Ah2
         LMG5n+J1+puZawc+33qMRAaSlFg+lnACLx2t0PXWt1bG8wKAbY4/ZtwXIX6pFXKFWzLD
         KQIA==
X-Gm-Message-State: AFqh2kprp5k3dEC+/tWpErQbcq1Ke47BGlAYF7b76M4hX+EOxD4UMYGR
	KKIBxTHXa4d8YZXr14ZB/XHRBgiJVcPB7WBXOU9M2+IgtVKs96iDwKPf166UHxg1aAyOgIH58NV
	g5Wh6gONI5QHZl2FkIumvFdc2SPL1CaqLpYs2fws+tEaBigWC2N/tcFw1IFLtZw==
X-Received: by 2002:aa7:9156:0:b0:57e:f1a2:1981 with SMTP id 22-20020aa79156000000b0057ef1a21981mr76802717pfi.8.1673435655804;
        Wed, 11 Jan 2023 03:14:15 -0800 (PST)
X-Google-Smtp-Source: AMrXdXseZyUahNHhXIMnc/enn8Pfug8hpLtKh5Vm9jFmoUEBDpWUHdDyZBaDCtfp/cUlHbej9hQCIQ==
X-Received: by 2002:aa7:9156:0:b0:57e:f1a2:1981 with SMTP id 22-20020aa79156000000b0057ef1a21981mr76802701pfi.8.1673435655484;
        Wed, 11 Jan 2023 03:14:15 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id d206-20020a621dd7000000b00589ed7ae132sm4235666pfd.13.2023.01.11.03.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 03:14:14 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Roger Quadros <rogerq@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 0/2] phy: ti: j721e-wiz: Add support to manage type-C swap on Lane2 and lane3
Date: Wed, 11 Jan 2023 16:43:54 +0530
Message-Id: <20230111111356.17392-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-BESS-ID: 1673435656-303465-5382-403-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.70
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245393 [from 
	cloudscan11-79.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_031422_907634_5D0A905D 
X-CRM114-Status: GOOD (  10.82  )
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

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
This series of patch add support to enable lanes 2 and 3 swap by
configuring the LN23 bit of the SerDes WIZ control register. Also,
it's possible that the Type-C plug orientation on the DIR line will
be implemented through hardware design. In that situation, there
won't be an external GPIO line available, but the driver still needs
to address this since the DT won't use the typec-dir-gpios property.
Update code to handle if typec-dir-gpios property is not specified in DT.

Changes in V3:
=============
Address review comments:
- Update comment to mention the LN23 SWAP along with the LN10

Changes in V2:
=============
Address review comments:
- Update commit description as per review comments.
- Restore code to check only debounce delay only if typec-dir-gpios property is specified in DT.
- Rename enum variable name from wiz_lane_typec_swap_mode to wiz_typec_master_lane.
- Rename lane_phy_reg variable as master_lane_num.
- Update inline comments.

V1: https://lore.kernel.org/lkml/20221213124854.3779-2-sinthu.raja@ti.com/T/
V2: https://lore.kernel.org/lkml/20230106071714.30562-1-sinthu.raja@ti.com/

Sinthu Raja (2):
  phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not
    specified
  phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap

 drivers/phy/ti/phy-j721e-wiz.c | 66 ++++++++++++++++++++++++++++------
 1 file changed, 56 insertions(+), 10 deletions(-)

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
