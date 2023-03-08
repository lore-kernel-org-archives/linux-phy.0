Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D93C678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KbrfsD7FGdT3o7ZWMbLTZGihac/UXACepJZqqUhZ4w=; b=nacC9zemzWG5z+
	HsNKPy1y+VJn/tzMjJ6RwKG71AdT4M7MJ+51TXx7FDpmEyyjv/Vhtb0JEIct72K9YMpTJYIV6c1aH
	srS2JXhp3Xk0XMJ4rUllyIjQatHhN3kgmSfzOpUyU1itQox4X9bX83RdQMNl6OXBvyf5OvTtKYjoX
	FDq5KZgCds43XIiksGvHb6eBeXk06ShisZ5UaUFA13a6bVcfB/2z8pUCg86ORh5jvymHdpP7x3azD
	449Ri4mQ/u+KVm38/WTQuIvgcL/ENJRnlOL8WzueRd4fHlwtcdzJl/63lYSzQKIbUSdJY4X5924gT
	49MZGXQmvBpWJeXYA2wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrYU-004Usk-Ih; Wed, 08 Mar 2023 11:01:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrYS-004UrV-9Y
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 11:01:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 79783B81C1B;
	Wed,  8 Mar 2023 11:01:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 311E2C433D2;
	Wed,  8 Mar 2023 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678273313;
	bh=tS9tmSwCiCb5Gj7uPqDRGFFYeZ7A5dLeyFKgap0zzuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CMfX0sW3iJt8hkidpnTtasIdXfvgQhFiwmwRvHf+AEvlcP53j0zEeGcQVYUDbbJDc
	 tH94Qov0LYPeIrgbvpO87XFD4j+JOppbuvHymSaFYdUzMqEW89yS0Cj2amM5ZVfErV
	 P7k60e0NKUq+DjoWBau93zKM/bPTL8Qw69BTuqp/MWDZDbJqlc/sHS25ze1FvWuE9H
	 ylhqpg2oX6F02fcIMF7AzoQwG8TZcEeRp8E8T0PIUB5nZKmWjXgKMDfW1zlPyjWqOw
	 Z/GwZallNZxsL3JpkGzPwwXF1Dfs1yf11qQVH9Ns33ZrkYBk1TeL/DLG2ELezbcnjT
	 ySnFnjBbCvAkg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pZrZ9-0005wP-1P; Wed, 08 Mar 2023 12:02:39 +0100
Date: Wed, 8 Mar 2023 12:02:39 +0100
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
	tony.luck@intel.com, gpiccoli@igalia.com,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org,
	marijn.suijten@somainline.org
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Message-ID: <ZAhrT1ICTQjfdeGq@hovoldconsulting.com>
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-4-they@mint.lgbt>
 <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_030156_497781_B2D6133C 
X-CRM114-Status: GOOD (  19.06  )
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

On Wed, Mar 08, 2023 at 11:09:48AM +0100, Konrad Dybcio wrote:
> 
> 
> On 6.03.2023 18:08, Lux Aliaga wrote:
> > The SM6125 UFS PHY is compatible with the one from SM6115. Add a
> > compatible for it and modify the config from SM6115 to make them
> > compatible with the SC8280XP binding
> > 
> > Signed-off-by: Lux Aliaga <they@mint.lgbt>
> > Reviewed-by: Martin Botka <martin.botka@somainline.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index 318eea35b972..44c29fdfc551 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
> >  	"vdda-phy", "vdda-pll",
> >  };
> >  
> > +static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
> > +	.serdes		= 0,
> > +	.pcs		= 0xc00,
> > +	.tx		= 0x400,
> > +	.rx		= 0x600,
> > +};
> > +
> >  static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
> >  	.serdes		= 0,
> >  	.pcs		= 0xc00,
> > @@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
> >  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
> >  	.lanes			= 1,
> >  
> > +	.offsets		= &qmp_ufs_offsets_v3_660,
> Will this not trigger OOB r/w for the users of qcom,sm6115-smp-ufs-phy
> which specify the regions separately (old binding style)?

No, that should work fine.

But looks like this series needs to be rebased on 6.3-rc1 as these
offsets are now already set in mainline.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
