Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB1EC433E0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 612C364F4F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 612C364F4F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L8EGJrHKk8KXvgwdTY9KbbUzu8w9imANbLuDQtDUByQ=; b=JqEA/WvWtIqPbswjWI709q5cSl
	3Cy8Bkgstihn59sBzWbBvjv9h5h+GMbhiCBXe0oJ0p71LselFn2jLgEnqMgy7/mr99mvrnhdk+LsQ
	Dj9y7iLW8aTU2nHlO/faMFxLBBhr5GQyjxB0ZIPQVIHsWLneV/nap78u1swTAreRX8NuV91Jhx9IR
	LDMHlvW39Aw1VeuL2I/bW7fbphQYGbq+eh9FmEMKBakUIydmjfDPIVQYSS6mAsCsA4nfOxdeoa1b9
	NwRUb7IFFOGVQHR27MdyOAze1TJXjx+zEC5ekpJF0W1IeiNz3AiYF7DGTBIhAxLAHQCBFzfo4OJJ7
	XOr+/o0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTwm-002zlH-JR; Wed, 17 Mar 2021 11:02:40 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTwh-002zkF-Ve
 for linux-phy@lists.infradead.org; Wed, 17 Mar 2021 11:02:38 +0000
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 17 Mar 2021 04:02:31 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 17 Mar 2021 04:02:29 -0700
X-QCInternal: smtphost
Received: from c-sanm-linux.qualcomm.com ([10.206.25.31])
 by ironmsg02-blr.qualcomm.com with ESMTP; 17 Mar 2021 16:31:48 +0530
Received: by c-sanm-linux.qualcomm.com (Postfix, from userid 2343233)
 id CA5D037DF; Wed, 17 Mar 2021 16:31:46 +0530 (IST)
From: Sandeep Maheswaram <sanm@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>,
 Sandeep Maheswaram <sanm@codeaurora.org>
Subject: [PATCH 0/3] Add DT bindings and DT nodes for USB in SC7280
Date: Wed, 17 Mar 2021 16:31:38 +0530
Message-Id: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_110236_431002_FD41040C 
X-CRM114-Status: UNSURE (   8.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series includes usb controller and phy binding updates
for SC7280 SoC and DT chnages for SC7280 SoC and SC7280 IDP board.

The IDP board change dependency on the below patch series
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=448321

Sandeep Maheswaram (3):
  dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SC7280
  arm64: dts: qcom: sc7280: Add USB related nodes

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dts            |  39 ++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 149 +++++++++++++++++++++
 4 files changed, 190 insertions(+)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
