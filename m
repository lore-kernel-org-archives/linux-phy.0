Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149D1C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 05:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+MmKd1134Ft95sbnc4Cst3BWWN9ZqVfi9K197NMtvkk=; b=E2fz066kHgj8X9
	huOxUPCaGnfch6xhTWRvC6wroHgk2GfdblpwqZp8IhSsq/Yz6qwHM8v+oV+N7lyhEB6pM5vYWM/Rt
	AmvePv8XLLUN2vBpDdChNKghJBEwPKgaDbA45NLhArTUoNGH74428wViZwAOxodfFlC8b2ZtEBSbP
	UmcHVNsgYa9gka5fYBi8XtlvD+oCEQH6D2QLTKdjwyeKGNUkEVSL7WRWF0816knWDUwV0egHnFqXS
	0ubboQ2Xf26UYEImGnha6cG1QX8UpPfqZhV6FNAmcBD1lBFhJ1GH9LUZNKB+bPFrv+3y93x2gbOeo
	y6PdT/d68NqUlMmp2Fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ne8ue-00Blg3-BZ; Tue, 12 Apr 2022 05:18:00 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ne8ub-00Blek-AV
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 05:17:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1649740677; x=1681276677;
 h=from:to:cc:subject:date:message-id;
 bh=6TerQcObOlqr8tjuxzxffI/r6EQpo7j9Xxg9/OaAWcE=;
 b=QfJ66JaocfFbpWAIig4Gzo1V/RAk5Fk24ko/OaTrCYqoGqDClrqob5B9
 Forbu9lZXXLcM8F9t/WtdhyvTQg5sx3oRcm24zAqWo6B42lXwOKd+OWDX
 Et4d/FWQYNwaxsX3TY3Th46jUnDWGI+KXXaHN6hmuqDoDJyxAmy1hRYOh c=;
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 11 Apr 2022 22:17:57 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 11 Apr 2022 22:17:56 -0700
X-QCInternal: smtphost
Received: from hu-rohiagar-hyd.qualcomm.com (HELO
 hu-sgudaval-hyd.qualcomm.com) ([10.213.106.138])
 by ironmsg02-blr.qualcomm.com with ESMTP; 12 Apr 2022 10:47:39 +0530
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
 id 87F4E372A; Tue, 12 Apr 2022 10:47:37 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc: manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 0/2] Add support for USB3 PHY on SDX65
Date: Tue, 12 Apr 2022 10:47:30 +0530
Message-Id: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_221757_422174_FED364A2 
X-CRM114-Status: UNSURE (   6.49  )
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

This series adds USB3 PHY support for SDX65 platform. The USB3 PHY is of
type QMP and revision 5.0.0.

Thanks,
Rohit.

Rohit Agarwal (2):
  dt-bindings: phy: qcom,qmp: Add SDX65 USB PHY binding
  phy: qcom-qmp: Add support for SDX65 QMP PHY

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 76 ++++++++++++++++++++++
 2 files changed, 78 insertions(+)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
