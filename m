Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 641A5C02198
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 10:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44kU4Zp2lCwfO3gtgH9WrCncDjkRHaPNwkXUZ7BpzFw=; b=2GYA54UAOcSn81
	ocgfRj3m4NcGFvdNivMFw3sgaO3omKab4pEoAsFXZQ1Hed0OCjSTpHlyRthohs/eu5yAsWdBc7kt8
	tT+nKM/ETYU2dJEeeUfW5CXXa+rhz3BzRr/p+V9/heqLgwV8fK3O0X5PdoG0Wyc8fTegPleddhynL
	gOiKsPoF1PikQJViyXrfYoNQQ0t4QTRYm/GpQ34EanMEpneLc9f24XlhkNGq6wylRHJmqYHwDdipi
	PGoWFB3cgQNyDCd/popxmt3AYpqF9lU0fwuJnrMMPhHSijuhkOfVVYSBpDNLCli4dudZw8qNRk9s2
	M3KGH5Q0OEzZpaaaz3rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titH7-0000000EYuV-0Dry;
	Fri, 14 Feb 2025 10:50:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titH5-0000000EYu0-3g9Z
	for linux-phy@bombadil.infradead.org;
	Fri, 14 Feb 2025 10:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=/CH1TrjUT2cU5KmVgsPP8P1FDrNBDXDBWaxPmNq0yw8=; b=BSyNz85NszRnrv2nG9UDJMlKT8
	wQtWG9t56fjEE9kBAk7eIiQg881sam+gD2YCGR/lLAw4Q35q1sRfRX/cab0QrYKgtx+BAKgCKKc2d
	4KnO75QcyLWk45WVRtYf+LSx4Z8/6p2BN8j9UEqDxndZ5GFnNdghru/Pz8My4WJuGsYkOlBhZfKu0
	iFamtnl24tUPNHjAFr9ZlnY5yBaLA995rN4A7B+QUtyVcTC0EBPze9J968TeOxEWkI3NRxVA5pfwS
	i4DQBzWPg7yxOvV970iUdIIp9MGAec1tvCNqIQciVSKlY6RwZxRaO9Bu4CGm2R16q0XYto2beLL9L
	wpuKttaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titH3-00000001EYq-0JZ1
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 10:50:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1titGW-00054d-06; Fri, 14 Feb 2025 11:49:48 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1titGV-000u4C-0W;
	Fri, 14 Feb 2025 11:49:47 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1titGV-0004XM-0F;
	Fri, 14 Feb 2025 11:49:47 +0100
Message-ID: <067e9396ed8629efa7190c0103ac3a29d0c469d8.camel@pengutronix.de>
Subject: Re: [PATCH v3 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Wenbin Yao <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org,  dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
 quic_qianyu@quicinc.com,  neil.armstrong@linaro.org,
 manivannan.sadhasivam@linaro.org,  quic_devipriy@quicinc.com,
 konrad.dybcio@oss.qualcomm.com,  linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Fri, 14 Feb 2025 11:49:46 +0100
In-Reply-To: <20250214104539.281846-2-quic_wenbyao@quicinc.com>
References: <20250214104539.281846-1-quic_wenbyao@quicinc.com>
	 <20250214104539.281846-2-quic_wenbyao@quicinc.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_105021_223631_817E5B3B 
X-CRM114-Status: UNSURE (   5.71  )
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

On Fr, 2025-02-14 at 18:45 +0800, Wenbin Yao wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Decide the in-driver logic based on whether the nocsr reset is present
> and defer checking the appropriateness of that to dt-bindings to save
> on boilerplate.
> 
> Reset controller APIs are fine consuming a nullptr, so no additional
> checks are necessary there.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
