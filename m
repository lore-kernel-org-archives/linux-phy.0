Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6BF8C761A6
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL6pYaPBhoL82Q5QVOdaoRe3se8mq00a2yukjw7uQSk=; b=UV3eRxWcDL4Se7
	oDR2IaFh6nefazfxT0VGv5w1JHNKqQvAdc37d29TjTLwSy8paCm8W7KazHzmsWWUWSeITu7KIDBPw
	rq4FaYVD51jAyXrPH/tqztgTTJMN+CmMyzxLEf+WNPt1y3h6EtlAaXvkqbuh+WFqCXvojV+3fJgTO
	JbdHuok692sjLA9ZVwPz6rdTBmIqT8D2yGpr5LPGn+/c32sDOtXGr9gBgcPqlYCmpn8A11PU0cjoC
	2STf26S9iEuFHdj+qdS9/wBcQ9+bDs9M2kBORkgJF/sJuQCf2oUO3bvnb6/Zv1nE0gN2Khc17DZqE
	B8339jlzb6nrgkPFGTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piFFD-007c7S-1w;
	Fri, 31 Mar 2023 13:56:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piFFA-007c6Y-1g
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:56:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A963DCE2FA9;
	Fri, 31 Mar 2023 13:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66CA4C433D2;
	Fri, 31 Mar 2023 13:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270997;
	bh=tdyhWVZJWvQtIo0NCyXFaWOwidIkaHKhv9pdGq4fVQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p9OoGaVubXM/eClKx+159bJoqo9SvH2DaXpy8MKbmY6AlIxKF4gdF82Ltqgco2AJR
	 6mxmV/uBXx+gHt1oIDre2jrQnB/wfio/MekU8vNdR12saUj8db+1HXVPdNk/Ylfwj/
	 li6UszggnmqSMDpYyQCu20kzwKdggP3N+MYdhPnT3pL8lBRBL6tSCJ95H487B2TiXK
	 Az4W/saYwIG/OON/8G/5hFe6d46emtE1jHvRYhR3ct0ypdpjdQT9Gk+PxqYD3Iyslz
	 cNaiHnfxV/pHFrAI4FOvBY61dt8fo+r4SXUEi+/ha6kMgJAqE+sv5zOxc08DitWcPC
	 7DZ+PQEHEpBUg==
Date: Fri, 31 Mar 2023 19:26:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	davidwronek@gmail.com
Subject: Re: [PATCH v2 0/2] phy: qcom-qmp-ufs: Add support for SM7150
Message-ID: <ZCbmkRgCQCRHJHNQ@matsya>
References: <20230311231733.141806-1-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230311231733.141806-1-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_065640_744094_3E80E04A 
X-CRM114-Status: GOOD (  10.28  )
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

On 12-03-23, 02:17, Danila Tikhonov wrote:
> This series adds UFS QMP support for Qualcomm SM7150 SoC.
> 
> Changes in v2:
> - Switch to new bindings (qcom,sc8280xp-qmp-ufs-phy.yaml)
> - Fix compilation error
> - Switch to 0xff instead of 0xFF
> - Add offsets
> - Set no_pcs_sw_reset to true
> - Add Dmitry Reviewed-by on patch 2
> - Link to v1: https://lore.kernel.org/all/20230309185049.170878-1-danila@jiaxyga.com/

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
