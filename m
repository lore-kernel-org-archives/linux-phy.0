Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2604FC54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 15:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFGULNeR56YUXVEizkBYtpJXuVJujVEd7BvrPw5q0g0=; b=okvWesx0kt14SK
	8yUT3YE0mKIJfUabonvhXFSeKcgB3eOZPHDh36WMgQcUMt8VoF7CckuvP6UmtjMFlA75E/eX9dxIP
	zT8+tK0t6S5Ythg7tFChuwSMRJzBhsyWY5IQQPPFYDQ2wcK5KQcDuFzYLgDAzB2YZYWlxOcWlshhC
	DnT3Osnlam3N4GndC5abOtTztIMNS8h0hKLH8beZDb0hao8TBfw/z8nAxc/G0ehNid7ZudqojgH3M
	pgZCTFeeUSGKdMfX86fokNoGtHm3JC75dLfkE/8IlTTWUA1yLxTn8dcX1UdKhsFVS17mG9eJK+jks
	Ko0eUaWG/zaYsOXS9vEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLeC-0036R5-Jg; Fri, 13 Jan 2023 15:07:12 +0000
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLe9-0036PU-1G
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 15:07:10 +0000
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199]) by mx-outbound12-28.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 13 Jan 2023 15:07:03 +0000
Received: by mail-pl1-f199.google.com with SMTP id l15-20020a170903244f00b001927c3a0055so14863265pls.6
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 07:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ITl3Ff1g4Vokba4zPtv+9Lr8JadVrsPfIWw8DVJ0Tmo=;
        b=O+CkNbuNNMU9MJjz94I5hXaXIOh2mta8hvBgc25UEGwo5IUb29L0q5bnDYwpIpsrW6
         0sSBfBBMV+tBFkXO51S3ej40727zkl/S++x4cyz8jxKYN0MUKST/OMGR+N3b1T4RMfZs
         rGRcZJeaB94JuiSpAM3I3iOKmbMKIXt/YN0d0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITl3Ff1g4Vokba4zPtv+9Lr8JadVrsPfIWw8DVJ0Tmo=;
        b=cvObKC+eh+LZ1IOTFkeaul6jr+X9ag3gpEliKmjspe3+EwLmHsenWtapCU+hZ/QTRr
         yguO/wl8/g+VD4ZRnGuYKy/OWiPKjfdvYNlF3/BL69/jtUfwpdmdiH4NPm2jSUN3UYyP
         zjBIKXPZDy9/ULTrQ7V/ZNiN4L7t0FlZ6c7PDPvs0AMi+LRKHmZRNYjD391ZLwJy7PFh
         42nC5l0jQfSKtQ1SBlJ9tyJUdZz8WfOK6s/GsB5V3wTbH6z/TM1s1bbyrJK1/BtDhEhB
         ghaTaC9I54rz8m46DxvarJRwlsQf8Yrc5ryrQb4RtTn9aUrxU/rCpRC1VeK7pg7r9HQM
         UiZw==
X-Gm-Message-State: AFqh2kosxH2vJpqndnJr1jh/51xELmcbUcVO8v2Ad70jLnacd2qvgVwF
	PokjMYvJklWN5/6nh4SZcol9mmqukQ471nRw443TOQdlqPhQK6GfXzdzKqeLxx+CpxTeJZEN8gb
	JAsZgMyZJI5vs2WuhYryy9ClpmwULjMNhHojtTIuBqobAnNix8OAIOkzzB9/DEg==
X-Received: by 2002:a17:902:9a93:b0:192:9e13:a4ba with SMTP id w19-20020a1709029a9300b001929e13a4bamr52541827plp.34.1673622422092;
        Fri, 13 Jan 2023 07:07:02 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtwrIHP9dW0hF1a9tF5ZM09LhODKShZitSOnNk0gkOBZaWby8FrTww3ZqFTZXZ65yuuxu6HcQ==
X-Received: by 2002:a17:902:9a93:b0:192:9e13:a4ba with SMTP id w19-20020a1709029a9300b001929e13a4bamr52541789plp.34.1673622421582;
        Fri, 13 Jan 2023 07:07:01 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id v11-20020a170902f0cb00b00180033438a0sm14325723pla.106.2023.01.13.07.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 07:07:00 -0800 (PST)
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
Subject: [PATCH V4 0/2] phy: ti: j721e-wiz: Add support to manage type-C swap on Lane2 and lane3 
Date: Fri, 13 Jan 2023 20:36:13 +0530
Message-Id: <20230113150615.19375-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-BESS-ID: 1673622422-303100-5448-19119-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.214.199
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245440 [from 
	cloudscan16-188.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_070709_358906_84F48F2F 
X-CRM114-Status: GOOD (  10.43  )
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

Changes in V4:
=============
- Fixe checkpatch CHECK errors.
 * Remove unnecessary paranthesis.
 * Avoid logical continuations in multiple lines.

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
V3: https://lore.kernel.org/lkml/20230111111356.17392-1-sinthu.raja@ti.com/ 

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
