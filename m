Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED3CC77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 09:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U9w1SPDD/jsGRGm5dUlG3j92KR6tovBQGLJIJvkjxU=; b=MQcvuUzqH+L9hA
	k+Eb6JoMeBdks1/qRUQW5ELP8unC373cSJPriXixTse8t5ESjxbvssgoKTIF6nR1qvTsNnk4YUnlU
	xJNTI9C5vsAwR5KRrlU2HpqxCJ0vdJMufNtTCli3fEqLYp7U4Z1OQ7lNQnxCpIfkN17q6JGoix17W
	2EQtOfmccOWopgF8Hxj6StPGl4B5XLd/aCDdzY4NaFmNKKQDQ+22Vk3mCRpTCb9nHRMXfOO6SdLE2
	NYhpleJaf0WiCW6pTMTJFLc/l7fZFpUf6IAK3bsY3e7uZ2jNQyBWcjQnP6xY5gMFBNQ2DsMSH4KQ4
	zrUwsf+scE3P8S01O2qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPI3-00BUOq-0A;
	Fri, 12 May 2023 09:42:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPI0-00BUOC-1K
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 09:42:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C09BE63DEF;
	Fri, 12 May 2023 09:42:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2264DC433D2;
	Fri, 12 May 2023 09:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683884535;
	bh=yqkBQksJWz1nlhMBFkdu1oRQeM3teRj2O0GKq5+R+aM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o8edDh7r/NmPz6oH0En6zvc+pERhzP/szGDcpodzH8nGrPlczmrOFvRWeJpHd+DBT
	 P+khlYEo+67V5hxKtt+BLWRWtLN6vhkAy1fMdMWikpUGC7Zzj3gSIg8dZCc43iKBcV
	 XWArDtvALWhpxMCQnoEyj7TafjPNNKkdAR162u9GdW4cplUNBuD8vVIurX1BV/KyVn
	 mZ1tvbzhADIYiIiQCpxJNsBpc1wEwGc3o+OGg81UZwzn8xntR7d3NeZg6Ni8OOP4tN
	 fNsE2t+sootR8+Q2f6taAtj4APLe9zrznhWa/893tnMA6/YWPtNSqd29FgmURGhy/R
	 tDy7jy+LavakQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pxPIQ-0003Ev-Tz; Fri, 12 May 2023 11:42:42 +0200
Date: Fri, 12 May 2023 11:42:42 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: sc8280xp-x13s: Add QMP to
 SuperSpeed graph
Message-ID: <ZF4KErG3G6Svj5LA@hovoldconsulting.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-9-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031930.1996020-9-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_024216_488319_30C2F5DB 
X-CRM114-Status: GOOD (  10.00  )
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

On Tue, May 09, 2023 at 08:19:30PM -0700, Bjorn Andersson wrote:
> Following the CRD, connect the two QMP phys inbetween the USB Type-C
> connectors and the DisplayPort controller, to handle orientation
> switching.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Tested-by: Abel Vesa <abel.vesa@linaro.org>
> Tested-by: Steev Klimaszewski <steev@kali.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
> Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
> ---
> 
> Changes since v1:
> - None

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
