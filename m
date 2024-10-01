Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65684CEB2E4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Oct 2024 03:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2a65VcMfhOi6bA2FJ+zDhlFKr1qoAwv3stmsx0CQrM=; b=v4TODDjtCyAaqi
	xsGWJBLQEcPcaOSwEtLqK45EaMUr6dDVPbVcZ7UrqePZkqmh5+YJM7cXgxU608k0GtQxmoYFP4Pjg
	7vuOUDf7ZhyZQtroNdt3tPaKRsoyvd7I3WJ41rQ1lKZOu5Iu7FC+vA/01+SXLoR7uOLeL5X7kiKd0
	Uvbh7rjI6tPPJO//c7zOxGRRNUDYi3gUgwdMrRi34zG2XmJK5UhSMticwgp9ei60C+3UPSe/oANd3
	yL7monvbxrPh+0+zfHc+4kcx/VD3XhrGjP4XJ8yww6dllNYv6N4nVZh2cHx/+YCqsU8v1JjHEdSKH
	AkW2xk9SsgPVWe2QDXKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svTos-00000001VoR-3rVa;
	Tue, 01 Oct 2024 03:45:02 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svTHh-00000001Ra7-2lpV;
	Tue, 01 Oct 2024 03:10:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4913ATmW103165;
	Mon, 30 Sep 2024 22:10:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1727752229;
	bh=kfwMURVy/yiodMLPMigVXkX4hDEnfqhR+Eng6XlVuaE=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=p/ID9cEnKwPGSc2GLSxaMFuzMVU1dlKBLv9NmQ5NNBnJeNCxNfMNyobx8/3LpurOE
	 ss0hO18Vlg1HnvswI6PHwZkCrg38NhgVB7ck4zK3uD8k1Ve/IYX9pyuSMobWXCh8dC
	 25WIs4JvNK8mLiRfFQu+N2Jk4XcjHsQVe3R+5Tzs=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4913ATjL104314;
	Mon, 30 Sep 2024 22:10:29 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 30
 Sep 2024 22:10:29 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 30 Sep 2024 22:10:29 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4913ARmS086854;
	Mon, 30 Sep 2024 22:10:28 -0500
Date: Tue, 1 Oct 2024 08:40:27 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Roger Quadros <rogerq@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <thomas.richard@bootlin.com>,
        <krzysztof.kozlowski@linaro.org>, <nichen@iscas.ac.cn>,
        <c-vankar@ti.com>, <t-patil@ti.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2] phy: ti: phy-j721e-wiz: fix usxgmii configuration
Message-ID: <c5ef5303-6390-4f2b-b9d2-3d1f3085e15f@ti.com>
References: <20240930095745.3007057-1-s-vadapalli@ti.com>
 <4b42b8e5-3246-4f58-b494-735930d2424a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b42b8e5-3246-4f58-b494-735930d2424a@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_201045_882079_2B3C8648 
X-CRM114-Status: GOOD (  18.02  )
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

On Mon, Sep 30, 2024 at 05:06:35PM +0300, Roger Quadros wrote:

Hello Roger,

> Hi Siddharth,
> 
> On 30/09/2024 12:57, Siddharth Vadapalli wrote:
> > Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
> > wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
> > was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
> > LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
> > since the USXGMII mode can support up to 10.3125 Gbps data rate, the
> > aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
> > LANE_MODE_GEN2 respectively. Fix the configuration accordingly to truly
> > support USXGMII up to 10G.
> > 
> > Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
> > Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

[...]

> > diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> > index a6c0c5607ffd..c6e846d385d2 100644
> > --- a/drivers/phy/ti/phy-j721e-wiz.c
> > +++ b/drivers/phy/ti/phy-j721e-wiz.c
> > @@ -450,8 +450,8 @@ static int wiz_mode_select(struct wiz *wiz)
> >  		} else if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
> >  			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
> >  			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);
> 
> I'm not sure. Don't we have to change rxfclk as well?

This patch was validated on a custom board with the J7200 SR 2.0 SoC.
The signal corresponding to the USXGMII lane of the SERDES was measured
to be 5 Gbps without this patch and 10 Gbps with this patch applied,
with no other changes required. Apart from measuring the signal, ping
was also validated.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
