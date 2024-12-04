Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E168CE7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 13:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPdrXaBPwfBX2w7rUwxSPzCgAxSOVzlJB6Fqh9UBI+c=; b=3bYX+wmI9OVoQQ
	OZ66BvAaoLbwEBKbYEi6CGeyUA0otYJyUEfj7zcBtGcD9WYUi8Jw+geH9DibkJXiD9AJtpw8/XfVZ
	nG6JTB6ULxyuksXiQlaBGqS2mMAwVzymhepQ5WD0vIA62z/1gpZhz3wDDLdAlElOvxTkKxqP7x4R8
	S2xI83cCKVQ4Clk5UtUZHQI5K8LjsH60tAxW0RVndqs87TfaQu/xakKSu2NwYlzwLw0wn//W/pU/B
	fp814xkUvOYGY52EtsTIZv4igOZIS70KNV+4y6auFGPvXB1XHkmSBSMQsz6FyCOfiEtK4J6T11Gq3
	Psd+/yhPgRhQMPQnFlTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIpil-0000000CiWC-1ftV;
	Wed, 04 Dec 2024 13:47:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIphk-0000000CiKB-19px;
	Wed, 04 Dec 2024 13:46:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D76C55C48E2;
	Wed,  4 Dec 2024 13:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6395C4CECD;
	Wed,  4 Dec 2024 13:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733319971;
	bh=ENM0SClxUt2lPvodmnrHzeLBV9BDJq1owuP9D1ySOsA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neemGZuEgTiKvdyK2nqqBYB/8qfQ02WQDlv9wzIByn8tp5P7+i8Bvs1enmvuyV708
	 2y+DTLhmxW610fCYgDcKAGG1exv2oRBeJCd+yRhFI3hAakWRmsWRFDbnoxEkUyxJql
	 6ybJkg/fRNts42khtGnjNb6KibyexaOwInuQ2AcYCGUVBUFlYOyDdfT4DP9kl/thF7
	 tf3lDdIN5Ldml9S0Tf7i7Qfz1gitRo4lTNtBsBDGAJAGA5fRtcUweosP505AR1vY0P
	 HbYaYO4wVYkJ+HHS85KZPM/1k8ODE8AfD1lLGjL4v9cGhehM3cwvqdpaYGwe71Kxsp
	 eRmjIsDwlthpg==
Date: Wed, 4 Dec 2024 19:16:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, mripard@kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v18 2/8] phy: Add HDMI configuration options
Message-ID: <Z1BdHzfcnj6XJ9D4@vaman>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <64f6885b5a5ca89c8214b3138cb58c3133ac2109.1730172244.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64f6885b5a5ca89c8214b3138cb58c3133ac2109.1730172244.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_054612_354120_A4EB9257 
X-CRM114-Status: UNSURE (   8.17  )
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

On 29-10-24, 14:02, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> should cover the potential users.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
