Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37160C433E0
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 12:03:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D7EF6501C
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 12:03:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D7EF6501C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wXIM289c2mVqavgtlvWtAyG0QN6TDztnLGYoT9VAexw=; b=gkX8h+VWm0L51ppkThYtQXHP+J
	V7RzrcxF+fnJlnosafKsxsYW1LxiKc/6eRmD+lWrBK+5yQyuz9Jc6NL5OiQCNuEc3HVhLa7kL0109
	Dsk5SGATv/Ub48Bk1XdOX8i030vG36LX4IoMajhDiOQF/RYPa+oB/Hn0V1ShoYcl5xRcN7RgoAEAi
	q1/GSVWTpqlmfHD4BEzNALDkDa86kvibkn4Cydq/l42sDmzyeHqXIEkn09t3tntbEIgrMIFId2V4t
	N50TgWn1wpThDE9D50aADwlwYkQPntoIKBKMmdexdxbWxFTACPMvsl2AfjWpG2TD+DArxp5542Qkm
	VxdYt1CQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI9Az-00EsEo-J2; Fri, 05 Mar 2021 12:03:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI7Hr-00EQbA-9d
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 10:02:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1C86164F45;
 Fri,  5 Mar 2021 10:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614938541;
 bh=ju5aiY7t8yuacS4TNsi2zbNjewpWGBo8WBUPY/Hv9AE=;
 h=Date:From:To:Cc:Subject:From;
 b=aEl/dN1J2UbpTsa1LTePKCr42YiT+xziEGCfi8suiPMrjS10Lnsyr8XSr7GOqBnsL
 P6maa/ds752Cmdw6MVK52xAHyhpTu/GxOm/hRgFYVWSDhsqpGnXos4NH4lRGfdkEWx
 78Ta+9wP1ZGI/QC3F0DAmTRKp3C6SZwUtsHH6TtbMVkimh8Bb0To7GSmZqaei/hNtJ
 gvA+wus0t6u74/fRk/2SCDlR8ZKg2o2LFo4ojGRo3Xuoc5hhY9UkimJondvIRfbpr2
 Vv42o7ew25OtnQPU1+RBbY6jgmDf2YGuRoagAQ3BMMQTBYJta2JBkiQPAji8sobG9f
 ffJpqcywrFLVw==
Date: Fri, 5 Mar 2021 04:02:19 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org
Subject: [PATCH RESEND][next] phy: qcom-usb-hs: Fix fall-through warnings for
 Clang
Message-ID: <20210305100219.GA142595@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_100223_652309_104317E4 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Fri, 05 Mar 2021 12:03:24 +0000
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

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of letting the code fall
through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-usb-hs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs.c b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
index 327df1a99f77..5c6c17673396 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
@@ -56,6 +56,7 @@ static int qcom_usb_hs_phy_set_mode(struct phy *phy,
 			fallthrough;
 		case PHY_MODE_USB_DEVICE:
 			val |= ULPI_INT_SESS_VALID;
+			break;
 		default:
 			break;
 		}
-- 
2.27.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
