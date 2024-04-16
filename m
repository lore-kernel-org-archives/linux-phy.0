Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E43AC04FF6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Du5dvmzwMHRdoSjjlVtdEAadtG6E/Y4BZopw+cmgDHI=; b=nhAfWpsSJdB2Ue
	xnfHXjFPMjnklEolBNW1UuMow5xh9Tikt08pVBy2QVz8NwR8g5CsiDl9O181yGKPGQod3K0lXCoSd
	eDGHxsEFvoyOUKS+gi/uLps2Fb+UJSTbKvqCcvlXk3hPBS2+wCV9fFnGgd5VCZtS7luWWq5OVfran
	FsPa/D2G1nsAplkk+B6O9UByr4uq8TZU3rspzUObsm/ov6K94CXVUtwF0H5g02aUxRXHgiqbZfcRO
	4WYXK3p2/NHVS23bax+XQoZ6w0rOXUF/FReMl1BQ9Dhzogub5xqYPEK0TpNHOcafqPugbzJd+qdN5
	jDe9Nf+7Rr1yewZl17fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ4-0000000CC2U-03Ee;
	Tue, 16 Apr 2024 12:53:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ0-0000000CC0z-0OYX
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:52:59 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1D0C920005;
	Tue, 16 Apr 2024 12:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=K3y9GuS5/xl69QZWu2ZPRVC1k2WjWkSaQK5l7tBAvM4=;
	b=pk96PNKJvxtGcj+a+jiYvS7naxMkRd0XCRZgHvwwWUd2fx98vnmtLLzzNj/jN39ZFDmcGE
	gjjWqKEEPTJwS2utG2GNmPb6hcSVpqIIri3QHcwOiuIvyAZ5NwUzXUxBzhOAt0x6mHxtUu
	//3QwhwYhL12ERZmpa8UBHiyonerp6C7YGiPwP8wOL8xX2hbQhr+dsLxBdm6BO+dRUOE+5
	VcOL69u4+lYUcdyhyG1il1cIp3zHOGXVUrXmSxrsKcUiA44Rh4DIe8PT+FKA7CtdBdvTTw
	hiSHn8M1CG65mSGYSnmNaot2rIJGVFwvSG7IWgLUCd8JgjO7ecHn1fchW6qPmw==
From: Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH 0/8] Add suspend and resume support for phy-cadence-torrent
 and phy-j721e-wiz
Date: Tue, 16 Apr 2024 14:52:29 +0200
Message-Id: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI10HmYC/x2NwQrCQAxEf6XkbCBNi1v8FfGQ1ujGw1oSEKX03
 7vr8c3MYzYIddOAS7eB68fC3qVCf+pgyVKeinavDEw80tgzvhIT4Zp/GOyYaFI5D6KSJqjOLKE
 4u5QlN6tNWtSq1fVh3//V9bbvBz6aFjV6AAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_055258_301207_D6208BBF 
X-CRM114-Status: UNSURE (   8.79  )
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

The patches of this series were originally in the series "Add suspend to
ram support for PCIe on J7200" [1].
They were moved in a separate series as requested by the PHY maintainer.
This series adds suspend and resume support for the phy-cadence-torrent and
phy-j721e-wiz drivers.

Compared to the PCIe series v4 [1], these PHY patches were rebased on Linux
v6.9-rc1.
The only change is for the patch "phy: cadence-torrent: extract calls to
clk_get from cdns_torrent_clk". Now the cadence-torrent driver supports
dual reference clock, so the patch was updated consequently.

[1] https://lore.kernel.org/all/20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com/

Regards, 

Thomas

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
Thomas Richard (8):
      phy: ti: phy-j721e-wiz: use dev_err_probe() instead of dev_err()
      phy: ti: phy-j721e-wiz: split wiz_clock_init() function
      phy: ti: phy-j721e-wiz: add resume support
      phy: cadence-torrent: extract calls to clk_get from cdns_torrent_clk
      phy: cadence-torrent: register resets even if the phy is already configured
      phy: cadence-torrent: add already_configured to struct cdns_torrent_phy
      phy: cadence-torrent: remove noop_ops phy operations
      phy: cadence-torrent: add suspend and resume support

 drivers/phy/cadence/phy-cadence-torrent.c | 140 +++++++++++++++++++++---------
 drivers/phy/ti/phy-j721e-wiz.c            | 133 +++++++++++++++++-----------
 2 files changed, 182 insertions(+), 91 deletions(-)
---
base-commit: b6b2d5379911df41ad51f7773ed98ef18b939258
change-id: 20240412-j7200-phy-s2r-708ea63aea78

Best regards,
-- 
Thomas Richard <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
