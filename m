Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D952EC76196
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64lSHBDDq1PQ6gaGjUxmVrBX+2wjtblKs1BuS6ZwQbw=; b=xq/JzDEK4iWbkY
	fdooKgpeYmOdzrfebRFKJ2OSQYUHQ5zBXQGgdMP6ZKw7Lva8gLWF3uNWXKLNsgLohnFjVI4H7DmhI
	/vDvKIWii7tBdIFDk/1w9iPxHGlSads0xDTPJaJK1tEb6vT0hgQqSj4/TT6Zt2CtzmG6oLgxEe0aY
	WFChEPAweyw7ReQnHO1Yf3IoY6z2MfYosjLSo384Rf8yVbGVTOdRuJOM9+cz++WQij4iD97o0gCGB
	qbh5KKiZww8OaORDadUrFHHnMR9gzdzW0jWFWcqfr0kh/Cf6R4Avd1ldNDVLx/V7Bx13eYiOlq9NL
	2KfK5Ma0FQ5Rpx1xyI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcHh-003ofm-1R;
	Fri, 24 Mar 2023 07:56:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcHf-003ofJ-1m
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 07:56:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E72116299D;
	Fri, 24 Mar 2023 07:56:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4462FC4339B;
	Fri, 24 Mar 2023 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679644582;
	bh=tcdb3u+oQALvYdJlagydXkPjVB03z6C85ADaml3ST8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m5igMPXYXHC2nSRf+F6n16wn7hX5i1U5ozQaEXJH8wuwGu4fF4zjsJuRyqcjiW6o2
	 P0p0l8ZRSafBHeGpnGCR/u5+PRXauQRBLCA6R7witG6FqL4O7sKdZqSXpZhzkFrGGp
	 zhNht5KvVw0wOBuVS5xYbD6V2Een8dDfMQoJb1WqxMvleDjm0XFCjxUCugDaRW6ENN
	 qOj4huijsCOuSfCSE2+WIcA0t6j5OWt1D25XKaNkBgMT8g+FuJ4FG0rbofL0QJx4DL
	 iBzb75XUCibMSTYdZ6IQFU1V5Xu6oNYyEL7Tznk2O33gAT4kwN4Cm+IRqcIq1StVgK
	 ttykZVs8RdsEw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pfcHd-0003CJ-FZ; Fri, 24 Mar 2023 08:56:21 +0100
Date: Fri, 24 Mar 2023 08:56:21 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 03/41] dt-bindings: phy: migrate QMP UFS PHY bindings to
 qcom,sc8280xp-qmp-ufs-phy.yaml
Message-ID: <ZB1XpXou0GI5ibNI@hovoldconsulting.com>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324022514.1800382-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_005623_622675_F8305A15 
X-CRM114-Status: GOOD (  12.75  )
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

On Fri, Mar 24, 2023 at 05:24:36AM +0300, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-ufs-phy.yaml)
> to qcom,sc8280xp-qmp-ufs-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  94 ++++++-
>  2 files changed, 89 insertions(+), 249 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
 
>  examples:
> @@ -84,5 +150,23 @@ examples:
>          vdda-phy-supply = <&vreg_l6b>;
>          vdda-pll-supply = <&vreg_l3b>;
>  
> +        #phy-cells = <0>;
> +    };
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +
> +    phy@1d87000 {
> +        compatible = "qcom,sm8250-qmp-ufs-phy";
> +        reg = <0x01d87000 0x1c0>;
> +
> +        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> +        clock-names = "ref", "ref_aux";
> +
> +        resets = <&ufs_mem_hc 0>;
> +        reset-names = "ufsphy";
> +
> +        vdda-phy-supply = <&vreg_l6b>;
> +        vdda-pll-supply = <&vreg_l3b>;
> +
>          #phy-cells = <0>;
>      };

This example also looks unnecessary.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
