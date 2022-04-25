Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C7EC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 09:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5w8n4sNbqetazBDUzd4EYVGmJ8rfeb6B+h8l/BNiwzY=; b=COQmEaxIOJTXfh
	/zx6hosY79wxBt68tnvhx93HeEUvc6nS6Cle86K0NnaJQGo0r8JwR7/AlXjrNW2p5NghwRFJhNO7x
	55pYwG8Sb87a9oJ9/NFYWPsxF8KvjTaQegyglzX8AgUOQlq0HjxPDI7JIjld35FV6IY+iku+fDhQT
	HWLZO6Pm502LLCWJXLYuFtboz6fLFgcDNIXQd6xGViuJSDT/UAxFCD7Aifsp8FFj4k8lCFeAtP9GL
	9Fzl56TxlKh9ioHlBrzdr8k8kL+oJPH39pv2D0bZrq1eB2d6WW16R3TWjGZ6iGVC4+RkTwqhIaBpG
	VchwUNWt/7H/DycuqMZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivHu-008yEw-I4; Mon, 25 Apr 2022 09:45:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivHp-008yEG-Gc
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 09:45:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nivHg-0006sC-Bl; Mon, 25 Apr 2022 11:45:32 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nivHf-0057VX-Sy; Mon, 25 Apr 2022 11:45:30 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nivHd-0004pV-OZ; Mon, 25 Apr 2022 11:45:29 +0200
Message-ID: <59b135206b456fd8f8df30a4e474e385a922bf77.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: fix reset-controller leak on probe
 errors
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Johan Hovold <johan+linaro@kernel.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>,  linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org,  linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Vivek Gautam <vivek.gautam@codeaurora.org>
Date: Mon, 25 Apr 2022 11:45:29 +0200
In-Reply-To: <20220422130941.2044-3-johan+linaro@kernel.org>
References: <20220422130941.2044-1-johan+linaro@kernel.org>
 <20220422130941.2044-3-johan+linaro@kernel.org>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_024543_905620_38B93618 
X-CRM114-Status: UNSURE (   8.85  )
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

Hi Johan,

On Fr, 2022-04-22 at 15:09 +0200, Johan Hovold wrote:
> Make sure to release the lane reset controller in case of a late probe
> error (e.g. probe deferral).

Right. grepping for "of_reset_control_get", there seem to be are a few
other drivers that might share the same issue...

> Note that due to the reset controller being defined in devicetree in
> (questionable) "lane" child nodes, devm_reset_control_get_exclusive()
> cannot be used (and we shouldn't add devres helpers for the legacy reset
> controller API).

Do you mean of_reset_control_get()? Maybe you could switch to
of_reset_control_get_exclusive() while at it?

That one might warrant a devres helper if other drivers were to adopt
the same pattern.

The patch itself looks fine to me,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
