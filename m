Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0489FC433E6
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F1E064F4F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F1E064F4F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Bz3oBne4MKWt05R5Xsd7cJcLvClbgrQAbOt0YAjLDM=; b=dh5Luf1h60ZoK3QBgK2jspSd3Z
	ArZDwz3jI+PYE/U+En1fHWbVWgjpcJW5dv56mA+xThn7bo7VNKZ1nRWqvYqqi/VVadJzoBRop7zLN
	pcqpM7XySzrC7Ysdws0h63Jx6aoSUUItr7B/0U+ewv8ObiB4y/RwA3MSk/SooDpM743Hx8LEXCajW
	4rDra8WtUe6yyCw/UxLGqwEQKMm7zsQyjWnpmyBLE5DtZm78ZLfmvQWACUTZQ4l56vvWEIfSo5PsI
	9ktjJcnMl7MxUESznhCxkGuTwmdtjk5PvqaNnB4QXzSISezG8ChCsTd8e0TOr5WX+k0bMrInfUlDj
	eSmq7luQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTwq-002zmA-P4; Wed, 17 Mar 2021 11:02:45 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTwk-002zkF-U7
 for linux-phy@lists.infradead.org; Wed, 17 Mar 2021 11:02:40 +0000
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 17 Mar 2021 04:02:32 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 17 Mar 2021 04:02:31 -0700
X-QCInternal: smtphost
Received: from c-sanm-linux.qualcomm.com ([10.206.25.31])
 by ironmsg02-blr.qualcomm.com with ESMTP; 17 Mar 2021 16:31:48 +0530
Received: by c-sanm-linux.qualcomm.com (Postfix, from userid 2343233)
 id 0531737D7; Wed, 17 Mar 2021 16:31:47 +0530 (IST)
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
Subject: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
Date: Wed, 17 Mar 2021 16:31:39 +0530
Message-Id: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_110239_382387_60F38BB8 
X-CRM114-Status: UNSURE (   7.84  )
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

Add the compatible string for sc7280 SoC from Qualcomm.

Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index c3cbd1f..413299b 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -16,6 +16,7 @@ properties:
           - qcom,msm8996-dwc3
           - qcom,msm8998-dwc3
           - qcom,sc7180-dwc3
+          - qcom,sc7280-dwc3
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
           - qcom,sm8150-dwc3
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
