Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B60FC3DA6F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 19:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcBI2Cu4Ex6FSfuQ4bzHsYtuFzfICP6x97l/W//R0Bk=; b=Xm6eLkugrdVF6g
	mz13P3dBsmMtHSYxJZtmDo6Pv+VH+1sZwmn9BgtGMp9DmS6saGR2mAhB02xFEV0WYhq8zLHrXRobc
	zm/dkfrp7zgXJ1I0EwgSZzYr9s2glXledZSIoi6lh64zP2Xp5kFMowHPT3eCuTn/mO0YI1Gz6fLcP
	dvDUkkzjXbfbonOSZ5HWd19BiWRIzZdIqqEr4Db11Ef3wq90L78KQCgPJiy5jjT9HWljElS+EMWzN
	6kvizs6CRtsg3tk6EVNi5iexb+ie+UnDNIbUlHPBjVWjrCe1IT5OK+2GjPRMfF0rtVg704dEPyZ14
	myxLR5EXU/vpnERzRewA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYtpM-001Rr0-14;
	Wed, 23 Aug 2023 19:47:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYtpJ-001RqY-2r
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 19:47:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 387986137A;
	Wed, 23 Aug 2023 19:47:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1141C433C8;
	Wed, 23 Aug 2023 19:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692820056;
	bh=QxGnaftr84VW4gjN9xAYyfbIdSjPTPUVKXDtGI2GqYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zb6jsXmyBdTQI02UpLS80QuzKg8z6iH45Cf6H5ulZ2fu56AnnIdZO0JqwhE/RJJbO
	 pNc19sphLPtfhqUnAMruxTCN4jlK8LEYyNTplK081baEe9ADmM78RVUxgA1ujiYlnn
	 kpvI3G55YzagBerK3W4BD8Uig4TLWrYr0QjMZDSueKKY3Ps1X5mpJgZZraE6B703tb
	 zaA8T2vpHTZNZ6ynUU7IwShSrKmyE32fDswfNvP0dkP5L76rC3qFvvDTyw14GACHAo
	 nP81vFn+0hHLmnGjIB1cWWpfKGV1MCpjw2teItjIDjro7/Wt4DdYzvkd1RSoct88Sh
	 RcXe/3Kmh17/w==
Received: (nullmailer pid 2780479 invoked by uid 1000);
	Wed, 23 Aug 2023 19:47:33 -0000
Date: Wed, 23 Aug 2023 14:47:33 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning
 regarding reg size
Message-ID: <169282005312.2780420.1335528818414643618.robh@kernel.org>
References: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_124737_969979_29FC3AF3 
X-CRM114-Status: GOOD (  10.95  )
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


On Wed, 23 Aug 2023 21:17:28 +0300, Dmitry Baryshkov wrote:
> Fix the 'reg is too long' warning caused by me adding 64-bit address and
> size to the example, while default being 32-bit (cell size equal to 1).
> 
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
